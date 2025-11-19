@interface _INPBRideVehicle
- (BOOL)isEqual:(id)a3;
- (_INPBRideVehicle)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setManufacturer:(id)a3;
- (void)setModel:(id)a3;
- (void)setRegistrationPlate:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRideVehicle

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRideVehicle *)self location];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"location"];

  if (self->_manufacturer)
  {
    v6 = [(_INPBRideVehicle *)self manufacturer];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"manufacturer"];
  }

  v8 = [(_INPBRideVehicle *)self mapAnnotationImage];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"mapAnnotationImage"];

  if (self->_model)
  {
    v10 = [(_INPBRideVehicle *)self model];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"model"];
  }

  if (self->_registrationPlate)
  {
    v12 = [(_INPBRideVehicle *)self registrationPlate];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"registrationPlate"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(GEOLocation *)self->_location hash];
  v4 = [(NSString *)self->_manufacturer hash]^ v3;
  v5 = [(_INPBImageValue *)self->_mapAnnotationImage hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_model hash];
  return v6 ^ [(NSString *)self->_registrationPlate hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBRideVehicle *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBRideVehicle *)self location];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRideVehicle *)self location];
    v10 = [v4 location];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideVehicle *)self manufacturer];
  v6 = [v4 manufacturer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBRideVehicle *)self manufacturer];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRideVehicle *)self manufacturer];
    v15 = [v4 manufacturer];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideVehicle *)self mapAnnotationImage];
  v6 = [v4 mapAnnotationImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBRideVehicle *)self mapAnnotationImage];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRideVehicle *)self mapAnnotationImage];
    v20 = [v4 mapAnnotationImage];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideVehicle *)self model];
  v6 = [v4 model];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBRideVehicle *)self model];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBRideVehicle *)self model];
    v25 = [v4 model];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRideVehicle *)self registrationPlate];
  v6 = [v4 registrationPlate];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBRideVehicle *)self registrationPlate];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBRideVehicle *)self registrationPlate];
    v30 = [v4 registrationPlate];
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
  v5 = [+[_INPBRideVehicle allocWithZone:](_INPBRideVehicle init];
  v6 = [(GEOLocation *)self->_location copyWithZone:a3];
  [(_INPBRideVehicle *)v5 setLocation:v6];

  v7 = [(NSString *)self->_manufacturer copyWithZone:a3];
  [(_INPBRideVehicle *)v5 setManufacturer:v7];

  v8 = [(_INPBImageValue *)self->_mapAnnotationImage copyWithZone:a3];
  [(_INPBRideVehicle *)v5 setMapAnnotationImage:v8];

  v9 = [(NSString *)self->_model copyWithZone:a3];
  [(_INPBRideVehicle *)v5 setModel:v9];

  v10 = [(NSString *)self->_registrationPlate copyWithZone:a3];
  [(_INPBRideVehicle *)v5 setRegistrationPlate:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRideVehicle *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRideVehicle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRideVehicle *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBRideVehicle *)self location];

  if (v4)
  {
    v5 = [(_INPBRideVehicle *)self location];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRideVehicle *)self manufacturer];

  if (v6)
  {
    manufacturer = self->_manufacturer;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBRideVehicle *)self mapAnnotationImage];

  if (v8)
  {
    v9 = [(_INPBRideVehicle *)self mapAnnotationImage];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBRideVehicle *)self model];

  if (v10)
  {
    model = self->_model;
    PBDataWriterWriteStringField();
  }

  v12 = [(_INPBRideVehicle *)self registrationPlate];

  v13 = v15;
  if (v12)
  {
    registrationPlate = self->_registrationPlate;
    PBDataWriterWriteStringField();
    v13 = v15;
  }
}

- (void)setRegistrationPlate:(id)a3
{
  v4 = [a3 copy];
  registrationPlate = self->_registrationPlate;
  self->_registrationPlate = v4;

  MEMORY[0x1EEE66BB8](v4, registrationPlate);
}

- (void)setModel:(id)a3
{
  v4 = [a3 copy];
  model = self->_model;
  self->_model = v4;

  MEMORY[0x1EEE66BB8](v4, model);
}

- (void)setManufacturer:(id)a3
{
  v4 = [a3 copy];
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  MEMORY[0x1EEE66BB8](v4, manufacturer);
}

@end