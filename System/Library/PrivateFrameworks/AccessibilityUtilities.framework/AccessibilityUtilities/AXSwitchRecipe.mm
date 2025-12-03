@interface AXSwitchRecipe
+ (id)recipeWithDictionaryRepresentation:(id)representation;
- (AXSwitchRecipe)init;
- (BOOL)shouldContinueScanning;
- (NSString)name;
- (id)description;
- (id)dictionaryRepresentation;
- (void)setName:(id)name;
@end

@implementation AXSwitchRecipe

+ (id)recipeWithDictionaryRepresentation:(id)representation
{
  v28 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = objc_alloc_init(self);
  v6 = [representationCopy objectForKeyedSubscript:@"Name"];
  [v5 setName:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"UnlocalizedName"];
  [v5 setUnlocalizedName:v7];

  v8 = objc_alloc(MEMORY[0x1E696AFB0]);
  v9 = [representationCopy objectForKeyedSubscript:@"UUID"];
  v10 = [v8 initWithUUIDString:v9];

  [v5 setUuid:v10];
  v11 = MEMORY[0x1E695DF70];
  v12 = [representationCopy objectForKeyedSubscript:@"Mappings"];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [representationCopy objectForKeyedSubscript:{@"Mappings", 0}];
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [AXSwitchRecipeMapping recipeMappingWithDictionaryRepresentation:*(*(&v23 + 1) + 8 * i)];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [v5 setMappings:v13];
  v20 = [representationCopy objectForKeyedSubscript:@"Timeout"];
  [v20 doubleValue];
  [v5 setTimeout:?];

  v21 = [representationCopy objectForKeyedSubscript:@"MenuIconIdentifier"];
  [v5 setMenuIconIdentifier:v21];

  return v5;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  unlocalizedName = [(AXSwitchRecipe *)self unlocalizedName];

  if (unlocalizedName)
  {
    unlocalizedName2 = [(AXSwitchRecipe *)self unlocalizedName];
    v6 = @"UnlocalizedName";
  }

  else
  {
    name = [(AXSwitchRecipe *)self name];

    if (!name)
    {
      goto LABEL_6;
    }

    unlocalizedName2 = [(AXSwitchRecipe *)self name];
    v6 = @"Name";
  }

  [v3 setObject:unlocalizedName2 forKeyedSubscript:v6];

LABEL_6:
  uuid = [(AXSwitchRecipe *)self uuid];

  if (!uuid)
  {
    _AXAssert();
  }

  uuid2 = [(AXSwitchRecipe *)self uuid];

  if (uuid2)
  {
    uuid3 = [(AXSwitchRecipe *)self uuid];
    uUIDString = [uuid3 UUIDString];
    [v3 setObject:uUIDString forKeyedSubscript:@"UUID"];
  }

  v12 = MEMORY[0x1E695DF70];
  mappings = [(AXSwitchRecipe *)self mappings];
  v14 = [v12 arrayWithCapacity:{objc_msgSend(mappings, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  mappings2 = [(AXSwitchRecipe *)self mappings];
  v16 = [mappings2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(mappings2);
        }

        dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
        [v14 addObject:dictionaryRepresentation];
      }

      v17 = [mappings2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  [v3 setObject:v14 forKeyedSubscript:@"Mappings"];
  v21 = MEMORY[0x1E696AD98];
  [(AXSwitchRecipe *)self timeout];
  v22 = [v21 numberWithDouble:?];
  [v3 setObject:v22 forKeyedSubscript:@"Timeout"];

  menuIconIdentifier = [(AXSwitchRecipe *)self menuIconIdentifier];

  if (menuIconIdentifier)
  {
    menuIconIdentifier2 = [(AXSwitchRecipe *)self menuIconIdentifier];
    [v3 setObject:menuIconIdentifier2 forKeyedSubscript:@"MenuIconIdentifier"];
  }

  return v3;
}

- (AXSwitchRecipe)init
{
  v5.receiver = self;
  v5.super_class = AXSwitchRecipe;
  v2 = [(AXSwitchRecipe *)&v5 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(AXSwitchRecipe *)v2 setUuid:uUID];
  }

  return v2;
}

- (BOOL)shouldContinueScanning
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mappings = [(AXSwitchRecipe *)self mappings];
  v3 = [mappings countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(mappings);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        action = [v7 action];
        if ([action isEqualToString:@"Select"])
        {

LABEL_13:
          v11 = 1;
          goto LABEL_14;
        }

        longPressAction = [v7 longPressAction];
        v10 = [longPressAction isEqualToString:@"Select"];

        if (v10)
        {
          goto LABEL_13;
        }
      }

      v4 = [mappings countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
    goto LABEL_2;
  }

  unlocalizedName = [(AXSwitchRecipe *)self unlocalizedName];

  if (!unlocalizedName)
  {
    name = self->_name;
LABEL_2:
    v3 = name;
    goto LABEL_5;
  }

  unlocalizedName2 = [(AXSwitchRecipe *)self unlocalizedName];
  v3 = AXLocalizedString(unlocalizedName2);

LABEL_5:

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  p_name = &self->_name;
  if (self->_name != nameCopy)
  {
    v7 = nameCopy;
    objc_storeStrong(p_name, name);
    p_name = [(AXSwitchRecipe *)self setUnlocalizedName:0];
    nameCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_name, nameCopy);
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AXSwitchRecipe;
  v3 = [(AXSwitchRecipe *)&v11 description];
  name = [(AXSwitchRecipe *)self name];
  uuid = [(AXSwitchRecipe *)self uuid];
  mappings = [(AXSwitchRecipe *)self mappings];
  v7 = MEMORY[0x1E696AD98];
  [(AXSwitchRecipe *)self timeout];
  v8 = [v7 numberWithDouble:?];
  v9 = [v3 stringByAppendingFormat:@"\nName: %@\nUUID: %@\nMappings: %@\nTimeout: %@", name, uuid, mappings, v8];

  return v9;
}

@end