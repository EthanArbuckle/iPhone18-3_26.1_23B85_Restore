@interface _INPBGetReservationDetailsIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGetReservationDetailsIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addReservations:(id)reservations;
- (void)encodeWithCoder:(id)coder;
- (void)setReservations:(id)reservations;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetReservationDetailsIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_reservations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_reservations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"reservations"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    reservations = [(_INPBGetReservationDetailsIntentResponse *)self reservations];
    reservations2 = [equalCopy reservations];
    v7 = reservations2;
    if ((reservations != 0) != (reservations2 == 0))
    {
      reservations3 = [(_INPBGetReservationDetailsIntentResponse *)self reservations];
      if (!reservations3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = reservations3;
      reservations4 = [(_INPBGetReservationDetailsIntentResponse *)self reservations];
      reservations5 = [equalCopy reservations];
      v12 = [reservations4 isEqual:reservations5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetReservationDetailsIntentResponse allocWithZone:](_INPBGetReservationDetailsIntentResponse init];
  v6 = [(NSArray *)self->_reservations copyWithZone:zone];
  [(_INPBGetReservationDetailsIntentResponse *)v5 setReservations:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetReservationDetailsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetReservationDetailsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetReservationDetailsIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_reservations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addReservations:(id)reservations
{
  reservationsCopy = reservations;
  reservations = self->_reservations;
  v8 = reservationsCopy;
  if (!reservations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_reservations;
    self->_reservations = array;

    reservationsCopy = v8;
    reservations = self->_reservations;
  }

  [(NSArray *)reservations addObject:reservationsCopy];
}

- (void)setReservations:(id)reservations
{
  v4 = [reservations mutableCopy];
  reservations = self->_reservations;
  self->_reservations = v4;

  MEMORY[0x1EEE66BB8](v4, reservations);
}

@end