@interface INHomeFilter
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeFilter)initWithCoder:(id)coder;
- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers entityName:(id)name entityType:(int64_t)type outerDeviceType:(int64_t)deviceType outerDeviceName:(id)deviceName deviceType:(int64_t)a8 home:(id)home zone:(id)self0 group:(id)self1 room:(id)self2 isExcludeFilter:(BOOL)self3 hasAllQuantifier:(BOOL)self4;
- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers home:(id)home scene:(id)scene homeZone:(id)zone group:(id)group room:(id)room accessory:(id)accessory entityType:(int64_t)self0 serviceType:(int64_t)self1 subServiceType:(int64_t)self2 isExcludeFilter:(BOOL)self3 entityName:(id)self4;
- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers home:(id)home scene:(id)scene homeZone:(id)zone group:(id)group room:(id)room accessory:(id)accessory service:(id)self0 entityType:(int64_t)self1 serviceType:(int64_t)self2 subServiceType:(int64_t)self3;
- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers home:(id)home scene:(id)scene homeZone:(id)zone group:(id)group room:(id)room accessory:(id)accessory service:(id)self0 entityType:(int64_t)self1 serviceType:(int64_t)self2 subServiceType:(int64_t)self3 isExcludeFilter:(BOOL)self4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)descriptionAtIndent:(unint64_t)indent;
- (int64_t)serviceType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeFilter

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  entityName = [(INHomeFilter *)self entityName];

  if (entityName)
  {
    entityName2 = [(INHomeFilter *)self entityName];
LABEL_3:
    v8 = entityName2;
    v9 = [entityName2 _intents_readableTitleWithLocalizer:localizerCopy];

    goto LABEL_6;
  }

  if ([(INHomeFilter *)self outerDeviceType])
  {
    goto LABEL_5;
  }

  outerDeviceName = [(INHomeFilter *)self outerDeviceName];

  if (outerDeviceName)
  {
    entityName2 = [(INHomeFilter *)self outerDeviceName];
    goto LABEL_3;
  }

  group = [(INHomeFilter *)self group];

  if (group)
  {
    entityName2 = [(INHomeFilter *)self group];
    goto LABEL_3;
  }

  room = [(INHomeFilter *)self room];

  if (room)
  {
    entityName2 = [(INHomeFilter *)self room];
    goto LABEL_3;
  }

  v14 = [(INHomeFilter *)self zone];

  if (v14)
  {
    entityName2 = [(INHomeFilter *)self zone];
    goto LABEL_3;
  }

  home = [(INHomeFilter *)self home];

  if (home)
  {
    entityName2 = [(INHomeFilter *)self home];
    goto LABEL_3;
  }

  if (![(INHomeFilter *)self entityType])
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    v9 = INHomeEntityTypeGetLocalizedName([(INHomeFilter *)self entityType], localizerCopy);
  }

LABEL_6:

  return v9;
}

- (id)_dictionaryRepresentation
{
  v31[12] = *MEMORY[0x1E69E9840];
  entityIdentifiers = self->_entityIdentifiers;
  v29 = entityIdentifiers;
  v30[0] = @"entityIdentifiers";
  if (!entityIdentifiers)
  {
    entityIdentifiers = [MEMORY[0x1E695DFB0] null];
  }

  v23 = entityIdentifiers;
  v31[0] = entityIdentifiers;
  v30[1] = @"entityName";
  entityName = self->_entityName;
  v28 = entityName;
  if (!entityName)
  {
    entityName = [MEMORY[0x1E695DFB0] null];
  }

  v22 = entityName;
  v31[1] = entityName;
  v30[2] = @"entityType";
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:self->_entityType];
  v31[2] = v27;
  v30[3] = @"outerDeviceType";
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:self->_outerDeviceType];
  v31[3] = v26;
  v30[4] = @"outerDeviceName";
  outerDeviceName = self->_outerDeviceName;
  v25 = outerDeviceName;
  if (!outerDeviceName)
  {
    outerDeviceName = [MEMORY[0x1E695DFB0] null];
  }

  v21 = outerDeviceName;
  v31[4] = outerDeviceName;
  v30[5] = @"deviceType";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceType];
  v31[5] = v24;
  v30[6] = @"home";
  home = self->_home;
  null = home;
  if (!home)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v31[6] = null;
  v30[7] = @"zone";
  zone = self->_zone;
  null2 = zone;
  if (!zone)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null2;
  v30[8] = @"group";
  group = self->_group;
  null3 = group;
  if (!group)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31[8] = null3;
  v30[9] = @"room";
  room = self->_room;
  null4 = room;
  if (!room)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31[9] = null4;
  v30[10] = @"isExcludeFilter";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isExcludeFilter, v19}];
  v31[10] = v14;
  v30[11] = @"hasAllQuantifier";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAllQuantifier];
  v31[11] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:12];

  if (room)
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
      if (zone)
      {
        goto LABEL_18;
      }

LABEL_30:

      if (home)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  if (!zone)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (home)
  {
    goto LABEL_19;
  }

LABEL_31:

LABEL_19:
  if (!v25)
  {
  }

  if (!v28)
  {
  }

  if (!v29)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeFilter;
  v6 = [(INHomeFilter *)&v11 description];
  _dictionaryRepresentation = [(INHomeFilter *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_entityIdentifiers];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"entityIdentifiers"];

  v9 = [encoderCopy encodeObject:self->_entityName];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"entityName"];

  v10 = self->_entityType - 1;
  if (v10 > 9)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7280110[v10];
  }

  v12 = v11;
  [dictionary if_setObjectIfNonNil:v12 forKey:@"entityType"];

  v13 = self->_outerDeviceType - 1;
  if (v13 > 0x2C)
  {
    v14 = @"unknown";
  }

  else
  {
    v14 = off_1E7280860[v13];
  }

  v15 = v14;
  [dictionary if_setObjectIfNonNil:v15 forKey:@"outerDeviceType"];

  v16 = [encoderCopy encodeObject:self->_outerDeviceName];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"outerDeviceName"];

  v17 = self->_deviceType - 1;
  if (v17 > 0x2C)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E7280860[v17];
  }

  v19 = v18;
  [dictionary if_setObjectIfNonNil:v19 forKey:@"deviceType"];

  v20 = [encoderCopy encodeObject:self->_home];
  [dictionary if_setObjectIfNonNil:v20 forKey:@"home"];

  v21 = [encoderCopy encodeObject:self->_zone];
  [dictionary if_setObjectIfNonNil:v21 forKey:@"zone"];

  v22 = [encoderCopy encodeObject:self->_group];
  [dictionary if_setObjectIfNonNil:v22 forKey:@"group"];

  v23 = [encoderCopy encodeObject:self->_room];

  [dictionary if_setObjectIfNonNil:v23 forKey:@"room"];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExcludeFilter];
  [dictionary if_setObjectIfNonNil:v24 forKey:@"isExcludeFilter"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAllQuantifier];
  [dictionary if_setObjectIfNonNil:v25 forKey:@"hasAllQuantifier"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  entityIdentifiers = self->_entityIdentifiers;
  coderCopy = coder;
  [coderCopy encodeObject:entityIdentifiers forKey:@"entityIdentifiers"];
  [coderCopy encodeObject:self->_entityName forKey:@"entityName"];
  [coderCopy encodeInteger:self->_entityType forKey:@"entityType"];
  [coderCopy encodeInteger:self->_outerDeviceType forKey:@"outerDeviceType"];
  [coderCopy encodeObject:self->_outerDeviceName forKey:@"outerDeviceName"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeObject:self->_home forKey:@"home"];
  [coderCopy encodeObject:self->_zone forKey:@"zone"];
  [coderCopy encodeObject:self->_group forKey:@"group"];
  [coderCopy encodeObject:self->_room forKey:@"room"];
  [coderCopy encodeBool:self->_isExcludeFilter forKey:@"isExcludeFilter"];
  [coderCopy encodeBool:self->_hasAllQuantifier forKey:@"hasAllQuantifier"];
}

- (INHomeFilter)initWithCoder:(id)coder
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v6 = [v3 setWithArray:v5];
  v22 = [coderCopy decodeObjectOfClasses:v6 forKey:@"entityIdentifiers"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v21 = [coderCopy decodeIntegerForKey:@"entityType"];
  v20 = [coderCopy decodeIntegerForKey:@"outerDeviceType"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outerDeviceName"];
  v9 = [coderCopy decodeIntegerForKey:@"deviceType"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zone"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"room"];
  v14 = [coderCopy decodeBoolForKey:@"isExcludeFilter"];
  v15 = [coderCopy decodeBoolForKey:@"hasAllQuantifier"];

  BYTE1(v19) = v15;
  LOBYTE(v19) = v14;
  v16 = [(INHomeFilter *)self initWithEntityIdentifiers:v22 entityName:v7 entityType:v21 outerDeviceType:v20 outerDeviceName:v8 deviceType:v9 home:v10 zone:v11 group:v12 room:v13 isExcludeFilter:v19 hasAllQuantifier:?];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
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
      entityIdentifiers = self->_entityIdentifiers;
      v13 = (entityIdentifiers == v5->_entityIdentifiers || [(NSArray *)entityIdentifiers isEqual:?]) && ((entityName = self->_entityName, entityName == v5->_entityName) || [(INSpeakableString *)entityName isEqual:?]) && self->_entityType == v5->_entityType && self->_outerDeviceType == v5->_outerDeviceType && ((outerDeviceName = self->_outerDeviceName, outerDeviceName == v5->_outerDeviceName) || [(INSpeakableString *)outerDeviceName isEqual:?]) && self->_deviceType == v5->_deviceType && ((home = self->_home, home == v5->_home) || [(INSpeakableString *)home isEqual:?]) && ((zone = self->_zone, zone == v5->_zone) || [(INSpeakableString *)zone isEqual:?]) && ((group = self->_group, group == v5->_group) || [(INSpeakableString *)group isEqual:?]) && ((room = self->_room, room == v5->_room) || [(INSpeakableString *)room isEqual:?]) && self->_isExcludeFilter == v5->_isExcludeFilter && self->_hasAllQuantifier == v5->_hasAllQuantifier;
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
  v3 = [(NSArray *)self->_entityIdentifiers hash];
  v4 = [(INSpeakableString *)self->_entityName hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_entityType];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_outerDeviceType];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(INSpeakableString *)self->_outerDeviceName hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceType];
  v11 = [v10 hash];
  v12 = v11 ^ [(INSpeakableString *)self->_home hash];
  v13 = v9 ^ v12 ^ [(INSpeakableString *)self->_zone hash];
  v14 = [(INSpeakableString *)self->_group hash];
  v15 = v14 ^ [(INSpeakableString *)self->_room hash];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExcludeFilter];
  v17 = v15 ^ [v16 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAllQuantifier];
  v19 = v17 ^ [v18 hash];

  return v13 ^ v19;
}

- (int64_t)serviceType
{
  outerDeviceType = [(INHomeFilter *)self outerDeviceType];
  if ((outerDeviceType - 1) > 0x1B)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F2C0[outerDeviceType - 1];
  }
}

- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers home:(id)home scene:(id)scene homeZone:(id)zone group:(id)group room:(id)room accessory:(id)accessory entityType:(int64_t)self0 serviceType:(int64_t)self1 subServiceType:(int64_t)self2 isExcludeFilter:(BOOL)self3 entityName:(id)self4
{
  sceneCopy = name;
  if (!name)
  {
    sceneCopy = scene;
  }

  return [INHomeFilter initWithEntityIdentifiers:"initWithEntityIdentifiers:entityName:entityType:outerDeviceType:outerDeviceName:deviceType:home:zone:group:room:isExcludeFilter:hasAllQuantifier:" entityName:identifiers entityType:sceneCopy outerDeviceType:type outerDeviceName:0 deviceType:0 home:0 zone:? group:? room:? isExcludeFilter:? hasAllQuantifier:?];
}

- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers home:(id)home scene:(id)scene homeZone:(id)zone group:(id)group room:(id)room accessory:(id)accessory service:(id)self0 entityType:(int64_t)self1 serviceType:(int64_t)self2 subServiceType:(int64_t)self3 isExcludeFilter:(BOOL)self4
{
  sceneCopy = service;
  if (!service)
  {
    sceneCopy = scene;
  }

  return [INHomeFilter initWithEntityIdentifiers:"initWithEntityIdentifiers:entityName:entityType:outerDeviceType:outerDeviceName:deviceType:home:zone:group:room:isExcludeFilter:hasAllQuantifier:" entityName:identifiers entityType:sceneCopy outerDeviceType:type outerDeviceName:0 deviceType:0 home:0 zone:? group:? room:? isExcludeFilter:? hasAllQuantifier:?];
}

- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers home:(id)home scene:(id)scene homeZone:(id)zone group:(id)group room:(id)room accessory:(id)accessory service:(id)self0 entityType:(int64_t)self1 serviceType:(int64_t)self2 subServiceType:(int64_t)self3
{
  sceneCopy = service;
  if (!service)
  {
    sceneCopy = scene;
  }

  return [INHomeFilter initWithEntityIdentifiers:"initWithEntityIdentifiers:entityName:entityType:outerDeviceType:outerDeviceName:deviceType:home:zone:group:room:isExcludeFilter:hasAllQuantifier:" entityName:identifiers entityType:sceneCopy outerDeviceType:type outerDeviceName:0 deviceType:0 home:0 zone:? group:? room:? isExcludeFilter:? hasAllQuantifier:?];
}

- (INHomeFilter)initWithEntityIdentifiers:(id)identifiers entityName:(id)name entityType:(int64_t)type outerDeviceType:(int64_t)deviceType outerDeviceName:(id)deviceName deviceType:(int64_t)a8 home:(id)home zone:(id)self0 group:(id)self1 room:(id)self2 isExcludeFilter:(BOOL)self3 hasAllQuantifier:(BOOL)self4
{
  identifiersCopy = identifiers;
  nameCopy = name;
  deviceNameCopy = deviceName;
  homeCopy = home;
  zoneCopy = zone;
  groupCopy = group;
  roomCopy = room;
  v43.receiver = self;
  v43.super_class = INHomeFilter;
  v26 = [(INHomeFilter *)&v43 init];
  if (v26)
  {
    v27 = [identifiersCopy copy];
    entityIdentifiers = v26->_entityIdentifiers;
    v26->_entityIdentifiers = v27;

    v29 = [nameCopy copy];
    entityName = v26->_entityName;
    v26->_entityName = v29;

    v26->_entityType = type;
    v26->_outerDeviceType = deviceType;
    v31 = [deviceNameCopy copy];
    outerDeviceName = v26->_outerDeviceName;
    v26->_outerDeviceName = v31;

    v26->_deviceType = a8;
    v33 = [homeCopy copy];
    home = v26->_home;
    v26->_home = v33;

    v35 = [zoneCopy copy];
    zone = v26->_zone;
    v26->_zone = v35;

    v37 = [groupCopy copy];
    group = v26->_group;
    v26->_group = v37;

    v39 = [roomCopy copy];
    room = v26->_room;
    v26->_room = v39;

    v26->_isExcludeFilter = filter;
    v26->_hasAllQuantifier = quantifier;
  }

  return v26;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [fromCopy objectForKeyedSubscript:@"entityIdentifiers"];
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"entityName"];
    v39 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v11 = [fromCopy objectForKeyedSubscript:@"entityType"];
    v38 = INHomeEntityTypeWithString(v11);

    v12 = [fromCopy objectForKeyedSubscript:@"outerDeviceType"];
    v37 = INHomeDeviceTypeWithString(v12);

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"outerDeviceName"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [fromCopy objectForKeyedSubscript:@"deviceType"];
    v36 = INHomeDeviceTypeWithString(v16);

    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"home"];
    v19 = [decoderCopy decodeObjectOfClass:v17 from:v18];

    v20 = objc_opt_class();
    v21 = [fromCopy objectForKeyedSubscript:@"zone"];
    v22 = [decoderCopy decodeObjectOfClass:v20 from:v21];

    v23 = objc_opt_class();
    v24 = [fromCopy objectForKeyedSubscript:@"group"];
    v25 = [decoderCopy decodeObjectOfClass:v23 from:v24];

    v26 = objc_opt_class();
    v27 = [fromCopy objectForKeyedSubscript:@"room"];
    v28 = [decoderCopy decodeObjectOfClass:v26 from:v27];

    v29 = [fromCopy objectForKeyedSubscript:@"isExcludeFilter"];
    bOOLValue = [v29 BOOLValue];

    v31 = [fromCopy objectForKeyedSubscript:@"hasAllQuantifier"];
    bOOLValue2 = [v31 BOOLValue];

    BYTE1(v35) = bOOLValue2;
    LOBYTE(v35) = bOOLValue;
    v33 = [[selfCopy alloc] initWithEntityIdentifiers:v41 entityName:v39 entityType:v38 outerDeviceType:v37 outerDeviceName:v15 deviceType:v36 home:v19 zone:v22 group:v25 room:v28 isExcludeFilter:v35 hasAllQuantifier:?];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end