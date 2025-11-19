@interface ASCodableContact
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDestinations:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableContact

- (void)addDestinations:(id)a3
{
  v4 = a3;
  destinations = self->_destinations;
  v8 = v4;
  if (!destinations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_destinations;
    self->_destinations = v6;

    v4 = v8;
    destinations = self->_destinations;
  }

  [(NSMutableArray *)destinations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableContact;
  v4 = [(ASCodableContact *)&v8 description];
  v5 = [(ASCodableContact *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  linkedContactStoreIdentifier = self->_linkedContactStoreIdentifier;
  if (linkedContactStoreIdentifier)
  {
    [v3 setObject:linkedContactStoreIdentifier forKey:@"linkedContactStoreIdentifier"];
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
    v10 = [(ASCodableRelationshipContainer *)relationshipContainer dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"relationshipContainer"];
  }

  remoteRelationshipContainer = self->_remoteRelationshipContainer;
  if (remoteRelationshipContainer)
  {
    v12 = [(ASCodableRelationshipContainer *)remoteRelationshipContainer dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"remoteRelationshipContainer"];
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
    v16 = [(ASCodableRelationshipStorage *)relationshipStorage dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"relationshipStorage"];
  }

  if (*&self->_has)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldRemove];
    [v4 setObject:v17 forKey:@"shouldRemove"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_linkedContactStoreIdentifier)
  {
    [v9 setLinkedContactStoreIdentifier:?];
  }

  if (self->_fullName)
  {
    [v9 setFullName:?];
  }

  if (self->_shortName)
  {
    [v9 setShortName:?];
  }

  if ([(ASCodableContact *)self destinationsCount])
  {
    [v9 clearDestinations];
    v4 = [(ASCodableContact *)self destinationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ASCodableContact *)self destinationsAtIndex:i];
        [v9 addDestinations:v7];
      }
    }
  }

  if (self->_relationshipContainer)
  {
    [v9 setRelationshipContainer:?];
  }

  v8 = v9;
  if (self->_remoteRelationshipContainer)
  {
    [v9 setRemoteRelationshipContainer:?];
    v8 = v9;
  }

  if (self->_pendingRelationshipShareItem)
  {
    [v9 setPendingRelationshipShareItem:?];
    v8 = v9;
  }

  if (self->_pendingLegacyShareLocations)
  {
    [v9 setPendingLegacyShareLocations:?];
    v8 = v9;
  }

  if (self->_relationshipStorage)
  {
    [v9 setRelationshipStorage:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[80] = self->_shouldRemove;
    v8[84] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_linkedContactStoreIdentifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_fullName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_shortName copyWithZone:a3];
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

        v17 = [*(*(&v30 + 1) + 8 * v16) copyWithZone:{a3, v30}];
        [v5 addDestinations:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v18 = [(ASCodableRelationshipContainer *)self->_relationshipContainer copyWithZone:a3];
  v19 = *(v5 + 48);
  *(v5 + 48) = v18;

  v20 = [(ASCodableRelationshipContainer *)self->_remoteRelationshipContainer copyWithZone:a3];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v22 = [(NSData *)self->_pendingRelationshipShareItem copyWithZone:a3];
  v23 = *(v5 + 40);
  *(v5 + 40) = v22;

  v24 = [(NSData *)self->_pendingLegacyShareLocations copyWithZone:a3];
  v25 = *(v5 + 32);
  *(v5 + 32) = v24;

  v26 = [(ASCodableRelationshipStorage *)self->_relationshipStorage copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  linkedContactStoreIdentifier = self->_linkedContactStoreIdentifier;
  if (linkedContactStoreIdentifier | *(v4 + 3))
  {
    if (![(NSString *)linkedContactStoreIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  fullName = self->_fullName;
  if (fullName | *(v4 + 2))
  {
    if (![(NSString *)fullName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  shortName = self->_shortName;
  if (shortName | *(v4 + 9))
  {
    if (![(NSString *)shortName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  destinations = self->_destinations;
  if (destinations | *(v4 + 1))
  {
    if (![(NSMutableArray *)destinations isEqual:?])
    {
      goto LABEL_22;
    }
  }

  relationshipContainer = self->_relationshipContainer;
  if (relationshipContainer | *(v4 + 6))
  {
    if (![(ASCodableRelationshipContainer *)relationshipContainer isEqual:?])
    {
      goto LABEL_22;
    }
  }

  remoteRelationshipContainer = self->_remoteRelationshipContainer;
  if (remoteRelationshipContainer | *(v4 + 8))
  {
    if (![(ASCodableRelationshipContainer *)remoteRelationshipContainer isEqual:?])
    {
      goto LABEL_22;
    }
  }

  pendingRelationshipShareItem = self->_pendingRelationshipShareItem;
  if (pendingRelationshipShareItem | *(v4 + 5))
  {
    if (![(NSData *)pendingRelationshipShareItem isEqual:?])
    {
      goto LABEL_22;
    }
  }

  pendingLegacyShareLocations = self->_pendingLegacyShareLocations;
  if (pendingLegacyShareLocations | *(v4 + 4))
  {
    if (![(NSData *)pendingLegacyShareLocations isEqual:?])
    {
      goto LABEL_22;
    }
  }

  relationshipStorage = self->_relationshipStorage;
  if (relationshipStorage | *(v4 + 7))
  {
    if (![(ASCodableRelationshipStorage *)relationshipStorage isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v14 = (*(v4 + 84) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0)
    {
LABEL_22:
      v14 = 0;
      goto LABEL_23;
    }

    if (self->_shouldRemove)
    {
      if ((*(v4 + 80) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(v4 + 80))
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

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(ASCodableContact *)self setLinkedContactStoreIdentifier:?];
  }

  if (*(v4 + 2))
  {
    [(ASCodableContact *)self setFullName:?];
  }

  if (*(v4 + 9))
  {
    [(ASCodableContact *)self setShortName:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(v4 + 1);
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
  v11 = *(v4 + 6);
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
  v13 = *(v4 + 8);
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

  if (*(v4 + 5))
  {
    [(ASCodableContact *)self setPendingRelationshipShareItem:?];
  }

  if (*(v4 + 4))
  {
    [(ASCodableContact *)self setPendingLegacyShareLocations:?];
  }

  relationshipStorage = self->_relationshipStorage;
  v15 = *(v4 + 7);
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

  if (*(v4 + 84))
  {
    self->_shouldRemove = *(v4 + 80);
    *&self->_has |= 1u;
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end