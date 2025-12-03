@interface _INPBBoatReservation
- (BOOL)isEqual:(id)equal;
- (_INPBBoatReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBBoatReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  boatTrip = [(_INPBBoatReservation *)self boatTrip];
  dictionaryRepresentation = [boatTrip dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"boatTrip"];

  reservation = [(_INPBBoatReservation *)self reservation];
  dictionaryRepresentation2 = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"reservation"];

  reservedSeat = [(_INPBBoatReservation *)self reservedSeat];
  dictionaryRepresentation3 = [reservedSeat dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"reservedSeat"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBBoatTrip *)self->_boatTrip hash];
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

  boatTrip = [(_INPBBoatReservation *)self boatTrip];
  boatTrip2 = [equalCopy boatTrip];
  if ((boatTrip != 0) == (boatTrip2 == 0))
  {
    goto LABEL_16;
  }

  boatTrip3 = [(_INPBBoatReservation *)self boatTrip];
  if (boatTrip3)
  {
    v8 = boatTrip3;
    boatTrip4 = [(_INPBBoatReservation *)self boatTrip];
    boatTrip5 = [equalCopy boatTrip];
    v11 = [boatTrip4 isEqual:boatTrip5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  boatTrip = [(_INPBBoatReservation *)self reservation];
  boatTrip2 = [equalCopy reservation];
  if ((boatTrip != 0) == (boatTrip2 == 0))
  {
    goto LABEL_16;
  }

  reservation = [(_INPBBoatReservation *)self reservation];
  if (reservation)
  {
    v13 = reservation;
    reservation2 = [(_INPBBoatReservation *)self reservation];
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

  boatTrip = [(_INPBBoatReservation *)self reservedSeat];
  boatTrip2 = [equalCopy reservedSeat];
  if ((boatTrip != 0) != (boatTrip2 == 0))
  {
    reservedSeat = [(_INPBBoatReservation *)self reservedSeat];
    if (!reservedSeat)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = reservedSeat;
    reservedSeat2 = [(_INPBBoatReservation *)self reservedSeat];
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
  v5 = [+[_INPBBoatReservation allocWithZone:](_INPBBoatReservation init];
  v6 = [(_INPBBoatTrip *)self->_boatTrip copyWithZone:zone];
  [(_INPBBoatReservation *)v5 setBoatTrip:v6];

  v7 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBBoatReservation *)v5 setReservation:v7];

  v8 = [(_INPBSeat *)self->_reservedSeat copyWithZone:zone];
  [(_INPBBoatReservation *)v5 setReservedSeat:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBoatReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBoatReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBoatReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  boatTrip = [(_INPBBoatReservation *)self boatTrip];

  if (boatTrip)
  {
    boatTrip2 = [(_INPBBoatReservation *)self boatTrip];
    PBDataWriterWriteSubmessage();
  }

  reservation = [(_INPBBoatReservation *)self reservation];

  if (reservation)
  {
    reservation2 = [(_INPBBoatReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  reservedSeat = [(_INPBBoatReservation *)self reservedSeat];

  v9 = toCopy;
  if (reservedSeat)
  {
    reservedSeat2 = [(_INPBBoatReservation *)self reservedSeat];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end