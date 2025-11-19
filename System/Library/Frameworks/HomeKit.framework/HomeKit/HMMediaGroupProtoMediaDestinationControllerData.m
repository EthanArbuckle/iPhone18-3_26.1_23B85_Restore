@interface HMMediaGroupProtoMediaDestinationControllerData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvailableDestinations:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMMediaGroupProtoMediaDestinationControllerData

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setIdentifier:?];
  }

  if (*(v4 + 5))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setParentIdentifier:?];
  }

  if (*(v4 + 3))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setDestinationIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMMediaGroupProtoMediaDestinationControllerData *)self addAvailableDestinations:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 48))
  {
    self->_supportedOptions = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_parentIdentifier hash];
  v5 = [(NSString *)self->_destinationIdentifier hash];
  v6 = [(NSMutableArray *)self->_availableDestinations hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_supportedOptions;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(v4 + 5))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationIdentifier = self->_destinationIdentifier;
  if (destinationIdentifier | *(v4 + 3))
  {
    if (![(NSString *)destinationIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  availableDestinations = self->_availableDestinations;
  if (availableDestinations | *(v4 + 2))
  {
    if (![(NSMutableArray *)availableDestinations isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) != 0 && self->_supportedOptions == *(v4 + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_parentIdentifier copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_destinationIdentifier copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_availableDestinations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
        [v5 addAvailableDestinations:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_supportedOptions;
    *(v5 + 48) |= 1u;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_identifier)
  {
    [v8 setIdentifier:?];
  }

  if (self->_parentIdentifier)
  {
    [v8 setParentIdentifier:?];
  }

  if (self->_destinationIdentifier)
  {
    [v8 setDestinationIdentifier:?];
  }

  if ([(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsCount])
  {
    [v8 clearAvailableDestinations];
    v4 = [(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsAtIndex:i];
        [v8 addAvailableDestinations:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v8 + 1) = self->_supportedOptions;
    *(v8 + 48) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_availableDestinations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    supportedOptions = self->_supportedOptions;
    PBDataWriterWriteUint64Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier)
  {
    [v4 setObject:parentIdentifier forKey:@"parentIdentifier"];
  }

  destinationIdentifier = self->_destinationIdentifier;
  if (destinationIdentifier)
  {
    [v4 setObject:destinationIdentifier forKey:@"destinationIdentifier"];
  }

  availableDestinations = self->_availableDestinations;
  if (availableDestinations)
  {
    [v4 setObject:availableDestinations forKey:@"availableDestinations"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_supportedOptions];
    [v4 setObject:v9 forKey:@"supportedOptions"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaDestinationControllerData;
  v4 = [(HMMediaGroupProtoMediaDestinationControllerData *)&v8 description];
  v5 = [(HMMediaGroupProtoMediaDestinationControllerData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addAvailableDestinations:(id)a3
{
  v4 = a3;
  availableDestinations = self->_availableDestinations;
  v8 = v4;
  if (!availableDestinations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableDestinations;
    self->_availableDestinations = v6;

    v4 = v8;
    availableDestinations = self->_availableDestinations;
  }

  [(NSMutableArray *)availableDestinations addObject:v4];
}

@end