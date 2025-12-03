@interface PSChannelSubscriptionsPushMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PSChannelSubscriptionsPushMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelSubscriptionsPushMetadata;
  v3 = [(PSChannelSubscriptionsPushMetadata *)&v7 description];
  dictionaryRepresentation = [(PSChannelSubscriptionsPushMetadata *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_checkpoint];
    [v4 setObject:v6 forKey:@"checkpoint"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    checkpoint = self->_checkpoint;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_channelId)
  {
    v5 = toCopy;
    [toCopy setChannelId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_checkpoint;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_channelId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_checkpoint;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  channelId = self->_channelId;
  if (channelId | *(equalCopy + 2))
  {
    if (![(NSData *)channelId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_checkpoint == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_channelId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_checkpoint;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    v5 = fromCopy;
    [(PSChannelSubscriptionsPushMetadata *)self setChannelId:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    self->_checkpoint = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end