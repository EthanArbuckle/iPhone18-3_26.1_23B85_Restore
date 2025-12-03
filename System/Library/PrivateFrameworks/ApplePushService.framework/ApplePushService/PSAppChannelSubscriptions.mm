@interface PSAppChannelSubscriptions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttributes:(id)attributes;
- (void)addSubscriptionChannels:(id)channels;
- (void)addUnsubscriptionChannels:(id)channels;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PSAppChannelSubscriptions

- (void)addSubscriptionChannels:(id)channels
{
  channelsCopy = channels;
  subscriptionChannels = self->_subscriptionChannels;
  v8 = channelsCopy;
  if (!subscriptionChannels)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_subscriptionChannels;
    self->_subscriptionChannels = v6;

    channelsCopy = v8;
    subscriptionChannels = self->_subscriptionChannels;
  }

  [(NSMutableArray *)subscriptionChannels addObject:channelsCopy];
}

- (void)addUnsubscriptionChannels:(id)channels
{
  channelsCopy = channels;
  unsubscriptionChannels = self->_unsubscriptionChannels;
  v8 = channelsCopy;
  if (!unsubscriptionChannels)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_unsubscriptionChannels;
    self->_unsubscriptionChannels = v6;

    channelsCopy = v8;
    unsubscriptionChannels = self->_unsubscriptionChannels;
  }

  [(NSMutableArray *)unsubscriptionChannels addObject:channelsCopy];
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
  v7.super_class = PSAppChannelSubscriptions;
  v3 = [(PSAppChannelSubscriptions *)&v7 description];
  dictionaryRepresentation = [(PSAppChannelSubscriptions *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

  if ([(NSMutableArray *)self->_subscriptionChannels count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_subscriptionChannels, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = self->_subscriptionChannels;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"subscription_channels"];
  }

  if ([(NSMutableArray *)self->_unsubscriptionChannels count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_unsubscriptionChannels, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = self->_unsubscriptionChannels;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"unsubscription_channels"];
  }

  if ([(NSMutableArray *)self->_attributes count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_attributes, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = self->_attributes;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"attributes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_appId)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_subscriptionChannels;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_unsubscriptionChannels;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v13);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = self->_attributes;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_appId)
  {
    [toCopy setAppId:?];
  }

  if ([(PSAppChannelSubscriptions *)self subscriptionChannelsCount])
  {
    [toCopy clearSubscriptionChannels];
    subscriptionChannelsCount = [(PSAppChannelSubscriptions *)self subscriptionChannelsCount];
    if (subscriptionChannelsCount)
    {
      v5 = subscriptionChannelsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PSAppChannelSubscriptions *)self subscriptionChannelsAtIndex:i];
        [toCopy addSubscriptionChannels:v7];
      }
    }
  }

  if ([(PSAppChannelSubscriptions *)self unsubscriptionChannelsCount])
  {
    [toCopy clearUnsubscriptionChannels];
    unsubscriptionChannelsCount = [(PSAppChannelSubscriptions *)self unsubscriptionChannelsCount];
    if (unsubscriptionChannelsCount)
    {
      v9 = unsubscriptionChannelsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PSAppChannelSubscriptions *)self unsubscriptionChannelsAtIndex:j];
        [toCopy addUnsubscriptionChannels:v11];
      }
    }
  }

  if ([(PSAppChannelSubscriptions *)self attributesCount])
  {
    [toCopy clearAttributes];
    attributesCount = [(PSAppChannelSubscriptions *)self attributesCount];
    if (attributesCount)
    {
      v13 = attributesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PSAppChannelSubscriptions *)self attributesAtIndex:k];
        [toCopy addAttributes:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = self->_subscriptionChannels;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v35 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addSubscriptionChannels:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_unsubscriptionChannels;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      v18 = 0;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v31 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addUnsubscriptionChannels:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v16);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_attributes;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v27 + 1) + 8 * v24) copyWithZone:{zone, v27}];
        [v5 addAttributes:v25];

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v22);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((appId = self->_appId, !(appId | equalCopy[1])) || -[NSString isEqual:](appId, "isEqual:")) && ((subscriptionChannels = self->_subscriptionChannels, !(subscriptionChannels | equalCopy[3])) || -[NSMutableArray isEqual:](subscriptionChannels, "isEqual:")) && ((unsubscriptionChannels = self->_unsubscriptionChannels, !(unsubscriptionChannels | equalCopy[4])) || -[NSMutableArray isEqual:](unsubscriptionChannels, "isEqual:")))
  {
    attributes = self->_attributes;
    if (attributes | equalCopy[2])
    {
      v9 = [(NSMutableArray *)attributes isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appId hash];
  v4 = [(NSMutableArray *)self->_subscriptionChannels hash]^ v3;
  v5 = [(NSMutableArray *)self->_unsubscriptionChannels hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_attributes hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(PSAppChannelSubscriptions *)self setAppId:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PSAppChannelSubscriptions *)self addSubscriptionChannels:*(*(&v28 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = *(fromCopy + 4);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PSAppChannelSubscriptions *)self addUnsubscriptionChannels:*(*(&v24 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(fromCopy + 2);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PSAppChannelSubscriptions *)self addAttributes:*(*(&v20 + 1) + 8 * k), v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

@end