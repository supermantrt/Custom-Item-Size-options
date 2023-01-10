
local PLUGIN = PLUGIN

PLUGIN.name = "Custom Items"
PLUGIN.author = "Gary Tate"
PLUGIN.description = "Enables staff members to create custom items."
PLUGIN.readme = [[
Enables staff members to create custom items.

Support for this plugin can be found here: https://discord.gg/mntpDMU
]]

ix.command.Add("CreateCustomItem", {
	description = "@cmdCreateCustomItem",
	superAdminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.string,
		ix.type.string,
		ix.type.number,
		ix.type.number
	},
	OnRun = function(self, client, name, model, description, width , height)
		local customitemchosen = "customitem" .. width .. height
		client:GetCharacter():GetInventory():Add(customitemchosen, 1, {
			name = name,
			model = model,
			description = description
		})
	end
})
