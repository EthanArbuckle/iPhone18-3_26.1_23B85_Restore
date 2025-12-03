@interface _INPBRentalCarReservation
- (BOOL)isEqual:(id)equal;
- (_INPBRentalCarReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBRentalCarReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dropOffLocation = [(_INPBRentalCarReservation *)self dropOffLocation];
  dictionaryRepresentation = [dropOffLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dropOffLocation"];

  pickupLocation = [(_INPBRentalCarReservation *)self pickupLocation];
  dictionaryRepresentation2 = [pickupLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pickupLocation"];

  rentalCar = [(_INPBRentalCarReservation *)self rentalCar];
  dictionaryRepresentation3 = [rentalCar dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"rentalCar"];

  rentalDuration = [(_INPBRentalCarReservation *)self rentalDuration];
  dictionaryRepresentation4 = [rentalDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"rentalDuration"];

  reservation = [(_INPBRentalCarReservation *)self reservation];
  dictionaryRepresentation5 = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"reservation"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocationValue *)self->_dropOffLocation hash];
  v4 = [(_INPBLocationValue *)self->_pickupLocation hash]^ v3;
  v5 = [(_INPBRentalCar *)self->_rentalCar hash];
  v6 = v4 ^ v5 ^ [(_INPBDateTimeRange *)self->_rentalDuration hash];
  return v6 ^ [(_INPBReservation *)self->_reservation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  dropOffLocation = [(_INPBRentalCarReservation *)self dropOffLocation];
  dropOffLocation2 = [equalCopy dropOffLocation];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_26;
  }

  dropOffLocation3 = [(_INPBRentalCarReservation *)self dropOffLocation];
  if (dropOffLocation3)
  {
    v8 = dropOffLocation3;
    dropOffLocation4 = [(_INPBRentalCarReservation *)self dropOffLocation];
    dropOffLocation5 = [equalCopy dropOffLocation];
    v11 = [dropOffLocation4 isEqual:dropOffLocation5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRentalCarReservation *)self pickupLocation];
  dropOffLocation2 = [equalCopy pickupLocation];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_26;
  }

  pickupLocation = [(_INPBRentalCarReservation *)self pickupLocation];
  if (pickupLocation)
  {
    v13 = pickupLocation;
    pickupLocation2 = [(_INPBRentalCarReservation *)self pickupLocation];
    pickupLocation3 = [equalCopy pickupLocation];
    v16 = [pickupLocation2 isEqual:pickupLocation3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRentalCarReservation *)self rentalCar];
  dropOffLocation2 = [equalCopy rentalCar];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_26;
  }

  rentalCar = [(_INPBRentalCarReservation *)self rentalCar];
  if (rentalCar)
  {
    v18 = rentalCar;
    rentalCar2 = [(_INPBRentalCarReservation *)self rentalCar];
    rentalCar3 = [equalCopy rentalCar];
    v21 = [rentalCar2 isEqual:rentalCar3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRentalCarReservation *)self rentalDuration];
  dropOffLocation2 = [equalCopy rentalDuration];
  if ((dropOffLocation != 0) == (dropOffLocation2 == 0))
  {
    goto LABEL_26;
  }

  rentalDuration = [(_INPBRentalCarReservation *)self rentalDuration];
  if (rentalDuration)
  {
    v23 = rentalDuration;
    rentalDuration2 = [(_INPBRentalCarReservation *)self rentalDuration];
    rentalDuration3 = [equalCopy rentalDuration];
    v26 = [rentalDuration2 isEqual:rentalDuration3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dropOffLocation = [(_INPBRentalCarReservation *)self reservation];
  dropOffLocation2 = [equalCopy reservation];
  if ((dropOffLocation != 0) != (dropOffLocation2 == 0))
  {
    reservation = [(_INPBRentalCarReservation *)self reservation];
    if (!reservation)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = reservation;
    reservation2 = [(_INPBRentalCarReservation *)self reservation];
    reservation3 = [equalCopy reservation];
    v31 = [reservation2 isEqual:reservation3];

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
  v5 = [+[_INPBRentalCarReservation allocWithZone:](_INPBRentalCarReservation init];
  v6 = [(_INPBLocationValue *)self->_dropOffLocation copyWithZone:zone];
  [(_INPBRentalCarReservation *)v5 setDropOffLocation:v6];

  v7 = [(_INPBLocationValue *)self->_pickupLocation copyWithZone:zone];
  [(_INPBRentalCarReservation *)v5 setPickupLocation:v7];

  v8 = [(_INPBRentalCar *)self->_rentalCar copyWithZone:zone];
  [(_INPBRentalCarReservation *)v5 setRentalCar:v8];

  v9 = [(_INPBDateTimeRange *)self->_rentalDuration copyWithZone:zone];
  [(_INPBRentalCarReservation *)v5 setRentalDuration:v9];

  v10 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBRentalCarReservation *)v5 setReservation:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRentalCarReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRentalCarReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRentalCarReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dropOffLocation = [(_INPBRentalCarReservation *)self dropOffLocation];

  if (dropOffLocation)
  {
    dropOffLocation2 = [(_INPBRentalCarReservation *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  pickupLocation = [(_INPBRentalCarReservation *)self pickupLocation];

  if (pickupLocation)
  {
    pickupLocation2 = [(_INPBRentalCarReservation *)self pickupLocation];
    PBDataWriterWriteSubmessage();
  }

  rentalCar = [(_INPBRentalCarReservation *)self rentalCar];

  if (rentalCar)
  {
    rentalCar2 = [(_INPBRentalCarReservation *)self rentalCar];
    PBDataWriterWriteSubmessage();
  }

  rentalDuration = [(_INPBRentalCarReservation *)self rentalDuration];

  if (rentalDuration)
  {
    rentalDuration2 = [(_INPBRentalCarReservation *)self rentalDuration];
    PBDataWriterWriteSubmessage();
  }

  reservation = [(_INPBRentalCarReservation *)self reservation];

  v13 = toCopy;
  if (reservation)
  {
    reservation2 = [(_INPBRentalCarReservation *)self reservation];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

@end