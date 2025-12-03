@interface _INPBRentalCar
- (BOOL)isEqual:(id)equal;
- (_INPBRentalCar)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setMake:(id)make;
- (void)setModel:(id)model;
- (void)setRentalCarDescription:(id)description;
- (void)setRentalCompanyName:(id)name;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBRentalCar

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_make)
  {
    make = [(_INPBRentalCar *)self make];
    v5 = [make copy];
    [dictionary setObject:v5 forKeyedSubscript:@"make"];
  }

  if (self->_model)
  {
    model = [(_INPBRentalCar *)self model];
    v7 = [model copy];
    [dictionary setObject:v7 forKeyedSubscript:@"model"];
  }

  if (self->_rentalCarDescription)
  {
    rentalCarDescription = [(_INPBRentalCar *)self rentalCarDescription];
    v9 = [rentalCarDescription copy];
    [dictionary setObject:v9 forKeyedSubscript:@"rentalCarDescription"];
  }

  if (self->_rentalCompanyName)
  {
    rentalCompanyName = [(_INPBRentalCar *)self rentalCompanyName];
    v11 = [rentalCompanyName copy];
    [dictionary setObject:v11 forKeyedSubscript:@"rentalCompanyName"];
  }

  if (self->_type)
  {
    type = [(_INPBRentalCar *)self type];
    v13 = [type copy];
    [dictionary setObject:v13 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_make hash];
  v4 = [(NSString *)self->_model hash]^ v3;
  v5 = [(NSString *)self->_rentalCarDescription hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_rentalCompanyName hash];
  return v6 ^ [(NSString *)self->_type hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  make = [(_INPBRentalCar *)self make];
  make2 = [equalCopy make];
  if ((make != 0) == (make2 == 0))
  {
    goto LABEL_26;
  }

  make3 = [(_INPBRentalCar *)self make];
  if (make3)
  {
    v8 = make3;
    make4 = [(_INPBRentalCar *)self make];
    make5 = [equalCopy make];
    v11 = [make4 isEqual:make5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  make = [(_INPBRentalCar *)self model];
  make2 = [equalCopy model];
  if ((make != 0) == (make2 == 0))
  {
    goto LABEL_26;
  }

  model = [(_INPBRentalCar *)self model];
  if (model)
  {
    v13 = model;
    model2 = [(_INPBRentalCar *)self model];
    model3 = [equalCopy model];
    v16 = [model2 isEqual:model3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  make = [(_INPBRentalCar *)self rentalCarDescription];
  make2 = [equalCopy rentalCarDescription];
  if ((make != 0) == (make2 == 0))
  {
    goto LABEL_26;
  }

  rentalCarDescription = [(_INPBRentalCar *)self rentalCarDescription];
  if (rentalCarDescription)
  {
    v18 = rentalCarDescription;
    rentalCarDescription2 = [(_INPBRentalCar *)self rentalCarDescription];
    rentalCarDescription3 = [equalCopy rentalCarDescription];
    v21 = [rentalCarDescription2 isEqual:rentalCarDescription3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  make = [(_INPBRentalCar *)self rentalCompanyName];
  make2 = [equalCopy rentalCompanyName];
  if ((make != 0) == (make2 == 0))
  {
    goto LABEL_26;
  }

  rentalCompanyName = [(_INPBRentalCar *)self rentalCompanyName];
  if (rentalCompanyName)
  {
    v23 = rentalCompanyName;
    rentalCompanyName2 = [(_INPBRentalCar *)self rentalCompanyName];
    rentalCompanyName3 = [equalCopy rentalCompanyName];
    v26 = [rentalCompanyName2 isEqual:rentalCompanyName3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  make = [(_INPBRentalCar *)self type];
  make2 = [equalCopy type];
  if ((make != 0) != (make2 == 0))
  {
    type = [(_INPBRentalCar *)self type];
    if (!type)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = type;
    type2 = [(_INPBRentalCar *)self type];
    type3 = [equalCopy type];
    v31 = [type2 isEqual:type3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRentalCar allocWithZone:](_INPBRentalCar init];
  v6 = [(NSString *)self->_make copyWithZone:zone];
  [(_INPBRentalCar *)v5 setMake:v6];

  v7 = [(NSString *)self->_model copyWithZone:zone];
  [(_INPBRentalCar *)v5 setModel:v7];

  v8 = [(NSString *)self->_rentalCarDescription copyWithZone:zone];
  [(_INPBRentalCar *)v5 setRentalCarDescription:v8];

  v9 = [(NSString *)self->_rentalCompanyName copyWithZone:zone];
  [(_INPBRentalCar *)v5 setRentalCompanyName:v9];

  v10 = [(NSString *)self->_type copyWithZone:zone];
  [(_INPBRentalCar *)v5 setType:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRentalCar *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRentalCar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRentalCar *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  make = [(_INPBRentalCar *)self make];

  if (make)
  {
    make = self->_make;
    PBDataWriterWriteStringField();
  }

  model = [(_INPBRentalCar *)self model];

  if (model)
  {
    model = self->_model;
    PBDataWriterWriteStringField();
  }

  rentalCarDescription = [(_INPBRentalCar *)self rentalCarDescription];

  if (rentalCarDescription)
  {
    rentalCarDescription = self->_rentalCarDescription;
    PBDataWriterWriteStringField();
  }

  rentalCompanyName = [(_INPBRentalCar *)self rentalCompanyName];

  if (rentalCompanyName)
  {
    rentalCompanyName = self->_rentalCompanyName;
    PBDataWriterWriteStringField();
  }

  type = [(_INPBRentalCar *)self type];

  v13 = toCopy;
  if (type)
  {
    type = self->_type;
    PBDataWriterWriteStringField();
    v13 = toCopy;
  }
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8](v4, type);
}

- (void)setRentalCompanyName:(id)name
{
  v4 = [name copy];
  rentalCompanyName = self->_rentalCompanyName;
  self->_rentalCompanyName = v4;

  MEMORY[0x1EEE66BB8](v4, rentalCompanyName);
}

- (void)setRentalCarDescription:(id)description
{
  v4 = [description copy];
  rentalCarDescription = self->_rentalCarDescription;
  self->_rentalCarDescription = v4;

  MEMORY[0x1EEE66BB8](v4, rentalCarDescription);
}

- (void)setModel:(id)model
{
  v4 = [model copy];
  model = self->_model;
  self->_model = v4;

  MEMORY[0x1EEE66BB8](v4, model);
}

- (void)setMake:(id)make
{
  v4 = [make copy];
  make = self->_make;
  self->_make = v4;

  MEMORY[0x1EEE66BB8](v4, make);
}

@end