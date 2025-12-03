@interface _INPBRideDriver
- (BOOL)isEqual:(id)equal;
- (_INPBRideDriver)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setPhoneNumber:(id)number;
- (void)setRating:(id)rating;
- (void)writeTo:(id)to;
@end

@implementation _INPBRideDriver

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  image = [(_INPBRideDriver *)self image];
  dictionaryRepresentation = [image dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"image"];

  person = [(_INPBRideDriver *)self person];
  dictionaryRepresentation2 = [person dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"person"];

  if (self->_phoneNumber)
  {
    phoneNumber = [(_INPBRideDriver *)self phoneNumber];
    v9 = [phoneNumber copy];
    [dictionary setObject:v9 forKeyedSubscript:@"phoneNumber"];
  }

  if (self->_rating)
  {
    rating = [(_INPBRideDriver *)self rating];
    v11 = [rating copy];
    [dictionary setObject:v11 forKeyedSubscript:@"rating"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBImageValue *)self->_image hash];
  v4 = [(_INPBContactValue *)self->_person hash]^ v3;
  v5 = [(NSString *)self->_phoneNumber hash];
  return v4 ^ v5 ^ [(NSString *)self->_rating hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  image = [(_INPBRideDriver *)self image];
  image2 = [equalCopy image];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  image3 = [(_INPBRideDriver *)self image];
  if (image3)
  {
    v8 = image3;
    image4 = [(_INPBRideDriver *)self image];
    image5 = [equalCopy image];
    v11 = [image4 isEqual:image5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_INPBRideDriver *)self person];
  image2 = [equalCopy person];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  person = [(_INPBRideDriver *)self person];
  if (person)
  {
    v13 = person;
    person2 = [(_INPBRideDriver *)self person];
    person3 = [equalCopy person];
    v16 = [person2 isEqual:person3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_INPBRideDriver *)self phoneNumber];
  image2 = [equalCopy phoneNumber];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_21;
  }

  phoneNumber = [(_INPBRideDriver *)self phoneNumber];
  if (phoneNumber)
  {
    v18 = phoneNumber;
    phoneNumber2 = [(_INPBRideDriver *)self phoneNumber];
    phoneNumber3 = [equalCopy phoneNumber];
    v21 = [phoneNumber2 isEqual:phoneNumber3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  image = [(_INPBRideDriver *)self rating];
  image2 = [equalCopy rating];
  if ((image != 0) != (image2 == 0))
  {
    rating = [(_INPBRideDriver *)self rating];
    if (!rating)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = rating;
    rating2 = [(_INPBRideDriver *)self rating];
    rating3 = [equalCopy rating];
    v26 = [rating2 isEqual:rating3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRideDriver allocWithZone:](_INPBRideDriver init];
  v6 = [(_INPBImageValue *)self->_image copyWithZone:zone];
  [(_INPBRideDriver *)v5 setImage:v6];

  v7 = [(_INPBContactValue *)self->_person copyWithZone:zone];
  [(_INPBRideDriver *)v5 setPerson:v7];

  v8 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  [(_INPBRideDriver *)v5 setPhoneNumber:v8];

  v9 = [(NSString *)self->_rating copyWithZone:zone];
  [(_INPBRideDriver *)v5 setRating:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRideDriver *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRideDriver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRideDriver *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  image = [(_INPBRideDriver *)self image];

  if (image)
  {
    image2 = [(_INPBRideDriver *)self image];
    PBDataWriterWriteSubmessage();
  }

  person = [(_INPBRideDriver *)self person];

  if (person)
  {
    person2 = [(_INPBRideDriver *)self person];
    PBDataWriterWriteSubmessage();
  }

  phoneNumber = [(_INPBRideDriver *)self phoneNumber];

  if (phoneNumber)
  {
    phoneNumber = self->_phoneNumber;
    PBDataWriterWriteStringField();
  }

  rating = [(_INPBRideDriver *)self rating];

  v11 = toCopy;
  if (rating)
  {
    rating = self->_rating;
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (void)setRating:(id)rating
{
  v4 = [rating copy];
  rating = self->_rating;
  self->_rating = v4;

  MEMORY[0x1EEE66BB8](v4, rating);
}

- (void)setPhoneNumber:(id)number
{
  v4 = [number copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v4;

  MEMORY[0x1EEE66BB8](v4, phoneNumber);
}

@end