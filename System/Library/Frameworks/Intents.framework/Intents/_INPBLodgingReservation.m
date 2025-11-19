@interface _INPBLodgingReservation
- (BOOL)isEqual:(id)a3;
- (_INPBLodgingReservation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBLodgingReservation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"lodgingBusinessLocation"];

  v6 = [(_INPBLodgingReservation *)self numberOfAdults];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"numberOfAdults"];

  v8 = [(_INPBLodgingReservation *)self numberOfChildren];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"numberOfChildren"];

  v10 = [(_INPBLodgingReservation *)self reservation];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"reservation"];

  v12 = [(_INPBLodgingReservation *)self reservationDuration];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"reservationDuration"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocation *)self->_lodgingBusinessLocation hash];
  v4 = [(_INPBInteger *)self->_numberOfAdults hash]^ v3;
  v5 = [(_INPBInteger *)self->_numberOfChildren hash];
  v6 = v4 ^ v5 ^ [(_INPBReservation *)self->_reservation hash];
  return v6 ^ [(_INPBDateTimeRange *)self->_reservationDuration hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
  v6 = [v4 lodgingBusinessLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
    v10 = [v4 lodgingBusinessLocation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBLodgingReservation *)self numberOfAdults];
  v6 = [v4 numberOfAdults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBLodgingReservation *)self numberOfAdults];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBLodgingReservation *)self numberOfAdults];
    v15 = [v4 numberOfAdults];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBLodgingReservation *)self numberOfChildren];
  v6 = [v4 numberOfChildren];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBLodgingReservation *)self numberOfChildren];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBLodgingReservation *)self numberOfChildren];
    v20 = [v4 numberOfChildren];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBLodgingReservation *)self reservation];
  v6 = [v4 reservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBLodgingReservation *)self reservation];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBLodgingReservation *)self reservation];
    v25 = [v4 reservation];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBLodgingReservation *)self reservationDuration];
  v6 = [v4 reservationDuration];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBLodgingReservation *)self reservationDuration];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBLodgingReservation *)self reservationDuration];
    v30 = [v4 reservationDuration];
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
  v5 = [+[_INPBLodgingReservation allocWithZone:](_INPBLodgingReservation init];
  v6 = [(_INPBLocation *)self->_lodgingBusinessLocation copyWithZone:a3];
  [(_INPBLodgingReservation *)v5 setLodgingBusinessLocation:v6];

  v7 = [(_INPBInteger *)self->_numberOfAdults copyWithZone:a3];
  [(_INPBLodgingReservation *)v5 setNumberOfAdults:v7];

  v8 = [(_INPBInteger *)self->_numberOfChildren copyWithZone:a3];
  [(_INPBLodgingReservation *)v5 setNumberOfChildren:v8];

  v9 = [(_INPBReservation *)self->_reservation copyWithZone:a3];
  [(_INPBLodgingReservation *)v5 setReservation:v9];

  v10 = [(_INPBDateTimeRange *)self->_reservationDuration copyWithZone:a3];
  [(_INPBLodgingReservation *)v5 setReservationDuration:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBLodgingReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBLodgingReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBLodgingReservation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];

  if (v4)
  {
    v5 = [(_INPBLodgingReservation *)self lodgingBusinessLocation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBLodgingReservation *)self numberOfAdults];

  if (v6)
  {
    v7 = [(_INPBLodgingReservation *)self numberOfAdults];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBLodgingReservation *)self numberOfChildren];

  if (v8)
  {
    v9 = [(_INPBLodgingReservation *)self numberOfChildren];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBLodgingReservation *)self reservation];

  if (v10)
  {
    v11 = [(_INPBLodgingReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBLodgingReservation *)self reservationDuration];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBLodgingReservation *)self reservationDuration];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

@end