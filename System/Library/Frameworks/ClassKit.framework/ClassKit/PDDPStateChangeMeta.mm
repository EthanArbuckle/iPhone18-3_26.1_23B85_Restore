@interface PDDPStateChangeMeta
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPStateChangeMeta

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangeMeta;
  v3 = [(PDDPStateChangeMeta *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChangeMeta *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  executionId = self->_executionId;
  if (executionId)
  {
    [v3 setObject:executionId forKey:@"execution_id"];
  }

  status = self->_status;
  if (status)
  {
    dictionaryRepresentation = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"status"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v4 setObject:etag forKey:@"etag"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_executionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_executionId)
  {
    [toCopy setExecutionId:?];
    toCopy = v5;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    toCopy = v5;
  }

  if (self->_etag)
  {
    [v5 setEtag:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_executionId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_etag copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((executionId = self->_executionId, !(executionId | equalCopy[2])) || -[NSString isEqual:](executionId, "isEqual:")) && ((status = self->_status, !(status | equalCopy[3])) || -[PDDPStatus isEqual:](status, "isEqual:")))
  {
    etag = self->_etag;
    if (etag | equalCopy[1])
    {
      v8 = [(NSString *)etag isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_executionId hash];
  v4 = [(PDDPStatus *)self->_status hash]^ v3;
  return v4 ^ [(NSString *)self->_etag hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(PDDPStateChangeMeta *)self setExecutionId:?];
    fromCopy = v7;
  }

  status = self->_status;
  v6 = fromCopy[3];
  if (status)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDDPStatus *)status mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDDPStateChangeMeta *)self setStatus:?];
  }

  fromCopy = v7;
LABEL_9:
  if (fromCopy[1])
  {
    [(PDDPStateChangeMeta *)self setEtag:?];
  }

  _objc_release_x1();
}

@end