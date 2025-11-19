@interface PDDPStateChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStateChangePayloads:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPStateChange

- (void)addStateChangePayloads:(id)a3
{
  v4 = a3;
  stateChangePayloads = self->_stateChangePayloads;
  v8 = v4;
  if (!stateChangePayloads)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stateChangePayloads;
    self->_stateChangePayloads = v6;

    v4 = v8;
    stateChangePayloads = self->_stateChangePayloads;
  }

  [(NSMutableArray *)stateChangePayloads addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChange;
  v3 = [(PDDPStateChange *)&v7 description];
  v4 = [(PDDPStateChange *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v11 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v13 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"date_last_modified"];
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

          v20 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"state_change_payloads"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_objectId)
  {
    [v8 setObjectId:?];
  }

  if (self->_targetObjectId)
  {
    [v8 setTargetObjectId:?];
  }

  if (self->_targetEntityName)
  {
    [v8 setTargetEntityName:?];
  }

  if (self->_targetClassId)
  {
    [v8 setTargetClassId:?];
  }

  if (self->_targetOwnerPersonId)
  {
    [v8 setTargetOwnerPersonId:?];
  }

  if (self->_dateCreated)
  {
    [v8 setDateCreated:?];
  }

  if (self->_dateLastModified)
  {
    [v8 setDateLastModified:?];
  }

  if ([(PDDPStateChange *)self stateChangePayloadsCount])
  {
    [v8 clearStateChangePayloads];
    v4 = [(PDDPStateChange *)self stateChangePayloadsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPStateChange *)self stateChangePayloadsAtIndex:i];
        [v8 addStateChangePayloads:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_targetObjectId copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_targetEntityName copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_targetClassId copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_targetOwnerPersonId copyWithZone:a3];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
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

        v25 = [*(*(&v27 + 1) + 8 * v24) copyWithZone:{a3, v27}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((objectId = self->_objectId, !(objectId | v4[3])) || -[NSString isEqual:](objectId, "isEqual:")) && ((targetObjectId = self->_targetObjectId, !(targetObjectId | v4[7])) || -[NSString isEqual:](targetObjectId, "isEqual:")) && ((targetEntityName = self->_targetEntityName, !(targetEntityName | v4[6])) || -[NSString isEqual:](targetEntityName, "isEqual:")) && ((targetClassId = self->_targetClassId, !(targetClassId | v4[5])) || -[NSString isEqual:](targetClassId, "isEqual:")) && ((targetOwnerPersonId = self->_targetOwnerPersonId, !(targetOwnerPersonId | v4[8])) || -[NSString isEqual:](targetOwnerPersonId, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | v4[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | v4[2])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")))
  {
    stateChangePayloads = self->_stateChangePayloads;
    if (stateChangePayloads | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    [(PDDPStateChange *)self setObjectId:?];
  }

  if (*(v4 + 7))
  {
    [(PDDPStateChange *)self setTargetObjectId:?];
  }

  if (*(v4 + 6))
  {
    [(PDDPStateChange *)self setTargetEntityName:?];
  }

  if (*(v4 + 5))
  {
    [(PDDPStateChange *)self setTargetClassId:?];
  }

  if (*(v4 + 8))
  {
    [(PDDPStateChange *)self setTargetOwnerPersonId:?];
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 1);
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
  v8 = *(v4 + 2);
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
  v9 = *(v4 + 4);
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