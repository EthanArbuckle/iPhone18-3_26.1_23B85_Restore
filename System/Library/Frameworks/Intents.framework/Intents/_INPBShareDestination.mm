@interface _INPBShareDestination
- (BOOL)isEqual:(id)equal;
- (_INPBShareDestination)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBShareDestination

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  contact = [(_INPBShareDestination *)self contact];
  dictionaryRepresentation = [contact dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contact"];

  if ([(_INPBShareDestination *)self hasDeviceType])
  {
    deviceType = [(_INPBShareDestination *)self deviceType];
    if (deviceType >= 0xC)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deviceType];
    }

    else
    {
      v7 = off_1E7282958[deviceType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"deviceType"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  contact = [(_INPBShareDestination *)self contact];
  contact2 = [equalCopy contact];
  v7 = contact2;
  if ((contact != 0) != (contact2 == 0))
  {
    contact3 = [(_INPBShareDestination *)self contact];
    if (contact3)
    {
      v9 = contact3;
      contact4 = [(_INPBShareDestination *)self contact];
      contact5 = [equalCopy contact];
      v12 = [contact4 isEqual:contact5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasDeviceType = [(_INPBShareDestination *)self hasDeviceType];
    if (hasDeviceType == [equalCopy hasDeviceType])
    {
      if (!-[_INPBShareDestination hasDeviceType](self, "hasDeviceType") || ![equalCopy hasDeviceType] || (deviceType = self->_deviceType, deviceType == objc_msgSend(equalCopy, "deviceType")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBShareDestination allocWithZone:](_INPBShareDestination init];
  v6 = [(_INPBContact *)self->_contact copyWithZone:zone];
  [(_INPBShareDestination *)v5 setContact:v6];

  if ([(_INPBShareDestination *)self hasDeviceType])
  {
    [(_INPBShareDestination *)v5 setDeviceType:[(_INPBShareDestination *)self deviceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBShareDestination *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBShareDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBShareDestination *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contact = [(_INPBShareDestination *)self contact];

  if (contact)
  {
    contact2 = [(_INPBShareDestination *)self contact];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBShareDestination *)self hasDeviceType])
  {
    deviceType = self->_deviceType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"APPLE_WATCH"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"IPHONE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"IPAD"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"IPOD"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"IMAC"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"MAC"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"MACBOOK"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"MACBOOK_AIR"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"MACBOOK_PRO"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"MAC_MINI"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"MAC_PRO"])
  {
    v4 = 11;
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