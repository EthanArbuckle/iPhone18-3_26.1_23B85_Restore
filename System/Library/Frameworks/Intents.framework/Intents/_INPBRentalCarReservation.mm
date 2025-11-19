@interface _INPBRentalCarReservation
- (BOOL)isEqual:(id)a3;
- (_INPBRentalCarReservation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRentalCarReservation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRentalCarReservation *)self dropOffLocation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"dropOffLocation"];

  v6 = [(_INPBRentalCarReservation *)self pickupLocation];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"pickupLocation"];

  v8 = [(_INPBRentalCarReservation *)self rentalCar];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"rentalCar"];

  v10 = [(_INPBRentalCarReservation *)self rentalDuration];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"rentalDuration"];

  v12 = [(_INPBRentalCarReservation *)self reservation];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"reservation"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocationValue *)self->_dropOffLocation hash];
  v4 = [(_INPBLocationValue *)self->_pickupLocation hash]^ v3;
  v5 = [(_INPBRentalCar *)self->_rentalCar hash];
  v6 = v4 ^ v5 ^ [(_INPBDateTimeRange *)self->_rentalDuration hash];
  return v6 ^ [(_INPBReservation *)self->_reservation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBRentalCarReservation *)self dropOffLocation];
  v6 = [v4 dropOffLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBRentalCarReservation *)self dropOffLocation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRentalCarReservation *)self dropOffLocation];
    v10 = [v4 dropOffLocation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCarReservation *)self pickupLocation];
  v6 = [v4 pickupLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBRentalCarReservation *)self pickupLocation];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBRentalCarReservation *)self pickupLocation];
    v15 = [v4 pickupLocation];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCarReservation *)self rentalCar];
  v6 = [v4 rentalCar];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBRentalCarReservation *)self rentalCar];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBRentalCarReservation *)self rentalCar];
    v20 = [v4 rentalCar];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCarReservation *)self rentalDuration];
  v6 = [v4 rentalDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBRentalCarReservation *)self rentalDuration];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBRentalCarReservation *)self rentalDuration];
    v25 = [v4 rentalDuration];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBRentalCarReservation *)self reservation];
  v6 = [v4 reservation];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBRentalCarReservation *)self reservation];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBRentalCarReservation *)self reservation];
    v30 = [v4 reservation];
    v31 = [v29 isEqual:v30];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRentalCarReservation allocWithZone:](_INPBRentalCarReservation init];
  v6 = [(_INPBLocationValue *)self->_dropOffLocation copyWithZone:a3];
  [(_INPBRentalCarReservation *)v5 setDropOffLocation:v6];

  v7 = [(_INPBLocationValue *)self->_pickupLocation copyWithZone:a3];
  [(_INPBRentalCarReservation *)v5 setPickupLocation:v7];

  v8 = [(_INPBRentalCar *)self->_rentalCar copyWithZone:a3];
  [(_INPBRentalCarReservation *)v5 setRentalCar:v8];

  v9 = [(_INPBDateTimeRange *)self->_rentalDuration copyWithZone:a3];
  [(_INPBRentalCarReservation *)v5 setRentalDuration:v9];

  v10 = [(_INPBReservation *)self->_reservation copyWithZone:a3];
  [(_INPBRentalCarReservation *)v5 setReservation:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRentalCarReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRentalCarReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRentalCarReservation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBRentalCarReservation *)self dropOffLocation];

  if (v4)
  {
    v5 = [(_INPBRentalCarReservation *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRentalCarReservation *)self pickupLocation];

  if (v6)
  {
    v7 = [(_INPBRentalCarReservation *)self pickupLocation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBRentalCarReservation *)self rentalCar];

  if (v8)
  {
    v9 = [(_INPBRentalCarReservation *)self rentalCar];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBRentalCarReservation *)self rentalDuration];

  if (v10)
  {
    v11 = [(_INPBRentalCarReservation *)self rentalDuration];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBRentalCarReservation *)self reservation];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBRentalCarReservation *)self reservation];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

@end