@interface HMMediaGroupProtoMediaGroupData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDestinationIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMMediaGroupProtoMediaGroupData

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setIdentifier:?];
  }

  if (*(fromCopy + 5))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setName:?];
  }

  if (*(fromCopy + 6))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setParentIdentifier:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        [(HMMediaGroupProtoMediaGroupData *)self addDestinationIdentifiers:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 1))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setAssociatedGroupIdentifier:?];
  }

  groupRole = self->_groupRole;
  v11 = *(fromCopy + 3);
  if (groupRole)
  {
    if (v11)
    {
      [(HMMediaGroupProtoMediaGroupRole *)groupRole mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(HMMediaGroupProtoMediaGroupData *)self setGroupRole:?];
  }

  if (*(fromCopy + 60))
  {
    self->_isDefaultName = *(fromCopy + 56);
    *&self->_has |= 1u;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_name hash];
  v5 = [(NSString *)self->_parentIdentifier hash];
  v6 = [(NSMutableArray *)self->_destinationIdentifiers hash];
  v7 = [(NSString *)self->_associatedGroupIdentifier hash];
  v8 = [(HMMediaGroupProtoMediaGroupRole *)self->_groupRole hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_isDefaultName;
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
    goto LABEL_16;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  name = self->_name;
  if (name | *(equalCopy + 5))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_16;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  destinationIdentifiers = self->_destinationIdentifiers;
  if (destinationIdentifiers | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)destinationIdentifiers isEqual:?])
    {
      goto LABEL_16;
    }
  }

  associatedGroupIdentifier = self->_associatedGroupIdentifier;
  if (associatedGroupIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)associatedGroupIdentifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  groupRole = self->_groupRole;
  if (groupRole | *(equalCopy + 3))
  {
    if (![(HMMediaGroupProtoMediaGroupRole *)groupRole isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v11 = (*(equalCopy + 60) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }

    if (self->_isDefaultName)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_16;
    }

    v11 = 1;
  }

LABEL_17:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_parentIdentifier copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_destinationIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * v16) copyWithZone:{zone, v24}];
        [v5 addDestinationIdentifiers:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_associatedGroupIdentifier copyWithZone:zone];
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  v20 = [(HMMediaGroupProtoMediaGroupRole *)self->_groupRole copyWithZone:zone];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_isDefaultName;
    *(v5 + 60) |= 1u;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_name)
  {
    [toCopy setName:?];
  }

  if (self->_parentIdentifier)
  {
    [toCopy setParentIdentifier:?];
  }

  if ([(HMMediaGroupProtoMediaGroupData *)self destinationIdentifiersCount])
  {
    [toCopy clearDestinationIdentifiers];
    destinationIdentifiersCount = [(HMMediaGroupProtoMediaGroupData *)self destinationIdentifiersCount];
    if (destinationIdentifiersCount)
    {
      v5 = destinationIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMMediaGroupProtoMediaGroupData *)self destinationIdentifiersAtIndex:i];
        [toCopy addDestinationIdentifiers:v7];
      }
    }
  }

  if (self->_associatedGroupIdentifier)
  {
    [toCopy setAssociatedGroupIdentifier:?];
  }

  v8 = toCopy;
  if (self->_groupRole)
  {
    [toCopy setGroupRole:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[56] = self->_isDefaultName;
    v8[60] |= 1u;
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

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_destinationIdentifiers;
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

  if (self->_associatedGroupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupRole)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    isDefaultName = self->_isDefaultName;
    PBDataWriterWriteBOOLField();
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

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier)
  {
    [v4 setObject:parentIdentifier forKey:@"parentIdentifier"];
  }

  destinationIdentifiers = self->_destinationIdentifiers;
  if (destinationIdentifiers)
  {
    [v4 setObject:destinationIdentifiers forKey:@"destinationIdentifiers"];
  }

  associatedGroupIdentifier = self->_associatedGroupIdentifier;
  if (associatedGroupIdentifier)
  {
    [v4 setObject:associatedGroupIdentifier forKey:@"associatedGroupIdentifier"];
  }

  groupRole = self->_groupRole;
  if (groupRole)
  {
    dictionaryRepresentation = [(HMMediaGroupProtoMediaGroupRole *)groupRole dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"groupRole"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDefaultName];
    [v4 setObject:v12 forKey:@"isDefaultName"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaGroupData;
  v4 = [(HMMediaGroupProtoMediaGroupData *)&v8 description];
  dictionaryRepresentation = [(HMMediaGroupProtoMediaGroupData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addDestinationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  destinationIdentifiers = self->_destinationIdentifiers;
  v8 = identifiersCopy;
  if (!destinationIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_destinationIdentifiers;
    self->_destinationIdentifiers = v6;

    identifiersCopy = v8;
    destinationIdentifiers = self->_destinationIdentifiers;
  }

  [(NSMutableArray *)destinationIdentifiers addObject:identifiersCopy];
}

@end