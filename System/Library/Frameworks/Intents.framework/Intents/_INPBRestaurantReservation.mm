@interface _INPBRestaurantReservation
- (BOOL)isEqual:(id)a3;
- (_INPBRestaurantReservation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRestaurantReservation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRestaurantReservation *)self partySize];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"partySize"];

  v6 = [(_INPBRestaurantReservation *)self reservation];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"reservation"];

  v8 = [(_INPBRestaurantReservation *)self reservationDuration];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"reservationDuration"];

  v10 = [(_INPBRestaurantReservation *)self restaurantLocation];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"restaurantLocation"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBInteger *)self->_partySize hash];
  v4 = [(_INPBReservation *)self->_reservation hash]^ v3;
  v5 = [(_INPBDateTimeRange *)self->_reservationDuration hash];
  return v4 ^ v5 ^ [(_INPBLocation *)self->_restaurantLocation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBRestaurantReservation *)self partySize];
  v6 = [v4 partySize];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBRestaurantReservation *)self partySize];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRestaurantReservation *)self partySize];
    v10 = [v4 partySize];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBRestaurantReservation *)self reservation];
  v6 = [v4 reservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBRestaurantReservation *)self reservation];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRestaurantReservation *)self reservation];
    v15 = [v4 reservation];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBRestaurantReservation *)self reservationDuration];
  v6 = [v4 reservationDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBRestaurantReservation *)self reservationDuration];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRestaurantReservation *)self reservationDuration];
    v20 = [v4 reservationDuration];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBRestaurantReservation *)self restaurantLocation];
  v6 = [v4 restaurantLocation];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBRestaurantReservation *)self restaurantLocation];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBRestaurantReservation *)self restaurantLocation];
    v25 = [v4 restaurantLocation];
    v26 = [v24 isEqual:v25];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRestaurantReservation allocWithZone:](_INPBRestaurantReservation init];
  v6 = [(_INPBInteger *)self->_partySize copyWithZone:a3];
  [(_INPBRestaurantReservation *)v5 setPartySize:v6];

  v7 = [(_INPBReservation *)self->_reservation copyWithZone:a3];
  [(_INPBRestaurantReservation *)v5 setReservation:v7];

  v8 = [(_INPBDateTimeRange *)self->_reservationDuration copyWithZone:a3];
  [(_INPBRestaurantReservation *)v5 setReservationDuration:v8];

  v9 = [(_INPBLocation *)self->_restaurantLocation copyWithZone:a3];
  [(_INPBRestaurantReservation *)v5 setRestaurantLocation:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRestaurantReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRestaurantReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRestaurantReservation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBRestaurantReservation *)self partySize];

  if (v4)
  {
    v5 = [(_INPBRestaurantReservation *)self partySize];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRestaurantReservation *)self reservation];

  if (v6)
  {
    v7 = [(_INPBRestaurantReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBRestaurantReservation *)self reservationDuration];

  if (v8)
  {
    v9 = [(_INPBRestaurantReservation *)self reservationDuration];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBRestaurantReservation *)self restaurantLocation];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBRestaurantReservation *)self restaurantLocation];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

@end