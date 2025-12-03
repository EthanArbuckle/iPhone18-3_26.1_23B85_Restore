@interface _INPBDevice
- (BOOL)isEqual:(id)equal;
- (_INPBDevice)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceCategory:(id)category;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceCategory:(int)category;
- (void)setDeviceModel:(id)model;
- (void)setDeviceName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBDevice

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    deviceCategory = [(_INPBDevice *)self deviceCategory];
    if ((deviceCategory - 1) >= 0xE)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deviceCategory];
    }

    else
    {
      v5 = *(&off_1E7287C88 + (deviceCategory - 1));
    }

    [dictionary setObject:v5 forKeyedSubscript:@"deviceCategory"];
  }

  if (self->_deviceModel)
  {
    deviceModel = [(_INPBDevice *)self deviceModel];
    v7 = [deviceModel copy];
    [dictionary setObject:v7 forKeyedSubscript:@"deviceModel"];
  }

  if (self->_deviceName)
  {
    deviceName = [(_INPBDevice *)self deviceName];
    v9 = [deviceName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"deviceName"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    v3 = 2654435761 * self->_deviceCategory;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_deviceModel hash]^ v3;
  return v4 ^ [(NSString *)self->_deviceName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasDeviceCategory = [(_INPBDevice *)self hasDeviceCategory];
  if (hasDeviceCategory != [equalCopy hasDeviceCategory])
  {
    goto LABEL_16;
  }

  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    if ([equalCopy hasDeviceCategory])
    {
      deviceCategory = self->_deviceCategory;
      if (deviceCategory != [equalCopy deviceCategory])
      {
        goto LABEL_16;
      }
    }
  }

  deviceModel = [(_INPBDevice *)self deviceModel];
  deviceModel2 = [equalCopy deviceModel];
  if ((deviceModel != 0) == (deviceModel2 == 0))
  {
    goto LABEL_15;
  }

  deviceModel3 = [(_INPBDevice *)self deviceModel];
  if (deviceModel3)
  {
    v10 = deviceModel3;
    deviceModel4 = [(_INPBDevice *)self deviceModel];
    deviceModel5 = [equalCopy deviceModel];
    v13 = [deviceModel4 isEqual:deviceModel5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  deviceModel = [(_INPBDevice *)self deviceName];
  deviceModel2 = [equalCopy deviceName];
  if ((deviceModel != 0) != (deviceModel2 == 0))
  {
    deviceName = [(_INPBDevice *)self deviceName];
    if (!deviceName)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = deviceName;
    deviceName2 = [(_INPBDevice *)self deviceName];
    deviceName3 = [equalCopy deviceName];
    v18 = [deviceName2 isEqual:deviceName3];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDevice allocWithZone:](_INPBDevice init];
  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    [(_INPBDevice *)v5 setDeviceCategory:[(_INPBDevice *)self deviceCategory]];
  }

  v6 = [(NSString *)self->_deviceModel copyWithZone:zone];
  [(_INPBDevice *)v5 setDeviceModel:v6];

  v7 = [(NSString *)self->_deviceName copyWithZone:zone];
  [(_INPBDevice *)v5 setDeviceName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDevice *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDevice *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    deviceCategory = self->_deviceCategory;
    PBDataWriterWriteInt32Field();
  }

  deviceModel = [(_INPBDevice *)self deviceModel];

  if (deviceModel)
  {
    deviceModel = self->_deviceModel;
    PBDataWriterWriteStringField();
  }

  deviceName = [(_INPBDevice *)self deviceName];

  v8 = toCopy;
  if (deviceName)
  {
    deviceName = self->_deviceName;
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setDeviceName:(id)name
{
  v4 = [name copy];
  deviceName = self->_deviceName;
  self->_deviceName = v4;

  MEMORY[0x1EEE66BB8](v4, deviceName);
}

- (void)setDeviceModel:(id)model
{
  v4 = [model copy];
  deviceModel = self->_deviceModel;
  self->_deviceModel = v4;

  MEMORY[0x1EEE66BB8](v4, deviceModel);
}

- (int)StringAsDeviceCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:@"MAC"])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:@"HOME_POD"])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:@"TV_REMOTE"])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:@"SPEAKER"])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:@"HEADPHONE"])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:@"BATTERY_CASE"])
  {
    v4 = 10;
  }

  else if ([categoryCopy isEqualToString:@"KEYBOARD"])
  {
    v4 = 11;
  }

  else if ([categoryCopy isEqualToString:@"TRACKPAD"])
  {
    v4 = 12;
  }

  else if ([categoryCopy isEqualToString:@"MOUSE"])
  {
    v4 = 13;
  }

  else if ([categoryCopy isEqualToString:@"PENCIL"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDeviceCategory:(int)category
{
  has = self->_has;
  if (category == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceCategory = category;
  }
}

@end