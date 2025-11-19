@interface _INPBDeviceDetail
- (BOOL)isEqual:(id)a3;
- (_INPBDeviceDetail)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceClass:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDeviceClass:(int)a3;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeviceDetail

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBDeviceDetail *)self category];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"category"];

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    v6 = [(_INPBDeviceDetail *)self deviceClass];
    if (v6 >= 0xA)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E7287678 + v6);
    }

    [v3 setObject:v7 forKeyedSubscript:@"deviceClass"];
  }

  v8 = [(_INPBDeviceDetail *)self deviceName];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"deviceName"];

  v10 = [(_INPBDeviceDetail *)self deviceOwner];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"deviceOwner"];

  if (self->_identifier)
  {
    v12 = [(_INPBDeviceDetail *)self identifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"identifier"];
  }

  v14 = [(_INPBDeviceDetail *)self productName];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"productName"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = [(_INPBDeviceDetail *)self category];
  v6 = [v4 category];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(_INPBDeviceDetail *)self category];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBDeviceDetail *)self category];
    v10 = [v4 category];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v12 = [(_INPBDeviceDetail *)self hasDeviceClass];
  if (v12 != [v4 hasDeviceClass])
  {
    goto LABEL_31;
  }

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    if ([v4 hasDeviceClass])
    {
      deviceClass = self->_deviceClass;
      if (deviceClass != [v4 deviceClass])
      {
        goto LABEL_31;
      }
    }
  }

  v5 = [(_INPBDeviceDetail *)self deviceName];
  v6 = [v4 deviceName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v14 = [(_INPBDeviceDetail *)self deviceName];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBDeviceDetail *)self deviceName];
    v17 = [v4 deviceName];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBDeviceDetail *)self deviceOwner];
  v6 = [v4 deviceOwner];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v19 = [(_INPBDeviceDetail *)self deviceOwner];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBDeviceDetail *)self deviceOwner];
    v22 = [v4 deviceOwner];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBDeviceDetail *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v24 = [(_INPBDeviceDetail *)self identifier];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBDeviceDetail *)self identifier];
    v27 = [v4 identifier];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBDeviceDetail *)self productName];
  v6 = [v4 productName];
  if ((v5 != 0) != (v6 == 0))
  {
    v29 = [(_INPBDeviceDetail *)self productName];
    if (!v29)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    v31 = [(_INPBDeviceDetail *)self productName];
    v32 = [v4 productName];
    v33 = [v31 isEqual:v32];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDeviceDetail allocWithZone:](_INPBDeviceDetail init];
  v6 = [(_INPBDataString *)self->_category copyWithZone:a3];
  [(_INPBDeviceDetail *)v5 setCategory:v6];

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    [(_INPBDeviceDetail *)v5 setDeviceClass:[(_INPBDeviceDetail *)self deviceClass]];
  }

  v7 = [(_INPBDataString *)self->_deviceName copyWithZone:a3];
  [(_INPBDeviceDetail *)v5 setDeviceName:v7];

  v8 = [(_INPBContact *)self->_deviceOwner copyWithZone:a3];
  [(_INPBDeviceDetail *)v5 setDeviceOwner:v8];

  v9 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBDeviceDetail *)v5 setIdentifier:v9];

  v10 = [(_INPBDataString *)self->_productName copyWithZone:a3];
  [(_INPBDeviceDetail *)v5 setProductName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeviceDetail *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeviceDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeviceDetail *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(_INPBDeviceDetail *)self category];

  if (v4)
  {
    v5 = [(_INPBDeviceDetail *)self category];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBDeviceDetail *)self hasDeviceClass])
  {
    deviceClass = self->_deviceClass;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBDeviceDetail *)self deviceName];

  if (v7)
  {
    v8 = [(_INPBDeviceDetail *)self deviceName];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBDeviceDetail *)self deviceOwner];

  if (v9)
  {
    v10 = [(_INPBDeviceDetail *)self deviceOwner];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBDeviceDetail *)self identifier];

  if (v11)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBDeviceDetail *)self productName];

  v14 = v16;
  if (v13)
  {
    v15 = [(_INPBDeviceDetail *)self productName];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (int)StringAsDeviceClass:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"IPHONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IPAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"IPOD"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TV"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MAC"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"HOMEPOD"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"HEADPHONE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ACCESSORIES"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDeviceClass:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_deviceClass = a3;
  }
}

@end