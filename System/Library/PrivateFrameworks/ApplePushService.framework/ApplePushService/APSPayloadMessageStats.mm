@interface APSPayloadMessageStats
- (APSPayloadMessageStats)init;
- (id)incomingCountsForTopic:(id)a3;
- (id)outgoingCountsForTopic:(id)a3;
- (void)payloadMessageReceived:(id)a3;
- (void)payloadMessageSent:(id)a3;
- (void)prepareForDarkWake;
- (void)prepareForFullWake;
@end

@implementation APSPayloadMessageStats

- (APSPayloadMessageStats)init
{
  v12.receiver = self;
  v12.super_class = APSPayloadMessageStats;
  v2 = [(APSPayloadMessageStats *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(APSPayloadMessageStatsCounts);
    incomingCounts = v2->_incomingCounts;
    v2->_incomingCounts = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    incomingCountsByTopic = v2->_incomingCountsByTopic;
    v2->_incomingCountsByTopic = v5;

    v7 = objc_alloc_init(APSPayloadMessageStatsCounts);
    outgoingCounts = v2->_outgoingCounts;
    v2->_outgoingCounts = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    outgoingCountsByTopic = v2->_outgoingCountsByTopic;
    v2->_outgoingCountsByTopic = v9;
  }

  return v2;
}

- (void)payloadMessageReceived:(id)a3
{
  v7 = [a3 topic];
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  [(APSPayloadMessageStatsCounts *)self->_incomingCounts countTopic:v7 now:?];
  v6 = [(APSPayloadMessageStats *)self incomingCountsForTopic:v7];
  [v6 countTopic:v7 now:v5];
}

- (void)payloadMessageSent:(id)a3
{
  v7 = [a3 topic];
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  [(APSPayloadMessageStatsCounts *)self->_outgoingCounts countTopic:v7 now:?];
  v6 = [(APSPayloadMessageStats *)self outgoingCountsForTopic:v7];
  [v6 countTopic:v7 now:v5];
}

- (id)incomingCountsForTopic:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_incomingCountsByTopic objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(APSPayloadMessageStatsCounts);
    [(NSMutableDictionary *)self->_incomingCountsByTopic setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)outgoingCountsForTopic:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_outgoingCountsByTopic objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(APSPayloadMessageStatsCounts);
    [(NSMutableDictionary *)self->_outgoingCountsByTopic setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)prepareForDarkWake
{
  [(APSPayloadMessageStatsCounts *)self->_incomingCounts prepareForDarkWake];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(NSMutableDictionary *)self->_incomingCountsByTopic allValues];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7) prepareForDarkWake];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(APSPayloadMessageStatsCounts *)self->_outgoingCounts prepareForDarkWake];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(NSMutableDictionary *)self->_outgoingCountsByTopic allValues];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) prepareForDarkWake];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)prepareForFullWake
{
  [(APSPayloadMessageStatsCounts *)self->_incomingCounts prepareForFullWake];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(NSMutableDictionary *)self->_incomingCountsByTopic allValues];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7) prepareForFullWake];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(APSPayloadMessageStatsCounts *)self->_outgoingCounts prepareForFullWake];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(NSMutableDictionary *)self->_outgoingCountsByTopic allValues];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) prepareForFullWake];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

@end