@interface PDDPIngestItemStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSyncType:(id)type;
- (int)syncType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPIngestItemStatus;
  v3 = [(PDDPIngestItemStatus *)&v7 description];
  dictionaryRepresentation = [(PDDPIngestItemStatus *)self dictionaryRepresentation];
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
    dictionaryRepresentation = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"status"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    syncType = self->_syncType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_syncType;
    *(toCopy + 28) |= 1u;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 6) = self->_syncType;
    *(v5 + 28) |= 1u;
  }

  v8 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 1))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_syncType != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  status = self->_status;
  if (status | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(PDDPIngestItemStatus *)self setObjectId:?];
    fromCopy = v7;
  }

  if (fromCopy[7])
  {
    self->_syncType = fromCopy[6];
    *&self->_has |= 1u;
  }

  status = self->_status;
  v6 = *(fromCopy + 2);
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