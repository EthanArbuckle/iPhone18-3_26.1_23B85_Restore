@interface _INPBTrainReservation
- (BOOL)isEqual:(id)a3;
- (_INPBTrainReservation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTrainReservation

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBTrainReservation *)self reservation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"reservation"];

  v6 = [(_INPBTrainReservation *)self reservedSeat];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"reservedSeat"];

  v8 = [(_INPBTrainReservation *)self trainTrip];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"trainTrip"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBReservation *)self->_reservation hash];
  v4 = [(_INPBSeat *)self->_reservedSeat hash]^ v3;
  return v4 ^ [(_INPBTrainTrip *)self->_trainTrip hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBTrainReservation *)self reservation];
  v6 = [v4 reservation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBTrainReservation *)self reservation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBTrainReservation *)self reservation];
    v10 = [v4 reservation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainReservation *)self reservedSeat];
  v6 = [v4 reservedSeat];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBTrainReservation *)self reservedSeat];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBTrainReservation *)self reservedSeat];
    v15 = [v4 reservedSeat];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainReservation *)self trainTrip];
  v6 = [v4 trainTrip];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBTrainReservation *)self trainTrip];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBTrainReservation *)self trainTrip];
    v20 = [v4 trainTrip];
    v21 = [v19 isEqual:v20];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTrainReservation allocWithZone:](_INPBTrainReservation init];
  v6 = [(_INPBReservation *)self->_reservation copyWithZone:a3];
  [(_INPBTrainReservation *)v5 setReservation:v6];

  v7 = [(_INPBSeat *)self->_reservedSeat copyWithZone:a3];
  [(_INPBTrainReservation *)v5 setReservedSeat:v7];

  v8 = [(_INPBTrainTrip *)self->_trainTrip copyWithZone:a3];
  [(_INPBTrainReservation *)v5 setTrainTrip:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTrainReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTrainReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTrainReservation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBTrainReservation *)self reservation];

  if (v4)
  {
    v5 = [(_INPBTrainReservation *)self reservation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBTrainReservation *)self reservedSeat];

  if (v6)
  {
    v7 = [(_INPBTrainReservation *)self reservedSeat];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBTrainReservation *)self trainTrip];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBTrainReservation *)self trainTrip];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end