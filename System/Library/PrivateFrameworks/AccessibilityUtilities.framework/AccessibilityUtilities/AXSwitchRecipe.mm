@interface AXSwitchRecipe
+ (id)recipeWithDictionaryRepresentation:(id)a3;
- (AXSwitchRecipe)init;
- (BOOL)shouldContinueScanning;
- (NSString)name;
- (id)description;
- (id)dictionaryRepresentation;
- (void)setName:(id)a3;
@end

@implementation AXSwitchRecipe

+ (id)recipeWithDictionaryRepresentation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"Name"];
  [v5 setName:v6];

  v7 = [v4 objectForKeyedSubscript:@"UnlocalizedName"];
  [v5 setUnlocalizedName:v7];

  v8 = objc_alloc(MEMORY[0x1E696AFB0]);
  v9 = [v4 objectForKeyedSubscript:@"UUID"];
  v10 = [v8 initWithUUIDString:v9];

  [v5 setUuid:v10];
  v11 = MEMORY[0x1E695DF70];
  v12 = [v4 objectForKeyedSubscript:@"Mappings"];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v4 objectForKeyedSubscript:{@"Mappings", 0}];
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
  v20 = [v4 objectForKeyedSubscript:@"Timeout"];
  [v20 doubleValue];
  [v5 setTimeout:?];

  v21 = [v4 objectForKeyedSubscript:@"MenuIconIdentifier"];
  [v5 setMenuIconIdentifier:v21];

  return v5;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [(AXSwitchRecipe *)self unlocalizedName];

  if (v4)
  {
    v5 = [(AXSwitchRecipe *)self unlocalizedName];
    v6 = @"UnlocalizedName";
  }

  else
  {
    v7 = [(AXSwitchRecipe *)self name];

    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = [(AXSwitchRecipe *)self name];
    v6 = @"Name";
  }

  [v3 setObject:v5 forKeyedSubscript:v6];

LABEL_6:
  v8 = [(AXSwitchRecipe *)self uuid];

  if (!v8)
  {
    _AXAssert();
  }

  v9 = [(AXSwitchRecipe *)self uuid];

  if (v9)
  {
    v10 = [(AXSwitchRecipe *)self uuid];
    v11 = [v10 UUIDString];
    [v3 setObject:v11 forKeyedSubscript:@"UUID"];
  }

  v12 = MEMORY[0x1E695DF70];
  v13 = [(AXSwitchRecipe *)self mappings];
  v14 = [v12 arrayWithCapacity:{objc_msgSend(v13, "count")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [(AXSwitchRecipe *)self mappings];
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  [v3 setObject:v14 forKeyedSubscript:@"Mappings"];
  v21 = MEMORY[0x1E696AD98];
  [(AXSwitchRecipe *)self timeout];
  v22 = [v21 numberWithDouble:?];
  [v3 setObject:v22 forKeyedSubscript:@"Timeout"];

  v23 = [(AXSwitchRecipe *)self menuIconIdentifier];

  if (v23)
  {
    v24 = [(AXSwitchRecipe *)self menuIconIdentifier];
    [v3 setObject:v24 forKeyedSubscript:@"MenuIconIdentifier"];
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    [(AXSwitchRecipe *)v2 setUuid:v3];
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
  v2 = [(AXSwitchRecipe *)self mappings];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 action];
        if ([v8 isEqualToString:@"Select"])
        {

LABEL_13:
          v11 = 1;
          goto LABEL_14;
        }

        v9 = [v7 longPressAction];
        v10 = [v9 isEqualToString:@"Select"];

        if (v10)
        {
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  v5 = [(AXSwitchRecipe *)self unlocalizedName];

  if (!v5)
  {
    name = self->_name;
LABEL_2:
    v3 = name;
    goto LABEL_5;
  }

  v6 = [(AXSwitchRecipe *)self unlocalizedName];
  v3 = AXLocalizedString(v6);

LABEL_5:

  return v3;
}

- (void)setName:(id)a3
{
  v5 = a3;
  p_name = &self->_name;
  if (self->_name != v5)
  {
    v7 = v5;
    objc_storeStrong(p_name, a3);
    p_name = [(AXSwitchRecipe *)self setUnlocalizedName:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_name, v5);
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = AXSwitchRecipe;
  v3 = [(AXSwitchRecipe *)&v11 description];
  v4 = [(AXSwitchRecipe *)self name];
  v5 = [(AXSwitchRecipe *)self uuid];
  v6 = [(AXSwitchRecipe *)self mappings];
  v7 = MEMORY[0x1E696AD98];
  [(AXSwitchRecipe *)self timeout];
  v8 = [v7 numberWithDouble:?];
  v9 = [v3 stringByAppendingFormat:@"\nName: %@\nUUID: %@\nMappings: %@\nTimeout: %@", v4, v5, v6, v8];

  return v9;
}

@end