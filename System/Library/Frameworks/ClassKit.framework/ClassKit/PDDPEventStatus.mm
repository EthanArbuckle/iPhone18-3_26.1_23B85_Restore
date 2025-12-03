@interface PDDPEventStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPEventStatus

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEventStatus;
  v3 = [(PDDPEventStatus *)&v7 description];
  dictionaryRepresentation = [(PDDPEventStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  status = self->_status;
  if (status)
  {
    dictionaryRepresentation = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"status"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_status)
  {
    [toCopy setStatus:?];
    toCopy = v5;
  }

  if (self->_objectId)
  {
    [v5 setObjectId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_objectId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((status = self->_status, !(status | equalCopy[2])) || -[PDDPStatus isEqual:](status, "isEqual:")))
  {
    objectId = self->_objectId;
    if (objectId | equalCopy[1])
    {
      v7 = [(NSString *)objectId isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  status = self->_status;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (status)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    status = [(PDDPStatus *)status mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    status = [(PDDPEventStatus *)self setStatus:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    status = [(PDDPEventStatus *)self setObjectId:?];
    fromCopy = v7;
  }

  _objc_release_x1(status, fromCopy);
}

@end