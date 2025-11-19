@interface _INPBRideDriver
- (BOOL)isEqual:(id)a3;
- (_INPBRideDriver)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)setRating:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRideDriver

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRideDriver *)self image];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"image"];

  v6 = [(_INPBRideDriver *)self person];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"person"];

  if (self->_phoneNumber)
  {
    v8 = [(_INPBRideDriver *)self phoneNumber];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"phoneNumber"];
  }

  if (self->_rating)
  {
    v10 = [(_INPBRideDriver *)self rating];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"rating"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBImageValue *)self->_image hash];
  v4 = [(_INPBContactValue *)self->_person hash]^ v3;
  v5 = [(NSString *)self->_phoneNumber hash];
  return v4 ^ v5 ^ [(NSString *)self->_rating hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBRideDriver *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBRideDriver *)self image];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRideDriver *)self image];
    v10 = [v4 image];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideDriver *)self person];
  v6 = [v4 person];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBRideDriver *)self person];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRideDriver *)self person];
    v15 = [v4 person];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideDriver *)self phoneNumber];
  v6 = [v4 phoneNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBRideDriver *)self phoneNumber];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRideDriver *)self phoneNumber];
    v20 = [v4 phoneNumber];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideDriver *)self rating];
  v6 = [v4 rating];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBRideDriver *)self rating];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBRideDriver *)self rating];
    v25 = [v4 rating];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRideDriver allocWithZone:](_INPBRideDriver init];
  v6 = [(_INPBImageValue *)self->_image copyWithZone:a3];
  [(_INPBRideDriver *)v5 setImage:v6];

  v7 = [(_INPBContactValue *)self->_person copyWithZone:a3];
  [(_INPBRideDriver *)v5 setPerson:v7];

  v8 = [(NSString *)self->_phoneNumber copyWithZone:a3];
  [(_INPBRideDriver *)v5 setPhoneNumber:v8];

  v9 = [(NSString *)self->_rating copyWithZone:a3];
  [(_INPBRideDriver *)v5 setRating:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRideDriver *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRideDriver)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRideDriver *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBRideDriver *)self image];

  if (v4)
  {
    v5 = [(_INPBRideDriver *)self image];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRideDriver *)self person];

  if (v6)
  {
    v7 = [(_INPBRideDriver *)self person];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBRideDriver *)self phoneNumber];

  if (v8)
  {
    phoneNumber = self->_phoneNumber;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBRideDriver *)self rating];

  v11 = v13;
  if (v10)
  {
    rating = self->_rating;
    PBDataWriterWriteStringField();
    v11 = v13;
  }
}

- (void)setRating:(id)a3
{
  v4 = [a3 copy];
  rating = self->_rating;
  self->_rating = v4;

  MEMORY[0x1EEE66BB8](v4, rating);
}

- (void)setPhoneNumber:(id)a3
{
  v4 = [a3 copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v4;

  MEMORY[0x1EEE66BB8](v4, phoneNumber);
}

@end