@interface INHomeEntity
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeEntity)initWithCoder:(id)coder;
- (INHomeEntity)initWithEntityName:(id)name type:(int64_t)type entityIdentifier:(id)identifier deviceTypes:(id)types sceneType:(int64_t)sceneType room:(id)room home:(id)home group:(id)self0 zones:(id)self1;
- (INHomeEntity)initWithEntityName:(id)name type:(int64_t)type entityIdentifier:(id)identifier deviceTypes:(id)types sceneType:(int64_t)sceneType room:(id)room zone:(id)zone home:(id)self0 group:(id)self1;
- (INHomeEntity)initWithName:(id)name type:(int64_t)type deviceType:(int64_t)deviceType;
- (NSString)name;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (int64_t)deviceType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  null = deviceTypes;
  if (!deviceTypes)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v26[3] = null;
  v25[4] = @"sceneType";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sceneType];
  v26[4] = v21;
  v25[5] = @"room";
  room = self->_room;
  null2 = room;
  if (!room)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null2;
  v25[6] = @"home";
  home = self->_home;
  null3 = home;
  if (!home)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null3;
  v25[7] = @"group";
  group = self->_group;
  null4 = group;
  if (!group)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[7] = null4;
  v25[8] = @"zones";
  zones = self->_zones;
  null5 = zones;
  if (!zones)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[8] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeEntity;
  v6 = [(INHomeEntity *)&v11 description];
  _dictionaryRepresentation = [(INHomeEntity *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v36 = *MEMORY[0x1E69E9840];
  encoderCopy = encoder;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [encoderCopy encodeObject:self->_entityName];
  [dictionary if_setObjectIfNonNil:v7 forKey:@"entityName"];

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
  [dictionary if_setObjectIfNonNil:v10 forKey:@"type"];

  v30 = encoderCopy;
  v11 = [encoderCopy encodeObject:self->_entityIdentifier];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"entityIdentifier"];

  array = [MEMORY[0x1E695DF70] array];
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

        integerValue = [*(*(&v31 + 1) + 8 * i) integerValue];
        v19 = @"unknown";
        if ((integerValue - 1) <= 0x2C)
        {
          v19 = off_1E7280860[integerValue - 1];
        }

        v20 = v19;
        [array addObject:v20];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  [dictionary if_setObjectIfNonNil:array forKey:@"deviceTypes"];
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
  [dictionary if_setObjectIfNonNil:v23 forKey:@"sceneType"];

  v24 = [v30 encodeObject:self->_room];
  [dictionary if_setObjectIfNonNil:v24 forKey:@"room"];

  v25 = [v30 encodeObject:self->_home];
  [dictionary if_setObjectIfNonNil:v25 forKey:@"home"];

  v26 = [v30 encodeObject:self->_group];
  [dictionary if_setObjectIfNonNil:v26 forKey:@"group"];

  v27 = [v30 encodeObject:self->_zones];
  [dictionary if_setObjectIfNonNil:v27 forKey:@"zones"];

  v28 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  entityName = self->_entityName;
  coderCopy = coder;
  [coderCopy encodeObject:entityName forKey:@"entityName"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_entityIdentifier forKey:@"entityIdentifier"];
  [coderCopy encodeObject:self->_deviceTypes forKey:@"deviceTypes"];
  [coderCopy encodeInteger:self->_sceneType forKey:@"sceneType"];
  [coderCopy encodeObject:self->_room forKey:@"room"];
  [coderCopy encodeObject:self->_home forKey:@"home"];
  [coderCopy encodeObject:self->_group forKey:@"group"];
  [coderCopy encodeObject:self->_zones forKey:@"zones"];
}

- (INHomeEntity)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v23 = [coderCopy decodeIntegerForKey:@"type"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"entityIdentifier"];

  v8 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"deviceTypes"];

  v12 = [coderCopy decodeIntegerForKey:@"sceneType"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"room"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
  v16 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v18 = [v16 setWithArray:v17];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"zones"];

  v20 = [(INHomeEntity *)self initWithEntityName:v24 type:v23 entityIdentifier:v7 deviceTypes:v11 sceneType:v12 room:v13 home:v14 group:v15 zones:v19];
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
  entityName = [(INHomeEntity *)self entityName];
  spokenPhrase = [entityName spokenPhrase];

  return spokenPhrase;
}

- (int64_t)deviceType
{
  deviceTypes = [(INHomeEntity *)self deviceTypes];
  firstObject = [deviceTypes firstObject];
  integerValue = [firstObject integerValue];

  return integerValue;
}

- (INHomeEntity)initWithEntityName:(id)name type:(int64_t)type entityIdentifier:(id)identifier deviceTypes:(id)types sceneType:(int64_t)sceneType room:(id)room zone:(id)zone home:(id)self0 group:(id)self1
{
  v40[1] = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  v18 = zoneCopy;
  if (zoneCopy)
  {
    v40[0] = zoneCopy;
    sceneTypeCopy = sceneType;
    v19 = MEMORY[0x1E695DEC8];
    groupCopy = group;
    homeCopy = home;
    roomCopy = room;
    typesCopy = types;
    identifierCopy = identifier;
    nameCopy = name;
    v26 = [v19 arrayWithObjects:v40 count:1];
    v27 = [(INHomeEntity *)self initWithEntityName:nameCopy type:type entityIdentifier:identifierCopy deviceTypes:typesCopy sceneType:sceneTypeCopy room:roomCopy home:homeCopy group:groupCopy zones:v26];

    v28 = v27;
  }

  else
  {
    groupCopy2 = group;
    homeCopy2 = home;
    roomCopy2 = room;
    typesCopy2 = types;
    identifierCopy2 = identifier;
    nameCopy2 = name;
    v35 = [(INHomeEntity *)self initWithEntityName:nameCopy2 type:type entityIdentifier:identifierCopy2 deviceTypes:typesCopy2 sceneType:sceneType room:roomCopy2 home:homeCopy2 group:groupCopy2 zones:MEMORY[0x1E695E0F0]];

    v28 = v35;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v28;
}

- (INHomeEntity)initWithName:(id)name type:(int64_t)type deviceType:(int64_t)deviceType
{
  v15[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = [[INSpeakableString alloc] initWithSpokenPhrase:nameCopy];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:deviceType];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [(INHomeEntity *)self initWithEntityName:v9 type:type entityIdentifier:0 deviceTypes:v11 sceneType:0 room:0 zone:0 home:0 group:0];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (INHomeEntity)initWithEntityName:(id)name type:(int64_t)type entityIdentifier:(id)identifier deviceTypes:(id)types sceneType:(int64_t)sceneType room:(id)room home:(id)home group:(id)self0 zones:(id)self1
{
  nameCopy = name;
  identifierCopy = identifier;
  typesCopy = types;
  roomCopy = room;
  homeCopy = home;
  groupCopy = group;
  zonesCopy = zones;
  v40.receiver = self;
  v40.super_class = INHomeEntity;
  v24 = [(INHomeEntity *)&v40 init];
  if (v24)
  {
    v25 = [nameCopy copy];
    entityName = v24->_entityName;
    v24->_entityName = v25;

    v24->_type = type;
    v27 = [identifierCopy copy];
    entityIdentifier = v24->_entityIdentifier;
    v24->_entityIdentifier = v27;

    v29 = [typesCopy copy];
    deviceTypes = v24->_deviceTypes;
    v24->_deviceTypes = v29;

    v24->_sceneType = sceneType;
    v31 = [roomCopy copy];
    room = v24->_room;
    v24->_room = v31;

    v33 = [homeCopy copy];
    home = v24->_home;
    v24->_home = v33;

    v35 = [groupCopy copy];
    group = v24->_group;
    v24->_group = v35;

    v37 = [zonesCopy copy];
    zones = v24->_zones;
    v24->_zones = v37;
  }

  return v24;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  v45 = *MEMORY[0x1E69E9840];
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"entityName"];
    v38 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v11 = [fromCopy objectForKeyedSubscript:@"type"];
    v36 = INHomeEntityTypeWithString(v11);

    v37 = [fromCopy objectForKeyedSubscript:@"entityIdentifier"];
    array = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = [fromCopy objectForKeyedSubscript:@"deviceTypes"];
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
          [array addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v15);
    }

    v19 = [fromCopy objectForKeyedSubscript:@"sceneType"];
    v35 = INHomeSceneTypeWithString(v19);

    v20 = objc_opt_class();
    v21 = [fromCopy objectForKeyedSubscript:@"room"];
    v22 = [decoderCopy decodeObjectOfClass:v20 from:v21];

    v23 = objc_opt_class();
    v24 = [fromCopy objectForKeyedSubscript:@"home"];
    v25 = [decoderCopy decodeObjectOfClass:v23 from:v24];

    v26 = objc_opt_class();
    v27 = [fromCopy objectForKeyedSubscript:@"group"];
    v28 = [decoderCopy decodeObjectOfClass:v26 from:v27];

    v29 = objc_opt_class();
    v30 = [fromCopy objectForKeyedSubscript:@"zones"];
    v31 = [decoderCopy decodeObjectsOfClass:v29 from:v30];

    v32 = [[selfCopy alloc] initWithEntityName:v38 type:v36 entityIdentifier:v37 deviceTypes:array sceneType:v35 room:v22 home:v25 group:v28 zones:v31];
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

@end