@interface INHomeEntity
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INHomeEntity)initWithCoder:(id)a3;
- (INHomeEntity)initWithEntityName:(id)a3 type:(int64_t)a4 entityIdentifier:(id)a5 deviceTypes:(id)a6 sceneType:(int64_t)a7 room:(id)a8 home:(id)a9 group:(id)a10 zones:(id)a11;
- (INHomeEntity)initWithEntityName:(id)a3 type:(int64_t)a4 entityIdentifier:(id)a5 deviceTypes:(id)a6 sceneType:(int64_t)a7 room:(id)a8 zone:(id)a9 home:(id)a10 group:(id)a11;
- (INHomeEntity)initWithName:(id)a3 type:(int64_t)a4 deviceType:(int64_t)a5;
- (NSString)name;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (int64_t)deviceType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeEntity

- (id)_dictionaryRepresentation
{
  v26[9] = *MEMORY[0x1E69E9840];
  entityName = self->_entityName;
  v24 = entityName;
  v25[0] = @"entityName";
  if (!entityName)
  {
    entityName = [MEMORY[0x1E695DFB0] null];
  }

  v20 = entityName;
  v26[0] = entityName;
  v25[1] = @"type";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v26[1] = v23;
  v25[2] = @"entityIdentifier";
  entityIdentifier = self->_entityIdentifier;
  v22 = entityIdentifier;
  if (!entityIdentifier)
  {
    entityIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v19 = entityIdentifier;
  v26[2] = entityIdentifier;
  v25[3] = @"deviceTypes";
  deviceTypes = self->_deviceTypes;
  v6 = deviceTypes;
  if (!deviceTypes)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v6;
  v26[3] = v6;
  v25[4] = @"sceneType";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sceneType];
  v26[4] = v21;
  v25[5] = @"room";
  room = self->_room;
  v8 = room;
  if (!room)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v8;
  v25[6] = @"home";
  home = self->_home;
  v10 = home;
  if (!home)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v10;
  v25[7] = @"group";
  group = self->_group;
  v12 = group;
  if (!group)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[7] = v12;
  v25[8] = @"zones";
  zones = self->_zones;
  v14 = zones;
  if (!zones)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[8] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:9];
  if (zones)
  {
    if (group)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (group)
    {
LABEL_17:
      if (home)
      {
        goto LABEL_18;
      }

LABEL_30:

      if (room)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  if (!home)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (room)
  {
    goto LABEL_19;
  }

LABEL_31:

LABEL_19:
  if (!deviceTypes)
  {
  }

  if (!v22)
  {
  }

  if (!v24)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeEntity;
  v6 = [(INHomeEntity *)&v11 description];
  v7 = [(INHomeEntity *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [v5 encodeObject:self->_entityName];
  [v6 if_setObjectIfNonNil:v7 forKey:@"entityName"];

  v8 = self->_type - 1;
  if (v8 > 9)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7280110[v8];
  }

  v10 = v9;
  [v6 if_setObjectIfNonNil:v10 forKey:@"type"];

  v30 = v5;
  v11 = [v5 encodeObject:self->_entityIdentifier];
  [v6 if_setObjectIfNonNil:v11 forKey:@"entityIdentifier"];

  v12 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = self->_deviceTypes;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v31 + 1) + 8 * i) integerValue];
        v19 = @"unknown";
        if ((v18 - 1) <= 0x2C)
        {
          v19 = off_1E7280860[v18 - 1];
        }

        v20 = v19;
        [v12 addObject:v20];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  [v6 if_setObjectIfNonNil:v12 forKey:@"deviceTypes"];
  v21 = self->_sceneType - 1;
  if (v21 > 4)
  {
    v22 = @"unknown";
  }

  else
  {
    v22 = *(&off_1E72870C8 + v21);
  }

  v23 = v22;
  [v6 if_setObjectIfNonNil:v23 forKey:@"sceneType"];

  v24 = [v30 encodeObject:self->_room];
  [v6 if_setObjectIfNonNil:v24 forKey:@"room"];

  v25 = [v30 encodeObject:self->_home];
  [v6 if_setObjectIfNonNil:v25 forKey:@"home"];

  v26 = [v30 encodeObject:self->_group];
  [v6 if_setObjectIfNonNil:v26 forKey:@"group"];

  v27 = [v30 encodeObject:self->_zones];
  [v6 if_setObjectIfNonNil:v27 forKey:@"zones"];

  v28 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  entityName = self->_entityName;
  v5 = a3;
  [v5 encodeObject:entityName forKey:@"entityName"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_entityIdentifier forKey:@"entityIdentifier"];
  [v5 encodeObject:self->_deviceTypes forKey:@"deviceTypes"];
  [v5 encodeInteger:self->_sceneType forKey:@"sceneType"];
  [v5 encodeObject:self->_room forKey:@"room"];
  [v5 encodeObject:self->_home forKey:@"home"];
  [v5 encodeObject:self->_group forKey:@"group"];
  [v5 encodeObject:self->_zones forKey:@"zones"];
}

- (INHomeEntity)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v23 = [v3 decodeIntegerForKey:@"type"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v3 decodeObjectOfClasses:v6 forKey:@"entityIdentifier"];

  v8 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v3 decodeObjectOfClasses:v10 forKey:@"deviceTypes"];

  v12 = [v3 decodeIntegerForKey:@"sceneType"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"room"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
  v16 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v18 = [v16 setWithArray:v17];
  v19 = [v3 decodeObjectOfClasses:v18 forKey:@"zones"];

  v20 = [(INHomeEntity *)self initWithEntityName:v24 type:v23 entityIdentifier:v7 deviceTypes:v11 sceneType:v12 room:v13 home:v14 group:v15 zones:v19];
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      entityName = self->_entityName;
      v13 = 0;
      if ((entityName == v5->_entityName || [(INSpeakableString *)entityName isEqual:?]) && self->_type == v5->_type)
      {
        entityIdentifier = self->_entityIdentifier;
        if (entityIdentifier == v5->_entityIdentifier || [(NSString *)entityIdentifier isEqual:?])
        {
          deviceTypes = self->_deviceTypes;
          if ((deviceTypes == v5->_deviceTypes || [(NSArray *)deviceTypes isEqual:?]) && self->_sceneType == v5->_sceneType)
          {
            room = self->_room;
            if (room == v5->_room || [(INSpeakableString *)room isEqual:?])
            {
              home = self->_home;
              if (home == v5->_home || [(INSpeakableString *)home isEqual:?])
              {
                group = self->_group;
                if (group == v5->_group || [(INSpeakableString *)group isEqual:?])
                {
                  zones = self->_zones;
                  if (zones == v5->_zones || [(NSArray *)zones isEqual:?])
                  {
                    v13 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(INSpeakableString *)self->_entityName hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_entityIdentifier hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_deviceTypes hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sceneType];
  v9 = [v8 hash];
  v10 = v7 ^ v9 ^ [(INSpeakableString *)self->_room hash];
  v11 = [(INSpeakableString *)self->_home hash];
  v12 = v11 ^ [(INSpeakableString *)self->_group hash];
  v13 = v12 ^ [(NSArray *)self->_zones hash];

  return v10 ^ v13;
}

- (NSString)name
{
  v2 = [(INHomeEntity *)self entityName];
  v3 = [v2 spokenPhrase];

  return v3;
}

- (int64_t)deviceType
{
  v2 = [(INHomeEntity *)self deviceTypes];
  v3 = [v2 firstObject];
  v4 = [v3 integerValue];

  return v4;
}

- (INHomeEntity)initWithEntityName:(id)a3 type:(int64_t)a4 entityIdentifier:(id)a5 deviceTypes:(id)a6 sceneType:(int64_t)a7 room:(id)a8 zone:(id)a9 home:(id)a10 group:(id)a11
{
  v40[1] = *MEMORY[0x1E69E9840];
  v17 = a9;
  v18 = v17;
  if (v17)
  {
    v40[0] = v17;
    v38 = a7;
    v19 = MEMORY[0x1E695DEC8];
    v20 = a11;
    v21 = a10;
    v22 = a8;
    v23 = a6;
    v24 = a5;
    v25 = a3;
    v26 = [v19 arrayWithObjects:v40 count:1];
    v27 = [(INHomeEntity *)self initWithEntityName:v25 type:a4 entityIdentifier:v24 deviceTypes:v23 sceneType:v38 room:v22 home:v21 group:v20 zones:v26];

    v28 = v27;
  }

  else
  {
    v29 = a11;
    v30 = a10;
    v31 = a8;
    v32 = a6;
    v33 = a5;
    v34 = a3;
    v35 = [(INHomeEntity *)self initWithEntityName:v34 type:a4 entityIdentifier:v33 deviceTypes:v32 sceneType:a7 room:v31 home:v30 group:v29 zones:MEMORY[0x1E695E0F0]];

    v28 = v35;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v28;
}

- (INHomeEntity)initWithName:(id)a3 type:(int64_t)a4 deviceType:(int64_t)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [[INSpeakableString alloc] initWithSpokenPhrase:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [(INHomeEntity *)self initWithEntityName:v9 type:a4 entityIdentifier:0 deviceTypes:v11 sceneType:0 room:0 zone:0 home:0 group:0];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (INHomeEntity)initWithEntityName:(id)a3 type:(int64_t)a4 entityIdentifier:(id)a5 deviceTypes:(id)a6 sceneType:(int64_t)a7 room:(id)a8 home:(id)a9 group:(id)a10 zones:(id)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v40.receiver = self;
  v40.super_class = INHomeEntity;
  v24 = [(INHomeEntity *)&v40 init];
  if (v24)
  {
    v25 = [v17 copy];
    entityName = v24->_entityName;
    v24->_entityName = v25;

    v24->_type = a4;
    v27 = [v18 copy];
    entityIdentifier = v24->_entityIdentifier;
    v24->_entityIdentifier = v27;

    v29 = [v19 copy];
    deviceTypes = v24->_deviceTypes;
    v24->_deviceTypes = v29;

    v24->_sceneType = a7;
    v31 = [v20 copy];
    room = v24->_room;
    v24->_room = v31;

    v33 = [v21 copy];
    home = v24->_home;
    v24->_home = v33;

    v35 = [v22 copy];
    group = v24->_group;
    v24->_group = v35;

    v37 = [v23 copy];
    zones = v24->_zones;
    v24->_zones = v37;
  }

  return v24;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = a1;
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"entityName"];
    v38 = [v7 decodeObjectOfClass:v9 from:v10];

    v11 = [v8 objectForKeyedSubscript:@"type"];
    v36 = INHomeEntityTypeWithString(v11);

    v37 = [v8 objectForKeyedSubscript:@"entityIdentifier"];
    v12 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = [v8 objectForKeyedSubscript:@"deviceTypes"];
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x1E696AD98] numberWithInteger:INHomeDeviceTypeWithString(*(*(&v40 + 1) + 8 * i))];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v15);
    }

    v19 = [v8 objectForKeyedSubscript:@"sceneType"];
    v35 = INHomeSceneTypeWithString(v19);

    v20 = objc_opt_class();
    v21 = [v8 objectForKeyedSubscript:@"room"];
    v22 = [v7 decodeObjectOfClass:v20 from:v21];

    v23 = objc_opt_class();
    v24 = [v8 objectForKeyedSubscript:@"home"];
    v25 = [v7 decodeObjectOfClass:v23 from:v24];

    v26 = objc_opt_class();
    v27 = [v8 objectForKeyedSubscript:@"group"];
    v28 = [v7 decodeObjectOfClass:v26 from:v27];

    v29 = objc_opt_class();
    v30 = [v8 objectForKeyedSubscript:@"zones"];
    v31 = [v7 decodeObjectsOfClass:v29 from:v30];

    v32 = [[v39 alloc] initWithEntityName:v38 type:v36 entityIdentifier:v37 deviceTypes:v12 sceneType:v35 room:v22 home:v25 group:v28 zones:v31];
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

@end