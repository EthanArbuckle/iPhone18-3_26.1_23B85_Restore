@interface _INPBDevice
- (BOOL)isEqual:(id)a3;
- (_INPBDevice)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceCategory:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDeviceCategory:(int)a3;
- (void)setDeviceModel:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDevice

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    v4 = [(_INPBDevice *)self deviceCategory];
    if ((v4 - 1) >= 0xE)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = *(&off_1E7287C88 + (v4 - 1));
    }

    [v3 setObject:v5 forKeyedSubscript:@"deviceCategory"];
  }

  if (self->_deviceModel)
  {
    v6 = [(_INPBDevice *)self deviceModel];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"deviceModel"];
  }

  if (self->_deviceName)
  {
    v8 = [(_INPBDevice *)self deviceName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"deviceName"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBDevice *)self hasDeviceCategory];
  if (v5 != [v4 hasDeviceCategory])
  {
    goto LABEL_16;
  }

  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    if ([v4 hasDeviceCategory])
    {
      deviceCategory = self->_deviceCategory;
      if (deviceCategory != [v4 deviceCategory])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBDevice *)self deviceModel];
  v8 = [v4 deviceModel];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBDevice *)self deviceModel];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBDevice *)self deviceModel];
    v12 = [v4 deviceModel];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_INPBDevice *)self deviceName];
  v8 = [v4 deviceName];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBDevice *)self deviceName];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBDevice *)self deviceName];
    v17 = [v4 deviceName];
    v18 = [v16 isEqual:v17];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDevice allocWithZone:](_INPBDevice init];
  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    [(_INPBDevice *)v5 setDeviceCategory:[(_INPBDevice *)self deviceCategory]];
  }

  v6 = [(NSString *)self->_deviceModel copyWithZone:a3];
  [(_INPBDevice *)v5 setDeviceModel:v6];

  v7 = [(NSString *)self->_deviceName copyWithZone:a3];
  [(_INPBDevice *)v5 setDeviceName:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDevice *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDevice *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBDevice *)self hasDeviceCategory])
  {
    deviceCategory = self->_deviceCategory;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBDevice *)self deviceModel];

  if (v5)
  {
    deviceModel = self->_deviceModel;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBDevice *)self deviceName];

  v8 = v10;
  if (v7)
  {
    deviceName = self->_deviceName;
    PBDataWriterWriteStringField();
    v8 = v10;
  }
}

- (void)setDeviceName:(id)a3
{
  v4 = [a3 copy];
  deviceName = self->_deviceName;
  self->_deviceName = v4;

  MEMORY[0x1EEE66BB8](v4, deviceName);
}

- (void)setDeviceModel:(id)a3
{
  v4 = [a3 copy];
  deviceModel = self->_deviceModel;
  self->_deviceModel = v4;

  MEMORY[0x1EEE66BB8](v4, deviceModel);
}

- (int)StringAsDeviceCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MAC"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HOME_POD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TV_REMOTE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SPEAKER"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"HEADPHONE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"BATTERY_CASE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KEYBOARD"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TRACKPAD"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MOUSE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"PENCIL"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDeviceCategory:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceCategory = a3;
  }
}

@end