@interface _INPBHomeFilter
- (BOOL)isEqual:(id)equal;
- (_INPBHomeFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)type;
- (int)StringAsEntityType:(id)type;
- (int)StringAsOuterDeviceType:(id)type;
- (int)StringAsServiceType:(id)type;
- (int)StringAsSubServiceType:(id)type;
- (unint64_t)hash;
- (void)addEntityIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceType:(int)type;
- (void)setEntityIdentifiers:(id)identifiers;
- (void)setEntityType:(int)type;
- (void)setHasEntityType:(BOOL)type;
- (void)setHasHasAllQuantifier:(BOOL)quantifier;
- (void)setHasIsExcludeFilter:(BOOL)filter;
- (void)setHasOuterDeviceType:(BOOL)type;
- (void)setHasServiceType:(BOOL)type;
- (void)setHasSubServiceType:(BOOL)type;
- (void)setOuterDeviceType:(int)type;
- (void)setServiceType:(int)type;
- (void)setSubServiceType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeFilter

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accessory = [(_INPBHomeFilter *)self accessory];
  dictionaryRepresentation = [accessory dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accessory"];

  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    deviceType = [(_INPBHomeFilter *)self deviceType];
    if (deviceType < 0x32 && ((0x3FFFFF79FFEEFuLL >> deviceType) & 1) != 0)
    {
      v7 = off_1E727DA50[deviceType];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deviceType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"deviceType"];
  }

  if (self->_entityIdentifiers)
  {
    entityIdentifiers = [(_INPBHomeFilter *)self entityIdentifiers];
    v9 = [entityIdentifiers copy];
    [dictionary setObject:v9 forKeyedSubscript:@"entityIdentifiers"];
  }

  entityName = [(_INPBHomeFilter *)self entityName];
  dictionaryRepresentation2 = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityName"];

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    entityType = [(_INPBHomeFilter *)self entityType];
    if (entityType >= 7)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v13 = off_1E727DA18[entityType];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"entityType"];
  }

  group = [(_INPBHomeFilter *)self group];
  dictionaryRepresentation3 = [group dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"group"];

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBHomeFilter hasAllQuantifier](self, "hasAllQuantifier")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasAllQuantifier"];
  }

  home = [(_INPBHomeFilter *)self home];
  dictionaryRepresentation4 = [home dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"home"];

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBHomeFilter isExcludeFilter](self, "isExcludeFilter")}];
    [dictionary setObject:v19 forKeyedSubscript:@"isExcludeFilter"];
  }

  outerDeviceName = [(_INPBHomeFilter *)self outerDeviceName];
  dictionaryRepresentation5 = [outerDeviceName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"outerDeviceName"];

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    outerDeviceType = [(_INPBHomeFilter *)self outerDeviceType];
    if (outerDeviceType < 0x32 && ((0x3FFFFF79FFEEFuLL >> outerDeviceType) & 1) != 0)
    {
      v23 = off_1E727DA50[outerDeviceType];
    }

    else
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", outerDeviceType];
    }

    [dictionary setObject:v23 forKeyedSubscript:@"outerDeviceType"];
  }

  room = [(_INPBHomeFilter *)self room];
  dictionaryRepresentation6 = [room dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"room"];

  scene = [(_INPBHomeFilter *)self scene];
  dictionaryRepresentation7 = [scene dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"scene"];

  service = [(_INPBHomeFilter *)self service];
  dictionaryRepresentation8 = [service dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"service"];

  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    serviceType = [(_INPBHomeFilter *)self serviceType];
    if (serviceType >= 0x27)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", serviceType];
    }

    else
    {
      v31 = off_1E727DBE0[serviceType];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"serviceType"];
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    subServiceType = [(_INPBHomeFilter *)self subServiceType];
    if ((subServiceType - 1) >= 4)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", subServiceType];
    }

    else
    {
      v33 = off_1E727DD18[(subServiceType - 1)];
    }

    [dictionary setObject:v33 forKeyedSubscript:@"subServiceType"];
  }

  v34 = [(_INPBHomeFilter *)self zone];
  dictionaryRepresentation9 = [v34 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"zone"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_80;
  }

  accessory = [(_INPBHomeFilter *)self accessory];
  accessory2 = [equalCopy accessory];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  accessory3 = [(_INPBHomeFilter *)self accessory];
  if (accessory3)
  {
    v8 = accessory3;
    accessory4 = [(_INPBHomeFilter *)self accessory];
    accessory5 = [equalCopy accessory];
    v11 = [accessory4 isEqual:accessory5];

    if (!v11)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  hasDeviceType = [(_INPBHomeFilter *)self hasDeviceType];
  if (hasDeviceType != [equalCopy hasDeviceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    if ([equalCopy hasDeviceType])
    {
      deviceType = self->_deviceType;
      if (deviceType != [equalCopy deviceType])
      {
        goto LABEL_80;
      }
    }
  }

  accessory = [(_INPBHomeFilter *)self entityIdentifiers];
  accessory2 = [equalCopy entityIdentifiers];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  entityIdentifiers = [(_INPBHomeFilter *)self entityIdentifiers];
  if (entityIdentifiers)
  {
    v15 = entityIdentifiers;
    entityIdentifiers2 = [(_INPBHomeFilter *)self entityIdentifiers];
    entityIdentifiers3 = [equalCopy entityIdentifiers];
    v18 = [entityIdentifiers2 isEqual:entityIdentifiers3];

    if (!v18)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  accessory = [(_INPBHomeFilter *)self entityName];
  accessory2 = [equalCopy entityName];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  entityName = [(_INPBHomeFilter *)self entityName];
  if (entityName)
  {
    v20 = entityName;
    entityName2 = [(_INPBHomeFilter *)self entityName];
    entityName3 = [equalCopy entityName];
    v23 = [entityName2 isEqual:entityName3];

    if (!v23)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  hasEntityType = [(_INPBHomeFilter *)self hasEntityType];
  if (hasEntityType != [equalCopy hasEntityType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    if ([equalCopy hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [equalCopy entityType])
      {
        goto LABEL_80;
      }
    }
  }

  accessory = [(_INPBHomeFilter *)self group];
  accessory2 = [equalCopy group];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  group = [(_INPBHomeFilter *)self group];
  if (group)
  {
    v27 = group;
    group2 = [(_INPBHomeFilter *)self group];
    group3 = [equalCopy group];
    v30 = [group2 isEqual:group3];

    if (!v30)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  hasHasAllQuantifier = [(_INPBHomeFilter *)self hasHasAllQuantifier];
  if (hasHasAllQuantifier != [equalCopy hasHasAllQuantifier])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    if ([equalCopy hasHasAllQuantifier])
    {
      hasAllQuantifier = self->_hasAllQuantifier;
      if (hasAllQuantifier != [equalCopy hasAllQuantifier])
      {
        goto LABEL_80;
      }
    }
  }

  accessory = [(_INPBHomeFilter *)self home];
  accessory2 = [equalCopy home];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  home = [(_INPBHomeFilter *)self home];
  if (home)
  {
    v34 = home;
    home2 = [(_INPBHomeFilter *)self home];
    home3 = [equalCopy home];
    v37 = [home2 isEqual:home3];

    if (!v37)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  hasIsExcludeFilter = [(_INPBHomeFilter *)self hasIsExcludeFilter];
  if (hasIsExcludeFilter != [equalCopy hasIsExcludeFilter])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    if ([equalCopy hasIsExcludeFilter])
    {
      isExcludeFilter = self->_isExcludeFilter;
      if (isExcludeFilter != [equalCopy isExcludeFilter])
      {
        goto LABEL_80;
      }
    }
  }

  accessory = [(_INPBHomeFilter *)self outerDeviceName];
  accessory2 = [equalCopy outerDeviceName];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  outerDeviceName = [(_INPBHomeFilter *)self outerDeviceName];
  if (outerDeviceName)
  {
    v41 = outerDeviceName;
    outerDeviceName2 = [(_INPBHomeFilter *)self outerDeviceName];
    outerDeviceName3 = [equalCopy outerDeviceName];
    v44 = [outerDeviceName2 isEqual:outerDeviceName3];

    if (!v44)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  hasOuterDeviceType = [(_INPBHomeFilter *)self hasOuterDeviceType];
  if (hasOuterDeviceType != [equalCopy hasOuterDeviceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    if ([equalCopy hasOuterDeviceType])
    {
      outerDeviceType = self->_outerDeviceType;
      if (outerDeviceType != [equalCopy outerDeviceType])
      {
        goto LABEL_80;
      }
    }
  }

  accessory = [(_INPBHomeFilter *)self room];
  accessory2 = [equalCopy room];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  room = [(_INPBHomeFilter *)self room];
  if (room)
  {
    v48 = room;
    room2 = [(_INPBHomeFilter *)self room];
    room3 = [equalCopy room];
    v51 = [room2 isEqual:room3];

    if (!v51)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  accessory = [(_INPBHomeFilter *)self scene];
  accessory2 = [equalCopy scene];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  scene = [(_INPBHomeFilter *)self scene];
  if (scene)
  {
    v53 = scene;
    scene2 = [(_INPBHomeFilter *)self scene];
    scene3 = [equalCopy scene];
    v56 = [scene2 isEqual:scene3];

    if (!v56)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  accessory = [(_INPBHomeFilter *)self service];
  accessory2 = [equalCopy service];
  if ((accessory != 0) == (accessory2 == 0))
  {
    goto LABEL_79;
  }

  service = [(_INPBHomeFilter *)self service];
  if (service)
  {
    v58 = service;
    service2 = [(_INPBHomeFilter *)self service];
    service3 = [equalCopy service];
    v61 = [service2 isEqual:service3];

    if (!v61)
    {
      goto LABEL_80;
    }
  }

  else
  {
  }

  hasServiceType = [(_INPBHomeFilter *)self hasServiceType];
  if (hasServiceType != [equalCopy hasServiceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    if ([equalCopy hasServiceType])
    {
      serviceType = self->_serviceType;
      if (serviceType != [equalCopy serviceType])
      {
        goto LABEL_80;
      }
    }
  }

  hasSubServiceType = [(_INPBHomeFilter *)self hasSubServiceType];
  if (hasSubServiceType != [equalCopy hasSubServiceType])
  {
    goto LABEL_80;
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    if ([equalCopy hasSubServiceType])
    {
      subServiceType = self->_subServiceType;
      if (subServiceType != [equalCopy subServiceType])
      {
        goto LABEL_80;
      }
    }
  }

  accessory = [(_INPBHomeFilter *)self zone];
  accessory2 = [equalCopy zone];
  if ((accessory != 0) != (accessory2 == 0))
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
    v69 = [equalCopy zone];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBHomeFilter allocWithZone:](_INPBHomeFilter init];
  v6 = [(_INPBDataString *)self->_accessory copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setAccessory:v6];

  if ([(_INPBHomeFilter *)self hasDeviceType])
  {
    [(_INPBHomeFilter *)v5 setDeviceType:[(_INPBHomeFilter *)self deviceType]];
  }

  v7 = [(NSArray *)self->_entityIdentifiers copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setEntityIdentifiers:v7];

  v8 = [(_INPBDataString *)self->_entityName copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setEntityName:v8];

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    [(_INPBHomeFilter *)v5 setEntityType:[(_INPBHomeFilter *)self entityType]];
  }

  v9 = [(_INPBDataString *)self->_group copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setGroup:v9];

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    [(_INPBHomeFilter *)v5 setHasAllQuantifier:[(_INPBHomeFilter *)self hasAllQuantifier]];
  }

  v10 = [(_INPBDataString *)self->_home copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setHome:v10];

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    [(_INPBHomeFilter *)v5 setIsExcludeFilter:[(_INPBHomeFilter *)self isExcludeFilter]];
  }

  v11 = [(_INPBDataString *)self->_outerDeviceName copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setOuterDeviceName:v11];

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    [(_INPBHomeFilter *)v5 setOuterDeviceType:[(_INPBHomeFilter *)self outerDeviceType]];
  }

  v12 = [(_INPBDataString *)self->_room copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setRoom:v12];

  v13 = [(_INPBDataString *)self->_scene copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setScene:v13];

  v14 = [(_INPBDataString *)self->_service copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setService:v14];

  if ([(_INPBHomeFilter *)self hasServiceType])
  {
    [(_INPBHomeFilter *)v5 setServiceType:[(_INPBHomeFilter *)self serviceType]];
  }

  if ([(_INPBHomeFilter *)self hasSubServiceType])
  {
    [(_INPBHomeFilter *)v5 setSubServiceType:[(_INPBHomeFilter *)self subServiceType]];
  }

  v15 = [(_INPBDataString *)self->_zone copyWithZone:zone];
  [(_INPBHomeFilter *)v5 setZone:v15];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeFilter *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeFilter *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x1E69E9840];
  toCopy = to;
  accessory = [(_INPBHomeFilter *)self accessory];

  if (accessory)
  {
    accessory2 = [(_INPBHomeFilter *)self accessory];
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

  entityName = [(_INPBHomeFilter *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBHomeFilter *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  group = [(_INPBHomeFilter *)self group];

  if (group)
  {
    group2 = [(_INPBHomeFilter *)self group];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasHasAllQuantifier])
  {
    hasAllQuantifier = self->_hasAllQuantifier;
    PBDataWriterWriteBOOLField();
  }

  home = [(_INPBHomeFilter *)self home];

  if (home)
  {
    home2 = [(_INPBHomeFilter *)self home];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasIsExcludeFilter])
  {
    isExcludeFilter = self->_isExcludeFilter;
    PBDataWriterWriteBOOLField();
  }

  outerDeviceName = [(_INPBHomeFilter *)self outerDeviceName];

  if (outerDeviceName)
  {
    outerDeviceName2 = [(_INPBHomeFilter *)self outerDeviceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBHomeFilter *)self hasOuterDeviceType])
  {
    outerDeviceType = self->_outerDeviceType;
    PBDataWriterWriteInt32Field();
  }

  room = [(_INPBHomeFilter *)self room];

  if (room)
  {
    room2 = [(_INPBHomeFilter *)self room];
    PBDataWriterWriteSubmessage();
  }

  scene = [(_INPBHomeFilter *)self scene];

  if (scene)
  {
    scene2 = [(_INPBHomeFilter *)self scene];
    PBDataWriterWriteSubmessage();
  }

  service = [(_INPBHomeFilter *)self service];

  if (service)
  {
    service2 = [(_INPBHomeFilter *)self service];
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

- (int)StringAsSubServiceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GENERIC_VALVE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"IRRIGATION_VALVE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SHOWERHEAD_VALVE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"FAUCET_VALVE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSubServiceType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setSubServiceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_subServiceType = type;
  }
}

- (int)StringAsServiceType:(id)type
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
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"OUTLET"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"DOOR_LOCK"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"MOTORIZED_DOOR"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"SECURITY_SYSTEM"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"MOTORIZED_WINDOW"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"SHADES"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"SPEAKER"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"HEATER_COOLER"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"SLAT"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"IRRIGATION_SYSTEM"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"VALVE"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"FAUCET"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"TELEVISION"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"IP_CAMERA"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"CUSTOM"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"TEMPERATURE_SENSOR"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"HUMIDITY_SENSOR"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"AIR_QUALITY_SENSOR"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"SMOKE_SENSOR"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"CARBON_MONOXIDE_SENSOR"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"CARBON_DIOXIDE_SENSOR"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"CONTACT_SENSOR"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"OCCUPANCY_SENSOR"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"MOTION_SENSOR"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"LIGHT_SENSOR"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"LEAK_SENSOR"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"BATTERY_SERVICE"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"DOOR_BELL"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"AIR_PURIFIER"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"FILTER_MAINTENANCE"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"AIRPORT_EXPRESS"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"CAMERA_RECORDING"])
  {
    v4 = 38;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasServiceType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setServiceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_serviceType = type;
  }
}

- (int)StringAsOuterDeviceType:(id)type
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

- (void)setHasOuterDeviceType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setOuterDeviceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_outerDeviceType = type;
  }
}

- (void)setHasIsExcludeFilter:(BOOL)filter
{
  if (filter)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasAllQuantifier:(BOOL)quantifier
{
  if (quantifier)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)addEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  entityIdentifiers = self->_entityIdentifiers;
  v8 = identifiersCopy;
  if (!entityIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityIdentifiers;
    self->_entityIdentifiers = array;

    identifiersCopy = v8;
    entityIdentifiers = self->_entityIdentifiers;
  }

  [(NSArray *)entityIdentifiers addObject:identifiersCopy];
}

- (void)setEntityIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  entityIdentifiers = self->_entityIdentifiers;
  self->_entityIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, entityIdentifiers);
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