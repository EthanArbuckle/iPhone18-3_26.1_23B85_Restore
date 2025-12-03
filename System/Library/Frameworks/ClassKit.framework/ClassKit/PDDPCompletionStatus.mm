@interface PDDPCompletionStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)addClassIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPCompletionStatus

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"NOT_COMPLETED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"MARKED_FOR_COMPLETION"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"MARKED_FOR_INCOMPLETION"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"RETURNED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addClassIds:(id)ids
{
  idsCopy = ids;
  classIds = self->_classIds;
  v8 = idsCopy;
  if (!classIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_classIds;
    self->_classIds = v6;

    idsCopy = v8;
    classIds = self->_classIds;
  }

  [(NSMutableArray *)classIds addObject:idsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPCompletionStatus;
  v3 = [(PDDPCompletionStatus *)&v7 description];
  dictionaryRepresentation = [(PDDPCompletionStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v3 setObject:parentObjectId forKey:@"parent_object_id"];
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status >= 6)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v7 = off_100203C50[status];
    }

    [v4 setObject:v7 forKey:@"status"];
  }

  dateLastCompleted = self->_dateLastCompleted;
  if (dateLastCompleted)
  {
    dictionaryRepresentation = [(PDDPDate *)dateLastCompleted dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_last_completed"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  personId = self->_personId;
  if (personId)
  {
    [v4 setObject:personId forKey:@"person_id"];
  }

  classIds = self->_classIds;
  if (classIds)
  {
    [v4 setObject:classIds forKey:@"class_ids"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  if (self->_dateLastCompleted)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_personId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_classIds;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_parentObjectId)
  {
    [toCopy setParentObjectId:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 12) = self->_status;
    *(toCopy + 52) |= 1u;
  }

  if (self->_dateLastCompleted)
  {
    [v9 setDateLastCompleted:?];
  }

  if (self->_personId)
  {
    [v9 setPersonId:?];
  }

  if (self->_dateLastModified)
  {
    [v9 setDateLastModified:?];
  }

  if ([(PDDPCompletionStatus *)self classIdsCount])
  {
    [v9 clearClassIds];
    classIdsCount = [(PDDPCompletionStatus *)self classIdsCount];
    if (classIdsCount)
    {
      v6 = classIdsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPCompletionStatus *)self classIdsAtIndex:i];
        [v9 addClassIds:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_parentObjectId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  if (*&self->_has)
  {
    *(v5 + 12) = self->_status;
    *(v5 + 52) |= 1u;
  }

  v8 = [(PDDPDate *)self->_dateLastCompleted copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_personId copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_classIds;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{zone, v21}];
        [v5 addClassIds:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(equalCopy + 4))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_status != *(equalCopy + 12))
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

  dateLastCompleted = self->_dateLastCompleted;
  if (dateLastCompleted | *(equalCopy + 2) && ![(PDDPDate *)dateLastCompleted isEqual:?])
  {
    goto LABEL_17;
  }

  personId = self->_personId;
  if (personId | *(equalCopy + 5))
  {
    if (![(NSString *)personId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 3))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_17;
    }
  }

  classIds = self->_classIds;
  if (classIds | *(equalCopy + 1))
  {
    v11 = [(NSMutableArray *)classIds isEqual:?];
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
  v3 = [(NSString *)self->_parentObjectId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_status;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(PDDPDate *)self->_dateLastCompleted hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_personId hash];
  v8 = [(PDDPDate *)self->_dateLastModified hash];
  return v7 ^ v8 ^ [(NSMutableArray *)self->_classIds hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(PDDPCompletionStatus *)self setParentObjectId:?];
  }

  if (*(fromCopy + 52))
  {
    self->_status = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  dateLastCompleted = self->_dateLastCompleted;
  v6 = *(fromCopy + 2);
  if (dateLastCompleted)
  {
    if (v6)
    {
      [(PDDPDate *)dateLastCompleted mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPCompletionStatus *)self setDateLastCompleted:?];
  }

  if (*(fromCopy + 5))
  {
    [(PDDPCompletionStatus *)self setPersonId:?];
  }

  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 3);
  if (dateLastModified)
  {
    if (v8)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPCompletionStatus *)self setDateLastModified:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(fromCopy + 1);
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

        [(PDDPCompletionStatus *)self addClassIds:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end