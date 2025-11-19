@interface PSChannelSubscriptionsResponsePayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addAppChannelSubscriptionResponse:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSChannelSubscriptionsResponsePayload

- (void)addAppChannelSubscriptionResponse:(id)a3
{
  v4 = a3;
  appChannelSubscriptionResponses = self->_appChannelSubscriptionResponses;
  v8 = v4;
  if (!appChannelSubscriptionResponses)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_appChannelSubscriptionResponses;
    self->_appChannelSubscriptionResponses = v6;

    v4 = v8;
    appChannelSubscriptionResponses = self->_appChannelSubscriptionResponses;
  }

  [(NSMutableArray *)appChannelSubscriptionResponses addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSChannelSubscriptionsResponsePayload;
  v3 = [(PSChannelSubscriptionsResponsePayload *)&v7 description];
  v4 = [(PSChannelSubscriptionsResponsePayload *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_appChannelSubscriptionResponses count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_appChannelSubscriptionResponses, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_appChannelSubscriptionResponses;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"app_channel_subscription_response"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_appChannelSubscriptionResponses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(PSChannelSubscriptionsResponsePayload *)self appChannelSubscriptionResponsesCount])
  {
    [v8 clearAppChannelSubscriptionResponses];
    v4 = [(PSChannelSubscriptionsResponsePayload *)self appChannelSubscriptionResponsesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PSChannelSubscriptionsResponsePayload *)self appChannelSubscriptionResponseAtIndex:i];
        [v8 addAppChannelSubscriptionResponse:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_appChannelSubscriptionResponses;
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

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{a3, v13}];
        [v5 addAppChannelSubscriptionResponse:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    appChannelSubscriptionResponses = self->_appChannelSubscriptionResponses;
    if (appChannelSubscriptionResponses | v4[1])
    {
      v6 = [(NSMutableArray *)appChannelSubscriptionResponses isEqual:?];
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
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a3 + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PSChannelSubscriptionsResponsePayload *)self addAppChannelSubscriptionResponse:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end