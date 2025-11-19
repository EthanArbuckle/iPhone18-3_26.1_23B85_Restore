@interface PDDPIngestItemStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSyncType:(id)a3;
- (int)syncType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPIngestItemStatus

- (int)syncType
{
  if (*&self->_has)
  {
    return self->_syncType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSyncType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SYNC_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TIME_INTERVAL_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_ITEM_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RANGE_TYPE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPIngestItemStatus;
  v3 = [(PDDPIngestItemStatus *)&v7 description];
  v4 = [(PDDPIngestItemStatus *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    syncType = self->_syncType;
    if (syncType >= 5)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_syncType];
    }

    else
    {
      v7 = *(&off_100202B48 + syncType);
    }

    [v4 setObject:v7 forKey:@"sync_type"];
  }

  status = self->_status;
  if (status)
  {
    v9 = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"status"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    syncType = self->_syncType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_syncType;
    *(v4 + 28) |= 1u;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 6) = self->_syncType;
    *(v5 + 28) |= 1u;
  }

  v8 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 1))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_syncType != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  status = self->_status;
  if (status | *(v4 + 2))
  {
    v8 = [(PDDPStatus *)status isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_syncType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ [(PDDPStatus *)self->_status hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 1))
  {
    [(PDDPIngestItemStatus *)self setObjectId:?];
    v4 = v7;
  }

  if (v4[7])
  {
    self->_syncType = v4[6];
    *&self->_has |= 1u;
  }

  status = self->_status;
  v6 = *(v4 + 2);
  if (status)
  {
    if (v6)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPIngestItemStatus *)self setStatus:?];
  }

  _objc_release_x1();
}

@end