@interface PSChannelUnsubscription
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSChannelUnsubscription

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelUnsubscription;
  v3 = [(PSChannelUnsubscription *)&v7 description];
  v4 = [(PSChannelUnsubscription *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  channelId = self->_channelId;
  if (channelId)
  {
    [a3 setChannelId:channelId];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_channelId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    channelId = self->_channelId;
    if (channelId | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(PSChannelUnsubscription *)self setChannelId:?];
  }
}

@end