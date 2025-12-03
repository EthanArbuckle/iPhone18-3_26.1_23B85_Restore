@interface _INPBHomeEntity
- (BOOL)isEqual:(id)equal;
- (_INPBHomeEntity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)type;
- (int)StringAsDeviceTypes:(id)types;
- (int)StringAsEntityType:(id)type;
- (int)StringAsSceneType:(id)type;
- (unint64_t)hash;
- (void)addDeviceTypes:(int)types;
- (void)addZones:(id)zones;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceType:(int)type;
- (void)setEntityIdentifier:(id)identifier;
- (void)setEntityType:(int)type;
- (void)setHasEntityType:(BOOL)type;
- (void)setHasSceneType:(BOOL)type;
- (void)setSceneType:(int)type;
- (void)setZones:(id)zones;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeEntity

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    deviceType = [(_INPBHomeEntity *)self deviceType];
    if (deviceType < 0x32 && ((0x3FFFFF79FFEEFuLL >> deviceType) & 1) != 0)
    {
      v5 = *(&off_1E727E4F8 + deviceType);
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deviceType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (self->_deviceTypes.count)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBHomeEntity deviceTypesCount](self, "deviceTypesCount")}];
    if ([(_INPBHomeEntity *)self deviceTypesCount])
    {
      v7 = 0;
      do
      {
        v8 = self->_deviceTypes.list[v7];
        if (v8 < 0x32 && ((0x3FFFFF79FFEEFuLL >> v8) & 1) != 0)
        {
          v9 = *(&off_1E727E4F8 + v8);
        }

        else
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deviceTypes.list[v7]];
        }

        [v6 addObject:v9];

        ++v7;
      }

      while (v7 < [(_INPBHomeEntity *)self deviceTypesCount]);
    }

    [dictionary setObject:v6 forKeyedSubscript:@"deviceTypes"];
  }

  if (self->_entityIdentifier)
  {
    entityIdentifier = [(_INPBHomeEntity *)self entityIdentifier];
    v11 = [entityIdentifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"entityIdentifier"];
  }

  entityName = [(_INPBHomeEntity *)self entityName];
  dictionaryRepresentation = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityName"];

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    entityType = [(_INPBHomeEntity *)self entityType];
    if (entityType >= 7)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v15 = *(&off_1E727E688 + entityType);
    }

    [dictionary setObject:v15 forKeyedSubscript:@"entityType"];
  }

  group = [(_INPBHomeEntity *)self group];
  dictionaryRepresentation2 = [group dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"group"];

  home = [(_INPBHomeEntity *)self home];
  dictionaryRepresentation3 = [home dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"home"];

  name = [(_INPBHomeEntity *)self name];
  dictionaryRepresentation4 = [name dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"name"];

  room = [(_INPBHomeEntity *)self room];
  dictionaryRepresentation5 = [room dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"room"];

  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    sceneType = [(_INPBHomeEntity *)self sceneType];
    if (sceneType >= 5)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sceneType];
    }

    else
    {
      v25 = *(&off_1E727E6C0 + sceneType);
    }

    [dictionary setObject:v25 forKeyedSubscript:@"sceneType"];
  }

  v26 = [(_INPBHomeEntity *)self zone];
  dictionaryRepresentation6 = [v26 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"zone"];

  if ([(NSArray *)self->_zones count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = self->_zones;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation7 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation7];
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v31);
    }

    [dictionary setObject:array forKeyedSubscript:@"zones"];
  }

  v35 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    v15 = 2654435761 * self->_deviceType;
  }

  else
  {
    v15 = 0;
  }

  v3 = PBRepeatedInt32Hash();
  v4 = [(NSString *)self->_entityIdentifier hash];
  v5 = [(_INPBDataString *)self->_entityName hash];
  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    v6 = 2654435761 * self->_entityType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBDataString *)self->_group hash];
  v8 = [(_INPBDataString *)self->_home hash];
  v9 = [(_INPBString *)self->_name hash];
  v10 = [(_INPBDataString *)self->_room hash];
  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    v11 = 2654435761 * self->_sceneType;
  }

  else
  {
    v11 = 0;
  }

  v12 = v3 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v13 = v10 ^ v11 ^ [(_INPBDataString *)self->_zone hash];
  return v12 ^ v13 ^ [(NSArray *)self->_zones hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  hasDeviceType = [(_INPBHomeEntity *)self hasDeviceType];
  if (hasDeviceType != [equalCopy hasDeviceType])
  {
    goto LABEL_55;
  }

  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    if ([equalCopy hasDeviceType])
    {
      deviceType = self->_deviceType;
      if (deviceType != [equalCopy deviceType])
      {
        goto LABEL_55;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_55;
  }

  entityIdentifier = [(_INPBHomeEntity *)self entityIdentifier];
  entityIdentifier2 = [equalCopy entityIdentifier];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    goto LABEL_54;
  }

  entityIdentifier3 = [(_INPBHomeEntity *)self entityIdentifier];
  if (entityIdentifier3)
  {
    v10 = entityIdentifier3;
    entityIdentifier4 = [(_INPBHomeEntity *)self entityIdentifier];
    entityIdentifier5 = [equalCopy entityIdentifier];
    v13 = [entityIdentifier4 isEqual:entityIdentifier5];

    if (!v13)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  entityIdentifier = [(_INPBHomeEntity *)self entityName];
  entityIdentifier2 = [equalCopy entityName];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    goto LABEL_54;
  }

  entityName = [(_INPBHomeEntity *)self entityName];
  if (entityName)
  {
    v15 = entityName;
    entityName2 = [(_INPBHomeEntity *)self entityName];
    entityName3 = [equalCopy entityName];
    v18 = [entityName2 isEqual:entityName3];

    if (!v18)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  hasEntityType = [(_INPBHomeEntity *)self hasEntityType];
  if (hasEntityType != [equalCopy hasEntityType])
  {
    goto LABEL_55;
  }

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    if ([equalCopy hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [equalCopy entityType])
      {
        goto LABEL_55;
      }
    }
  }

  entityIdentifier = [(_INPBHomeEntity *)self group];
  entityIdentifier2 = [equalCopy group];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    goto LABEL_54;
  }

  group = [(_INPBHomeEntity *)self group];
  if (group)
  {
    v22 = group;
    group2 = [(_INPBHomeEntity *)self group];
    group3 = [equalCopy group];
    v25 = [group2 isEqual:group3];

    if (!v25)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  entityIdentifier = [(_INPBHomeEntity *)self home];
  entityIdentifier2 = [equalCopy home];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    goto LABEL_54;
  }

  home = [(_INPBHomeEntity *)self home];
  if (home)
  {
    v27 = home;
    home2 = [(_INPBHomeEntity *)self home];
    home3 = [equalCopy home];
    v30 = [home2 isEqual:home3];

    if (!v30)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  entityIdentifier = [(_INPBHomeEntity *)self name];
  entityIdentifier2 = [equalCopy name];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    goto LABEL_54;
  }

  name = [(_INPBHomeEntity *)self name];
  if (name)
  {
    v32 = name;
    name2 = [(_INPBHomeEntity *)self name];
    name3 = [equalCopy name];
    v35 = [name2 isEqual:name3];

    if (!v35)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  entityIdentifier = [(_INPBHomeEntity *)self room];
  entityIdentifier2 = [equalCopy room];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    goto LABEL_54;
  }

  room = [(_INPBHomeEntity *)self room];
  if (room)
  {
    v37 = room;
    room2 = [(_INPBHomeEntity *)self room];
    room3 = [equalCopy room];
    v40 = [room2 isEqual:room3];

    if (!v40)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  hasSceneType = [(_INPBHomeEntity *)self hasSceneType];
  if (hasSceneType != [equalCopy hasSceneType])
  {
    goto LABEL_55;
  }

  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    if ([equalCopy hasSceneType])
    {
      sceneType = self->_sceneType;
      if (sceneType != [equalCopy sceneType])
      {
        goto LABEL_55;
      }
    }
  }

  entityIdentifier = [(_INPBHomeEntity *)self zone];
  entityIdentifier2 = [equalCopy zone];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    goto LABEL_54;
  }

  v43 = [(_INPBHomeEntity *)self zone];
  if (v43)
  {
    v44 = v43;
    v45 = [(_INPBHomeEntity *)self zone];
    v46 = [equalCopy zone];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  entityIdentifier = [(_INPBHomeEntity *)self zones];
  entityIdentifier2 = [equalCopy zones];
  if ((entityIdentifier != 0) != (entityIdentifier2 == 0))
  {
    zones = [(_INPBHomeEntity *)self zones];
    if (!zones)
    {

LABEL_58:
      v53 = 1;
      goto LABEL_56;
    }

    v49 = zones;
    zones2 = [(_INPBHomeEntity *)self zones];
    zones3 = [equalCopy zones];
    v52 = [zones2 isEqual:zones3];

    if (v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
LABEL_54:
  }

LABEL_55:
  v53 = 0;
LABEL_56:

  return v53;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBHomeEntity allocWithZone:](_INPBHomeEntity init];
  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    [(_INPBHomeEntity *)v5 setDeviceType:[(_INPBHomeEntity *)self deviceType]];
  }

  PBRepeatedInt32Copy();
  v6 = [(NSString *)self->_entityIdentifier copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setEntityIdentifier:v6];

  v7 = [(_INPBDataString *)self->_entityName copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setEntityName:v7];

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    [(_INPBHomeEntity *)v5 setEntityType:[(_INPBHomeEntity *)self entityType]];
  }

  v8 = [(_INPBDataString *)self->_group copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setGroup:v8];

  v9 = [(_INPBDataString *)self->_home copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setHome:v9];

  v10 = [(_INPBString *)self->_name copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setName:v10];

  v11 = [(_INPBDataString *)self->_room copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setRoom:v11];

  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    [(_INPBHomeEntity *)v5 setSceneType:[(_INPBHomeEntity *)self sceneType]];
  }

  v12 = [(_INPBDataString *)self->_zone copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setZone:v12];

  v13 = [(NSArray *)self->_zones copyWithZone:zone];
  [(_INPBHomeEntity *)v5 setZones:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeEntity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeEntity *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBHomeEntity *)self clearDeviceTypes];
  v3.receiver = self;
  v3.super_class = _INPBHomeEntity;
  [(_INPBHomeEntity *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    deviceType = self->_deviceType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_deviceTypes.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_deviceTypes.list[v6];
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < self->_deviceTypes.count);
  }

  entityIdentifier = [(_INPBHomeEntity *)self entityIdentifier];

  if (entityIdentifier)
  {
    entityIdentifier = self->_entityIdentifier;
    PBDataWriterWriteStringField();
  }

  entityName = [(_INPBHomeEntity *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBHomeEntity *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  group = [(_INPBHomeEntity *)self group];

  if (group)
  {
    group2 = [(_INPBHomeEntity *)self group];
    PBDataWriterWriteSubmessage();
  }

  home = [(_INPBHomeEntity *)self home];

  if (home)
  {
    home2 = [(_INPBHomeEntity *)self home];
    PBDataWriterWriteSubmessage();
  }

  name = [(_INPBHomeEntity *)self name];

  if (name)
  {
    name2 = [(_INPBHomeEntity *)self name];
    PBDataWriterWriteSubmessage();
  }

  room = [(_INPBHomeEntity *)self room];

  if (room)
  {
    room2 = [(_INPBHomeEntity *)self room];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    sceneType = self->_sceneType;
    PBDataWriterWriteInt32Field();
  }

  v22 = [(_INPBHomeEntity *)self zone];

  if (v22)
  {
    v23 = [(_INPBHomeEntity *)self zone];
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self->_zones;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)addZones:(id)zones
{
  zonesCopy = zones;
  zones = self->_zones;
  v8 = zonesCopy;
  if (!zones)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_zones;
    self->_zones = array;

    zonesCopy = v8;
    zones = self->_zones;
  }

  [(NSArray *)zones addObject:zonesCopy];
}

- (void)setZones:(id)zones
{
  v4 = [zones mutableCopy];
  zones = self->_zones;
  self->_zones = v4;

  MEMORY[0x1EEE66BB8](v4, zones);
}

- (int)StringAsSceneType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"USER_DEFINED"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"GOOD_MORNING"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"IM_LEAVING"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"IM_HOME"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GOOD_NIGHT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSceneType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSceneType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_sceneType = type;
  }
}

- (int)StringAsEntityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"HOME"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ZONE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ROOM"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GROUP"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SCENE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"DEVICE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEntityType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setEntityType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_entityType = type;
  }
}

- (void)setEntityIdentifier:(id)identifier
{
  v4 = [identifier copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, entityIdentifier);
}

- (int)StringAsDeviceTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy isEqualToString:@"LIGHTBULB"])
  {
    v4 = 0;
  }

  else if ([typesCopy isEqualToString:@"SWITCH"])
  {
    v4 = 1;
  }

  else if ([typesCopy isEqualToString:@"THERMOSTAT"])
  {
    v4 = 2;
  }

  else if ([typesCopy isEqualToString:@"GARAGE_DOOR_OPENER"])
  {
    v4 = 3;
  }

  else if ([typesCopy isEqualToString:@"FAN"])
  {
    v4 = 5;
  }

  else if ([typesCopy isEqualToString:@"OUTLET"])
  {
    v4 = 6;
  }

  else if ([typesCopy isEqualToString:@"DOOR_LOCK"])
  {
    v4 = 7;
  }

  else if ([typesCopy isEqualToString:@"AIR_QUALITY_SENSOR"])
  {
    v4 = 9;
  }

  else if ([typesCopy isEqualToString:@"BATTERY"])
  {
    v4 = 10;
  }

  else if ([typesCopy isEqualToString:@"CARBON_DIOXIDE_SENSOR"])
  {
    v4 = 11;
  }

  else if ([typesCopy isEqualToString:@"CARBON_MONOXIDE_SENSOR"])
  {
    v4 = 12;
  }

  else if ([typesCopy isEqualToString:@"CONTACT_SENSOR"])
  {
    v4 = 13;
  }

  else if ([typesCopy isEqualToString:@"DOOR"])
  {
    v4 = 14;
  }

  else if ([typesCopy isEqualToString:@"HUMIDITY_SENSOR"])
  {
    v4 = 15;
  }

  else if ([typesCopy isEqualToString:@"LEAK_SENSOR"])
  {
    v4 = 16;
  }

  else if ([typesCopy isEqualToString:@"LIGHT_SENSOR"])
  {
    v4 = 17;
  }

  else if ([typesCopy isEqualToString:@"MOTION_SENSOR"])
  {
    v4 = 18;
  }

  else if ([typesCopy isEqualToString:@"OCCUPANCY_SENSOR"])
  {
    v4 = 19;
  }

  else if ([typesCopy isEqualToString:@"SECURITY_SYSTEM"])
  {
    v4 = 20;
  }

  else if ([typesCopy isEqualToString:@"SMOKE_SENSOR"])
  {
    v4 = 23;
  }

  else if ([typesCopy isEqualToString:@"TEMPERATURE_SENSOR"])
  {
    v4 = 24;
  }

  else if ([typesCopy isEqualToString:@"WINDOW"])
  {
    v4 = 25;
  }

  else if ([typesCopy isEqualToString:@"SHADES"])
  {
    v4 = 26;
  }

  else if ([typesCopy isEqualToString:@"IP_CAMERA"])
  {
    v4 = 28;
  }

  else if ([typesCopy isEqualToString:@"MICROPHONE"])
  {
    v4 = 29;
  }

  else if ([typesCopy isEqualToString:@"SPEAKER"])
  {
    v4 = 30;
  }

  else if ([typesCopy isEqualToString:@"MOTORIZED_DOOR"])
  {
    v4 = 31;
  }

  else if ([typesCopy isEqualToString:@"MOTORIZED_WINDOW"])
  {
    v4 = 32;
  }

  else if ([typesCopy isEqualToString:@"HEATER_COOLER"])
  {
    v4 = 33;
  }

  else if ([typesCopy isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER"])
  {
    v4 = 34;
  }

  else if ([typesCopy isEqualToString:@"SLAT"])
  {
    v4 = 35;
  }

  else if ([typesCopy isEqualToString:@"SPRINKLER"])
  {
    v4 = 36;
  }

  else if ([typesCopy isEqualToString:@"VALVE"])
  {
    v4 = 37;
  }

  else if ([typesCopy isEqualToString:@"FAUCET"])
  {
    v4 = 38;
  }

  else if ([typesCopy isEqualToString:@"SHOWER"])
  {
    v4 = 39;
  }

  else if ([typesCopy isEqualToString:@"TELEVISION"])
  {
    v4 = 40;
  }

  else if ([typesCopy isEqualToString:@"CUSTOM"])
  {
    v4 = 41;
  }

  else if ([typesCopy isEqualToString:@"DOOR_BELL"])
  {
    v4 = 42;
  }

  else if ([typesCopy isEqualToString:@"AIR_PURIFIER"])
  {
    v4 = 43;
  }

  else if ([typesCopy isEqualToString:@"FILTER"])
  {
    v4 = 44;
  }

  else if ([typesCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 45;
  }

  else if ([typesCopy isEqualToString:@"CAMERA_RECORDING"])
  {
    v4 = 46;
  }

  else if ([typesCopy isEqualToString:@"SENSOR"])
  {
    v4 = 47;
  }

  else if ([typesCopy isEqualToString:@"AIRPORT_EXPRESS"])
  {
    v4 = 48;
  }

  else if ([typesCopy isEqualToString:@"SINK"])
  {
    v4 = 49;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addDeviceTypes:(int)types
{
  if (types != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"LIGHTBULB"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SWITCH"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"THERMOSTAT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GARAGE_DOOR_OPENER"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"FAN"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"OUTLET"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"DOOR_LOCK"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"AIR_QUALITY_SENSOR"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"BATTERY"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"CARBON_DIOXIDE_SENSOR"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"CARBON_MONOXIDE_SENSOR"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"CONTACT_SENSOR"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"DOOR"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"HUMIDITY_SENSOR"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"LEAK_SENSOR"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"LIGHT_SENSOR"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"MOTION_SENSOR"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"OCCUPANCY_SENSOR"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"SECURITY_SYSTEM"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"SMOKE_SENSOR"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"TEMPERATURE_SENSOR"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"WINDOW"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"SHADES"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"IP_CAMERA"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"MICROPHONE"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"SPEAKER"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"MOTORIZED_DOOR"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"MOTORIZED_WINDOW"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"HEATER_COOLER"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"SLAT"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"SPRINKLER"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"VALVE"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"FAUCET"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"SHOWER"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"TELEVISION"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"CUSTOM"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"DOOR_BELL"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"AIR_PURIFIER"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"FILTER"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 45;
  }

  else if ([typeCopy isEqualToString:@"CAMERA_RECORDING"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"SENSOR"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"AIRPORT_EXPRESS"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"SINK"])
  {
    v4 = 49;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDeviceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceType = type;
  }
}

@end