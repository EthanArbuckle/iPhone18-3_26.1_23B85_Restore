@interface _INPBDialingContactValue
- (BOOL)isEqual:(id)a3;
- (_INPBDialingContactValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDialingContactValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBDialingContactValue *)self dialingContact];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"dialingContact"];

  v6 = [(_INPBDialingContactValue *)self dialingPhoneLabel];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"dialingPhoneLabel"];

  v8 = [(_INPBDialingContactValue *)self dialingPhoneNumber];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"dialingPhoneNumber"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBContactValue *)self->_dialingContact hash];
  v4 = [(_INPBStringValue *)self->_dialingPhoneLabel hash]^ v3;
  return v4 ^ [(_INPBStringValue *)self->_dialingPhoneNumber hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBDialingContactValue *)self dialingContact];
  v6 = [v4 dialingContact];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBDialingContactValue *)self dialingContact];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBDialingContactValue *)self dialingContact];
    v10 = [v4 dialingContact];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBDialingContactValue *)self dialingPhoneLabel];
  v6 = [v4 dialingPhoneLabel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBDialingContactValue *)self dialingPhoneLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBDialingContactValue *)self dialingPhoneLabel];
    v15 = [v4 dialingPhoneLabel];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBDialingContactValue *)self dialingPhoneNumber];
  v6 = [v4 dialingPhoneNumber];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBDialingContactValue *)self dialingPhoneNumber];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBDialingContactValue *)self dialingPhoneNumber];
    v20 = [v4 dialingPhoneNumber];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDialingContactValue allocWithZone:](_INPBDialingContactValue init];
  v6 = [(_INPBContactValue *)self->_dialingContact copyWithZone:a3];
  [(_INPBDialingContactValue *)v5 setDialingContact:v6];

  v7 = [(_INPBStringValue *)self->_dialingPhoneLabel copyWithZone:a3];
  [(_INPBDialingContactValue *)v5 setDialingPhoneLabel:v7];

  v8 = [(_INPBStringValue *)self->_dialingPhoneNumber copyWithZone:a3];
  [(_INPBDialingContactValue *)v5 setDialingPhoneNumber:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDialingContactValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDialingContactValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDialingContactValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBDialingContactValue *)self dialingContact];

  if (v4)
  {
    v5 = [(_INPBDialingContactValue *)self dialingContact];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBDialingContactValue *)self dialingPhoneLabel];

  if (v6)
  {
    v7 = [(_INPBDialingContactValue *)self dialingPhoneLabel];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBDialingContactValue *)self dialingPhoneNumber];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBDialingContactValue *)self dialingPhoneNumber];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end