@interface _INPBReservationWrapper
- (BOOL)isEqual:(id)a3;
- (_INPBReservationWrapper)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBReservationWrapper

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBReservationWrapper *)self boatReservation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"boatReservation"];

  v6 = [(_INPBReservationWrapper *)self busReservation];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"busReservation"];

  v8 = [(_INPBReservationWrapper *)self flightReservation];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"flightReservation"];

  v10 = [(_INPBReservationWrapper *)self lodgingReservation];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"lodgingReservation"];

  v12 = [(_INPBReservationWrapper *)self rentalCarReservation];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"rentalCarReservation"];

  v14 = [(_INPBReservationWrapper *)self restaurantReservation];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"restaurantReservation"];

  v16 = [(_INPBReservationWrapper *)self ticketedEventReservation];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"ticketedEventReservation"];

  v18 = [(_INPBReservationWrapper *)self trainReservation];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"trainReservation"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = [(_INPBReservationWrapper *)self boatReservation];
  v6 = [v4 boatReservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v7 = [(_INPBReservationWrapper *)self boatReservation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBReservationWrapper *)self boatReservation];
    v10 = [v4 boatReservation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservationWrapper *)self busReservation];
  v6 = [v4 busReservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v12 = [(_INPBReservationWrapper *)self busReservation];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBReservationWrapper *)self busReservation];
    v15 = [v4 busReservation];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservationWrapper *)self flightReservation];
  v6 = [v4 flightReservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v17 = [(_INPBReservationWrapper *)self flightReservation];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBReservationWrapper *)self flightReservation];
    v20 = [v4 flightReservation];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservationWrapper *)self lodgingReservation];
  v6 = [v4 lodgingReservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v22 = [(_INPBReservationWrapper *)self lodgingReservation];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBReservationWrapper *)self lodgingReservation];
    v25 = [v4 lodgingReservation];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservationWrapper *)self rentalCarReservation];
  v6 = [v4 rentalCarReservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v27 = [(_INPBReservationWrapper *)self rentalCarReservation];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBReservationWrapper *)self rentalCarReservation];
    v30 = [v4 rentalCarReservation];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservationWrapper *)self restaurantReservation];
  v6 = [v4 restaurantReservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v32 = [(_INPBReservationWrapper *)self restaurantReservation];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBReservationWrapper *)self restaurantReservation];
    v35 = [v4 restaurantReservation];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservationWrapper *)self ticketedEventReservation];
  v6 = [v4 ticketedEventReservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v37 = [(_INPBReservationWrapper *)self ticketedEventReservation];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBReservationWrapper *)self ticketedEventReservation];
    v40 = [v4 ticketedEventReservation];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservationWrapper *)self trainReservation];
  v6 = [v4 trainReservation];
  if ((v5 != 0) != (v6 == 0))
  {
    v42 = [(_INPBReservationWrapper *)self trainReservation];
    if (!v42)
    {

LABEL_45:
      v47 = 1;
      goto LABEL_43;
    }

    v43 = v42;
    v44 = [(_INPBReservationWrapper *)self trainReservation];
    v45 = [v4 trainReservation];
    v46 = [v44 isEqual:v45];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBReservationWrapper allocWithZone:](_INPBReservationWrapper init];
  v6 = [(_INPBBoatReservation *)self->_boatReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setBoatReservation:v6];

  v7 = [(_INPBBusReservation *)self->_busReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setBusReservation:v7];

  v8 = [(_INPBFlightReservation *)self->_flightReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setFlightReservation:v8];

  v9 = [(_INPBLodgingReservation *)self->_lodgingReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setLodgingReservation:v9];

  v10 = [(_INPBRentalCarReservation *)self->_rentalCarReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setRentalCarReservation:v10];

  v11 = [(_INPBRestaurantReservation *)self->_restaurantReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setRestaurantReservation:v11];

  v12 = [(_INPBTicketedEventReservation *)self->_ticketedEventReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setTicketedEventReservation:v12];

  v13 = [(_INPBTrainReservation *)self->_trainReservation copyWithZone:a3];
  [(_INPBReservationWrapper *)v5 setTrainReservation:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBReservationWrapper *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBReservationWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBReservationWrapper *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  v4 = [(_INPBReservationWrapper *)self boatReservation];

  if (v4)
  {
    v5 = [(_INPBReservationWrapper *)self boatReservation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBReservationWrapper *)self busReservation];

  if (v6)
  {
    v7 = [(_INPBReservationWrapper *)self busReservation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBReservationWrapper *)self flightReservation];

  if (v8)
  {
    v9 = [(_INPBReservationWrapper *)self flightReservation];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBReservationWrapper *)self lodgingReservation];

  if (v10)
  {
    v11 = [(_INPBReservationWrapper *)self lodgingReservation];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBReservationWrapper *)self rentalCarReservation];

  if (v12)
  {
    v13 = [(_INPBReservationWrapper *)self rentalCarReservation];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBReservationWrapper *)self restaurantReservation];

  if (v14)
  {
    v15 = [(_INPBReservationWrapper *)self restaurantReservation];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBReservationWrapper *)self ticketedEventReservation];

  if (v16)
  {
    v17 = [(_INPBReservationWrapper *)self ticketedEventReservation];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_INPBReservationWrapper *)self trainReservation];

  v19 = v21;
  if (v18)
  {
    v20 = [(_INPBReservationWrapper *)self trainReservation];
    PBDataWriterWriteSubmessage();

    v19 = v21;
  }
}

@end