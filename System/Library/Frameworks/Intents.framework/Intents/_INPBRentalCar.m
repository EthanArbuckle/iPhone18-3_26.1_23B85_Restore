@interface _INPBRentalCar
- (BOOL)isEqual:(id)a3;
- (_INPBRentalCar)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMake:(id)a3;
- (void)setModel:(id)a3;
- (void)setRentalCarDescription:(id)a3;
- (void)setRentalCompanyName:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRentalCar

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_make)
  {
    v4 = [(_INPBRentalCar *)self make];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"make"];
  }

  if (self->_model)
  {
    v6 = [(_INPBRentalCar *)self model];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"model"];
  }

  if (self->_rentalCarDescription)
  {
    v8 = [(_INPBRentalCar *)self rentalCarDescription];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"rentalCarDescription"];
  }

  if (self->_rentalCompanyName)
  {
    v10 = [(_INPBRentalCar *)self rentalCompanyName];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"rentalCompanyName"];
  }

  if (self->_type)
  {
    v12 = [(_INPBRentalCar *)self type];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"type"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_make hash];
  v4 = [(NSString *)self->_model hash]^ v3;
  v5 = [(NSString *)self->_rentalCarDescription hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_rentalCompanyName hash];
  return v6 ^ [(NSString *)self->_type hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBRentalCar *)self make];
  v6 = [v4 make];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBRentalCar *)self make];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRentalCar *)self make];
    v10 = [v4 make];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCar *)self model];
  v6 = [v4 model];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBRentalCar *)self model];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRentalCar *)self model];
    v15 = [v4 model];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCar *)self rentalCarDescription];
  v6 = [v4 rentalCarDescription];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBRentalCar *)self rentalCarDescription];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRentalCar *)self rentalCarDescription];
    v20 = [v4 rentalCarDescription];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCar *)self rentalCompanyName];
  v6 = [v4 rentalCompanyName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBRentalCar *)self rentalCompanyName];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBRentalCar *)self rentalCompanyName];
    v25 = [v4 rentalCompanyName];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCar *)self type];
  v6 = [v4 type];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBRentalCar *)self type];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBRentalCar *)self type];
    v30 = [v4 type];
    v31 = [v29 isEqual:v30];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRentalCar allocWithZone:](_INPBRentalCar init];
  v6 = [(NSString *)self->_make copyWithZone:a3];
  [(_INPBRentalCar *)v5 setMake:v6];

  v7 = [(NSString *)self->_model copyWithZone:a3];
  [(_INPBRentalCar *)v5 setModel:v7];

  v8 = [(NSString *)self->_rentalCarDescription copyWithZone:a3];
  [(_INPBRentalCar *)v5 setRentalCarDescription:v8];

  v9 = [(NSString *)self->_rentalCompanyName copyWithZone:a3];
  [(_INPBRentalCar *)v5 setRentalCompanyName:v9];

  v10 = [(NSString *)self->_type copyWithZone:a3];
  [(_INPBRentalCar *)v5 setType:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRentalCar *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRentalCar)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRentalCar *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBRentalCar *)self make];

  if (v4)
  {
    make = self->_make;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBRentalCar *)self model];

  if (v6)
  {
    model = self->_model;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBRentalCar *)self rentalCarDescription];

  if (v8)
  {
    rentalCarDescription = self->_rentalCarDescription;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBRentalCar *)self rentalCompanyName];

  if (v10)
  {
    rentalCompanyName = self->_rentalCompanyName;
    PBDataWriterWriteStringField();
  }

  v12 = [(_INPBRentalCar *)self type];

  v13 = v15;
  if (v12)
  {
    type = self->_type;
    PBDataWriterWriteStringField();
    v13 = v15;
  }
}

- (void)setType:(id)a3
{
  v4 = [a3 copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8](v4, type);
}

- (void)setRentalCompanyName:(id)a3
{
  v4 = [a3 copy];
  rentalCompanyName = self->_rentalCompanyName;
  self->_rentalCompanyName = v4;

  MEMORY[0x1EEE66BB8](v4, rentalCompanyName);
}

- (void)setRentalCarDescription:(id)a3
{
  v4 = [a3 copy];
  rentalCarDescription = self->_rentalCarDescription;
  self->_rentalCarDescription = v4;

  MEMORY[0x1EEE66BB8](v4, rentalCarDescription);
}

- (void)setModel:(id)a3
{
  v4 = [a3 copy];
  model = self->_model;
  self->_model = v4;

  MEMORY[0x1EEE66BB8](v4, model);
}

- (void)setMake:(id)a3
{
  v4 = [a3 copy];
  make = self->_make;
  self->_make = v4;

  MEMORY[0x1EEE66BB8](v4, make);
}

@end