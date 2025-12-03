@interface _INPBTicketedEventReservation
- (BOOL)isEqual:(id)equal;
- (_INPBTicketedEventReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBTicketedEventReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  event = [(_INPBTicketedEventReservation *)self event];
  dictionaryRepresentation = [event dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"event"];

  reservation = [(_INPBTicketedEventReservation *)self reservation];
  dictionaryRepresentation2 = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"reservation"];

  reservedSeat = [(_INPBTicketedEventReservation *)self reservedSeat];
  dictionaryRepresentation3 = [reservedSeat dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"reservedSeat"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBTicketedEvent *)self->_event hash];
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

  event = [(_INPBTicketedEventReservation *)self event];
  event2 = [equalCopy event];
  if ((event != 0) == (event2 == 0))
  {
    goto LABEL_16;
  }

  event3 = [(_INPBTicketedEventReservation *)self event];
  if (event3)
  {
    v8 = event3;
    event4 = [(_INPBTicketedEventReservation *)self event];
    event5 = [equalCopy event];
    v11 = [event4 isEqual:event5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  event = [(_INPBTicketedEventReservation *)self reservation];
  event2 = [equalCopy reservation];
  if ((event != 0) == (event2 == 0))
  {
    goto LABEL_16;
  }

  reservation = [(_INPBTicketedEventReservation *)self reservation];
  if (reservation)
  {
    v13 = reservation;
    reservation2 = [(_INPBTicketedEventReservation *)self reservation];
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

  event = [(_INPBTicketedEventReservation *)self reservedSeat];
  event2 = [equalCopy reservedSeat];
  if ((event != 0) != (event2 == 0))
  {
    reservedSeat = [(_INPBTicketedEventReservation *)self reservedSeat];
    if (!reservedSeat)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = reservedSeat;
    reservedSeat2 = [(_INPBTicketedEventReservation *)self reservedSeat];
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
  v5 = [+[_INPBTicketedEventReservation allocWithZone:](_INPBTicketedEventReservation init];
  v6 = [(_INPBTicketedEvent *)self->_event copyWithZone:zone];
  [(_INPBTicketedEventReservation *)v5 setEvent:v6];

  v7 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBTicketedEventReservation *)v5 setReservation:v7];

  v8 = [(_INPBSeat *)self->_reservedSeat copyWithZone:zone];
  [(_INPBTicketedEventReservation *)v5 setReservedSeat:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTicketedEventReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTicketedEventReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTicketedEventReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  event = [(_INPBTicketedEventReservation *)self event];

  if (event)
  {
    event2 = [(_INPBTicketedEventReservation *)self event];
    PBDataWriterWriteSubmessage();
  }

  reservation = [(_INPBTicketedEventReservation *)self reservation];

  if (reservation)
  {
    reservation2 = [(_INPBTicketedEventReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  reservedSeat = [(_INPBTicketedEventReservation *)self reservedSeat];

  v9 = toCopy;
  if (reservedSeat)
  {
    reservedSeat2 = [(_INPBTicketedEventReservation *)self reservedSeat];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end