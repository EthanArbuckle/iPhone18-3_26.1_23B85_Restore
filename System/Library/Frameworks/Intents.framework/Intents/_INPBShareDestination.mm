@interface _INPBShareDestination
- (BOOL)isEqual:(id)a3;
- (_INPBShareDestination)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDeviceType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBShareDestination

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBShareDestination *)self contact];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"contact"];

  if ([(_INPBShareDestination *)self hasDeviceType])
  {
    v6 = [(_INPBShareDestination *)self deviceType];
    if (v6 >= 0xC)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7282958[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"deviceType"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBContact *)self->_contact hash];
  if ([(_INPBShareDestination *)self hasDeviceType])
  {
    v4 = 2654435761 * self->_deviceType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBShareDestination *)self contact];
  v6 = [v4 contact];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBShareDestination *)self contact];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBShareDestination *)self contact];
      v11 = [v4 contact];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBShareDestination *)self hasDeviceType];
    if (v13 == [v4 hasDeviceType])
    {
      if (!-[_INPBShareDestination hasDeviceType](self, "hasDeviceType") || ![v4 hasDeviceType] || (deviceType = self->_deviceType, deviceType == objc_msgSend(v4, "deviceType")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBShareDestination allocWithZone:](_INPBShareDestination init];
  v6 = [(_INPBContact *)self->_contact copyWithZone:a3];
  [(_INPBShareDestination *)v5 setContact:v6];

  if ([(_INPBShareDestination *)self hasDeviceType])
  {
    [(_INPBShareDestination *)v5 setDeviceType:[(_INPBShareDestination *)self deviceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBShareDestination *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBShareDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBShareDestination *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBShareDestination *)self contact];

  if (v4)
  {
    v5 = [(_INPBShareDestination *)self contact];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBShareDestination *)self hasDeviceType])
  {
    deviceType = self->_deviceType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsDeviceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"APPLE_WATCH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IPHONE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"IPAD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"IPOD"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"IMAC"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MAC"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MACBOOK"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"MACBOOK_AIR"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"MACBOOK_PRO"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"MAC_MINI"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"MAC_PRO"])
  {
    v4 = 11;
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