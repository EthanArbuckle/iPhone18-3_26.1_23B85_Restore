@interface _INPBHomeFilter
- (BOOL)isEqual:(id)a3;
- (_INPBHomeFilter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)a3;
- (int)StringAsEntityType:(id)a3;
- (int)StringAsOuterDeviceType:(id)a3;
- (int)StringAsServiceType:(id)a3;
- (int)StringAsSubServiceType:(id)a3;
- (unint64_t)hash;
- (void)addEntityIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDeviceType:(int)a3;
- (void)setEntityIdentifiers:(id)a3;
- (void)setEntityType:(int)a3;
- (void)setHasEntityType:(BOOL)a3;
- (void)setHasHasAllQuantifier:(BOOL)a3;
- (void)setHasIsExcludeFilter:(BOOL)a3;
- (void)setHasOuterDeviceType:(BOOL)a3;
- (void)setHasServiceType:(BOOL)a3;
- (void)setHasSubServiceType:(BOOL)a3;
- (void)setOuterDeviceType:(int)a3;
- (void)setServiceType:(int)a3;
- (void)setSubServiceType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeFilter

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBHomeFilter *)self accessory];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"accessory"];

  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    v6 = [(_INPBHomeFilter *)self deviceType];
    if (v6 < 0x32 && ((0x3FFFFF79FFEEFuLL >> v6) & 1) != 0)
    {
      v7 = off_1E727DA50[v6];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"deviceType"];
  }

  if (self->_entityIdentifiers)
  {
    v8 = [(_INPBHomeFilter *)self entityIdentifiers];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"entityIdentifiers"];
  }

  v10 = [(_INPBHomeFilter *)self entityName];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"entityName"];

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    v12 = [(_INPBHomeFilter *)self entityType];
    if (v12 >= 7)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E727DA18[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"entityType"];
  }

  v14 = [(_INPBHomeFilter *)self group];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"group"];

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBHomeFilter hasAllQuantifier](self, "hasAllQuantifier")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasAllQuantifier"];
  }

  v17 = [(_INPBHomeFilter *)self home];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"home"];

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBHomeFilter isExcludeFilter](self, "isExcludeFilter")}];
    [v3 setObject:v19 forKeyedSubscript:@"isExcludeFilter"];
  }

  v20 = [(_INPBHomeFilter *)self outerDeviceName];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"outerDeviceName"];

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    v22 = [(_INPBHomeFilter *)self outerDeviceType];
    if (v22 < 0x32 && ((0x3FFFFF79FFEEFuLL >> v22) & 1) != 0)
    {
      v23 = off_1E727DA50[v22];
    }

    else
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v22];
    }

    [v3 setObject:v23 forKeyedSubscript:@"outerDeviceType"];
  }

  v24 = [(_INPBHomeFilter *)self room];
  v25 = [v24 dictionaryRepresentation];
  [v3 setObject:v25 forKeyedSubscript:@"room"];

  v26 = [(_INPBHomeFilter *)self scene];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"scene"];

  v28 = [(_INPBHomeFilter *)self service];
  v29 = [v28 dictionaryRepresentation];
  [v3 setObject:v29 forKeyedSubscript:@"service"];

  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    v30 = [(_INPBHomeFilter *)self serviceType];
    if (v30 >= 0x27)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_1E727DBE0[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"serviceType"];
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    v32 = [(_INPBHomeFilter *)self subServiceType];
    if ((v32 - 1) >= 4)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v32];
    }

    else
    {
      v33 = off_1E727DD18[(v32 - 1)];
    }

    [v3 setObject:v33 forKeyedSubscript:@"subServiceType"];
  }

  v34 = [(_INPBHomeFilter *)self zone];
  v35 = [v34 dictionaryRepresentation];
  [v3 setObject:v35 forKeyedSubscript:@"zone"];

  return v3;
}

- (unint64_t)hash
{
  v19 = [(_INPBDataString *)self->_accessory hash];
  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    v18 = 2654435761 * self->_deviceType;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(NSArray *)self->_entityIdentifiers hash];
  v16 = [(_INPBDataString *)self->_entityName hash];
  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    v15 = 2654435761 * self->_entityType;
  }

  else
  {
    v15 = 0;
  }

  v14 = [(_INPBDataString *)self->_group hash];
  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    v13 = 2654435761 * self->_hasAllQuantifier;
  }

  else
  {
    v13 = 0;
  }

  v3 = [(_INPBDataString *)self->_home hash];
  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    v4 = 2654435761 * self->_isExcludeFilter;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBDataString *)self->_outerDeviceName hash];
  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    v6 = 2654435761 * self->_outerDeviceType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBDataString *)self->_room hash];
  v8 = [(_INPBDataString *)self->_scene hash];
  v9 = [(_INPBDataString *)self->_service hash];
  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    v10 = 2654435761 * self->_serviceType;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    v11 = 2654435761 * self->_subServiceType;
  }

  else
  {
    v11 = 0;
  }

  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_INPBDataString *)self->_zone hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_80;
  }

  v5 = [(_INPBHomeFilter *)self accessory];
  v6 = [v4 accessory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v7 = [(_INPBHomeFilter *)self accessory];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBHomeFilter *)self accessory];
    v10 = [v4 accessory];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v12 = [(_INPBHomeFilter *)self hasDeviceType];
  if (v12 != [v4 hasDeviceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    if ([v4 hasDeviceType])
    {
      deviceType = self->_deviceType;
      if (deviceType != [v4 deviceType])
      {
        goto LABEL_80;
      }
    }
  }

  v5 = [(_INPBHomeFilter *)self entityIdentifiers];
  v6 = [v4 entityIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v14 = [(_INPBHomeFilter *)self entityIdentifiers];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBHomeFilter *)self entityIdentifiers];
    v17 = [v4 entityIdentifiers];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeFilter *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v19 = [(_INPBHomeFilter *)self entityName];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBHomeFilter *)self entityName];
    v22 = [v4 entityName];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v24 = [(_INPBHomeFilter *)self hasEntityType];
  if (v24 != [v4 hasEntityType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    if ([v4 hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [v4 entityType])
      {
        goto LABEL_80;
      }
    }
  }

  v5 = [(_INPBHomeFilter *)self group];
  v6 = [v4 group];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v26 = [(_INPBHomeFilter *)self group];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBHomeFilter *)self group];
    v29 = [v4 group];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v31 = [(_INPBHomeFilter *)self hasHasAllQuantifier];
  if (v31 != [v4 hasHasAllQuantifier])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    if ([v4 hasHasAllQuantifier])
    {
      hasAllQuantifier = self->_hasAllQuantifier;
      if (hasAllQuantifier != [v4 hasAllQuantifier])
      {
        goto LABEL_80;
      }
    }
  }

  v5 = [(_INPBHomeFilter *)self home];
  v6 = [v4 home];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v33 = [(_INPBHomeFilter *)self home];
  if (v33)
  {
    v34 = v33;
    v35 = [(_INPBHomeFilter *)self home];
    v36 = [v4 home];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v38 = [(_INPBHomeFilter *)self hasIsExcludeFilter];
  if (v38 != [v4 hasIsExcludeFilter])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    if ([v4 hasIsExcludeFilter])
    {
      isExcludeFilter = self->_isExcludeFilter;
      if (isExcludeFilter != [v4 isExcludeFilter])
      {
        goto LABEL_80;
      }
    }
  }

  v5 = [(_INPBHomeFilter *)self outerDeviceName];
  v6 = [v4 outerDeviceName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v40 = [(_INPBHomeFilter *)self outerDeviceName];
  if (v40)
  {
    v41 = v40;
    v42 = [(_INPBHomeFilter *)self outerDeviceName];
    v43 = [v4 outerDeviceName];
    v44 = [v42 isEqual:v43];

    if (!v44)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v45 = [(_INPBHomeFilter *)self hasOuterDeviceType];
  if (v45 != [v4 hasOuterDeviceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    if ([v4 hasOuterDeviceType])
    {
      outerDeviceType = self->_outerDeviceType;
      if (outerDeviceType != [v4 outerDeviceType])
      {
        goto LABEL_80;
      }
    }
  }

  v5 = [(_INPBHomeFilter *)self room];
  v6 = [v4 room];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v47 = [(_INPBHomeFilter *)self room];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBHomeFilter *)self room];
    v50 = [v4 room];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeFilter *)self scene];
  v6 = [v4 scene];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v52 = [(_INPBHomeFilter *)self scene];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBHomeFilter *)self scene];
    v55 = [v4 scene];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeFilter *)self service];
  v6 = [v4 service];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_79;
  }

  v57 = [(_INPBHomeFilter *)self service];
  if (v57)
  {
    v58 = v57;
    v59 = [(_INPBHomeFilter *)self service];
    v60 = [v4 service];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  v62 = [(_INPBHomeFilter *)self hasServiceType];
  if (v62 != [v4 hasServiceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    if ([v4 hasServiceType])
    {
      serviceType = self->_serviceType;
      if (serviceType != [v4 serviceType])
      {
        goto LABEL_80;
      }
    }
  }

  v64 = [(_INPBHomeFilter *)self hasSubServiceType];
  if (v64 != [v4 hasSubServiceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    if ([v4 hasSubServiceType])
    {
      subServiceType = self->_subServiceType;
      if (subServiceType != [v4 subServiceType])
      {
        goto LABEL_80;
      }
    }
  }

  v5 = [(_INPBHomeFilter *)self zone];
  v6 = [v4 zone];
  if ((v5 != 0) != (v6 == 0))
  {
    v66 = [(_INPBHomeFilter *)self zone];
    if (!v66)
    {

LABEL_83:
      v71 = 1;
      goto LABEL_81;
    }

    v67 = v66;
    v68 = [(_INPBHomeFilter *)self zone];
    v69 = [v4 zone];
    v70 = [v68 isEqual:v69];

    if (v70)
    {
      goto LABEL_83;
    }
  }

  else
  {
LABEL_79:
  }

LABEL_80:
  v71 = 0;
LABEL_81:

  return v71;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBHomeFilter allocWithZone:](_INPBHomeFilter init];
  v6 = [(_INPBDataString *)self->_accessory copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setAccessory:v6];

  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    [(_INPBHomeFilter *)v5 setDeviceType:[(_INPBHomeFilter *)self deviceType]];
  }

  v7 = [(NSArray *)self->_entityIdentifiers copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setEntityIdentifiers:v7];

  v8 = [(_INPBDataString *)self->_entityName copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setEntityName:v8];

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    [(_INPBHomeFilter *)v5 setEntityType:[(_INPBHomeFilter *)self entityType]];
  }

  v9 = [(_INPBDataString *)self->_group copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setGroup:v9];

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    [(_INPBHomeFilter *)v5 setHasAllQuantifier:[(_INPBHomeFilter *)self hasAllQuantifier]];
  }

  v10 = [(_INPBDataString *)self->_home copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setHome:v10];

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    [(_INPBHomeFilter *)v5 setIsExcludeFilter:[(_INPBHomeFilter *)self isExcludeFilter]];
  }

  v11 = [(_INPBDataString *)self->_outerDeviceName copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setOuterDeviceName:v11];

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    [(_INPBHomeFilter *)v5 setOuterDeviceType:[(_INPBHomeFilter *)self outerDeviceType]];
  }

  v12 = [(_INPBDataString *)self->_room copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setRoom:v12];

  v13 = [(_INPBDataString *)self->_scene copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setScene:v13];

  v14 = [(_INPBDataString *)self->_service copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setService:v14];

  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    [(_INPBHomeFilter *)v5 setServiceType:[(_INPBHomeFilter *)self serviceType]];
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    [(_INPBHomeFilter *)v5 setSubServiceType:[(_INPBHomeFilter *)self subServiceType]];
  }

  v15 = [(_INPBDataString *)self->_zone copyWithZone:a3];
  [(_INPBHomeFilter *)v5 setZone:v15];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeFilter *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeFilter *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBHomeFilter *)self accessory];

  if (v5)
  {
    v6 = [(_INPBHomeFilter *)self accessory];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    deviceType = self->_deviceType;
    PBDataWriterWriteInt32Field();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = self->_entityIdentifiers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v10);
  }

  v14 = [(_INPBHomeFilter *)self entityName];

  if (v14)
  {
    v15 = [(_INPBHomeFilter *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  v17 = [(_INPBHomeFilter *)self group];

  if (v17)
  {
    v18 = [(_INPBHomeFilter *)self group];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    hasAllQuantifier = self->_hasAllQuantifier;
    PBDataWriterWriteBOOLField();
  }

  v20 = [(_INPBHomeFilter *)self home];

  if (v20)
  {
    v21 = [(_INPBHomeFilter *)self home];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    isExcludeFilter = self->_isExcludeFilter;
    PBDataWriterWriteBOOLField();
  }

  v23 = [(_INPBHomeFilter *)self outerDeviceName];

  if (v23)
  {
    v24 = [(_INPBHomeFilter *)self outerDeviceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    outerDeviceType = self->_outerDeviceType;
    PBDataWriterWriteInt32Field();
  }

  v26 = [(_INPBHomeFilter *)self room];

  if (v26)
  {
    v27 = [(_INPBHomeFilter *)self room];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_INPBHomeFilter *)self scene];

  if (v28)
  {
    v29 = [(_INPBHomeFilter *)self scene];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_INPBHomeFilter *)self service];

  if (v30)
  {
    v31 = [(_INPBHomeFilter *)self service];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    serviceType = self->_serviceType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    subServiceType = self->_subServiceType;
    PBDataWriterWriteInt32Field();
  }

  v34 = [(_INPBHomeFilter *)self zone];

  if (v34)
  {
    v35 = [(_INPBHomeFilter *)self zone];
    PBDataWriterWriteSubmessage();
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSubServiceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GENERIC_VALVE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IRRIGATION_VALVE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SHOWERHEAD_VALVE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FAUCET_VALVE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSubServiceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setSubServiceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_subServiceType = a3;
  }
}

- (int)StringAsServiceType:(id)a3
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
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"OUTLET"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"DOOR_LOCK"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MOTORIZED_DOOR"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SECURITY_SYSTEM"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"MOTORIZED_WINDOW"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SHADES"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SPEAKER"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"HEATER_COOLER"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SLAT"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"IRRIGATION_SYSTEM"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"VALVE"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"FAUCET"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"TELEVISION"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"IP_CAMERA"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"CUSTOM"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"TEMPERATURE_SENSOR"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"HUMIDITY_SENSOR"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"AIR_QUALITY_SENSOR"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"SMOKE_SENSOR"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"CARBON_MONOXIDE_SENSOR"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"CARBON_DIOXIDE_SENSOR"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"CONTACT_SENSOR"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"OCCUPANCY_SENSOR"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"MOTION_SENSOR"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"LIGHT_SENSOR"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"LEAK_SENSOR"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"BATTERY_SERVICE"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"DOOR_BELL"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"AIR_PURIFIER"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"FILTER_MAINTENANCE"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"AIRPORT_EXPRESS"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"CAMERA_RECORDING"])
  {
    v4 = 38;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasServiceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setServiceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_serviceType = a3;
  }
}

- (int)StringAsOuterDeviceType:(id)a3
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

- (void)setHasOuterDeviceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setOuterDeviceType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_outerDeviceType = a3;
  }
}

- (void)setHasIsExcludeFilter:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasAllQuantifier:(BOOL)a3
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

- (void)addEntityIdentifiers:(id)a3
{
  v4 = a3;
  entityIdentifiers = self->_entityIdentifiers;
  v8 = v4;
  if (!entityIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityIdentifiers;
    self->_entityIdentifiers = v6;

    v4 = v8;
    entityIdentifiers = self->_entityIdentifiers;
  }

  [(NSArray *)entityIdentifiers addObject:v4];
}

- (void)setEntityIdentifiers:(id)a3
{
  v4 = [a3 mutableCopy];
  entityIdentifiers = self->_entityIdentifiers;
  self->_entityIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, entityIdentifiers);
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