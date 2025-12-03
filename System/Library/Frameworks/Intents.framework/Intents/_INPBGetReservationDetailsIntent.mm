@interface _INPBGetReservationDetailsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBGetReservationDetailsIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReservationItemReferences:(id)references;
- (void)encodeWithCoder:(id)coder;
- (void)setReservationItemReferences:(id)references;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetReservationDetailsIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  reservationContainerReference = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
  dictionaryRepresentation2 = [reservationContainerReference dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"reservationContainerReference"];

  if ([(NSArray *)self->_reservationItemReferences count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"reservationItemReferences"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBDataString *)self->_reservationContainerReference hash]^ v3;
  return v4 ^ [(NSArray *)self->_reservationItemReferences hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  intentMetadata = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata3 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
  intentMetadata2 = [equalCopy reservationContainerReference];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  reservationContainerReference = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
  if (reservationContainerReference)
  {
    v13 = reservationContainerReference;
    reservationContainerReference2 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
    reservationContainerReference3 = [equalCopy reservationContainerReference];
    v16 = [reservationContainerReference2 isEqual:reservationContainerReference3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBGetReservationDetailsIntent *)self reservationItemReferences];
  intentMetadata2 = [equalCopy reservationItemReferences];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    reservationItemReferences = [(_INPBGetReservationDetailsIntent *)self reservationItemReferences];
    if (!reservationItemReferences)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = reservationItemReferences;
    reservationItemReferences2 = [(_INPBGetReservationDetailsIntent *)self reservationItemReferences];
    reservationItemReferences3 = [equalCopy reservationItemReferences];
    v21 = [reservationItemReferences2 isEqual:reservationItemReferences3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetReservationDetailsIntent allocWithZone:](_INPBGetReservationDetailsIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBGetReservationDetailsIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_reservationContainerReference copyWithZone:zone];
  [(_INPBGetReservationDetailsIntent *)v5 setReservationContainerReference:v7];

  v8 = [(NSArray *)self->_reservationItemReferences copyWithZone:zone];
  [(_INPBGetReservationDetailsIntent *)v5 setReservationItemReferences:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetReservationDetailsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetReservationDetailsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetReservationDetailsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentMetadata = [(_INPBGetReservationDetailsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBGetReservationDetailsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  reservationContainerReference = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];

  if (reservationContainerReference)
  {
    reservationContainerReference2 = [(_INPBGetReservationDetailsIntent *)self reservationContainerReference];
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

- (void)addReservationItemReferences:(id)references
{
  referencesCopy = references;
  reservationItemReferences = self->_reservationItemReferences;
  v8 = referencesCopy;
  if (!reservationItemReferences)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_reservationItemReferences;
    self->_reservationItemReferences = array;

    referencesCopy = v8;
    reservationItemReferences = self->_reservationItemReferences;
  }

  [(NSArray *)reservationItemReferences addObject:referencesCopy];
}

- (void)setReservationItemReferences:(id)references
{
  v4 = [references mutableCopy];
  reservationItemReferences = self->_reservationItemReferences;
  self->_reservationItemReferences = v4;

  MEMORY[0x1EEE66BB8](v4, reservationItemReferences);
}

@end