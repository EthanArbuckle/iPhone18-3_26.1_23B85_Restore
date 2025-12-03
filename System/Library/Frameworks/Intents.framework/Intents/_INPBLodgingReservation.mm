@interface _INPBLodgingReservation
- (BOOL)isEqual:(id)equal;
- (_INPBLodgingReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBLodgingReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  lodgingBusinessLocation = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
  dictionaryRepresentation = [lodgingBusinessLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"lodgingBusinessLocation"];

  numberOfAdults = [(_INPBLodgingReservation *)self numberOfAdults];
  dictionaryRepresentation2 = [numberOfAdults dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"numberOfAdults"];

  numberOfChildren = [(_INPBLodgingReservation *)self numberOfChildren];
  dictionaryRepresentation3 = [numberOfChildren dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"numberOfChildren"];

  reservation = [(_INPBLodgingReservation *)self reservation];
  dictionaryRepresentation4 = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"reservation"];

  reservationDuration = [(_INPBLodgingReservation *)self reservationDuration];
  dictionaryRepresentation5 = [reservationDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"reservationDuration"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocation *)self->_lodgingBusinessLocation hash];
  v4 = [(_INPBInteger *)self->_numberOfAdults hash]^ v3;
  v5 = [(_INPBInteger *)self->_numberOfChildren hash];
  v6 = v4 ^ v5 ^ [(_INPBReservation *)self->_reservation hash];
  return v6 ^ [(_INPBDateTimeRange *)self->_reservationDuration hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  lodgingBusinessLocation = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
  lodgingBusinessLocation2 = [equalCopy lodgingBusinessLocation];
  if ((lodgingBusinessLocation != 0) == (lodgingBusinessLocation2 == 0))
  {
    goto LABEL_26;
  }

  lodgingBusinessLocation3 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
  if (lodgingBusinessLocation3)
  {
    v8 = lodgingBusinessLocation3;
    lodgingBusinessLocation4 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
    lodgingBusinessLocation5 = [equalCopy lodgingBusinessLocation];
    v11 = [lodgingBusinessLocation4 isEqual:lodgingBusinessLocation5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  lodgingBusinessLocation = [(_INPBLodgingReservation *)self numberOfAdults];
  lodgingBusinessLocation2 = [equalCopy numberOfAdults];
  if ((lodgingBusinessLocation != 0) == (lodgingBusinessLocation2 == 0))
  {
    goto LABEL_26;
  }

  numberOfAdults = [(_INPBLodgingReservation *)self numberOfAdults];
  if (numberOfAdults)
  {
    v13 = numberOfAdults;
    numberOfAdults2 = [(_INPBLodgingReservation *)self numberOfAdults];
    numberOfAdults3 = [equalCopy numberOfAdults];
    v16 = [numberOfAdults2 isEqual:numberOfAdults3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  lodgingBusinessLocation = [(_INPBLodgingReservation *)self numberOfChildren];
  lodgingBusinessLocation2 = [equalCopy numberOfChildren];
  if ((lodgingBusinessLocation != 0) == (lodgingBusinessLocation2 == 0))
  {
    goto LABEL_26;
  }

  numberOfChildren = [(_INPBLodgingReservation *)self numberOfChildren];
  if (numberOfChildren)
  {
    v18 = numberOfChildren;
    numberOfChildren2 = [(_INPBLodgingReservation *)self numberOfChildren];
    numberOfChildren3 = [equalCopy numberOfChildren];
    v21 = [numberOfChildren2 isEqual:numberOfChildren3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  lodgingBusinessLocation = [(_INPBLodgingReservation *)self reservation];
  lodgingBusinessLocation2 = [equalCopy reservation];
  if ((lodgingBusinessLocation != 0) == (lodgingBusinessLocation2 == 0))
  {
    goto LABEL_26;
  }

  reservation = [(_INPBLodgingReservation *)self reservation];
  if (reservation)
  {
    v23 = reservation;
    reservation2 = [(_INPBLodgingReservation *)self reservation];
    reservation3 = [equalCopy reservation];
    v26 = [reservation2 isEqual:reservation3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  lodgingBusinessLocation = [(_INPBLodgingReservation *)self reservationDuration];
  lodgingBusinessLocation2 = [equalCopy reservationDuration];
  if ((lodgingBusinessLocation != 0) != (lodgingBusinessLocation2 == 0))
  {
    reservationDuration = [(_INPBLodgingReservation *)self reservationDuration];
    if (!reservationDuration)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = reservationDuration;
    reservationDuration2 = [(_INPBLodgingReservation *)self reservationDuration];
    reservationDuration3 = [equalCopy reservationDuration];
    v31 = [reservationDuration2 isEqual:reservationDuration3];

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
  v5 = [+[_INPBLodgingReservation allocWithZone:](_INPBLodgingReservation init];
  v6 = [(_INPBLocation *)self->_lodgingBusinessLocation copyWithZone:zone];
  [(_INPBLodgingReservation *)v5 setLodgingBusinessLocation:v6];

  v7 = [(_INPBInteger *)self->_numberOfAdults copyWithZone:zone];
  [(_INPBLodgingReservation *)v5 setNumberOfAdults:v7];

  v8 = [(_INPBInteger *)self->_numberOfChildren copyWithZone:zone];
  [(_INPBLodgingReservation *)v5 setNumberOfChildren:v8];

  v9 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBLodgingReservation *)v5 setReservation:v9];

  v10 = [(_INPBDateTimeRange *)self->_reservationDuration copyWithZone:zone];
  [(_INPBLodgingReservation *)v5 setReservationDuration:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBLodgingReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBLodgingReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBLodgingReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  lodgingBusinessLocation = [(_INPBLodgingReservation *)self lodgingBusinessLocation];

  if (lodgingBusinessLocation)
  {
    lodgingBusinessLocation2 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
    PBDataWriterWriteSubmessage();
  }

  numberOfAdults = [(_INPBLodgingReservation *)self numberOfAdults];

  if (numberOfAdults)
  {
    numberOfAdults2 = [(_INPBLodgingReservation *)self numberOfAdults];
    PBDataWriterWriteSubmessage();
  }

  numberOfChildren = [(_INPBLodgingReservation *)self numberOfChildren];

  if (numberOfChildren)
  {
    numberOfChildren2 = [(_INPBLodgingReservation *)self numberOfChildren];
    PBDataWriterWriteSubmessage();
  }

  reservation = [(_INPBLodgingReservation *)self reservation];

  if (reservation)
  {
    reservation2 = [(_INPBLodgingReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  reservationDuration = [(_INPBLodgingReservation *)self reservationDuration];

  v13 = toCopy;
  if (reservationDuration)
  {
    reservationDuration2 = [(_INPBLodgingReservation *)self reservationDuration];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

@end