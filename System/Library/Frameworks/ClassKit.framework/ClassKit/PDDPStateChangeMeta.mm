@interface PDDPStateChangeMeta
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPStateChangeMeta

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangeMeta;
  v3 = [(PDDPStateChangeMeta *)&v7 description];
  v4 = [(PDDPStateChangeMeta *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v7 = [(PDDPStatus *)status dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"status"];
  }

  etag = self->_etag;
  if (etag)
  {
    [v4 setObject:etag forKey:@"etag"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_executionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_executionId)
  {
    [v4 setExecutionId:?];
    v4 = v5;
  }

  if (self->_status)
  {
    [v5 setStatus:?];
    v4 = v5;
  }

  if (self->_etag)
  {
    [v5 setEtag:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_executionId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_etag copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((executionId = self->_executionId, !(executionId | v4[2])) || -[NSString isEqual:](executionId, "isEqual:")) && ((status = self->_status, !(status | v4[3])) || -[PDDPStatus isEqual:](status, "isEqual:")))
  {
    etag = self->_etag;
    if (etag | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(PDDPStateChangeMeta *)self setExecutionId:?];
    v4 = v7;
  }

  status = self->_status;
  v6 = v4[3];
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

  v4 = v7;
LABEL_9:
  if (v4[1])
  {
    [(PDDPStateChangeMeta *)self setEtag:?];
  }

  _objc_release_x1();
}

@end