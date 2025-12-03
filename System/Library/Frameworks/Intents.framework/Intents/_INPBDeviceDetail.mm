@interface _INPBDeviceDetail
- (BOOL)isEqual:(id)equal;
- (_INPBDeviceDetail)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceClass:(id)class;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDeviceClass:(int)class;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeviceDetail

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  category = [(_INPBDeviceDetail *)self category];
  dictionaryRepresentation = [category dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"category"];

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    deviceClass = [(_INPBDeviceDetail *)self deviceClass];
    if (deviceClass >= 0xA)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", deviceClass];
    }

    else
    {
      v7 = *(&off_1E7287678 + deviceClass);
    }

    [dictionary setObject:v7 forKeyedSubscript:@"deviceClass"];
  }

  deviceName = [(_INPBDeviceDetail *)self deviceName];
  dictionaryRepresentation2 = [deviceName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"deviceName"];

  deviceOwner = [(_INPBDeviceDetail *)self deviceOwner];
  dictionaryRepresentation3 = [deviceOwner dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"deviceOwner"];

  if (self->_identifier)
  {
    identifier = [(_INPBDeviceDetail *)self identifier];
    v13 = [identifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"identifier"];
  }

  productName = [(_INPBDeviceDetail *)self productName];
  dictionaryRepresentation4 = [productName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"productName"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_category hash];
  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    v4 = 2654435761 * self->_deviceClass;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(_INPBDataString *)self->_deviceName hash];
  v7 = v5 ^ v6 ^ [(_INPBContact *)self->_deviceOwner hash];
  v8 = [(NSString *)self->_identifier hash];
  return v7 ^ v8 ^ [(_INPBDataString *)self->_productName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  category = [(_INPBDeviceDetail *)self category];
  category2 = [equalCopy category];
  if ((category != 0) == (category2 == 0))
  {
    goto LABEL_30;
  }

  category3 = [(_INPBDeviceDetail *)self category];
  if (category3)
  {
    v8 = category3;
    category4 = [(_INPBDeviceDetail *)self category];
    category5 = [equalCopy category];
    v11 = [category4 isEqual:category5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  hasDeviceClass = [(_INPBDeviceDetail *)self hasDeviceClass];
  if (hasDeviceClass != [equalCopy hasDeviceClass])
  {
    goto LABEL_31;
  }

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    if ([equalCopy hasDeviceClass])
    {
      deviceClass = self->_deviceClass;
      if (deviceClass != [equalCopy deviceClass])
      {
        goto LABEL_31;
      }
    }
  }

  category = [(_INPBDeviceDetail *)self deviceName];
  category2 = [equalCopy deviceName];
  if ((category != 0) == (category2 == 0))
  {
    goto LABEL_30;
  }

  deviceName = [(_INPBDeviceDetail *)self deviceName];
  if (deviceName)
  {
    v15 = deviceName;
    deviceName2 = [(_INPBDeviceDetail *)self deviceName];
    deviceName3 = [equalCopy deviceName];
    v18 = [deviceName2 isEqual:deviceName3];

    if (!v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  category = [(_INPBDeviceDetail *)self deviceOwner];
  category2 = [equalCopy deviceOwner];
  if ((category != 0) == (category2 == 0))
  {
    goto LABEL_30;
  }

  deviceOwner = [(_INPBDeviceDetail *)self deviceOwner];
  if (deviceOwner)
  {
    v20 = deviceOwner;
    deviceOwner2 = [(_INPBDeviceDetail *)self deviceOwner];
    deviceOwner3 = [equalCopy deviceOwner];
    v23 = [deviceOwner2 isEqual:deviceOwner3];

    if (!v23)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  category = [(_INPBDeviceDetail *)self identifier];
  category2 = [equalCopy identifier];
  if ((category != 0) == (category2 == 0))
  {
    goto LABEL_30;
  }

  identifier = [(_INPBDeviceDetail *)self identifier];
  if (identifier)
  {
    v25 = identifier;
    identifier2 = [(_INPBDeviceDetail *)self identifier];
    identifier3 = [equalCopy identifier];
    v28 = [identifier2 isEqual:identifier3];

    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  category = [(_INPBDeviceDetail *)self productName];
  category2 = [equalCopy productName];
  if ((category != 0) != (category2 == 0))
  {
    productName = [(_INPBDeviceDetail *)self productName];
    if (!productName)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = productName;
    productName2 = [(_INPBDeviceDetail *)self productName];
    productName3 = [equalCopy productName];
    v33 = [productName2 isEqual:productName3];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDeviceDetail allocWithZone:](_INPBDeviceDetail init];
  v6 = [(_INPBDataString *)self->_category copyWithZone:zone];
  [(_INPBDeviceDetail *)v5 setCategory:v6];

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    [(_INPBDeviceDetail *)v5 setDeviceClass:[(_INPBDeviceDetail *)self deviceClass]];
  }

  v7 = [(_INPBDataString *)self->_deviceName copyWithZone:zone];
  [(_INPBDeviceDetail *)v5 setDeviceName:v7];

  v8 = [(_INPBContact *)self->_deviceOwner copyWithZone:zone];
  [(_INPBDeviceDetail *)v5 setDeviceOwner:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBDeviceDetail *)v5 setIdentifier:v9];

  v10 = [(_INPBDataString *)self->_productName copyWithZone:zone];
  [(_INPBDeviceDetail *)v5 setProductName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeviceDetail *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeviceDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeviceDetail *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  category = [(_INPBDeviceDetail *)self category];

  if (category)
  {
    category2 = [(_INPBDeviceDetail *)self category];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    deviceClass = self->_deviceClass;
    PBDataWriterWriteInt32Field();
  }

  deviceName = [(_INPBDeviceDetail *)self deviceName];

  if (deviceName)
  {
    deviceName2 = [(_INPBDeviceDetail *)self deviceName];
    PBDataWriterWriteSubmessage();
  }

  deviceOwner = [(_INPBDeviceDetail *)self deviceOwner];

  if (deviceOwner)
  {
    deviceOwner2 = [(_INPBDeviceDetail *)self deviceOwner];
    PBDataWriterWriteSubmessage();
  }

  identifier = [(_INPBDeviceDetail *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  productName = [(_INPBDeviceDetail *)self productName];

  v14 = toCopy;
  if (productName)
  {
    productName2 = [(_INPBDeviceDetail *)self productName];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (int)StringAsDeviceClass:(id)class
{
  classCopy = class;
  if ([classCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([classCopy isEqualToString:@"IPHONE"])
  {
    v4 = 1;
  }

  else if ([classCopy isEqualToString:@"IPAD"])
  {
    v4 = 2;
  }

  else if ([classCopy isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([classCopy isEqualToString:@"IPOD"])
  {
    v4 = 4;
  }

  else if ([classCopy isEqualToString:@"TV"])
  {
    v4 = 5;
  }

  else if ([classCopy isEqualToString:@"MAC"])
  {
    v4 = 6;
  }

  else if ([classCopy isEqualToString:@"HOMEPOD"])
  {
    v4 = 7;
  }

  else if ([classCopy isEqualToString:@"HEADPHONE"])
  {
    v4 = 8;
  }

  else if ([classCopy isEqualToString:@"ACCESSORIES"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDeviceClass:(int)class
{
  has = self->_has;
  if (class == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceClass = class;
  }
}

@end