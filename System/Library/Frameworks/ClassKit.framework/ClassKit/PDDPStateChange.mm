@interface PDDPStateChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStateChangePayloads:(id)payloads;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPStateChange

- (void)addStateChangePayloads:(id)payloads
{
  payloadsCopy = payloads;
  stateChangePayloads = self->_stateChangePayloads;
  v8 = payloadsCopy;
  if (!stateChangePayloads)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stateChangePayloads;
    self->_stateChangePayloads = v6;

    payloadsCopy = v8;
    stateChangePayloads = self->_stateChangePayloads;
  }

  [(NSMutableArray *)stateChangePayloads addObject:payloadsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChange;
  v3 = [(PDDPStateChange *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChange *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  targetObjectId = self->_targetObjectId;
  if (targetObjectId)
  {
    [v4 setObject:targetObjectId forKey:@"target_object_id"];
  }

  targetEntityName = self->_targetEntityName;
  if (targetEntityName)
  {
    [v4 setObject:targetEntityName forKey:@"target_entity_name"];
  }

  targetClassId = self->_targetClassId;
  if (targetClassId)
  {
    [v4 setObject:targetClassId forKey:@"target_class_id"];
  }

  targetOwnerPersonId = self->_targetOwnerPersonId;
  if (targetOwnerPersonId)
  {
    [v4 setObject:targetOwnerPersonId forKey:@"target_owner_person_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  if ([(NSMutableArray *)self->_stateChangePayloads count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_stateChangePayloads, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_stateChangePayloads;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation3 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation3];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"state_change_payloads"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_targetObjectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_targetEntityName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_targetClassId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_targetOwnerPersonId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_stateChangePayloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
  }

  if (self->_targetObjectId)
  {
    [toCopy setTargetObjectId:?];
  }

  if (self->_targetEntityName)
  {
    [toCopy setTargetEntityName:?];
  }

  if (self->_targetClassId)
  {
    [toCopy setTargetClassId:?];
  }

  if (self->_targetOwnerPersonId)
  {
    [toCopy setTargetOwnerPersonId:?];
  }

  if (self->_dateCreated)
  {
    [toCopy setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [toCopy setDateLastModified:?];
  }

  if ([(PDDPStateChange *)self stateChangePayloadsCount])
  {
    [toCopy clearStateChangePayloads];
    stateChangePayloadsCount = [(PDDPStateChange *)self stateChangePayloadsCount];
    if (stateChangePayloadsCount)
    {
      v5 = stateChangePayloadsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPStateChange *)self stateChangePayloadsAtIndex:i];
        [toCopy addStateChangePayloads:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_targetObjectId copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_targetEntityName copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_targetClassId copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_targetOwnerPersonId copyWithZone:zone];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v19 = v5[2];
  v5[2] = v18;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_stateChangePayloads;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v27 + 1) + 8 * v24) copyWithZone:{zone, v27}];
        [v5 addStateChangePayloads:v25];

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((objectId = self->_objectId, !(objectId | equalCopy[3])) || -[NSString isEqual:](objectId, "isEqual:")) && ((targetObjectId = self->_targetObjectId, !(targetObjectId | equalCopy[7])) || -[NSString isEqual:](targetObjectId, "isEqual:")) && ((targetEntityName = self->_targetEntityName, !(targetEntityName | equalCopy[6])) || -[NSString isEqual:](targetEntityName, "isEqual:")) && ((targetClassId = self->_targetClassId, !(targetClassId | equalCopy[5])) || -[NSString isEqual:](targetClassId, "isEqual:")) && ((targetOwnerPersonId = self->_targetOwnerPersonId, !(targetOwnerPersonId | equalCopy[8])) || -[NSString isEqual:](targetOwnerPersonId, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | equalCopy[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | equalCopy[2])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")))
  {
    stateChangePayloads = self->_stateChangePayloads;
    if (stateChangePayloads | equalCopy[4])
    {
      v13 = [(NSMutableArray *)stateChangePayloads isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(NSString *)self->_targetObjectId hash]^ v3;
  v5 = [(NSString *)self->_targetEntityName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_targetClassId hash];
  v7 = [(NSString *)self->_targetOwnerPersonId hash];
  v8 = v7 ^ [(PDDPDate *)self->_dateCreated hash];
  v9 = v6 ^ v8 ^ [(PDDPDate *)self->_dateLastModified hash];
  return v9 ^ [(NSMutableArray *)self->_stateChangePayloads hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(PDDPStateChange *)self setObjectId:?];
  }

  if (*(fromCopy + 7))
  {
    [(PDDPStateChange *)self setTargetObjectId:?];
  }

  if (*(fromCopy + 6))
  {
    [(PDDPStateChange *)self setTargetEntityName:?];
  }

  if (*(fromCopy + 5))
  {
    [(PDDPStateChange *)self setTargetClassId:?];
  }

  if (*(fromCopy + 8))
  {
    [(PDDPStateChange *)self setTargetOwnerPersonId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 1);
  if (dateCreated)
  {
    if (v6)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPStateChange *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 2);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPStateChange *)self setDateLastModified:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(fromCopy + 4);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(PDDPStateChange *)self addStateChangePayloads:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end