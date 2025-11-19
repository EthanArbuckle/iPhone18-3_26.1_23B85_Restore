@interface _INPBGetReservationDetailsIntent
- (BOOL)isEqual:(id)a3;
- (_INPBGetReservationDetailsIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReservationItemReferences:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setReservationItemReferences:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetReservationDetailsIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  v6 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"reservationContainerReference"];

  if ([(NSArray *)self->_reservationItemReferences count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_reservationItemReferences;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"reservationItemReferences"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBDataString *)self->_reservationContainerReference hash]^ v3;
  return v4 ^ [(NSArray *)self->_reservationItemReferences hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
  v6 = [v4 reservationContainerReference];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
    v15 = [v4 reservationContainerReference];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBGetReservationDetailsIntent *)self reservationItemReferences];
  v6 = [v4 reservationItemReferences];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBGetReservationDetailsIntent *)self reservationItemReferences];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBGetReservationDetailsIntent *)self reservationItemReferences];
    v20 = [v4 reservationItemReferences];
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
  v5 = [+[_INPBGetReservationDetailsIntent allocWithZone:](_INPBGetReservationDetailsIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBGetReservationDetailsIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_reservationContainerReference copyWithZone:a3];
  [(_INPBGetReservationDetailsIntent *)v5 setReservationContainerReference:v7];

  v8 = [(NSArray *)self->_reservationItemReferences copyWithZone:a3];
  [(_INPBGetReservationDetailsIntent *)v5 setReservationItemReferences:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetReservationDetailsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetReservationDetailsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetReservationDetailsIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];

  if (v7)
  {
    v8 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_reservationItemReferences;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addReservationItemReferences:(id)a3
{
  v4 = a3;
  reservationItemReferences = self->_reservationItemReferences;
  v8 = v4;
  if (!reservationItemReferences)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_reservationItemReferences;
    self->_reservationItemReferences = v6;

    v4 = v8;
    reservationItemReferences = self->_reservationItemReferences;
  }

  [(NSArray *)reservationItemReferences addObject:v4];
}

- (void)setReservationItemReferences:(id)a3
{
  v4 = [a3 mutableCopy];
  reservationItemReferences = self->_reservationItemReferences;
  self->_reservationItemReferences = v4;

  MEMORY[0x1EEE66BB8](v4, reservationItemReferences);
}

@end