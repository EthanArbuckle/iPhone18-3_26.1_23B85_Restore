@interface HMXPCEventRouterProtoChangeRegistrationsMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addTopicFilterAdditions:(id)a3;
- (void)addTopicFilterRemovals:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMXPCEventRouterProtoChangeRegistrationsMessage

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4[1];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMXPCEventRouterProtoChangeRegistrationsMessage *)self addTopicFilterAdditions:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4[2];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HMXPCEventRouterProtoChangeRegistrationsMessage *)self addTopicFilterRemovals:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((topicFilterAdditions = self->_topicFilterAdditions, !(topicFilterAdditions | v4[1])) || -[NSMutableArray isEqual:](topicFilterAdditions, "isEqual:")))
  {
    topicFilterRemovals = self->_topicFilterRemovals;
    if (topicFilterRemovals | v4[2])
    {
      v7 = [(NSMutableArray *)topicFilterRemovals isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_topicFilterAdditions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addTopicFilterAdditions:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_topicFilterRemovals;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
        [v5 addTopicFilterRemovals:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(HMXPCEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsCount])
  {
    [v12 clearTopicFilterAdditions];
    v4 = [(HMXPCEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMXPCEventRouterProtoChangeRegistrationsMessage *)self topicFilterAdditionsAtIndex:i];
        [v12 addTopicFilterAdditions:v7];
      }
    }
  }

  if ([(HMXPCEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsCount])
  {
    [v12 clearTopicFilterRemovals];
    v8 = [(HMXPCEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMXPCEventRouterProtoChangeRegistrationsMessage *)self topicFilterRemovalsAtIndex:j];
        [v12 addTopicFilterRemovals:v11];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_topicFilterAdditions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_topicFilterRemovals;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  topicFilterAdditions = self->_topicFilterAdditions;
  if (topicFilterAdditions)
  {
    [v3 setObject:topicFilterAdditions forKey:@"topicFilterAdditions"];
  }

  topicFilterRemovals = self->_topicFilterRemovals;
  if (topicFilterRemovals)
  {
    [v4 setObject:topicFilterRemovals forKey:@"topicFilterRemovals"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMXPCEventRouterProtoChangeRegistrationsMessage;
  v4 = [(HMXPCEventRouterProtoChangeRegistrationsMessage *)&v8 description];
  v5 = [(HMXPCEventRouterProtoChangeRegistrationsMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addTopicFilterRemovals:(id)a3
{
  v4 = a3;
  topicFilterRemovals = self->_topicFilterRemovals;
  v8 = v4;
  if (!topicFilterRemovals)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_topicFilterRemovals;
    self->_topicFilterRemovals = v6;

    v4 = v8;
    topicFilterRemovals = self->_topicFilterRemovals;
  }

  [(NSMutableArray *)topicFilterRemovals addObject:v4];
}

- (void)addTopicFilterAdditions:(id)a3
{
  v4 = a3;
  topicFilterAdditions = self->_topicFilterAdditions;
  v8 = v4;
  if (!topicFilterAdditions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_topicFilterAdditions;
    self->_topicFilterAdditions = v6;

    v4 = v8;
    topicFilterAdditions = self->_topicFilterAdditions;
  }

  [(NSMutableArray *)topicFilterAdditions addObject:v4];
}

@end