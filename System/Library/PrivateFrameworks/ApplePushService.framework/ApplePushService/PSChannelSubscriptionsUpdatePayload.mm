@interface PSChannelSubscriptionsUpdatePayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addAppChannelUpdates:(id)updates;
- (void)addSubscriptionUpdates:(id)updates;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PSChannelSubscriptionsUpdatePayload

- (void)addAppChannelUpdates:(id)updates
{
  updatesCopy = updates;
  appChannelUpdates = self->_appChannelUpdates;
  v8 = updatesCopy;
  if (!appChannelUpdates)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_appChannelUpdates;
    self->_appChannelUpdates = v6;

    updatesCopy = v8;
    appChannelUpdates = self->_appChannelUpdates;
  }

  [(NSMutableArray *)appChannelUpdates addObject:updatesCopy];
}

- (void)addSubscriptionUpdates:(id)updates
{
  updatesCopy = updates;
  subscriptionUpdates = self->_subscriptionUpdates;
  v8 = updatesCopy;
  if (!subscriptionUpdates)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_subscriptionUpdates;
    self->_subscriptionUpdates = v6;

    updatesCopy = v8;
    subscriptionUpdates = self->_subscriptionUpdates;
  }

  [(NSMutableArray *)subscriptionUpdates addObject:updatesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelSubscriptionsUpdatePayload;
  v3 = [(PSChannelSubscriptionsUpdatePayload *)&v7 description];
  dictionaryRepresentation = [(PSChannelSubscriptionsUpdatePayload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_appChannelUpdates count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_appChannelUpdates, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_appChannelUpdates;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"app_channel_updates"];
  }

  if ([(NSMutableArray *)self->_subscriptionUpdates count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_subscriptionUpdates, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_subscriptionUpdates;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"subscription_updates"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_appChannelUpdates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_subscriptionUpdates;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PSChannelSubscriptionsUpdatePayload *)self appChannelUpdatesCount])
  {
    [toCopy clearAppChannelUpdates];
    appChannelUpdatesCount = [(PSChannelSubscriptionsUpdatePayload *)self appChannelUpdatesCount];
    if (appChannelUpdatesCount)
    {
      v5 = appChannelUpdatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PSChannelSubscriptionsUpdatePayload *)self appChannelUpdatesAtIndex:i];
        [toCopy addAppChannelUpdates:v7];
      }
    }
  }

  if ([(PSChannelSubscriptionsUpdatePayload *)self subscriptionUpdatesCount])
  {
    [toCopy clearSubscriptionUpdates];
    subscriptionUpdatesCount = [(PSChannelSubscriptionsUpdatePayload *)self subscriptionUpdatesCount];
    if (subscriptionUpdatesCount)
    {
      v9 = subscriptionUpdatesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PSChannelSubscriptionsUpdatePayload *)self subscriptionUpdatesAtIndex:j];
        [toCopy addSubscriptionUpdates:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_appChannelUpdates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addAppChannelUpdates:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_subscriptionUpdates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addSubscriptionUpdates:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((appChannelUpdates = self->_appChannelUpdates, !(appChannelUpdates | equalCopy[1])) || -[NSMutableArray isEqual:](appChannelUpdates, "isEqual:")))
  {
    subscriptionUpdates = self->_subscriptionUpdates;
    if (subscriptionUpdates | equalCopy[2])
    {
      v7 = [(NSMutableArray *)subscriptionUpdates isEqual:?];
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
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = fromCopy[1];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PSChannelSubscriptionsUpdatePayload *)self addAppChannelUpdates:*(*(&v19 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = fromCopy[2];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PSChannelSubscriptionsUpdatePayload *)self addSubscriptionUpdates:*(*(&v15 + 1) + 8 * v14), v15];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end