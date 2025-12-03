@interface _INPBFlightReservation
- (BOOL)isEqual:(id)equal;
- (_INPBFlightReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBFlightReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  flight = [(_INPBFlightReservation *)self flight];
  dictionaryRepresentation = [flight dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"flight"];

  reservation = [(_INPBFlightReservation *)self reservation];
  dictionaryRepresentation2 = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"reservation"];

  reservedSeat = [(_INPBFlightReservation *)self reservedSeat];
  dictionaryRepresentation3 = [reservedSeat dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"reservedSeat"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBFlight *)self->_flight hash];
  v4 = [(_INPBReservation *)self->_reservation hash]^ v3;
  return v4 ^ [(_INPBSeat *)self->_reservedSeat hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  flight = [(_INPBFlightReservation *)self flight];
  flight2 = [equalCopy flight];
  if ((flight != 0) == (flight2 == 0))
  {
    goto LABEL_16;
  }

  flight3 = [(_INPBFlightReservation *)self flight];
  if (flight3)
  {
    v8 = flight3;
    flight4 = [(_INPBFlightReservation *)self flight];
    flight5 = [equalCopy flight];
    v11 = [flight4 isEqual:flight5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  flight = [(_INPBFlightReservation *)self reservation];
  flight2 = [equalCopy reservation];
  if ((flight != 0) == (flight2 == 0))
  {
    goto LABEL_16;
  }

  reservation = [(_INPBFlightReservation *)self reservation];
  if (reservation)
  {
    v13 = reservation;
    reservation2 = [(_INPBFlightReservation *)self reservation];
    reservation3 = [equalCopy reservation];
    v16 = [reservation2 isEqual:reservation3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  flight = [(_INPBFlightReservation *)self reservedSeat];
  flight2 = [equalCopy reservedSeat];
  if ((flight != 0) != (flight2 == 0))
  {
    reservedSeat = [(_INPBFlightReservation *)self reservedSeat];
    if (!reservedSeat)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = reservedSeat;
    reservedSeat2 = [(_INPBFlightReservation *)self reservedSeat];
    reservedSeat3 = [equalCopy reservedSeat];
    v21 = [reservedSeat2 isEqual:reservedSeat3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFlightReservation allocWithZone:](_INPBFlightReservation init];
  v6 = [(_INPBFlight *)self->_flight copyWithZone:zone];
  [(_INPBFlightReservation *)v5 setFlight:v6];

  v7 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBFlightReservation *)v5 setReservation:v7];

  v8 = [(_INPBSeat *)self->_reservedSeat copyWithZone:zone];
  [(_INPBFlightReservation *)v5 setReservedSeat:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFlightReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFlightReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFlightReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  flight = [(_INPBFlightReservation *)self flight];

  if (flight)
  {
    flight2 = [(_INPBFlightReservation *)self flight];
    PBDataWriterWriteSubmessage();
  }

  reservation = [(_INPBFlightReservation *)self reservation];

  if (reservation)
  {
    reservation2 = [(_INPBFlightReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  reservedSeat = [(_INPBFlightReservation *)self reservedSeat];

  v9 = toCopy;
  if (reservedSeat)
  {
    reservedSeat2 = [(_INPBFlightReservation *)self reservedSeat];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end