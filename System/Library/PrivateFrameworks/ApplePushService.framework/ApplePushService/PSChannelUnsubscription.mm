@interface PSChannelUnsubscription
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PSChannelUnsubscription

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelUnsubscription;
  v3 = [(PSChannelUnsubscription *)&v7 description];
  dictionaryRepresentation = [(PSChannelUnsubscription *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  channelId = self->_channelId;
  if (channelId)
  {
    [v3 setObject:channelId forKey:@"channel_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  channelId = self->_channelId;
  if (channelId)
  {
    [to setChannelId:channelId];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_channelId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    channelId = self->_channelId;
    if (channelId | equalCopy[1])
    {
      v6 = [(NSData *)channelId isEqual:?];
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
    [(PSChannelUnsubscription *)self setChannelId:?];
  }
}

@end