@interface _INPBReservation
- (BOOL)isEqual:(id)equal;
- (_INPBReservation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsReservationStatus:(id)status;
- (unint64_t)hash;
- (void)addActions:(id)actions;
- (void)encodeWithCoder:(id)coder;
- (void)setActions:(id)actions;
- (void)setReservationHolderName:(id)name;
- (void)setReservationNumber:(id)number;
- (void)setReservationStatus:(int)status;
- (void)writeTo:(id)to;
@end

@implementation _INPBReservation

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBReservation *)self url];
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"URL"];

  if ([(NSArray *)self->_actions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"actions"];
  }

  bookingTime = [(_INPBReservation *)self bookingTime];
  dictionaryRepresentation3 = [bookingTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"bookingTime"];

  itemReference = [(_INPBReservation *)self itemReference];
  dictionaryRepresentation4 = [itemReference dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"itemReference"];

  if (self->_reservationHolderName)
  {
    reservationHolderName = [(_INPBReservation *)self reservationHolderName];
    v18 = [reservationHolderName copy];
    [dictionary setObject:v18 forKeyedSubscript:@"reservationHolderName"];
  }

  if (self->_reservationNumber)
  {
    reservationNumber = [(_INPBReservation *)self reservationNumber];
    v20 = [reservationNumber copy];
    [dictionary setObject:v20 forKeyedSubscript:@"reservationNumber"];
  }

  if ([(_INPBReservation *)self hasReservationStatus])
  {
    reservationStatus = [(_INPBReservation *)self reservationStatus];
    if ((reservationStatus - 1) >= 5)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", reservationStatus];
    }

    else
    {
      v22 = *(&off_1E72870A0 + (reservationStatus - 1));
    }

    [dictionary setObject:v22 forKeyedSubscript:@"reservationStatus"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  actions = [(_INPBReservation *)self url];
  actions2 = [equalCopy url];
  if ((actions != 0) == (actions2 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBReservation *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBReservation *)self url];
    v10 = [equalCopy url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  actions = [(_INPBReservation *)self actions];
  actions2 = [equalCopy actions];
  if ((actions != 0) == (actions2 == 0))
  {
    goto LABEL_31;
  }

  actions3 = [(_INPBReservation *)self actions];
  if (actions3)
  {
    v13 = actions3;
    actions4 = [(_INPBReservation *)self actions];
    actions5 = [equalCopy actions];
    v16 = [actions4 isEqual:actions5];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  actions = [(_INPBReservation *)self bookingTime];
  actions2 = [equalCopy bookingTime];
  if ((actions != 0) == (actions2 == 0))
  {
    goto LABEL_31;
  }

  bookingTime = [(_INPBReservation *)self bookingTime];
  if (bookingTime)
  {
    v18 = bookingTime;
    bookingTime2 = [(_INPBReservation *)self bookingTime];
    bookingTime3 = [equalCopy bookingTime];
    v21 = [bookingTime2 isEqual:bookingTime3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  actions = [(_INPBReservation *)self itemReference];
  actions2 = [equalCopy itemReference];
  if ((actions != 0) == (actions2 == 0))
  {
    goto LABEL_31;
  }

  itemReference = [(_INPBReservation *)self itemReference];
  if (itemReference)
  {
    v23 = itemReference;
    itemReference2 = [(_INPBReservation *)self itemReference];
    itemReference3 = [equalCopy itemReference];
    v26 = [itemReference2 isEqual:itemReference3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  actions = [(_INPBReservation *)self reservationHolderName];
  actions2 = [equalCopy reservationHolderName];
  if ((actions != 0) == (actions2 == 0))
  {
    goto LABEL_31;
  }

  reservationHolderName = [(_INPBReservation *)self reservationHolderName];
  if (reservationHolderName)
  {
    v28 = reservationHolderName;
    reservationHolderName2 = [(_INPBReservation *)self reservationHolderName];
    reservationHolderName3 = [equalCopy reservationHolderName];
    v31 = [reservationHolderName2 isEqual:reservationHolderName3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  actions = [(_INPBReservation *)self reservationNumber];
  actions2 = [equalCopy reservationNumber];
  if ((actions != 0) == (actions2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  reservationNumber = [(_INPBReservation *)self reservationNumber];
  if (reservationNumber)
  {
    v33 = reservationNumber;
    reservationNumber2 = [(_INPBReservation *)self reservationNumber];
    reservationNumber3 = [equalCopy reservationNumber];
    v36 = [reservationNumber2 isEqual:reservationNumber3];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  hasReservationStatus = [(_INPBReservation *)self hasReservationStatus];
  if (hasReservationStatus == [equalCopy hasReservationStatus])
  {
    if (!-[_INPBReservation hasReservationStatus](self, "hasReservationStatus") || ![equalCopy hasReservationStatus] || (reservationStatus = self->_reservationStatus, reservationStatus == objc_msgSend(equalCopy, "reservationStatus")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBReservation allocWithZone:](_INPBReservation init];
  v6 = [(_INPBURLValue *)self->_url copyWithZone:zone];
  [(_INPBReservation *)v5 setUrl:v6];

  v7 = [(NSArray *)self->_actions copyWithZone:zone];
  [(_INPBReservation *)v5 setActions:v7];

  v8 = [(_INPBTimestamp *)self->_bookingTime copyWithZone:zone];
  [(_INPBReservation *)v5 setBookingTime:v8];

  v9 = [(_INPBDataString *)self->_itemReference copyWithZone:zone];
  [(_INPBReservation *)v5 setItemReference:v9];

  v10 = [(NSString *)self->_reservationHolderName copyWithZone:zone];
  [(_INPBReservation *)v5 setReservationHolderName:v10];

  v11 = [(NSString *)self->_reservationNumber copyWithZone:zone];
  [(_INPBReservation *)v5 setReservationNumber:v11];

  if ([(_INPBReservation *)self hasReservationStatus])
  {
    [(_INPBReservation *)v5 setReservationStatus:[(_INPBReservation *)self reservationStatus]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBReservation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBReservation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  bookingTime = [(_INPBReservation *)self bookingTime];

  if (bookingTime)
  {
    bookingTime2 = [(_INPBReservation *)self bookingTime];
    PBDataWriterWriteSubmessage();
  }

  itemReference = [(_INPBReservation *)self itemReference];

  if (itemReference)
  {
    itemReference2 = [(_INPBReservation *)self itemReference];
    PBDataWriterWriteSubmessage();
  }

  reservationHolderName = [(_INPBReservation *)self reservationHolderName];

  if (reservationHolderName)
  {
    reservationHolderName = self->_reservationHolderName;
    PBDataWriterWriteStringField();
  }

  reservationNumber = [(_INPBReservation *)self reservationNumber];

  if (reservationNumber)
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

- (int)StringAsReservationStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN_RESERVATION_STATUS"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"CANCELED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"PENDING"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"HOLD"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"CONFIRMED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setReservationStatus:(int)status
{
  has = self->_has;
  if (status == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_reservationStatus = status;
  }
}

- (void)setReservationNumber:(id)number
{
  v4 = [number copy];
  reservationNumber = self->_reservationNumber;
  self->_reservationNumber = v4;

  MEMORY[0x1EEE66BB8](v4, reservationNumber);
}

- (void)setReservationHolderName:(id)name
{
  v4 = [name copy];
  reservationHolderName = self->_reservationHolderName;
  self->_reservationHolderName = v4;

  MEMORY[0x1EEE66BB8](v4, reservationHolderName);
}

- (void)addActions:(id)actions
{
  actionsCopy = actions;
  actions = self->_actions;
  v8 = actionsCopy;
  if (!actions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_actions;
    self->_actions = array;

    actionsCopy = v8;
    actions = self->_actions;
  }

  [(NSArray *)actions addObject:actionsCopy];
}

- (void)setActions:(id)actions
{
  v4 = [actions mutableCopy];
  actions = self->_actions;
  self->_actions = v4;

  MEMORY[0x1EEE66BB8](v4, actions);
}

@end