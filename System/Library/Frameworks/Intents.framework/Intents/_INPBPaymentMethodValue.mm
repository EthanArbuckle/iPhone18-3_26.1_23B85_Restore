@interface _INPBPaymentMethodValue
- (BOOL)isEqual:(id)a3;
- (_INPBPaymentMethodValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentificationHint:(id)a3;
- (void)setName:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPaymentMethodValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPaymentMethodValue *)self icon];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"icon"];

  if (self->_identificationHint)
  {
    v6 = [(_INPBPaymentMethodValue *)self identificationHint];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"identificationHint"];
  }

  if (self->_name)
  {
    v8 = [(_INPBPaymentMethodValue *)self name];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"name"];
  }

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    v10 = [(_INPBPaymentMethodValue *)self type];
    if ((v10 - 1) >= 8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E72805D0[(v10 - 1)];
    }

    [v3 setObject:v11 forKeyedSubscript:@"type"];
  }

  v12 = [(_INPBPaymentMethodValue *)self valueMetadata];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBImageValue *)self->_icon hash];
  v4 = [(NSString *)self->_identificationHint hash];
  v5 = [(NSString *)self->_name hash];
  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    v6 = 2654435761 * self->_type;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBPaymentMethodValue *)self icon];
  v6 = [v4 icon];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v7 = [(_INPBPaymentMethodValue *)self icon];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPaymentMethodValue *)self icon];
    v10 = [v4 icon];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBPaymentMethodValue *)self identificationHint];
  v6 = [v4 identificationHint];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v12 = [(_INPBPaymentMethodValue *)self identificationHint];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPaymentMethodValue *)self identificationHint];
    v15 = [v4 identificationHint];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBPaymentMethodValue *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v17 = [(_INPBPaymentMethodValue *)self name];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPaymentMethodValue *)self name];
    v20 = [v4 name];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v22 = [(_INPBPaymentMethodValue *)self hasType];
  if (v22 != [v4 hasType])
  {
    goto LABEL_26;
  }

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    if ([v4 hasType])
    {
      type = self->_type;
      if (type != [v4 type])
      {
        goto LABEL_26;
      }
    }
  }

  v5 = [(_INPBPaymentMethodValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v24 = [(_INPBPaymentMethodValue *)self valueMetadata];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBPaymentMethodValue *)self valueMetadata];
    v27 = [v4 valueMetadata];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPaymentMethodValue allocWithZone:](_INPBPaymentMethodValue init];
  v6 = [(_INPBImageValue *)self->_icon copyWithZone:a3];
  [(_INPBPaymentMethodValue *)v5 setIcon:v6];

  v7 = [(NSString *)self->_identificationHint copyWithZone:a3];
  [(_INPBPaymentMethodValue *)v5 setIdentificationHint:v7];

  v8 = [(NSString *)self->_name copyWithZone:a3];
  [(_INPBPaymentMethodValue *)v5 setName:v8];

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    [(_INPBPaymentMethodValue *)v5 setType:[(_INPBPaymentMethodValue *)self type]];
  }

  v9 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBPaymentMethodValue *)v5 setValueMetadata:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPaymentMethodValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPaymentMethodValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPaymentMethodValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(_INPBPaymentMethodValue *)self icon];

  if (v4)
  {
    v5 = [(_INPBPaymentMethodValue *)self icon];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBPaymentMethodValue *)self identificationHint];

  if (v6)
  {
    identificationHint = self->_identificationHint;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBPaymentMethodValue *)self name];

  if (v8)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPaymentMethodValue *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v11 = [(_INPBPaymentMethodValue *)self valueMetadata];

  v12 = v14;
  if (v11)
  {
    v13 = [(_INPBPaymentMethodValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CHECKING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SAVINGS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BROKERAGE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DEBIT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CREDIT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PREPAID"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"STORE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"APPLE_PAY"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = a3;
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)setIdentificationHint:(id)a3
{
  v4 = [a3 copy];
  identificationHint = self->_identificationHint;
  self->_identificationHint = v4;

  MEMORY[0x1EEE66BB8](v4, identificationHint);
}

@end