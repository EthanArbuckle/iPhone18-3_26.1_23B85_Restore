@interface PSAppChannelSubscriptionResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSubscriptionChannelResponse:(id)a3;
- (void)addUnsubscriptionChannelResponse:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSAppChannelSubscriptionResponse

- (void)addSubscriptionChannelResponse:(id)a3
{
  v4 = a3;
  subscriptionChannelResponses = self->_subscriptionChannelResponses;
  v8 = v4;
  if (!subscriptionChannelResponses)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_subscriptionChannelResponses;
    self->_subscriptionChannelResponses = v6;

    v4 = v8;
    subscriptionChannelResponses = self->_subscriptionChannelResponses;
  }

  [(NSMutableArray *)subscriptionChannelResponses addObject:v4];
}

- (void)addUnsubscriptionChannelResponse:(id)a3
{
  v4 = a3;
  unsubscriptionChannelResponses = self->_unsubscriptionChannelResponses;
  v8 = v4;
  if (!unsubscriptionChannelResponses)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_unsubscriptionChannelResponses;
    self->_unsubscriptionChannelResponses = v6;

    v4 = v8;
    unsubscriptionChannelResponses = self->_unsubscriptionChannelResponses;
  }

  [(NSMutableArray *)unsubscriptionChannelResponses addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSAppChannelSubscriptionResponse;
  v3 = [(PSAppChannelSubscriptionResponse *)&v7 description];
  v4 = [(PSAppChannelSubscriptionResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  appId = self->_appId;
  if (appId)
  {
    [v3 setObject:appId forKey:@"app_id"];
  }

  if ([(NSMutableArray *)self->_subscriptionChannelResponses count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_subscriptionChannelResponses, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_subscriptionChannelResponses;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"subscription_channel_response"];
  }

  if ([(NSMutableArray *)self->_unsubscriptionChannelResponses count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_unsubscriptionChannelResponses, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_unsubscriptionChannelResponses;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"unsubscription_channel_response"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_appId)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_subscriptionChannelResponses;
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
  v11 = self->_unsubscriptionChannelResponses;
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

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_appId)
  {
    [v12 setAppId:?];
  }

  if ([(PSAppChannelSubscriptionResponse *)self subscriptionChannelResponsesCount])
  {
    [v12 clearSubscriptionChannelResponses];
    v4 = [(PSAppChannelSubscriptionResponse *)self subscriptionChannelResponsesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PSAppChannelSubscriptionResponse *)self subscriptionChannelResponseAtIndex:i];
        [v12 addSubscriptionChannelResponse:v7];
      }
    }
  }

  if ([(PSAppChannelSubscriptionResponse *)self unsubscriptionChannelResponsesCount])
  {
    [v12 clearUnsubscriptionChannelResponses];
    v8 = [(PSAppChannelSubscriptionResponse *)self unsubscriptionChannelResponsesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PSAppChannelSubscriptionResponse *)self unsubscriptionChannelResponseAtIndex:j];
        [v12 addUnsubscriptionChannelResponse:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_subscriptionChannelResponses;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addSubscriptionChannelResponse:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_unsubscriptionChannelResponses;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{a3, v21}];
        [v5 addUnsubscriptionChannelResponse:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((appId = self->_appId, !(appId | v4[1])) || -[NSString isEqual:](appId, "isEqual:")) && ((subscriptionChannelResponses = self->_subscriptionChannelResponses, !(subscriptionChannelResponses | v4[2])) || -[NSMutableArray isEqual:](subscriptionChannelResponses, "isEqual:")))
  {
    unsubscriptionChannelResponses = self->_unsubscriptionChannelResponses;
    if (unsubscriptionChannelResponses | v4[3])
    {
      v8 = [(NSMutableArray *)unsubscriptionChannelResponses isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appId hash];
  v4 = [(NSMutableArray *)self->_subscriptionChannelResponses hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_unsubscriptionChannelResponses hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    [(PSAppChannelSubscriptionResponse *)self setAppId:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PSAppChannelSubscriptionResponse *)self addSubscriptionChannelResponse:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PSAppChannelSubscriptionResponse *)self addUnsubscriptionChannelResponse:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end