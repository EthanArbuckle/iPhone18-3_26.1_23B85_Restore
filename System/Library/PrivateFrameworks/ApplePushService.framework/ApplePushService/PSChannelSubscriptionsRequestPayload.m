@interface PSChannelSubscriptionsRequestPayload
+ (id)createPayloadForSubscriptionChannels:(id)a3 unsubscriptionChannels:(id)a4 subscriptionType:(int)a5;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSubscriptionsType:(id)a3;
- (int)subscriptionsType;
- (int)version;
- (unint64_t)hash;
- (void)addAppChannelSubscriptions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSubscriptionsType:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSChannelSubscriptionsRequestPayload

+ (id)createPayloadForSubscriptionChannels:(id)a3 unsubscriptionChannels:(id)a4 subscriptionType:(int)a5
{
  v6 = a3;
  v63 = a4;
  v66 = +[NSMutableDictionary dictionary];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v80;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v80 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v79 + 1) + 8 * i);
        v12 = objc_alloc_init(PSChannelSubscription);
        v13 = [NSData alloc];
        v14 = [v11 channelID];
        v15 = [v13 initWithBase64EncodedString:v14 options:0];

        [(PSChannelSubscription *)v12 setChannelId:v15];
        v16 = [v11 channelTopic];
        v17 = [&off_100197B88 objectForKeyedSubscript:v16];

        if ([v11 checkpoint])
        {
          v18 = 1;
        }

        else
        {
          v18 = v17 == 0;
        }

        if (v18)
        {
          -[PSChannelSubscription setCheckpoint:](v12, "setCheckpoint:", [v11 checkpoint]);
        }

        else
        {
          -[PSChannelSubscription setMessageReplayCount:](v12, "setMessageReplayCount:", [v17 unsignedLongLongValue]);
        }

        v19 = [v11 channelTopic];
        v20 = [v66 objectForKeyedSubscript:v19];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [obj count]);
        }

        v23 = v22;

        [v23 addObject:v12];
        v24 = [v11 channelTopic];
        [v66 setObject:v23 forKeyedSubscript:v24];
      }

      v8 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
    }

    while (v8);
  }

  v25 = +[NSMutableDictionary dictionary];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v64 = v63;
  v26 = [v64 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v76;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v76 != v28)
        {
          objc_enumerationMutation(v64);
        }

        v30 = *(*(&v75 + 1) + 8 * j);
        v31 = objc_alloc_init(PSChannelUnsubscription);
        v32 = [NSData alloc];
        v33 = [v30 channelID];
        v34 = [v32 initWithBase64EncodedString:v33 options:0];

        [(PSChannelUnsubscription *)v31 setChannelId:v34];
        v35 = [v30 channelTopic];
        v36 = [v25 objectForKeyedSubscript:v35];
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v64 count]);
        }

        v39 = v38;

        [v39 addObject:v31];
        v40 = [v30 channelTopic];
        [v25 setObject:v39 forKeyedSubscript:v40];
      }

      v27 = [v64 countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v27);
  }

  v41 = +[NSMutableArray array];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v62 = [v66 allKeys];
  v42 = [v62 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v72;
    do
    {
      for (k = 0; k != v43; k = k + 1)
      {
        if (*v72 != v44)
        {
          objc_enumerationMutation(v62);
        }

        v46 = *(*(&v71 + 1) + 8 * k);
        v47 = [v66 objectForKeyedSubscript:v46];
        v48 = [v25 objectForKeyedSubscript:v46];
        [v25 removeObjectForKey:v46];
        v49 = objc_alloc_init(PSAppChannelSubscriptions);
        [(PSAppChannelSubscriptions *)v49 setAppId:v46];
        [(PSAppChannelSubscriptions *)v49 setSubscriptionChannels:v47];
        [(PSAppChannelSubscriptions *)v49 setUnsubscriptionChannels:v48];
        [v41 addObject:v49];
      }

      v43 = [v62 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v43);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v50 = [v25 allKeys];
  v51 = [v50 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v68;
    do
    {
      for (m = 0; m != v52; m = m + 1)
      {
        if (*v68 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v67 + 1) + 8 * m);
        v56 = [v25 objectForKeyedSubscript:v55];
        v57 = objc_alloc_init(PSAppChannelSubscriptions);
        [(PSAppChannelSubscriptions *)v57 setAppId:v55];
        [(PSAppChannelSubscriptions *)v57 setUnsubscriptionChannels:v56];
        [v41 addObject:v57];
      }

      v52 = [v50 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v52);
  }

  v58 = objc_alloc_init(PSChannelSubscriptionsRequestPayload);
  [(PSChannelSubscriptionsRequestPayload *)v58 setSubscriptionsType:a5];
  v59 = [NSMutableArray arrayWithArray:v41];
  [(PSChannelSubscriptionsRequestPayload *)v58 setAppChannelSubscriptions:v59];

  [(PSChannelSubscriptionsRequestPayload *)v58 setVersion:1];

  return v58;
}

- (int)version
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_version;
  }

  else
  {
    return 1;
  }
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAppChannelSubscriptions:(id)a3
{
  v4 = a3;
  appChannelSubscriptions = self->_appChannelSubscriptions;
  v8 = v4;
  if (!appChannelSubscriptions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_appChannelSubscriptions;
    self->_appChannelSubscriptions = v6;

    v4 = v8;
    appChannelSubscriptions = self->_appChannelSubscriptions;
  }

  [(NSMutableArray *)appChannelSubscriptions addObject:v4];
}

- (int)subscriptionsType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_subscriptionsType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSubscriptionsType:(BOOL)a3
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

- (int)StringAsSubscriptionsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DELTA_SUBSCRIPTION"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"FULL_SUBSCRIPTION"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelSubscriptionsRequestPayload;
  v3 = [(PSChannelSubscriptionsRequestPayload *)&v7 description];
  v4 = [(PSChannelSubscriptionsRequestPayload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    if (self->_version == 1)
    {
      v4 = @"V_1";
    }

    else
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", self->_version];
    }

    [v3 setObject:v4 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_appChannelSubscriptions count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_appChannelSubscriptions, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_appChannelSubscriptions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"app_channel_subscriptions"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    subscriptionsType = self->_subscriptionsType;
    if (subscriptionsType)
    {
      if (subscriptionsType == 1)
      {
        v14 = @"FULL_SUBSCRIPTION";
      }

      else
      {
        v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_subscriptionsType];
      }
    }

    else
    {
      v14 = @"DELTA_SUBSCRIPTION";
    }

    [v3 setObject:v14 forKey:@"subscriptions_type"];

    has = self->_has;
  }

  if (has)
  {
    v15 = [NSNumber numberWithUnsignedLongLong:self->_sequenceNumber];
    [v3 setObject:v15 forKey:@"sequence_number"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_appChannelSubscriptions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    subscriptionsType = self->_subscriptionsType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[7] = self->_version;
    *(v4 + 32) |= 4u;
  }

  v10 = v4;
  if ([(PSChannelSubscriptionsRequestPayload *)self appChannelSubscriptionsCount])
  {
    [v10 clearAppChannelSubscriptions];
    v5 = [(PSChannelSubscriptionsRequestPayload *)self appChannelSubscriptionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PSChannelSubscriptionsRequestPayload *)self appChannelSubscriptionsAtIndex:i];
        [v10 addAppChannelSubscriptions:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 6) = self->_subscriptionsType;
    *(v10 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 1) = self->_sequenceNumber;
    *(v10 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[7] = self->_version;
    *(v5 + 32) |= 4u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_appChannelSubscriptions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{a3, v15}];
        [v6 addAppChannelSubscriptions:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 6) = self->_subscriptionsType;
    *(v6 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 1) = self->_sequenceNumber;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_version != *(v4 + 7))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  appChannelSubscriptions = self->_appChannelSubscriptions;
  if (appChannelSubscriptions | *(v4 + 2))
  {
    if (![(NSMutableArray *)appChannelSubscriptions isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_subscriptionsType != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  v8 = (*(v4 + 32) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_sequenceNumber != *(v4 + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_appChannelSubscriptions hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_subscriptionsType;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761u * self->_sequenceNumber;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 32) & 4) != 0)
  {
    self->_version = *(v4 + 7);
    *&self->_has |= 4u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PSChannelSubscriptionsRequestPayload *)self addAppChannelSubscriptions:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 32);
  if ((v11 & 2) != 0)
  {
    self->_subscriptionsType = *(v5 + 6);
    *&self->_has |= 2u;
    v11 = *(v5 + 32);
  }

  if (v11)
  {
    self->_sequenceNumber = *(v5 + 1);
    *&self->_has |= 1u;
  }
}

@end