@interface AMSXDProtoMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AMSXDProtoMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = AMSXDProtoMessage;
  v3 = [(AMSXDProtoMessage *)&v7 description];
  v4 = [(AMSXDProtoMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_messageData)
  {
    sub_10021B580();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (self->_logKey)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setMessageData:self->_messageData];
  if (self->_logKey)
  {
    [v4 setLogKey:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_messageData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_logKey copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((messageData = self->_messageData, !(messageData | v4[2])) || -[NSData isEqual:](messageData, "isEqual:")))
  {
    logKey = self->_logKey;
    if (logKey | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(AMSXDProtoMessage *)self setMessageData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(AMSXDProtoMessage *)self setLogKey:?];
    v4 = v5;
  }
}

@end