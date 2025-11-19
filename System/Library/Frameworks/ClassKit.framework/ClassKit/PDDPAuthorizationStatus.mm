@interface PDDPAuthorizationStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addClassIds:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPAuthorizationStatus

- (void)addClassIds:(id)a3
{
  v4 = a3;
  classIds = self->_classIds;
  v8 = v4;
  if (!classIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_classIds;
    self->_classIds = v6;

    v4 = v8;
    classIds = self->_classIds;
  }

  [(NSMutableArray *)classIds addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAuthorizationStatus;
  v3 = [(PDDPAuthorizationStatus *)&v7 description];
  v4 = [(PDDPAuthorizationStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v6 = [NSNumber numberWithBool:self->_isAuthorizable];
    [v4 setObject:v6 forKey:@"is_authorizable"];
  }

  classIds = self->_classIds;
  if (classIds)
  {
    [v4 setObject:classIds forKey:@"class_ids"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    isAuthorizable = self->_isAuthorizable;
    PBDataWriterWriteBOOLField();
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_parentObjectId)
  {
    [v4 setParentObjectId:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    v4[24] = self->_isAuthorizable;
    v4[28] |= 1u;
  }

  if ([(PDDPAuthorizationStatus *)self classIdsCount])
  {
    [v9 clearClassIds];
    v5 = [(PDDPAuthorizationStatus *)self classIdsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPAuthorizationStatus *)self classIdsAtIndex:i];
        [v9 addClassIds:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isAuthorizable;
    *(v5 + 28) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_classIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{a3, v15}];
        [v5 addClassIds:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId | *(v4 + 2))
  {
    if (![(NSString *)parentObjectId isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
  if (!self->_isAuthorizable)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  classIds = self->_classIds;
  if (classIds | *(v4 + 1))
  {
    v8 = [(NSMutableArray *)classIds isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_parentObjectId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isAuthorizable;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ [(NSMutableArray *)self->_classIds hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    [(PDDPAuthorizationStatus *)self setParentObjectId:?];
  }

  if (*(v4 + 28))
  {
    self->_isAuthorizable = *(v4 + 24);
    *&self->_has |= 1u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPAuthorizationStatus *)self addClassIds:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end