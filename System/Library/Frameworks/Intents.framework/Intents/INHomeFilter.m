@interface INHomeFilter
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INHomeFilter)initWithCoder:(id)a3;
- (INHomeFilter)initWithEntityIdentifiers:(id)a3 entityName:(id)a4 entityType:(int64_t)a5 outerDeviceType:(int64_t)a6 outerDeviceName:(id)a7 deviceType:(int64_t)a8 home:(id)a9 zone:(id)a10 group:(id)a11 room:(id)a12 isExcludeFilter:(BOOL)a13 hasAllQuantifier:(BOOL)a14;
- (INHomeFilter)initWithEntityIdentifiers:(id)a3 home:(id)a4 scene:(id)a5 homeZone:(id)a6 group:(id)a7 room:(id)a8 accessory:(id)a9 entityType:(int64_t)a10 serviceType:(int64_t)a11 subServiceType:(int64_t)a12 isExcludeFilter:(BOOL)a13 entityName:(id)a14;
- (INHomeFilter)initWithEntityIdentifiers:(id)a3 home:(id)a4 scene:(id)a5 homeZone:(id)a6 group:(id)a7 room:(id)a8 accessory:(id)a9 service:(id)a10 entityType:(int64_t)a11 serviceType:(int64_t)a12 subServiceType:(int64_t)a13;
- (INHomeFilter)initWithEntityIdentifiers:(id)a3 home:(id)a4 scene:(id)a5 homeZone:(id)a6 group:(id)a7 room:(id)a8 accessory:(id)a9 service:(id)a10 entityType:(int64_t)a11 serviceType:(int64_t)a12 subServiceType:(int64_t)a13 isExcludeFilter:(BOOL)a14;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (int64_t)serviceType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeFilter

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INHomeFilter *)self entityName];

  if (v6)
  {
    v7 = [(INHomeFilter *)self entityName];
LABEL_3:
    v8 = v7;
    v9 = [v7 _intents_readableTitleWithLocalizer:v5];

    goto LABEL_6;
  }

  if ([(INHomeFilter *)self outerDeviceType])
  {
    goto LABEL_5;
  }

  v11 = [(INHomeFilter *)self outerDeviceName];

  if (v11)
  {
    v7 = [(INHomeFilter *)self outerDeviceName];
    goto LABEL_3;
  }

  v12 = [(INHomeFilter *)self group];

  if (v12)
  {
    v7 = [(INHomeFilter *)self group];
    goto LABEL_3;
  }

  v13 = [(INHomeFilter *)self room];

  if (v13)
  {
    v7 = [(INHomeFilter *)self room];
    goto LABEL_3;
  }

  v14 = [(INHomeFilter *)self zone];

  if (v14)
  {
    v7 = [(INHomeFilter *)self zone];
    goto LABEL_3;
  }

  v15 = [(INHomeFilter *)self home];

  if (v15)
  {
    v7 = [(INHomeFilter *)self home];
    goto LABEL_3;
  }

  if (![(INHomeFilter *)self entityType])
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    v9 = INHomeEntityTypeGetLocalizedName([(INHomeFilter *)self entityType], v5);
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
  v7 = home;
  if (!home)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v7;
  v31[6] = v7;
  v30[7] = @"zone";
  zone = self->_zone;
  v9 = zone;
  if (!zone)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = v9;
  v30[8] = @"group";
  group = self->_group;
  v11 = group;
  if (!group)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v31[8] = v11;
  v30[9] = @"room";
  room = self->_room;
  v13 = room;
  if (!room)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v31[9] = v13;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeFilter;
  v6 = [(INHomeFilter *)&v11 description];
  v7 = [(INHomeFilter *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_entityIdentifiers];
  [v7 if_setObjectIfNonNil:v8 forKey:@"entityIdentifiers"];

  v9 = [v6 encodeObject:self->_entityName];
  [v7 if_setObjectIfNonNil:v9 forKey:@"entityName"];

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
  [v7 if_setObjectIfNonNil:v12 forKey:@"entityType"];

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
  [v7 if_setObjectIfNonNil:v15 forKey:@"outerDeviceType"];

  v16 = [v6 encodeObject:self->_outerDeviceName];
  [v7 if_setObjectIfNonNil:v16 forKey:@"outerDeviceName"];

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
  [v7 if_setObjectIfNonNil:v19 forKey:@"deviceType"];

  v20 = [v6 encodeObject:self->_home];
  [v7 if_setObjectIfNonNil:v20 forKey:@"home"];

  v21 = [v6 encodeObject:self->_zone];
  [v7 if_setObjectIfNonNil:v21 forKey:@"zone"];

  v22 = [v6 encodeObject:self->_group];
  [v7 if_setObjectIfNonNil:v22 forKey:@"group"];

  v23 = [v6 encodeObject:self->_room];

  [v7 if_setObjectIfNonNil:v23 forKey:@"room"];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExcludeFilter];
  [v7 if_setObjectIfNonNil:v24 forKey:@"isExcludeFilter"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAllQuantifier];
  [v7 if_setObjectIfNonNil:v25 forKey:@"hasAllQuantifier"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  entityIdentifiers = self->_entityIdentifiers;
  v5 = a3;
  [v5 encodeObject:entityIdentifiers forKey:@"entityIdentifiers"];
  [v5 encodeObject:self->_entityName forKey:@"entityName"];
  [v5 encodeInteger:self->_entityType forKey:@"entityType"];
  [v5 encodeInteger:self->_outerDeviceType forKey:@"outerDeviceType"];
  [v5 encodeObject:self->_outerDeviceName forKey:@"outerDeviceName"];
  [v5 encodeInteger:self->_deviceType forKey:@"deviceType"];
  [v5 encodeObject:self->_home forKey:@"home"];
  [v5 encodeObject:self->_zone forKey:@"zone"];
  [v5 encodeObject:self->_group forKey:@"group"];
  [v5 encodeObject:self->_room forKey:@"room"];
  [v5 encodeBool:self->_isExcludeFilter forKey:@"isExcludeFilter"];
  [v5 encodeBool:self->_hasAllQuantifier forKey:@"hasAllQuantifier"];
}

- (INHomeFilter)initWithCoder:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v6 = [v3 setWithArray:v5];
  v22 = [v4 decodeObjectOfClasses:v6 forKey:@"entityIdentifiers"];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v21 = [v4 decodeIntegerForKey:@"entityType"];
  v20 = [v4 decodeIntegerForKey:@"outerDeviceType"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outerDeviceName"];
  v9 = [v4 decodeIntegerForKey:@"deviceType"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zone"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"room"];
  v14 = [v4 decodeBoolForKey:@"isExcludeFilter"];
  v15 = [v4 decodeBoolForKey:@"hasAllQuantifier"];

  BYTE1(v19) = v15;
  LOBYTE(v19) = v14;
  v16 = [(INHomeFilter *)self initWithEntityIdentifiers:v22 entityName:v7 entityType:v21 outerDeviceType:v20 outerDeviceName:v8 deviceType:v9 home:v10 zone:v11 group:v12 room:v13 isExcludeFilter:v19 hasAllQuantifier:?];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
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
  v2 = [(INHomeFilter *)self outerDeviceType];
  if ((v2 - 1) > 0x1B)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F2C0[v2 - 1];
  }
}

- (INHomeFilter)initWithEntityIdentifiers:(id)a3 home:(id)a4 scene:(id)a5 homeZone:(id)a6 group:(id)a7 room:(id)a8 accessory:(id)a9 entityType:(int64_t)a10 serviceType:(int64_t)a11 subServiceType:(int64_t)a12 isExcludeFilter:(BOOL)a13 entityName:(id)a14
{
  v14 = a14;
  if (!a14)
  {
    v14 = a5;
  }

  return [INHomeFilter initWithEntityIdentifiers:"initWithEntityIdentifiers:entityName:entityType:outerDeviceType:outerDeviceName:deviceType:home:zone:group:room:isExcludeFilter:hasAllQuantifier:" entityName:a3 entityType:v14 outerDeviceType:a10 outerDeviceName:0 deviceType:0 home:0 zone:? group:? room:? isExcludeFilter:? hasAllQuantifier:?];
}

- (INHomeFilter)initWithEntityIdentifiers:(id)a3 home:(id)a4 scene:(id)a5 homeZone:(id)a6 group:(id)a7 room:(id)a8 accessory:(id)a9 service:(id)a10 entityType:(int64_t)a11 serviceType:(int64_t)a12 subServiceType:(int64_t)a13 isExcludeFilter:(BOOL)a14
{
  v14 = a10;
  if (!a10)
  {
    v14 = a5;
  }

  return [INHomeFilter initWithEntityIdentifiers:"initWithEntityIdentifiers:entityName:entityType:outerDeviceType:outerDeviceName:deviceType:home:zone:group:room:isExcludeFilter:hasAllQuantifier:" entityName:a3 entityType:v14 outerDeviceType:a11 outerDeviceName:0 deviceType:0 home:0 zone:? group:? room:? isExcludeFilter:? hasAllQuantifier:?];
}

- (INHomeFilter)initWithEntityIdentifiers:(id)a3 home:(id)a4 scene:(id)a5 homeZone:(id)a6 group:(id)a7 room:(id)a8 accessory:(id)a9 service:(id)a10 entityType:(int64_t)a11 serviceType:(int64_t)a12 subServiceType:(int64_t)a13
{
  v13 = a10;
  if (!a10)
  {
    v13 = a5;
  }

  return [INHomeFilter initWithEntityIdentifiers:"initWithEntityIdentifiers:entityName:entityType:outerDeviceType:outerDeviceName:deviceType:home:zone:group:room:isExcludeFilter:hasAllQuantifier:" entityName:a3 entityType:v13 outerDeviceType:a11 outerDeviceName:0 deviceType:0 home:0 zone:? group:? room:? isExcludeFilter:? hasAllQuantifier:?];
}

- (INHomeFilter)initWithEntityIdentifiers:(id)a3 entityName:(id)a4 entityType:(int64_t)a5 outerDeviceType:(int64_t)a6 outerDeviceName:(id)a7 deviceType:(int64_t)a8 home:(id)a9 zone:(id)a10 group:(id)a11 room:(id)a12 isExcludeFilter:(BOOL)a13 hasAllQuantifier:(BOOL)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v43.receiver = self;
  v43.super_class = INHomeFilter;
  v26 = [(INHomeFilter *)&v43 init];
  if (v26)
  {
    v27 = [v19 copy];
    entityIdentifiers = v26->_entityIdentifiers;
    v26->_entityIdentifiers = v27;

    v29 = [v20 copy];
    entityName = v26->_entityName;
    v26->_entityName = v29;

    v26->_entityType = a5;
    v26->_outerDeviceType = a6;
    v31 = [v21 copy];
    outerDeviceName = v26->_outerDeviceName;
    v26->_outerDeviceName = v31;

    v26->_deviceType = a8;
    v33 = [v22 copy];
    home = v26->_home;
    v26->_home = v33;

    v35 = [v23 copy];
    zone = v26->_zone;
    v26->_zone = v35;

    v37 = [v24 copy];
    group = v26->_group;
    v26->_group = v37;

    v39 = [v25 copy];
    room = v26->_room;
    v26->_room = v39;

    v26->_isExcludeFilter = a13;
    v26->_hasAllQuantifier = a14;
  }

  return v26;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [v8 objectForKeyedSubscript:@"entityIdentifiers"];
    v40 = a1;
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"entityName"];
    v39 = [v7 decodeObjectOfClass:v9 from:v10];

    v11 = [v8 objectForKeyedSubscript:@"entityType"];
    v38 = INHomeEntityTypeWithString(v11);

    v12 = [v8 objectForKeyedSubscript:@"outerDeviceType"];
    v37 = INHomeDeviceTypeWithString(v12);

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"outerDeviceName"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = [v8 objectForKeyedSubscript:@"deviceType"];
    v36 = INHomeDeviceTypeWithString(v16);

    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"home"];
    v19 = [v7 decodeObjectOfClass:v17 from:v18];

    v20 = objc_opt_class();
    v21 = [v8 objectForKeyedSubscript:@"zone"];
    v22 = [v7 decodeObjectOfClass:v20 from:v21];

    v23 = objc_opt_class();
    v24 = [v8 objectForKeyedSubscript:@"group"];
    v25 = [v7 decodeObjectOfClass:v23 from:v24];

    v26 = objc_opt_class();
    v27 = [v8 objectForKeyedSubscript:@"room"];
    v28 = [v7 decodeObjectOfClass:v26 from:v27];

    v29 = [v8 objectForKeyedSubscript:@"isExcludeFilter"];
    v30 = [v29 BOOLValue];

    v31 = [v8 objectForKeyedSubscript:@"hasAllQuantifier"];
    v32 = [v31 BOOLValue];

    BYTE1(v35) = v32;
    LOBYTE(v35) = v30;
    v33 = [[v40 alloc] initWithEntityIdentifiers:v41 entityName:v39 entityType:v38 outerDeviceType:v37 outerDeviceName:v15 deviceType:v36 home:v19 zone:v22 group:v25 room:v28 isExcludeFilter:v35 hasAllQuantifier:?];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end