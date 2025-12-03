@interface _INPBRideVehicle
- (BOOL)isEqual:(id)equal;
- (_INPBRideVehicle)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setManufacturer:(id)manufacturer;
- (void)setModel:(id)model;
- (void)setRegistrationPlate:(id)plate;
- (void)writeTo:(id)to;
@end

@implementation _INPBRideVehicle

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  location = [(_INPBRideVehicle *)self location];
  dictionaryRepresentation = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"location"];

  if (self->_manufacturer)
  {
    manufacturer = [(_INPBRideVehicle *)self manufacturer];
    v7 = [manufacturer copy];
    [dictionary setObject:v7 forKeyedSubscript:@"manufacturer"];
  }

  mapAnnotationImage = [(_INPBRideVehicle *)self mapAnnotationImage];
  dictionaryRepresentation2 = [mapAnnotationImage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mapAnnotationImage"];

  if (self->_model)
  {
    model = [(_INPBRideVehicle *)self model];
    v11 = [model copy];
    [dictionary setObject:v11 forKeyedSubscript:@"model"];
  }

  if (self->_registrationPlate)
  {
    registrationPlate = [(_INPBRideVehicle *)self registrationPlate];
    v13 = [registrationPlate copy];
    [dictionary setObject:v13 forKeyedSubscript:@"registrationPlate"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GEOLocation *)self->_location hash];
  v4 = [(NSString *)self->_manufacturer hash]^ v3;
  v5 = [(_INPBImageValue *)self->_mapAnnotationImage hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_model hash];
  return v6 ^ [(NSString *)self->_registrationPlate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  location = [(_INPBRideVehicle *)self location];
  location2 = [equalCopy location];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_26;
  }

  location3 = [(_INPBRideVehicle *)self location];
  if (location3)
  {
    v8 = location3;
    location4 = [(_INPBRideVehicle *)self location];
    location5 = [equalCopy location];
    v11 = [location4 isEqual:location5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  location = [(_INPBRideVehicle *)self manufacturer];
  location2 = [equalCopy manufacturer];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_26;
  }

  manufacturer = [(_INPBRideVehicle *)self manufacturer];
  if (manufacturer)
  {
    v13 = manufacturer;
    manufacturer2 = [(_INPBRideVehicle *)self manufacturer];
    manufacturer3 = [equalCopy manufacturer];
    v16 = [manufacturer2 isEqual:manufacturer3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  location = [(_INPBRideVehicle *)self mapAnnotationImage];
  location2 = [equalCopy mapAnnotationImage];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_26;
  }

  mapAnnotationImage = [(_INPBRideVehicle *)self mapAnnotationImage];
  if (mapAnnotationImage)
  {
    v18 = mapAnnotationImage;
    mapAnnotationImage2 = [(_INPBRideVehicle *)self mapAnnotationImage];
    mapAnnotationImage3 = [equalCopy mapAnnotationImage];
    v21 = [mapAnnotationImage2 isEqual:mapAnnotationImage3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  location = [(_INPBRideVehicle *)self model];
  location2 = [equalCopy model];
  if ((location != 0) == (location2 == 0))
  {
    goto LABEL_26;
  }

  model = [(_INPBRideVehicle *)self model];
  if (model)
  {
    v23 = model;
    model2 = [(_INPBRideVehicle *)self model];
    model3 = [equalCopy model];
    v26 = [model2 isEqual:model3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  location = [(_INPBRideVehicle *)self registrationPlate];
  location2 = [equalCopy registrationPlate];
  if ((location != 0) != (location2 == 0))
  {
    registrationPlate = [(_INPBRideVehicle *)self registrationPlate];
    if (!registrationPlate)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = registrationPlate;
    registrationPlate2 = [(_INPBRideVehicle *)self registrationPlate];
    registrationPlate3 = [equalCopy registrationPlate];
    v31 = [registrationPlate2 isEqual:registrationPlate3];

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
  v5 = [+[_INPBRideVehicle allocWithZone:](_INPBRideVehicle init];
  v6 = [(GEOLocation *)self->_location copyWithZone:zone];
  [(_INPBRideVehicle *)v5 setLocation:v6];

  v7 = [(NSString *)self->_manufacturer copyWithZone:zone];
  [(_INPBRideVehicle *)v5 setManufacturer:v7];

  v8 = [(_INPBImageValue *)self->_mapAnnotationImage copyWithZone:zone];
  [(_INPBRideVehicle *)v5 setMapAnnotationImage:v8];

  v9 = [(NSString *)self->_model copyWithZone:zone];
  [(_INPBRideVehicle *)v5 setModel:v9];

  v10 = [(NSString *)self->_registrationPlate copyWithZone:zone];
  [(_INPBRideVehicle *)v5 setRegistrationPlate:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRideVehicle *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRideVehicle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRideVehicle *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  location = [(_INPBRideVehicle *)self location];

  if (location)
  {
    location2 = [(_INPBRideVehicle *)self location];
    PBDataWriterWriteSubmessage();
  }

  manufacturer = [(_INPBRideVehicle *)self manufacturer];

  if (manufacturer)
  {
    manufacturer = self->_manufacturer;
    PBDataWriterWriteStringField();
  }

  mapAnnotationImage = [(_INPBRideVehicle *)self mapAnnotationImage];

  if (mapAnnotationImage)
  {
    mapAnnotationImage2 = [(_INPBRideVehicle *)self mapAnnotationImage];
    PBDataWriterWriteSubmessage();
  }

  model = [(_INPBRideVehicle *)self model];

  if (model)
  {
    model = self->_model;
    PBDataWriterWriteStringField();
  }

  registrationPlate = [(_INPBRideVehicle *)self registrationPlate];

  v13 = toCopy;
  if (registrationPlate)
  {
    registrationPlate = self->_registrationPlate;
    PBDataWriterWriteStringField();
    v13 = toCopy;
  }
}

- (void)setRegistrationPlate:(id)plate
{
  v4 = [plate copy];
  registrationPlate = self->_registrationPlate;
  self->_registrationPlate = v4;

  MEMORY[0x1EEE66BB8](v4, registrationPlate);
}

- (void)setModel:(id)model
{
  v4 = [model copy];
  model = self->_model;
  self->_model = v4;

  MEMORY[0x1EEE66BB8](v4, model);
}

- (void)setManufacturer:(id)manufacturer
{
  v4 = [manufacturer copy];
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  MEMORY[0x1EEE66BB8](v4, manufacturer);
}

@end