@interface _INPBHomeEntity
- (BOOL)isEqual:(id)a3;
- (_INPBHomeEntity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)a3;
- (int)StringAsDeviceTypes:(id)a3;
- (int)StringAsEntityType:(id)a3;
- (int)StringAsSceneType:(id)a3;
- (unint64_t)hash;
- (void)addDeviceTypes:(int)a3;
- (void)addZones:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDeviceType:(int)a3;
- (void)setEntityIdentifier:(id)a3;
- (void)setEntityType:(int)a3;
- (void)setHasEntityType:(BOOL)a3;
- (void)setHasSceneType:(BOOL)a3;
- (void)setSceneType:(int)a3;
- (void)setZones:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeEntity

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    v4 = [(_INPBHomeEntity *)self deviceType];
    if (v4 < 0x32 && ((0x3FFFFF79FFEEFuLL >> v4) & 1) != 0)
    {
      v5 = *(&off_1E727E4F8 + v4);
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"deviceType"];
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

    [v3 setObject:v6 forKeyedSubscript:@"deviceTypes"];
  }

  if (self->_entityIdentifier)
  {
    v10 = [(_INPBHomeEntity *)self entityIdentifier];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"entityIdentifier"];
  }

  v12 = [(_INPBHomeEntity *)self entityName];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"entityName"];

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    v14 = [(_INPBHomeEntity *)self entityType];
    if (v14 >= 7)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = *(&off_1E727E688 + v14);
    }

    [v3 setObject:v15 forKeyedSubscript:@"entityType"];
  }

  v16 = [(_INPBHomeEntity *)self group];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"group"];

  v18 = [(_INPBHomeEntity *)self home];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"home"];

  v20 = [(_INPBHomeEntity *)self name];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"name"];

  v22 = [(_INPBHomeEntity *)self room];
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"room"];

  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    v24 = [(_INPBHomeEntity *)self sceneType];
    if (v24 >= 5)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v24];
    }

    else
    {
      v25 = *(&off_1E727E6C0 + v24);
    }

    [v3 setObject:v25 forKeyedSubscript:@"sceneType"];
  }

  v26 = [(_INPBHomeEntity *)self zone];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"zone"];

  if ([(NSArray *)self->_zones count])
  {
    v28 = [MEMORY[0x1E695DF70] array];
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

          v34 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v28 addObject:v34];
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKeyedSubscript:@"zones"];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  v5 = [(_INPBHomeEntity *)self hasDeviceType];
  if (v5 != [v4 hasDeviceType])
  {
    goto LABEL_55;
  }

  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    if ([v4 hasDeviceType])
    {
      deviceType = self->_deviceType;
      if (deviceType != [v4 deviceType])
      {
        goto LABEL_55;
      }
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_55;
  }

  v7 = [(_INPBHomeEntity *)self entityIdentifier];
  v8 = [v4 entityIdentifier];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_54;
  }

  v9 = [(_INPBHomeEntity *)self entityIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBHomeEntity *)self entityIdentifier];
    v12 = [v4 entityIdentifier];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v7 = [(_INPBHomeEntity *)self entityName];
  v8 = [v4 entityName];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_54;
  }

  v14 = [(_INPBHomeEntity *)self entityName];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBHomeEntity *)self entityName];
    v17 = [v4 entityName];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v19 = [(_INPBHomeEntity *)self hasEntityType];
  if (v19 != [v4 hasEntityType])
  {
    goto LABEL_55;
  }

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    if ([v4 hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [v4 entityType])
      {
        goto LABEL_55;
      }
    }
  }

  v7 = [(_INPBHomeEntity *)self group];
  v8 = [v4 group];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_54;
  }

  v21 = [(_INPBHomeEntity *)self group];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBHomeEntity *)self group];
    v24 = [v4 group];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v7 = [(_INPBHomeEntity *)self home];
  v8 = [v4 home];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_54;
  }

  v26 = [(_INPBHomeEntity *)self home];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBHomeEntity *)self home];
    v29 = [v4 home];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v7 = [(_INPBHomeEntity *)self name];
  v8 = [v4 name];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_54;
  }

  v31 = [(_INPBHomeEntity *)self name];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBHomeEntity *)self name];
    v34 = [v4 name];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v7 = [(_INPBHomeEntity *)self room];
  v8 = [v4 room];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_54;
  }

  v36 = [(_INPBHomeEntity *)self room];
  if (v36)
  {
    v37 = v36;
    v38 = [(_INPBHomeEntity *)self room];
    v39 = [v4 room];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v41 = [(_INPBHomeEntity *)self hasSceneType];
  if (v41 != [v4 hasSceneType])
  {
    goto LABEL_55;
  }

  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    if ([v4 hasSceneType])
    {
      sceneType = self->_sceneType;
      if (sceneType != [v4 sceneType])
      {
        goto LABEL_55;
      }
    }
  }

  v7 = [(_INPBHomeEntity *)self zone];
  v8 = [v4 zone];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_54;
  }

  v43 = [(_INPBHomeEntity *)self zone];
  if (v43)
  {
    v44 = v43;
    v45 = [(_INPBHomeEntity *)self zone];
    v46 = [v4 zone];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v7 = [(_INPBHomeEntity *)self zones];
  v8 = [v4 zones];
  if ((v7 != 0) != (v8 == 0))
  {
    v48 = [(_INPBHomeEntity *)self zones];
    if (!v48)
    {

LABEL_58:
      v53 = 1;
      goto LABEL_56;
    }

    v49 = v48;
    v50 = [(_INPBHomeEntity *)self zones];
    v51 = [v4 zones];
    v52 = [v50 isEqual:v51];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBHomeEntity allocWithZone:](_INPBHomeEntity init];
  if ([(_INPBHomeEntity *)self hasDeviceType])
  {
    [(_INPBHomeEntity *)v5 setDeviceType:[(_INPBHomeEntity *)self deviceType]];
  }

  PBRepeatedInt32Copy();
  v6 = [(NSString *)self->_entityIdentifier copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setEntityIdentifier:v6];

  v7 = [(_INPBDataString *)self->_entityName copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setEntityName:v7];

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    [(_INPBHomeEntity *)v5 setEntityType:[(_INPBHomeEntity *)self entityType]];
  }

  v8 = [(_INPBDataString *)self->_group copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setGroup:v8];

  v9 = [(_INPBDataString *)self->_home copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setHome:v9];

  v10 = [(_INPBString *)self->_name copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setName:v10];

  v11 = [(_INPBDataString *)self->_room copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setRoom:v11];

  if ([(_INPBHomeEntity *)self hasSceneType])
  {
    [(_INPBHomeEntity *)v5 setSceneType:[(_INPBHomeEntity *)self sceneType]];
  }

  v12 = [(_INPBDataString *)self->_zone copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setZone:v12];

  v13 = [(NSArray *)self->_zones copyWithZone:a3];
  [(_INPBHomeEntity *)v5 setZones:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeEntity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeEntity *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBHomeEntity *)self clearDeviceTypes];
  v3.receiver = self;
  v3.super_class = _INPBHomeEntity;
  [(_INPBHomeEntity *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v8 = [(_INPBHomeEntity *)self entityIdentifier];

  if (v8)
  {
    entityIdentifier = self->_entityIdentifier;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBHomeEntity *)self entityName];

  if (v10)
  {
    v11 = [(_INPBHomeEntity *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeEntity *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  v13 = [(_INPBHomeEntity *)self group];

  if (v13)
  {
    v14 = [(_INPBHomeEntity *)self group];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBHomeEntity *)self home];

  if (v15)
  {
    v16 = [(_INPBHomeEntity *)self home];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBHomeEntity *)self name];

  if (v17)
  {
    v18 = [(_INPBHomeEntity *)self name];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_INPBHomeEntity *)self room];

  if (v19)
  {
    v20 = [(_INPBHomeEntity *)self room];
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

- (void)addZones:(id)a3
{
  v4 = a3;
  zones = self->_zones;
  v8 = v4;
  if (!zones)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_zones;
    self->_zones = v6;

    v4 = v8;
    zones = self->_zones;
  }

  [(NSArray *)zones addObject:v4];
}

- (void)setZones:(id)a3
{
  v4 = [a3 mutableCopy];
  zones = self->_zones;
  self->_zones = v4;

  MEMORY[0x1EEE66BB8](v4, zones);
}

- (int)StringAsSceneType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"USER_DEFINED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GOOD_MORNING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IM_LEAVING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"IM_HOME"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GOOD_NIGHT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSceneType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSceneType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_sceneType = a3;
  }
}

- (int)StringAsEntityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HOME"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ZONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ROOM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GROUP"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SCENE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TRIGGER"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DEVICE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEntityType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setEntityType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_entityType = a3;
  }
}

- (void)setEntityIdentifier:(id)a3
{
  v4 = [a3 copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, entityIdentifier);
}

- (int)StringAsDeviceTypes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LIGHTBULB"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SWITCH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"THERMOSTAT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GARAGE_DOOR_OPENER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FAN"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"OUTLET"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DOOR_LOCK"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AIR_QUALITY_SENSOR"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"BATTERY"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CARBON_DIOXIDE_SENSOR"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CARBON_MONOXIDE_SENSOR"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CONTACT_SENSOR"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"DOOR"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"HUMIDITY_SENSOR"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"LEAK_SENSOR"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"LIGHT_SENSOR"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"MOTION_SENSOR"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"OCCUPANCY_SENSOR"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SECURITY_SYSTEM"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SMOKE_SENSOR"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"TEMPERATURE_SENSOR"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"WINDOW"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"SHADES"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"IP_CAMERA"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"MICROPHONE"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SPEAKER"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"MOTORIZED_DOOR"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"MOTORIZED_WINDOW"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"HEATER_COOLER"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"SLAT"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"SPRINKLER"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"VALVE"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"FAUCET"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"SHOWER"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"TELEVISION"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"DOOR_BELL"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"AIR_PURIFIER"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"FILTER"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"CAMERA_RECORDING"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SENSOR"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"AIRPORT_EXPRESS"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"SINK"])
  {
    v4 = 49;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addDeviceTypes:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (int)StringAsDeviceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LIGHTBULB"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SWITCH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"THERMOSTAT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GARAGE_DOOR_OPENER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FAN"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"OUTLET"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DOOR_LOCK"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AIR_QUALITY_SENSOR"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"BATTERY"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CARBON_DIOXIDE_SENSOR"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CARBON_MONOXIDE_SENSOR"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CONTACT_SENSOR"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"DOOR"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"HUMIDITY_SENSOR"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"LEAK_SENSOR"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"LIGHT_SENSOR"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"MOTION_SENSOR"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"OCCUPANCY_SENSOR"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SECURITY_SYSTEM"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SMOKE_SENSOR"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"TEMPERATURE_SENSOR"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"WINDOW"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"SHADES"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"IP_CAMERA"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"MICROPHONE"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SPEAKER"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"MOTORIZED_DOOR"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"MOTORIZED_WINDOW"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"HEATER_COOLER"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"SLAT"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"SPRINKLER"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"VALVE"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"FAUCET"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"SHOWER"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"TELEVISION"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"DOOR_BELL"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"AIR_PURIFIER"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"FILTER"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"CAMERA_RECORDING"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"SENSOR"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"AIRPORT_EXPRESS"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"SINK"])
  {
    v4 = 49;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDeviceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceType = a3;
  }
}

@end