@interface _INPBTrainReservation
- (BOOL)isEqual:(id)equal;
- (_INPBTrainReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBTrainReservation

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  reservation = [(_INPBTrainReservation *)self reservation];
  dictionaryRepresentation = [reservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"reservation"];

  reservedSeat = [(_INPBTrainReservation *)self reservedSeat];
  dictionaryRepresentation2 = [reservedSeat dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"reservedSeat"];

  trainTrip = [(_INPBTrainReservation *)self trainTrip];
  dictionaryRepresentation3 = [trainTrip dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"trainTrip"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBReservation *)self->_reservation hash];
  v4 = [(_INPBSeat *)self->_reservedSeat hash]^ v3;
  return v4 ^ [(_INPBTrainTrip *)self->_trainTrip hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  reservation = [(_INPBTrainReservation *)self reservation];
  reservation2 = [equalCopy reservation];
  if ((reservation != 0) == (reservation2 == 0))
  {
    goto LABEL_16;
  }

  reservation3 = [(_INPBTrainReservation *)self reservation];
  if (reservation3)
  {
    v8 = reservation3;
    reservation4 = [(_INPBTrainReservation *)self reservation];
    reservation5 = [equalCopy reservation];
    v11 = [reservation4 isEqual:reservation5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  reservation = [(_INPBTrainReservation *)self reservedSeat];
  reservation2 = [equalCopy reservedSeat];
  if ((reservation != 0) == (reservation2 == 0))
  {
    goto LABEL_16;
  }

  reservedSeat = [(_INPBTrainReservation *)self reservedSeat];
  if (reservedSeat)
  {
    v13 = reservedSeat;
    reservedSeat2 = [(_INPBTrainReservation *)self reservedSeat];
    reservedSeat3 = [equalCopy reservedSeat];
    v16 = [reservedSeat2 isEqual:reservedSeat3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  reservation = [(_INPBTrainReservation *)self trainTrip];
  reservation2 = [equalCopy trainTrip];
  if ((reservation != 0) != (reservation2 == 0))
  {
    trainTrip = [(_INPBTrainReservation *)self trainTrip];
    if (!trainTrip)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = trainTrip;
    trainTrip2 = [(_INPBTrainReservation *)self trainTrip];
    trainTrip3 = [equalCopy trainTrip];
    v21 = [trainTrip2 isEqual:trainTrip3];

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
  v5 = [+[_INPBTrainReservation allocWithZone:](_INPBTrainReservation init];
  v6 = [(_INPBReservation *)self->_reservation copyWithZone:zone];
  [(_INPBTrainReservation *)v5 setReservation:v6];

  v7 = [(_INPBSeat *)self->_reservedSeat copyWithZone:zone];
  [(_INPBTrainReservation *)v5 setReservedSeat:v7];

  v8 = [(_INPBTrainTrip *)self->_trainTrip copyWithZone:zone];
  [(_INPBTrainReservation *)v5 setTrainTrip:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTrainReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTrainReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTrainReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  reservation = [(_INPBTrainReservation *)self reservation];

  if (reservation)
  {
    reservation2 = [(_INPBTrainReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  reservedSeat = [(_INPBTrainReservation *)self reservedSeat];

  if (reservedSeat)
  {
    reservedSeat2 = [(_INPBTrainReservation *)self reservedSeat];
    PBDataWriterWriteSubmessage();
  }

  trainTrip = [(_INPBTrainReservation *)self trainTrip];

  v9 = toCopy;
  if (trainTrip)
  {
    trainTrip2 = [(_INPBTrainReservation *)self trainTrip];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end