@interface _INPBReservationWrapper
- (BOOL)isEqual:(id)equal;
- (_INPBReservationWrapper)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBReservationWrapper

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  boatReservation = [(_INPBReservationWrapper *)self boatReservation];
  dictionaryRepresentation = [boatReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"boatReservation"];

  busReservation = [(_INPBReservationWrapper *)self busReservation];
  dictionaryRepresentation2 = [busReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"busReservation"];

  flightReservation = [(_INPBReservationWrapper *)self flightReservation];
  dictionaryRepresentation3 = [flightReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"flightReservation"];

  lodgingReservation = [(_INPBReservationWrapper *)self lodgingReservation];
  dictionaryRepresentation4 = [lodgingReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"lodgingReservation"];

  rentalCarReservation = [(_INPBReservationWrapper *)self rentalCarReservation];
  dictionaryRepresentation5 = [rentalCarReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"rentalCarReservation"];

  restaurantReservation = [(_INPBReservationWrapper *)self restaurantReservation];
  dictionaryRepresentation6 = [restaurantReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"restaurantReservation"];

  ticketedEventReservation = [(_INPBReservationWrapper *)self ticketedEventReservation];
  dictionaryRepresentation7 = [ticketedEventReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"ticketedEventReservation"];

  trainReservation = [(_INPBReservationWrapper *)self trainReservation];
  dictionaryRepresentation8 = [trainReservation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"trainReservation"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBBoatReservation *)self->_boatReservation hash];
  v4 = [(_INPBBusReservation *)self->_busReservation hash]^ v3;
  v5 = [(_INPBFlightReservation *)self->_flightReservation hash];
  v6 = v4 ^ v5 ^ [(_INPBLodgingReservation *)self->_lodgingReservation hash];
  v7 = [(_INPBRentalCarReservation *)self->_rentalCarReservation hash];
  v8 = v7 ^ [(_INPBRestaurantReservation *)self->_restaurantReservation hash];
  v9 = v6 ^ v8 ^ [(_INPBTicketedEventReservation *)self->_ticketedEventReservation hash];
  return v9 ^ [(_INPBTrainReservation *)self->_trainReservation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  boatReservation = [(_INPBReservationWrapper *)self boatReservation];
  boatReservation2 = [equalCopy boatReservation];
  if ((boatReservation != 0) == (boatReservation2 == 0))
  {
    goto LABEL_41;
  }

  boatReservation3 = [(_INPBReservationWrapper *)self boatReservation];
  if (boatReservation3)
  {
    v8 = boatReservation3;
    boatReservation4 = [(_INPBReservationWrapper *)self boatReservation];
    boatReservation5 = [equalCopy boatReservation];
    v11 = [boatReservation4 isEqual:boatReservation5];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  boatReservation = [(_INPBReservationWrapper *)self busReservation];
  boatReservation2 = [equalCopy busReservation];
  if ((boatReservation != 0) == (boatReservation2 == 0))
  {
    goto LABEL_41;
  }

  busReservation = [(_INPBReservationWrapper *)self busReservation];
  if (busReservation)
  {
    v13 = busReservation;
    busReservation2 = [(_INPBReservationWrapper *)self busReservation];
    busReservation3 = [equalCopy busReservation];
    v16 = [busReservation2 isEqual:busReservation3];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  boatReservation = [(_INPBReservationWrapper *)self flightReservation];
  boatReservation2 = [equalCopy flightReservation];
  if ((boatReservation != 0) == (boatReservation2 == 0))
  {
    goto LABEL_41;
  }

  flightReservation = [(_INPBReservationWrapper *)self flightReservation];
  if (flightReservation)
  {
    v18 = flightReservation;
    flightReservation2 = [(_INPBReservationWrapper *)self flightReservation];
    flightReservation3 = [equalCopy flightReservation];
    v21 = [flightReservation2 isEqual:flightReservation3];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  boatReservation = [(_INPBReservationWrapper *)self lodgingReservation];
  boatReservation2 = [equalCopy lodgingReservation];
  if ((boatReservation != 0) == (boatReservation2 == 0))
  {
    goto LABEL_41;
  }

  lodgingReservation = [(_INPBReservationWrapper *)self lodgingReservation];
  if (lodgingReservation)
  {
    v23 = lodgingReservation;
    lodgingReservation2 = [(_INPBReservationWrapper *)self lodgingReservation];
    lodgingReservation3 = [equalCopy lodgingReservation];
    v26 = [lodgingReservation2 isEqual:lodgingReservation3];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  boatReservation = [(_INPBReservationWrapper *)self rentalCarReservation];
  boatReservation2 = [equalCopy rentalCarReservation];
  if ((boatReservation != 0) == (boatReservation2 == 0))
  {
    goto LABEL_41;
  }

  rentalCarReservation = [(_INPBReservationWrapper *)self rentalCarReservation];
  if (rentalCarReservation)
  {
    v28 = rentalCarReservation;
    rentalCarReservation2 = [(_INPBReservationWrapper *)self rentalCarReservation];
    rentalCarReservation3 = [equalCopy rentalCarReservation];
    v31 = [rentalCarReservation2 isEqual:rentalCarReservation3];

    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  boatReservation = [(_INPBReservationWrapper *)self restaurantReservation];
  boatReservation2 = [equalCopy restaurantReservation];
  if ((boatReservation != 0) == (boatReservation2 == 0))
  {
    goto LABEL_41;
  }

  restaurantReservation = [(_INPBReservationWrapper *)self restaurantReservation];
  if (restaurantReservation)
  {
    v33 = restaurantReservation;
    restaurantReservation2 = [(_INPBReservationWrapper *)self restaurantReservation];
    restaurantReservation3 = [equalCopy restaurantReservation];
    v36 = [restaurantReservation2 isEqual:restaurantReservation3];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  boatReservation = [(_INPBReservationWrapper *)self ticketedEventReservation];
  boatReservation2 = [equalCopy ticketedEventReservation];
  if ((boatReservation != 0) == (boatReservation2 == 0))
  {
    goto LABEL_41;
  }

  ticketedEventReservation = [(_INPBReservationWrapper *)self ticketedEventReservation];
  if (ticketedEventReservation)
  {
    v38 = ticketedEventReservation;
    ticketedEventReservation2 = [(_INPBReservationWrapper *)self ticketedEventReservation];
    ticketedEventReservation3 = [equalCopy ticketedEventReservation];
    v41 = [ticketedEventReservation2 isEqual:ticketedEventReservation3];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  boatReservation = [(_INPBReservationWrapper *)self trainReservation];
  boatReservation2 = [equalCopy trainReservation];
  if ((boatReservation != 0) != (boatReservation2 == 0))
  {
    trainReservation = [(_INPBReservationWrapper *)self trainReservation];
    if (!trainReservation)
    {

LABEL_45:
      v47 = 1;
      goto LABEL_43;
    }

    v43 = trainReservation;
    trainReservation2 = [(_INPBReservationWrapper *)self trainReservation];
    trainReservation3 = [equalCopy trainReservation];
    v46 = [trainReservation2 isEqual:trainReservation3];

    if (v46)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_41:
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBReservationWrapper allocWithZone:](_INPBReservationWrapper init];
  v6 = [(_INPBBoatReservation *)self->_boatReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setBoatReservation:v6];

  v7 = [(_INPBBusReservation *)self->_busReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setBusReservation:v7];

  v8 = [(_INPBFlightReservation *)self->_flightReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setFlightReservation:v8];

  v9 = [(_INPBLodgingReservation *)self->_lodgingReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setLodgingReservation:v9];

  v10 = [(_INPBRentalCarReservation *)self->_rentalCarReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setRentalCarReservation:v10];

  v11 = [(_INPBRestaurantReservation *)self->_restaurantReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setRestaurantReservation:v11];

  v12 = [(_INPBTicketedEventReservation *)self->_ticketedEventReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setTicketedEventReservation:v12];

  v13 = [(_INPBTrainReservation *)self->_trainReservation copyWithZone:zone];
  [(_INPBReservationWrapper *)v5 setTrainReservation:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBReservationWrapper *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBReservationWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBReservationWrapper *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  boatReservation = [(_INPBReservationWrapper *)self boatReservation];

  if (boatReservation)
  {
    boatReservation2 = [(_INPBReservationWrapper *)self boatReservation];
    PBDataWriterWriteSubmessage();
  }

  busReservation = [(_INPBReservationWrapper *)self busReservation];

  if (busReservation)
  {
    busReservation2 = [(_INPBReservationWrapper *)self busReservation];
    PBDataWriterWriteSubmessage();
  }

  flightReservation = [(_INPBReservationWrapper *)self flightReservation];

  if (flightReservation)
  {
    flightReservation2 = [(_INPBReservationWrapper *)self flightReservation];
    PBDataWriterWriteSubmessage();
  }

  lodgingReservation = [(_INPBReservationWrapper *)self lodgingReservation];

  if (lodgingReservation)
  {
    lodgingReservation2 = [(_INPBReservationWrapper *)self lodgingReservation];
    PBDataWriterWriteSubmessage();
  }

  rentalCarReservation = [(_INPBReservationWrapper *)self rentalCarReservation];

  if (rentalCarReservation)
  {
    rentalCarReservation2 = [(_INPBReservationWrapper *)self rentalCarReservation];
    PBDataWriterWriteSubmessage();
  }

  restaurantReservation = [(_INPBReservationWrapper *)self restaurantReservation];

  if (restaurantReservation)
  {
    restaurantReservation2 = [(_INPBReservationWrapper *)self restaurantReservation];
    PBDataWriterWriteSubmessage();
  }

  ticketedEventReservation = [(_INPBReservationWrapper *)self ticketedEventReservation];

  if (ticketedEventReservation)
  {
    ticketedEventReservation2 = [(_INPBReservationWrapper *)self ticketedEventReservation];
    PBDataWriterWriteSubmessage();
  }

  trainReservation = [(_INPBReservationWrapper *)self trainReservation];

  v19 = toCopy;
  if (trainReservation)
  {
    trainReservation2 = [(_INPBReservationWrapper *)self trainReservation];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
  }
}

@end