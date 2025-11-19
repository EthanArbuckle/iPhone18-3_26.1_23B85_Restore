@interface PDDPEventStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEventStatus

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEventStatus;
  v3 = [(PDDPEventStatus *)&v7 description];
  v4 = [(PDDPEventStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  status = self->_status;
  if (status)
  {
    v5 = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"status"];
  }

  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_status)
  {
    [v4 setStatus:?];
    v4 = v5;
  }

  if (self->_objectId)
  {
    [v5 setObjectId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_objectId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((status = self->_status, !(status | v4[2])) || -[PDDPStatus isEqual:](status, "isEqual:")))
  {
    objectId = self->_objectId;
    if (objectId | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  status = self->_status;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    status = [(PDDPEventStatus *)self setObjectId:?];
    v4 = v7;
  }

  _objc_release_x1(status, v4);
}

@end