@interface PSChannelResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChannelStatus:(id)status;
- (int)channelStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasChannelStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation PSChannelResponse

- (int)channelStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_channelStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasChannelStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsChannelStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"CHANNEL_ID_INVALID"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [statusCopy isEqualToString:@"CHECKPOINT_LATEST"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelResponse;
  v3 = [(PSChannelResponse *)&v7 description];
  dictionaryRepresentation = [(PSChannelResponse *)self dictionaryRepresentation];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    channelStatus = self->_channelStatus;
    if (channelStatus)
    {
      if (channelStatus == 1)
      {
        v8 = @"CHECKPOINT_LATEST";
      }

      else
      {
        v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_channelStatus];
      }
    }

    else
    {
      v8 = @"CHANNEL_ID_INVALID";
    }

    [v4 setObject:v8 forKey:@"channel_status"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_channelSubscriptionCheckpoint];
    [v4 setObject:v9 forKey:@"channel_subscription_checkpoint"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    channelStatus = self->_channelStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    channelSubscriptionCheckpoint = self->_channelSubscriptionCheckpoint;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_channelId)
  {
    v6 = toCopy;
    [toCopy setChannelId:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_channelStatus;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_channelSubscriptionCheckpoint;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_channelId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 6) = self->_channelStatus;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = self->_channelSubscriptionCheckpoint;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  channelId = self->_channelId;
  if (channelId | *(equalCopy + 2))
  {
    if (![(NSData *)channelId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_channelStatus != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_channelSubscriptionCheckpoint != *(equalCopy + 1))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_channelId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_channelStatus;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761u * self->_channelSubscriptionCheckpoint;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(PSChannelResponse *)self setChannelId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_channelStatus = *(fromCopy + 6);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_channelSubscriptionCheckpoint = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end