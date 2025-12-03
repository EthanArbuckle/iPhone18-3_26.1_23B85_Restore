@interface PDDPIngestItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)action;
- (int)StringAsSyncType:(id)type;
- (int)action;
- (int)syncType;
- (unint64_t)hash;
- (void)addHandoutAuthorizedMetaInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSyncType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PDDPIngestItem

- (int)action
{
  if (*&self->_has)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"UPDATE"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"DELETE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)syncType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_syncType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSyncType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsSyncType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_SYNC_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"TIME_INTERVAL_TYPE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ACTIVITY_TYPE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ACTIVITY_ITEM_TYPE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RANGE_TYPE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addHandoutAuthorizedMetaInfo:(id)info
{
  infoCopy = info;
  handoutAuthorizedMetaInfos = self->_handoutAuthorizedMetaInfos;
  v8 = infoCopy;
  if (!handoutAuthorizedMetaInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_handoutAuthorizedMetaInfos;
    self->_handoutAuthorizedMetaInfos = v6;

    infoCopy = v8;
    handoutAuthorizedMetaInfos = self->_handoutAuthorizedMetaInfos;
  }

  [(NSMutableArray *)handoutAuthorizedMetaInfos addObject:infoCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPIngestItem;
  v3 = [(PDDPIngestItem *)&v7 description];
  dictionaryRepresentation = [(PDDPIngestItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    action = self->_action;
    if (action >= 3)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_action];
    }

    else
    {
      v5 = off_100203CA8[action];
    }

    [v3 setObject:v5 forKey:@"action"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  progressEntity = self->_progressEntity;
  if (progressEntity)
  {
    dictionaryRepresentation = [(PDDPProgressEntity *)progressEntity dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"progress_entity"];
  }

  if ((*&self->_has & 2) != 0)
  {
    syncType = self->_syncType;
    if (syncType >= 5)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_syncType];
    }

    else
    {
      v10 = off_100203CC0[syncType];
    }

    [v3 setObject:v10 forKey:@"sync_type"];
  }

  if ([(NSMutableArray *)self->_handoutAuthorizedMetaInfos count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_handoutAuthorizedMetaInfos, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_handoutAuthorizedMetaInfos;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"handout_authorized_meta_info"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    action = self->_action;
    PBDataWriterWriteInt32Field();
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_progressEntity)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    syncType = self->_syncType;
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_handoutAuthorizedMetaInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_action;
    *(toCopy + 44) |= 1u;
  }

  v9 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v9;
  }

  if (self->_progressEntity)
  {
    [v9 setProgressEntity:?];
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[10] = self->_syncType;
    *(toCopy + 44) |= 2u;
  }

  if ([(PDDPIngestItem *)self handoutAuthorizedMetaInfosCount])
  {
    [v9 clearHandoutAuthorizedMetaInfos];
    handoutAuthorizedMetaInfosCount = [(PDDPIngestItem *)self handoutAuthorizedMetaInfosCount];
    if (handoutAuthorizedMetaInfosCount)
    {
      v6 = handoutAuthorizedMetaInfosCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPIngestItem *)self handoutAuthorizedMetaInfoAtIndex:i];
        [v9 addHandoutAuthorizedMetaInfo:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[2] = self->_action;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_objectId copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(PDDPProgressEntity *)self->_progressEntity copyWithZone:zone];
  v10 = v6[4];
  v6[4] = v9;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 10) = self->_syncType;
    *(v6 + 44) |= 2u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_handoutAuthorizedMetaInfos;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v6 addHandoutAuthorizedMetaInfo:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_action != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 3) && ![(NSString *)objectId isEqual:?])
  {
    goto LABEL_18;
  }

  progressEntity = self->_progressEntity;
  if (progressEntity | *(equalCopy + 4))
  {
    if (![(PDDPProgressEntity *)progressEntity isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = *(equalCopy + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_syncType != *(equalCopy + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_18;
  }

  handoutAuthorizedMetaInfos = self->_handoutAuthorizedMetaInfos;
  if (handoutAuthorizedMetaInfos | *(equalCopy + 2))
  {
    v10 = [(NSMutableArray *)handoutAuthorizedMetaInfos isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_19:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_action;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_objectId hash];
  v5 = [(PDDPProgressEntity *)self->_progressEntity hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_syncType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_handoutAuthorizedMetaInfos hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[11])
  {
    self->_action = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PDDPIngestItem *)self setObjectId:?];
  }

  progressEntity = self->_progressEntity;
  v7 = *(v5 + 4);
  if (progressEntity)
  {
    if (v7)
    {
      [(PDDPProgressEntity *)progressEntity mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPIngestItem *)self setProgressEntity:?];
  }

  if ((*(v5 + 44) & 2) != 0)
  {
    self->_syncType = *(v5 + 10);
    *&self->_has |= 2u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(PDDPIngestItem *)self addHandoutAuthorizedMetaInfo:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end