@interface PDDPCollectionItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addItemIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPCollectionItem

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_COLLECTION_ITEM_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"HANDOUT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ATTACHMENT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addItemIds:(id)ids
{
  idsCopy = ids;
  itemIds = self->_itemIds;
  v8 = idsCopy;
  if (!itemIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_itemIds;
    self->_itemIds = v6;

    idsCopy = v8;
    itemIds = self->_itemIds;
  }

  [(NSMutableArray *)itemIds addObject:idsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPCollectionItem;
  v3 = [(PDDPCollectionItem *)&v7 description];
  dictionaryRepresentation = [(PDDPCollectionItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 3)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_100204928[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  collectionId = self->_collectionId;
  if (collectionId)
  {
    [v3 setObject:collectionId forKey:@"collection_id"];
  }

  itemIds = self->_itemIds;
  if (itemIds)
  {
    [v3 setObject:itemIds forKey:@"item_ids"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_collectionId)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_itemIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_type;
    *(toCopy + 52) |= 1u;
  }

  v10 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
  }

  if (self->_collectionId)
  {
    [v10 setCollectionId:?];
  }

  if ([(PDDPCollectionItem *)self itemIdsCount])
  {
    [v10 clearItemIds];
    itemIdsCount = [(PDDPCollectionItem *)self itemIdsCount];
    if (itemIdsCount)
    {
      v6 = itemIdsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPCollectionItem *)self itemIdsAtIndex:i];
        [v10 addItemIds:v8];
      }
    }
  }

  if (self->_dateCreated)
  {
    [v10 setDateCreated:?];
  }

  v9 = v10;
  if (self->_dateLastModified)
  {
    [v10 setDateLastModified:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 12) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(NSString *)self->_collectionId copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_itemIds;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v22 + 1) + 8 * i) copyWithZone:{zone, v22}];
        [v6 addItemIds:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v18 = v6[2];
  v6[2] = v17;

  v19 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v20 = v6[3];
  v6[3] = v19;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_type != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 5) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_17;
  }

  collectionId = self->_collectionId;
  if (collectionId | *(equalCopy + 1))
  {
    if (![(NSString *)collectionId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  itemIds = self->_itemIds;
  if (itemIds | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)itemIds isEqual:?])
    {
      goto LABEL_17;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 2))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_17;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 3))
  {
    v11 = [(PDDPDate *)dateLastModified isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_objectId hash]^ v3;
  v5 = [(NSString *)self->_collectionId hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_itemIds hash];
  v7 = [(PDDPDate *)self->_dateCreated hash];
  return v6 ^ v7 ^ [(PDDPDate *)self->_dateLastModified hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[13])
  {
    self->_type = fromCopy[12];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(PDDPCollectionItem *)self setObjectId:?];
  }

  if (*(v5 + 1))
  {
    [(PDDPCollectionItem *)self setCollectionId:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(v5 + 4);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PDDPCollectionItem *)self addItemIds:*(*(&v15 + 1) + 8 * i), v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  dateCreated = self->_dateCreated;
  v12 = *(v5 + 2);
  if (dateCreated)
  {
    if (v12)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPCollectionItem *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v14 = *(v5 + 3);
  if (dateLastModified)
  {
    if (v14)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(PDDPCollectionItem *)self setDateLastModified:?];
  }
}

@end