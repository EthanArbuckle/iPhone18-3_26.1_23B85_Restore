@interface PSChannelSubscription
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSubscriptionInfo:(id)info;
- (int)subscriptionInfo;
- (unint64_t)hash;
- (void)addAttributes:(id)attributes;
- (void)clearOneofValuesForSubscriptionInfo;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setCheckpoint:(unint64_t)checkpoint;
- (void)setHasMessageReplayCount:(BOOL)count;
- (void)setHasSubscriptionInfo:(BOOL)info;
- (void)setMessageReplayCount:(unint64_t)count;
- (void)writeTo:(id)to;
@end

@implementation PSChannelSubscription

- (void)setCheckpoint:(unint64_t)checkpoint
{
  [(PSChannelSubscription *)self clearOneofValuesForSubscriptionInfo];
  *&self->_has |= 4u;
  self->_subscriptionInfo = 1;
  *&self->_has |= 1u;
  self->_checkpoint = checkpoint;
}

- (void)setMessageReplayCount:(unint64_t)count
{
  [(PSChannelSubscription *)self clearOneofValuesForSubscriptionInfo];
  *&self->_has |= 4u;
  self->_subscriptionInfo = 2;
  *&self->_has |= 2u;
  self->_messageReplayCount = count;
}

- (void)setHasMessageReplayCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)subscriptionInfo
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_subscriptionInfo;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSubscriptionInfo:(BOOL)info
{
  if (info)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsSubscriptionInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([infoCopy isEqualToString:@"checkpoint"])
  {
    v4 = 1;
  }

  else if ([infoCopy isEqualToString:@"message_replay_count"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForSubscriptionInfo
{
  *&self->_has &= ~4u;
  self->_subscriptionInfo = 0;
  *&self->_has &= ~1u;
  self->_checkpoint = 0;
  *&self->_has &= ~2u;
  self->_messageReplayCount = 0;
}

- (void)addAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributes = self->_attributes;
  v8 = attributesCopy;
  if (!attributes)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_attributes;
    self->_attributes = v6;

    attributesCopy = v8;
    attributes = self->_attributes;
  }

  [(NSMutableArray *)attributes addObject:attributesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelSubscription;
  v3 = [(PSChannelSubscription *)&v7 description];
  dictionaryRepresentation = [(PSChannelSubscription *)self dictionaryRepresentation];
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
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_checkpoint];
    [v4 setObject:v7 forKey:@"checkpoint"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v8 = [NSNumber numberWithUnsignedLongLong:self->_messageReplayCount];
  [v4 setObject:v8 forKey:@"message_replay_count"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  subscriptionInfo = self->_subscriptionInfo;
  if (subscriptionInfo >= 3)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_subscriptionInfo];
  }

  else
  {
    v10 = off_1001882A0[subscriptionInfo];
  }

  [v4 setObject:v10 forKey:@"SubscriptionInfo"];

LABEL_13:
  if ([(NSMutableArray *)self->_attributes count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_attributes, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_attributes;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"attributes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    checkpoint = self->_checkpoint;
    PBDataWriterWriteUint64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_attributes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    messageReplayCount = self->_messageReplayCount;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[10] = self->_subscriptionInfo;
    *(toCopy + 44) |= 4u;
  }

  v9 = toCopy;
  if (self->_channelId)
  {
    [toCopy setChannelId:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_checkpoint;
    *(toCopy + 44) |= 1u;
  }

  if ([(PSChannelSubscription *)self attributesCount])
  {
    [v9 clearAttributes];
    attributesCount = [(PSChannelSubscription *)self attributesCount];
    if (attributesCount)
    {
      v6 = attributesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PSChannelSubscription *)self attributesAtIndex:i];
        [v9 addAttributes:v8];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v9 + 2) = self->_messageReplayCount;
    *(v9 + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[10] = self->_subscriptionInfo;
    *(v5 + 44) |= 4u;
  }

  v7 = [(NSData *)self->_channelId copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  if (*&self->_has)
  {
    v6[1] = self->_checkpoint;
    *(v6 + 44) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_attributes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) copyWithZone:{zone, v16}];
        [v6 addAttributes:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if ((*&self->_has & 2) != 0)
  {
    v6[2] = self->_messageReplayCount;
    *(v6 + 44) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_subscriptionInfo != *(equalCopy + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_22;
  }

  channelId = self->_channelId;
  if (channelId | *(equalCopy + 4))
  {
    if (![(NSData *)channelId isEqual:?])
    {
      goto LABEL_22;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_checkpoint != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_22;
  }

  attributes = self->_attributes;
  if (attributes | *(equalCopy + 3))
  {
    if ([(NSMutableArray *)attributes isEqual:?])
    {
      has = self->_has;
      goto LABEL_18;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v10 = (*(equalCopy + 44) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_messageReplayCount != *(equalCopy + 2))
    {
      goto LABEL_22;
    }

    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_subscriptionInfo;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_channelId hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_checkpoint;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSMutableArray *)self->_attributes hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761u * self->_messageReplayCount;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[11] & 4) != 0)
  {
    self->_subscriptionInfo = fromCopy[10];
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(PSChannelSubscription *)self setChannelId:?];
  }

  if (*(v5 + 44))
  {
    self->_checkpoint = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v5 + 3);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PSChannelSubscription *)self addAttributes:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*(v5 + 44) & 2) != 0)
  {
    self->_messageReplayCount = *(v5 + 2);
    *&self->_has |= 2u;
  }
}

@end