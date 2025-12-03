@interface ModelKeyServerAPIResultError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ModelKeyServerAPIResultError

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIResultError;
  v3 = [(ModelKeyServerAPIResultError *)&v7 description];
  dictionaryRepresentation = [(ModelKeyServerAPIResultError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  message = self->_message;
  if (message)
  {
    [v3 setObject:message forKey:@"message"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_message)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  message = self->_message;
  if (message)
  {
    [to setMessage:message];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_message copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    message = self->_message;
    if (message | equalCopy[1])
    {
      v6 = [(NSString *)message isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(ModelKeyServerAPIResultError *)self setMessage:?];
  }
}

@end