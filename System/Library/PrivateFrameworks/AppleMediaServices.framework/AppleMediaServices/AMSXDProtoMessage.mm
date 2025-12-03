@interface AMSXDProtoMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AMSXDProtoMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = AMSXDProtoMessage;
  v3 = [(AMSXDProtoMessage *)&v7 description];
  dictionaryRepresentation = [(AMSXDProtoMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  messageData = self->_messageData;
  if (messageData)
  {
    [v3 setObject:messageData forKey:@"messageData"];
  }

  logKey = self->_logKey;
  if (logKey)
  {
    [v4 setObject:logKey forKey:@"logKey"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_messageData)
  {
    sub_10021B580();
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
  if (self->_logKey)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setMessageData:self->_messageData];
  if (self->_logKey)
  {
    [toCopy setLogKey:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_messageData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_logKey copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((messageData = self->_messageData, !(messageData | equalCopy[2])) || -[NSData isEqual:](messageData, "isEqual:")))
  {
    logKey = self->_logKey;
    if (logKey | equalCopy[1])
    {
      v7 = [(NSString *)logKey isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(AMSXDProtoMessage *)self setMessageData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(AMSXDProtoMessage *)self setLogKey:?];
    fromCopy = v5;
  }
}

@end