@interface PSChannelResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChannelStatus:(id)a3;
- (int)channelStatus;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasChannelStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasChannelStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsChannelStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CHANNEL_ID_INVALID"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"CHECKPOINT_LATEST"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelResponse;
  v3 = [(PSChannelResponse *)&v7 description];
  v4 = [(PSChannelResponse *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    channelStatus = self->_channelStatus;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    channelSubscriptionCheckpoint = self->_channelSubscriptionCheckpoint;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_channelId)
  {
    v6 = v4;
    [v4 setChannelId:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_channelStatus;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_channelSubscriptionCheckpoint;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_channelId copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  channelId = self->_channelId;
  if (channelId | *(v4 + 2))
  {
    if (![(NSData *)channelId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_channelStatus != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_channelSubscriptionCheckpoint != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(PSChannelResponse *)self setChannelId:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_channelStatus = *(v4 + 6);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_channelSubscriptionCheckpoint = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end