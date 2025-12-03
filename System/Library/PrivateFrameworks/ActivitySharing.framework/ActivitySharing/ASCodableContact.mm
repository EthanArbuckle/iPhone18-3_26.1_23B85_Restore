@interface ASCodableContact
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDestinations:(id)destinations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableContact

- (void)addDestinations:(id)destinations
{
  destinationsCopy = destinations;
  destinations = self->_destinations;
  v8 = destinationsCopy;
  if (!destinations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_destinations;
    self->_destinations = v6;

    destinationsCopy = v8;
    destinations = self->_destinations;
  }

  [(NSMutableArray *)destinations addObject:destinationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableContact;
  v4 = [(ASCodableContact *)&v8 description];
  dictionaryRepresentation = [(ASCodableContact *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  linkedContactStoreIdentifier = self->_linkedContactStoreIdentifier;
  if (linkedContactStoreIdentifier)
  {
    [dictionary setObject:linkedContactStoreIdentifier forKey:@"linkedContactStoreIdentifier"];
  }

  fullName = self->_fullName;
  if (fullName)
  {
    [v4 setObject:fullName forKey:@"fullName"];
  }

  shortName = self->_shortName;
  if (shortName)
  {
    [v4 setObject:shortName forKey:@"shortName"];
  }

  destinations = self->_destinations;
  if (destinations)
  {
    [v4 setObject:destinations forKey:@"destinations"];
  }

  relationshipContainer = self->_relationshipContainer;
  if (relationshipContainer)
  {
    dictionaryRepresentation = [(ASCodableRelationshipContainer *)relationshipContainer dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"relationshipContainer"];
  }

  remoteRelationshipContainer = self->_remoteRelationshipContainer;
  if (remoteRelationshipContainer)
  {
    dictionaryRepresentation2 = [(ASCodableRelationshipContainer *)remoteRelationshipContainer dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"remoteRelationshipContainer"];
  }

  pendingRelationshipShareItem = self->_pendingRelationshipShareItem;
  if (pendingRelationshipShareItem)
  {
    [v4 setObject:pendingRelationshipShareItem forKey:@"pendingRelationshipShareItem"];
  }

  pendingLegacyShareLocations = self->_pendingLegacyShareLocations;
  if (pendingLegacyShareLocations)
  {
    [v4 setObject:pendingLegacyShareLocations forKey:@"pendingLegacyShareLocations"];
  }

  relationshipStorage = self->_relationshipStorage;
  if (relationshipStorage)
  {
    dictionaryRepresentation3 = [(ASCodableRelationshipStorage *)relationshipStorage dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"relationshipStorage"];
  }

  if (*&self->_has)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldRemove];
    [v4 setObject:v17 forKey:@"shouldRemove"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_linkedContactStoreIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fullName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shortName)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_destinations;
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

  if (self->_relationshipContainer)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_remoteRelationshipContainer)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_pendingRelationshipShareItem)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_pendingLegacyShareLocations)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_relationshipStorage)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    shouldRemove = self->_shouldRemove;
    PBDataWriterWriteBOOLField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_linkedContactStoreIdentifier)
  {
    [toCopy setLinkedContactStoreIdentifier:?];
  }

  if (self->_fullName)
  {
    [toCopy setFullName:?];
  }

  if (self->_shortName)
  {
    [toCopy setShortName:?];
  }

  if ([(ASCodableContact *)self destinationsCount])
  {
    [toCopy clearDestinations];
    destinationsCount = [(ASCodableContact *)self destinationsCount];
    if (destinationsCount)
    {
      v5 = destinationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ASCodableContact *)self destinationsAtIndex:i];
        [toCopy addDestinations:v7];
      }
    }
  }

  if (self->_relationshipContainer)
  {
    [toCopy setRelationshipContainer:?];
  }

  v8 = toCopy;
  if (self->_remoteRelationshipContainer)
  {
    [toCopy setRemoteRelationshipContainer:?];
    v8 = toCopy;
  }

  if (self->_pendingRelationshipShareItem)
  {
    [toCopy setPendingRelationshipShareItem:?];
    v8 = toCopy;
  }

  if (self->_pendingLegacyShareLocations)
  {
    [toCopy setPendingLegacyShareLocations:?];
    v8 = toCopy;
  }

  if (self->_relationshipStorage)
  {
    [toCopy setRelationshipStorage:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[80] = self->_shouldRemove;
    v8[84] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_linkedContactStoreIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_fullName copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_shortName copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_destinations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) copyWithZone:{zone, v30}];
        [v5 addDestinations:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v18 = [(ASCodableRelationshipContainer *)self->_relationshipContainer copyWithZone:zone];
  v19 = *(v5 + 48);
  *(v5 + 48) = v18;

  v20 = [(ASCodableRelationshipContainer *)self->_remoteRelationshipContainer copyWithZone:zone];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v22 = [(NSData *)self->_pendingRelationshipShareItem copyWithZone:zone];
  v23 = *(v5 + 40);
  *(v5 + 40) = v22;

  v24 = [(NSData *)self->_pendingLegacyShareLocations copyWithZone:zone];
  v25 = *(v5 + 32);
  *(v5 + 32) = v24;

  v26 = [(ASCodableRelationshipStorage *)self->_relationshipStorage copyWithZone:zone];
  v27 = *(v5 + 56);
  *(v5 + 56) = v26;

  if (*&self->_has)
  {
    *(v5 + 80) = self->_shouldRemove;
    *(v5 + 84) |= 1u;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  linkedContactStoreIdentifier = self->_linkedContactStoreIdentifier;
  if (linkedContactStoreIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)linkedContactStoreIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  fullName = self->_fullName;
  if (fullName | *(equalCopy + 2))
  {
    if (![(NSString *)fullName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  shortName = self->_shortName;
  if (shortName | *(equalCopy + 9))
  {
    if (![(NSString *)shortName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  destinations = self->_destinations;
  if (destinations | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)destinations isEqual:?])
    {
      goto LABEL_22;
    }
  }

  relationshipContainer = self->_relationshipContainer;
  if (relationshipContainer | *(equalCopy + 6))
  {
    if (![(ASCodableRelationshipContainer *)relationshipContainer isEqual:?])
    {
      goto LABEL_22;
    }
  }

  remoteRelationshipContainer = self->_remoteRelationshipContainer;
  if (remoteRelationshipContainer | *(equalCopy + 8))
  {
    if (![(ASCodableRelationshipContainer *)remoteRelationshipContainer isEqual:?])
    {
      goto LABEL_22;
    }
  }

  pendingRelationshipShareItem = self->_pendingRelationshipShareItem;
  if (pendingRelationshipShareItem | *(equalCopy + 5))
  {
    if (![(NSData *)pendingRelationshipShareItem isEqual:?])
    {
      goto LABEL_22;
    }
  }

  pendingLegacyShareLocations = self->_pendingLegacyShareLocations;
  if (pendingLegacyShareLocations | *(equalCopy + 4))
  {
    if (![(NSData *)pendingLegacyShareLocations isEqual:?])
    {
      goto LABEL_22;
    }
  }

  relationshipStorage = self->_relationshipStorage;
  if (relationshipStorage | *(equalCopy + 7))
  {
    if (![(ASCodableRelationshipStorage *)relationshipStorage isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v14 = (*(equalCopy + 84) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0)
    {
LABEL_22:
      v14 = 0;
      goto LABEL_23;
    }

    if (self->_shouldRemove)
    {
      if ((*(equalCopy + 80) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(equalCopy + 80))
    {
      goto LABEL_22;
    }

    v14 = 1;
  }

LABEL_23:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_linkedContactStoreIdentifier hash];
  v4 = [(NSString *)self->_fullName hash];
  v5 = [(NSString *)self->_shortName hash];
  v6 = [(NSMutableArray *)self->_destinations hash];
  v7 = [(ASCodableRelationshipContainer *)self->_relationshipContainer hash];
  v8 = [(ASCodableRelationshipContainer *)self->_remoteRelationshipContainer hash];
  v9 = [(NSData *)self->_pendingRelationshipShareItem hash];
  v10 = [(NSData *)self->_pendingLegacyShareLocations hash];
  v11 = [(ASCodableRelationshipStorage *)self->_relationshipStorage hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_shouldRemove;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(ASCodableContact *)self setLinkedContactStoreIdentifier:?];
  }

  if (*(fromCopy + 2))
  {
    [(ASCodableContact *)self setFullName:?];
  }

  if (*(fromCopy + 9))
  {
    [(ASCodableContact *)self setShortName:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ASCodableContact *)self addDestinations:*(*(&v17 + 1) + 8 * i), v17];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  relationshipContainer = self->_relationshipContainer;
  v11 = *(fromCopy + 6);
  if (relationshipContainer)
  {
    if (v11)
    {
      [(ASCodableRelationshipContainer *)relationshipContainer mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(ASCodableContact *)self setRelationshipContainer:?];
  }

  remoteRelationshipContainer = self->_remoteRelationshipContainer;
  v13 = *(fromCopy + 8);
  if (remoteRelationshipContainer)
  {
    if (v13)
    {
      [(ASCodableRelationshipContainer *)remoteRelationshipContainer mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(ASCodableContact *)self setRemoteRelationshipContainer:?];
  }

  if (*(fromCopy + 5))
  {
    [(ASCodableContact *)self setPendingRelationshipShareItem:?];
  }

  if (*(fromCopy + 4))
  {
    [(ASCodableContact *)self setPendingLegacyShareLocations:?];
  }

  relationshipStorage = self->_relationshipStorage;
  v15 = *(fromCopy + 7);
  if (relationshipStorage)
  {
    if (v15)
    {
      [(ASCodableRelationshipStorage *)relationshipStorage mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(ASCodableContact *)self setRelationshipStorage:?];
  }

  if (*(fromCopy + 84))
  {
    self->_shouldRemove = *(fromCopy + 80);
    *&self->_has |= 1u;
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end