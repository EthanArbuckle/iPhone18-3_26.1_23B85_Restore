@interface _INPBRestaurantReservation
- (BOOL)isEqual:(id)equal;
- (_INPBRestaurantReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBRestaurantReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  partySize = [(_INPBRestaurantReservation *)self partySize];
  dictionaryRepresentation = [partySize dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"partySize"];

  reservation = [(_INPBRestaurantReservation *)self reservation];
  dictionaryRepresentation2 = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"reservation"];

  reservationDuration = [(_INPBRestaurantReservation *)self reservationDuration];
  dictionaryRepresentation3 = [reservationDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"reservationDuration"];

  restaurantLocation = [(_INPBRestaurantReservation *)self restaurantLocation];
  dictionaryRepresentation4 = [restaurantLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"restaurantLocation"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBInteger *)self->_partySize hash];
  v4 = [(_INPBReservation *)self->_reservation hash]^ v3;
  v5 = [(_INPBDateTimeRange *)self->_reservationDuration hash];
  return v4 ^ v5 ^ [(_INPBLocation *)self->_restaurantLocation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  partySize = [(_INPBRestaurantReservation *)self partySize];
  partySize2 = [equalCopy partySize];
  if ((partySize != 0) == (partySize2 == 0))
  {
    goto LABEL_21;
  }

  partySize3 = [(_INPBRestaurantReservation *)self partySize];
  if (partySize3)
  {
    v8 = partySize3;
    partySize4 = [(_INPBRestaurantReservation *)self partySize];
    partySize5 = [equalCopy partySize];
    v11 = [partySize4 isEqual:partySize5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  partySize = [(_INPBRestaurantReservation *)self reservation];
  partySize2 = [equalCopy reservation];
  if ((partySize != 0) == (partySize2 == 0))
  {
    goto LABEL_21;
  }

  reservation = [(_INPBRestaurantReservation *)self reservation];
  if (reservation)
  {
    v13 = reservation;
    reservation2 = [(_INPBRestaurantReservation *)self reservation];
    reservation3 = [equalCopy reservation];
    v16 = [reservation2 isEqual:reservation3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  partySize = [(_INPBRestaurantReservation *)self reservationDuration];
  partySize2 = [equalCopy reservationDuration];
  if ((partySize != 0) == (partySize2 == 0))
  {
    goto LABEL_21;
  }

  reservationDuration = [(_INPBRestaurantReservation *)self reservationDuration];
  if (reservationDuration)
  {
    v18 = reservationDuration;
    reservationDuration2 = [(_INPBRestaurantReservation *)self reservationDuration];
    reservationDuration3 = [equalCopy reservationDuration];
    v21 = [reservationDuration2 isEqual:reservationDuration3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  partySize = [(_INPBRestaurantReservation *)self restaurantLocation];
  partySize2 = [equalCopy restaurantLocation];
  if ((partySize != 0) != (partySize2 == 0))
  {
    restaurantLocation = [(_INPBRestaurantReservation *)self restaurantLocation];
    if (!restaurantLocation)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = restaurantLocation;
    restaurantLocation2 = [(_INPBRestaurantReservation *)self restaurantLocation];
    restaurantLocation3 = [equalCopy restaurantLocation];
    v26 = [restaurantLocation2 isEqual:restaurantLocation3];

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
  v5 = [+[_INPBRestaurantReservation allocWithZone:](_INPBRestaurantReservation init];
  v6 = [(_INPBInteger *)self->_partySize copyWithZone:zone];
  [(_INPBRestaurantReservation *)v5 setPartySize:v6];

  v7 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBRestaurantReservation *)v5 setReservation:v7];

  v8 = [(_INPBDateTimeRange *)self->_reservationDuration copyWithZone:zone];
  [(_INPBRestaurantReservation *)v5 setReservationDuration:v8];

  v9 = [(_INPBLocation *)self->_restaurantLocation copyWithZone:zone];
  [(_INPBRestaurantReservation *)v5 setRestaurantLocation:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRestaurantReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRestaurantReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRestaurantReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  partySize = [(_INPBRestaurantReservation *)self partySize];

  if (partySize)
  {
    partySize2 = [(_INPBRestaurantReservation *)self partySize];
    PBDataWriterWriteSubmessage();
  }

  reservation = [(_INPBRestaurantReservation *)self reservation];

  if (reservation)
  {
    reservation2 = [(_INPBRestaurantReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  reservationDuration = [(_INPBRestaurantReservation *)self reservationDuration];

  if (reservationDuration)
  {
    reservationDuration2 = [(_INPBRestaurantReservation *)self reservationDuration];
    PBDataWriterWriteSubmessage();
  }

  restaurantLocation = [(_INPBRestaurantReservation *)self restaurantLocation];

  v11 = toCopy;
  if (restaurantLocation)
  {
    restaurantLocation2 = [(_INPBRestaurantReservation *)self restaurantLocation];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

@end