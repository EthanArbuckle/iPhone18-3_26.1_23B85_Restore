@interface _INPBReservation
- (BOOL)isEqual:(id)a3;
- (_INPBReservation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsReservationStatus:(id)a3;
- (unint64_t)hash;
- (void)addActions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setActions:(id)a3;
- (void)setReservationHolderName:(id)a3;
- (void)setReservationNumber:(id)a3;
- (void)setReservationStatus:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBReservation

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBReservation *)self url];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"URL"];

  if ([(NSArray *)self->_actions count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_actions;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"actions"];
  }

  v13 = [(_INPBReservation *)self bookingTime];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"bookingTime"];

  v15 = [(_INPBReservation *)self itemReference];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"itemReference"];

  if (self->_reservationHolderName)
  {
    v17 = [(_INPBReservation *)self reservationHolderName];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"reservationHolderName"];
  }

  if (self->_reservationNumber)
  {
    v19 = [(_INPBReservation *)self reservationNumber];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"reservationNumber"];
  }

  if ([(_INPBReservation *)self hasReservationStatus])
  {
    v21 = [(_INPBReservation *)self reservationStatus];
    if ((v21 - 1) >= 5)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    else
    {
      v22 = *(&off_1E72870A0 + (v21 - 1));
    }

    [v3 setObject:v22 forKeyedSubscript:@"reservationStatus"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBURLValue *)self->_url hash];
  v4 = [(NSArray *)self->_actions hash];
  v5 = [(_INPBTimestamp *)self->_bookingTime hash];
  v6 = [(_INPBDataString *)self->_itemReference hash];
  v7 = [(NSString *)self->_reservationHolderName hash];
  v8 = [(NSString *)self->_reservationNumber hash];
  if ([(_INPBReservation *)self hasReservationStatus])
  {
    v9 = 2654435761 * self->_reservationStatus;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBReservation *)self url];
  v6 = [v4 url];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBReservation *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBReservation *)self url];
    v10 = [v4 url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservation *)self actions];
  v6 = [v4 actions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBReservation *)self actions];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBReservation *)self actions];
    v15 = [v4 actions];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservation *)self bookingTime];
  v6 = [v4 bookingTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBReservation *)self bookingTime];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBReservation *)self bookingTime];
    v20 = [v4 bookingTime];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservation *)self itemReference];
  v6 = [v4 itemReference];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBReservation *)self itemReference];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBReservation *)self itemReference];
    v25 = [v4 itemReference];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservation *)self reservationHolderName];
  v6 = [v4 reservationHolderName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBReservation *)self reservationHolderName];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBReservation *)self reservationHolderName];
    v30 = [v4 reservationHolderName];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBReservation *)self reservationNumber];
  v6 = [v4 reservationNumber];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = [(_INPBReservation *)self reservationNumber];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBReservation *)self reservationNumber];
    v35 = [v4 reservationNumber];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v39 = [(_INPBReservation *)self hasReservationStatus];
  if (v39 == [v4 hasReservationStatus])
  {
    if (!-[_INPBReservation hasReservationStatus](self, "hasReservationStatus") || ![v4 hasReservationStatus] || (reservationStatus = self->_reservationStatus, reservationStatus == objc_msgSend(v4, "reservationStatus")))
    {
      v37 = 1;
      goto LABEL_33;
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBReservation allocWithZone:](_INPBReservation init];
  v6 = [(_INPBURLValue *)self->_url copyWithZone:a3];
  [(_INPBReservation *)v5 setUrl:v6];

  v7 = [(NSArray *)self->_actions copyWithZone:a3];
  [(_INPBReservation *)v5 setActions:v7];

  v8 = [(_INPBTimestamp *)self->_bookingTime copyWithZone:a3];
  [(_INPBReservation *)v5 setBookingTime:v8];

  v9 = [(_INPBDataString *)self->_itemReference copyWithZone:a3];
  [(_INPBReservation *)v5 setItemReference:v9];

  v10 = [(NSString *)self->_reservationHolderName copyWithZone:a3];
  [(_INPBReservation *)v5 setReservationHolderName:v10];

  v11 = [(NSString *)self->_reservationNumber copyWithZone:a3];
  [(_INPBReservation *)v5 setReservationNumber:v11];

  if ([(_INPBReservation *)self hasReservationStatus])
  {
    [(_INPBReservation *)v5 setReservationStatus:[(_INPBReservation *)self reservationStatus]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBReservation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBReservation *)self url];

  if (v5)
  {
    v6 = [(_INPBReservation *)self url];
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_actions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v13 = [(_INPBReservation *)self bookingTime];

  if (v13)
  {
    v14 = [(_INPBReservation *)self bookingTime];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBReservation *)self itemReference];

  if (v15)
  {
    v16 = [(_INPBReservation *)self itemReference];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBReservation *)self reservationHolderName];

  if (v17)
  {
    reservationHolderName = self->_reservationHolderName;
    PBDataWriterWriteStringField();
  }

  v19 = [(_INPBReservation *)self reservationNumber];

  if (v19)
  {
    reservationNumber = self->_reservationNumber;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBReservation *)self hasReservationStatus])
  {
    reservationStatus = self->_reservationStatus;
    PBDataWriterWriteInt32Field();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (int)StringAsReservationStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_RESERVATION_STATUS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CANCELED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PENDING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HOLD"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CONFIRMED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setReservationStatus:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_reservationStatus = a3;
  }
}

- (void)setReservationNumber:(id)a3
{
  v4 = [a3 copy];
  reservationNumber = self->_reservationNumber;
  self->_reservationNumber = v4;

  MEMORY[0x1EEE66BB8](v4, reservationNumber);
}

- (void)setReservationHolderName:(id)a3
{
  v4 = [a3 copy];
  reservationHolderName = self->_reservationHolderName;
  self->_reservationHolderName = v4;

  MEMORY[0x1EEE66BB8](v4, reservationHolderName);
}

- (void)addActions:(id)a3
{
  v4 = a3;
  actions = self->_actions;
  v8 = v4;
  if (!actions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_actions;
    self->_actions = v6;

    v4 = v8;
    actions = self->_actions;
  }

  [(NSArray *)actions addObject:v4];
}

- (void)setActions:(id)a3
{
  v4 = [a3 mutableCopy];
  actions = self->_actions;
  self->_actions = v4;

  MEMORY[0x1EEE66BB8](v4, actions);
}

@end