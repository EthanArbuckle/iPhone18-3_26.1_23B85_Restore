@interface _INPBBusReservation
- (BOOL)isEqual:(id)equal;
- (_INPBBusReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBBusReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  busTrip = [(_INPBBusReservation *)self busTrip];
  dictionaryRepresentation = [busTrip dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"busTrip"];

  reservation = [(_INPBBusReservation *)self reservation];
  dictionaryRepresentation2 = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"reservation"];

  reservedSeat = [(_INPBBusReservation *)self reservedSeat];
  dictionaryRepresentation3 = [reservedSeat dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"reservedSeat"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBBusTrip *)self->_busTrip hash];
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

  busTrip = [(_INPBBusReservation *)self busTrip];
  busTrip2 = [equalCopy busTrip];
  if ((busTrip != 0) == (busTrip2 == 0))
  {
    goto LABEL_16;
  }

  busTrip3 = [(_INPBBusReservation *)self busTrip];
  if (busTrip3)
  {
    v8 = busTrip3;
    busTrip4 = [(_INPBBusReservation *)self busTrip];
    busTrip5 = [equalCopy busTrip];
    v11 = [busTrip4 isEqual:busTrip5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  busTrip = [(_INPBBusReservation *)self reservation];
  busTrip2 = [equalCopy reservation];
  if ((busTrip != 0) == (busTrip2 == 0))
  {
    goto LABEL_16;
  }

  reservation = [(_INPBBusReservation *)self reservation];
  if (reservation)
  {
    v13 = reservation;
    reservation2 = [(_INPBBusReservation *)self reservation];
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

  busTrip = [(_INPBBusReservation *)self reservedSeat];
  busTrip2 = [equalCopy reservedSeat];
  if ((busTrip != 0) != (busTrip2 == 0))
  {
    reservedSeat = [(_INPBBusReservation *)self reservedSeat];
    if (!reservedSeat)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = reservedSeat;
    reservedSeat2 = [(_INPBBusReservation *)self reservedSeat];
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
  v5 = [+[_INPBBusReservation allocWithZone:](_INPBBusReservation init];
  v6 = [(_INPBBusTrip *)self->_busTrip copyWithZone:zone];
  [(_INPBBusReservation *)v5 setBusTrip:v6];

  v7 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBBusReservation *)v5 setReservation:v7];

  v8 = [(_INPBSeat *)self->_reservedSeat copyWithZone:zone];
  [(_INPBBusReservation *)v5 setReservedSeat:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBusReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBusReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBusReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  busTrip = [(_INPBBusReservation *)self busTrip];

  if (busTrip)
  {
    busTrip2 = [(_INPBBusReservation *)self busTrip];
    PBDataWriterWriteSubmessage();
  }

  reservation = [(_INPBBusReservation *)self reservation];

  if (reservation)
  {
    reservation2 = [(_INPBBusReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  reservedSeat = [(_INPBBusReservation *)self reservedSeat];

  v9 = toCopy;
  if (reservedSeat)
  {
    reservedSeat2 = [(_INPBBusReservation *)self reservedSeat];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end