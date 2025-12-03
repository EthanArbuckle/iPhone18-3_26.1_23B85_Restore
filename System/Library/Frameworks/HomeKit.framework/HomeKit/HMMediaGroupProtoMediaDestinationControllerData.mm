@interface HMMediaGroupProtoMediaDestinationControllerData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvailableDestinations:(id)destinations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoMediaDestinationControllerData

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setIdentifier:?];
  }

  if (*(fromCopy + 5))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setParentIdentifier:?];
  }

  if (*(fromCopy + 3))
  {
    [(HMMediaGroupProtoMediaDestinationControllerData *)self setDestinationIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 2);
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

  if (*(fromCopy + 48))
  {
    self->_supportedOptions = *(fromCopy + 1);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationIdentifier = self->_destinationIdentifier;
  if (destinationIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)destinationIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  availableDestinations = self->_availableDestinations;
  if (availableDestinations | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)availableDestinations isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) != 0 && self->_supportedOptions == *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_parentIdentifier copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_destinationIdentifier copyWithZone:zone];
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

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_parentIdentifier)
  {
    [toCopy setParentIdentifier:?];
  }

  if (self->_destinationIdentifier)
  {
    [toCopy setDestinationIdentifier:?];
  }

  if ([(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsCount])
  {
    [toCopy clearAvailableDestinations];
    availableDestinationsCount = [(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsCount];
    if (availableDestinationsCount)
    {
      v5 = availableDestinationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMMediaGroupProtoMediaDestinationControllerData *)self availableDestinationsAtIndex:i];
        [toCopy addAvailableDestinations:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_supportedOptions;
    *(toCopy + 48) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
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
  dictionaryRepresentation = [(HMMediaGroupProtoMediaDestinationControllerData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addAvailableDestinations:(id)destinations
{
  destinationsCopy = destinations;
  availableDestinations = self->_availableDestinations;
  v8 = destinationsCopy;
  if (!availableDestinations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableDestinations;
    self->_availableDestinations = v6;

    destinationsCopy = v8;
    availableDestinations = self->_availableDestinations;
  }

  [(NSMutableArray *)availableDestinations addObject:destinationsCopy];
}

@end