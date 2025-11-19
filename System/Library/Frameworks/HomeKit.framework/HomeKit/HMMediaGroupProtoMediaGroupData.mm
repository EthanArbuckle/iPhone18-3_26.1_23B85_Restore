@interface HMMediaGroupProtoMediaGroupData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDestinationIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMMediaGroupProtoMediaGroupData

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setIdentifier:?];
  }

  if (*(v4 + 5))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setName:?];
  }

  if (*(v4 + 6))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setParentIdentifier:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 2);
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

  if (*(v4 + 1))
  {
    [(HMMediaGroupProtoMediaGroupData *)self setAssociatedGroupIdentifier:?];
  }

  groupRole = self->_groupRole;
  v11 = *(v4 + 3);
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

  if (*(v4 + 60))
  {
    self->_isDefaultName = *(v4 + 56);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  name = self->_name;
  if (name | *(v4 + 5))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_16;
    }
  }

  parentIdentifier = self->_parentIdentifier;
  if (parentIdentifier | *(v4 + 6))
  {
    if (![(NSString *)parentIdentifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  destinationIdentifiers = self->_destinationIdentifiers;
  if (destinationIdentifiers | *(v4 + 2))
  {
    if (![(NSMutableArray *)destinationIdentifiers isEqual:?])
    {
      goto LABEL_16;
    }
  }

  associatedGroupIdentifier = self->_associatedGroupIdentifier;
  if (associatedGroupIdentifier | *(v4 + 1))
  {
    if (![(NSString *)associatedGroupIdentifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  groupRole = self->_groupRole;
  if (groupRole | *(v4 + 3))
  {
    if (![(HMMediaGroupProtoMediaGroupRole *)groupRole isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v11 = (*(v4 + 60) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0)
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }

    if (self->_isDefaultName)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_16;
    }

    v11 = 1;
  }

LABEL_17:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_parentIdentifier copyWithZone:a3];
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

        v17 = [*(*(&v24 + 1) + 8 * v16) copyWithZone:{a3, v24}];
        [v5 addDestinationIdentifiers:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_associatedGroupIdentifier copyWithZone:a3];
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  v20 = [(HMMediaGroupProtoMediaGroupRole *)self->_groupRole copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_identifier)
  {
    [v9 setIdentifier:?];
  }

  if (self->_name)
  {
    [v9 setName:?];
  }

  if (self->_parentIdentifier)
  {
    [v9 setParentIdentifier:?];
  }

  if ([(HMMediaGroupProtoMediaGroupData *)self destinationIdentifiersCount])
  {
    [v9 clearDestinationIdentifiers];
    v4 = [(HMMediaGroupProtoMediaGroupData *)self destinationIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMMediaGroupProtoMediaGroupData *)self destinationIdentifiersAtIndex:i];
        [v9 addDestinationIdentifiers:v7];
      }
    }
  }

  if (self->_associatedGroupIdentifier)
  {
    [v9 setAssociatedGroupIdentifier:?];
  }

  v8 = v9;
  if (self->_groupRole)
  {
    [v9 setGroupRole:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[56] = self->_isDefaultName;
    v8[60] |= 1u;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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
    v11 = [(HMMediaGroupProtoMediaGroupRole *)groupRole dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"groupRole"];
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
  v5 = [(HMMediaGroupProtoMediaGroupData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addDestinationIdentifiers:(id)a3
{
  v4 = a3;
  destinationIdentifiers = self->_destinationIdentifiers;
  v8 = v4;
  if (!destinationIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_destinationIdentifiers;
    self->_destinationIdentifiers = v6;

    v4 = v8;
    destinationIdentifiers = self->_destinationIdentifiers;
  }

  [(NSMutableArray *)destinationIdentifiers addObject:v4];
}

@end