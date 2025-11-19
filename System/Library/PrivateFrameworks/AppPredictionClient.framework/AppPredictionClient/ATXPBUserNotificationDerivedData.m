@interface ATXPBUserNotificationDerivedData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (void)addScores:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBUserNotificationDerivedData

- (id)initFromJSON:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ATXPBUserNotificationDerivedData *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"scores"];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

            v11 = [[ATXPBUserNotificationModelScore alloc] initFromJSON:*(*(&v13 + 1) + 8 * v10)];
            [(ATXPBUserNotificationDerivedData *)v5 addScores:v11];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"scores";
  v2 = [(NSMutableArray *)self->_scores _pas_mappedArrayWithTransform:&__block_literal_global_37];
  v3 = [ATXJSONHelper wrapObject:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)addScores:(id)a3
{
  v4 = a3;
  scores = self->_scores;
  v8 = v4;
  if (!scores)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_scores;
    self->_scores = v6;

    v4 = v8;
    scores = self->_scores;
  }

  [(NSMutableArray *)scores addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUserNotificationDerivedData;
  v4 = [(ATXPBUserNotificationDerivedData *)&v8 description];
  v5 = [(ATXPBUserNotificationDerivedData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_scores count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_scores, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_scores;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
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

    [v3 setObject:v4 forKey:@"scores"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_scores;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(ATXPBUserNotificationDerivedData *)self scoresCount])
  {
    [v8 clearScores];
    v4 = [(ATXPBUserNotificationDerivedData *)self scoresCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBUserNotificationDerivedData *)self scoresAtIndex:i];
        [v8 addScores:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_scores;
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
        [v5 addScores:v11];

        ++v10;
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
    scores = self->_scores;
    if (scores | v4[1])
    {
      v6 = [(NSMutableArray *)scores isEqual:?];
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
  v14 = *MEMORY[0x1E69E9840];
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

        [(ATXPBUserNotificationDerivedData *)self addScores:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end