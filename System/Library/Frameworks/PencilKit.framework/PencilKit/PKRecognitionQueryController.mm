@interface PKRecognitionQueryController
- (id)drawingQueryWithIdentifier:(id *)identifier;
- (id)initWithRecognitionSessionManager:(id *)manager;
- (id)setupAndStartQuery:(uint64_t)query;
- (id)visibleStrokesQueryWithIdentifier:(id *)identifier;
- (uint64_t)clearDrawingQueries;
- (uint64_t)clearVisibleStrokesQueries;
- (void)_cleanupQuery:(uint64_t)query;
- (void)removeQueryWithIdentifier:(id *)identifier;
- (void)setMathPreferredUpdatesInterval:(double)interval;
- (void)setSuffixes:(void *)suffixes forQueryWithIdentifier:;
- (void)setupDrawingQueriesIfNecessary;
- (void)setupVisibleStrokesQueries;
- (void)updateQueriesIfNecessaryWithState:(id *)state;
@end

@implementation PKRecognitionQueryController

- (id)initWithRecognitionSessionManager:(id *)manager
{
  v3 = a2;
  if (manager)
  {
    v13.receiver = manager;
    v13.super_class = PKRecognitionQueryController;
    manager = objc_msgSendSuper2(&v13, sel_init);
    if (manager)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = manager[2];
      manager[2] = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = manager[3];
      manager[3] = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = manager[4];
      manager[4] = v8;

      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = manager[5];
      manager[5] = v10;

      objc_storeWeak(manager + 6, v3);
    }
  }

  return manager;
}

- (void)removeQueryWithIdentifier:(id *)identifier
{
  if (identifier)
  {
    v3 = identifier[2];
    v6 = a2;
    v4 = [v3 objectForKey:v6];
    [(PKRecognitionQueryController *)identifier _cleanupQuery:v4];

    v5 = [identifier[3] objectForKey:v6];
    [(PKRecognitionQueryController *)identifier _cleanupQuery:v5];

    [identifier[4] removeObjectForKey:v6];
    [identifier[2] removeObjectForKey:v6];
    [identifier[3] removeObjectForKey:v6];
    [identifier[5] removeObjectForKey:v6];
  }
}

- (void)_cleanupQuery:(uint64_t)query
{
  if (query)
  {
    v2 = a2;
    [v2 pause];
    [v2 setDelegate:0];
    [v2 teardown];
  }
}

- (id)visibleStrokesQueryWithIdentifier:(id *)identifier
{
  if (identifier)
  {
    identifier = [identifier[3] objectForKey:a2];
    v2 = vars8;
  }

  return identifier;
}

- (id)drawingQueryWithIdentifier:(id *)identifier
{
  if (identifier)
  {
    identifier = [identifier[2] objectForKey:a2];
    v2 = vars8;
  }

  return identifier;
}

- (void)updateQueriesIfNecessaryWithState:(id *)state
{
  v21 = *MEMORY[0x1E69E9840];
  if (state)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [state[4] allKeys];
    v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v3)
    {
      goto LABEL_15;
    }

    v4 = v3;
    v5 = *v17;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [state[4] objectForKey:v7];
        if (a2 == 3)
        {
          v9 = [state[2] objectForKey:v7];

          v10 = state + 2;
          if (v9)
          {
            goto LABEL_10;
          }

LABEL_9:
          v11 = [(PKRecognitionQueryController *)state setupAndStartQuery:v8];
          [*v10 setObject:v11 forKeyedSubscript:v7];

          goto LABEL_10;
        }

        v12 = [state[3] objectForKey:v7];

        v10 = state + 3;
        if (!v12)
        {
          goto LABEL_9;
        }

LABEL_10:
        ++v6;
      }

      while (v4 != v6);
      v13 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      v4 = v13;
      if (!v13)
      {
LABEL_15:

        return;
      }
    }
  }
}

- (id)setupAndStartQuery:(uint64_t)query
{
  if (query)
  {
    v3 = [a2 alloc];
    WeakRetained = objc_loadWeakRetained((query + 48));
    v5 = [v3 initWithRecognitionSessionManager:WeakRetained];

    v6 = objc_loadWeakRetained((query + 48));
    [v5 setDelegate:v6];

    if (*(query + 8) != 0.0)
    {
      [v5 setMathPreferredUpdatesInterval:?];
    }

    [v5 start];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setupVisibleStrokesQueries
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(PKRecognitionQueryController *)self clearVisibleStrokesQueries];
    [(PKRecognitionQueryController *)self clearDrawingQueries];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    allKeys = [*(self + 32) allKeys];
    v3 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(allKeys);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          v8 = -[PKRecognitionQueryController setupAndStartQuery:](self, [*(self + 32) objectForKeyedSubscript:v7]);
          [*(self + 24) setObject:v8 forKey:v7];
        }

        v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

- (void)setupDrawingQueriesIfNecessary
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allKeys = [self[4] allKeys];
    v3 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(allKeys);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = [self[4] objectForKeyedSubscript:v7];
          v9 = [self[2] objectForKey:v7];

          if (!v9)
          {
            v10 = [(PKRecognitionQueryController *)self setupAndStartQuery:v8];
            [self[2] setObject:v10 forKey:v7];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [self[5] objectForKeyedSubscript:v7];
              [v10 setValidSuffixes:v11];
            }
          }
        }

        v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }
}

- (void)setMathPreferredUpdatesInterval:(double)interval
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self[1] = interval;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [objc_getProperty(self a2];
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

          [*(*(&v20 + 1) + 8 * v9++) setMathPreferredUpdatesInterval:interval];
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
    v11 = [objc_getProperty(self v10];
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) setMathPreferredUpdatesInterval:interval];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (uint64_t)clearVisibleStrokesQueries
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    allValues = [*(result + 24) allValues];
    v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          [(PKRecognitionQueryController *)v1 _cleanupQuery:?];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return [*(v1 + 24) removeAllObjects];
  }

  return result;
}

- (uint64_t)clearDrawingQueries
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    allValues = [*(result + 16) allValues];
    v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          [(PKRecognitionQueryController *)v1 _cleanupQuery:?];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return [*(v1 + 16) removeAllObjects];
  }

  return result;
}

- (void)setSuffixes:(void *)suffixes forQueryWithIdentifier:
{
  v10 = a2;
  suffixesCopy = suffixes;
  if (self)
  {
    v6 = [*(self + 40) objectForKeyedSubscript:suffixesCopy];
    if (v6 == v10)
    {
      v7 = [*(self + 40) objectForKeyedSubscript:suffixesCopy];
      v8 = [v10 isEqualToSet:v7];

      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [*(self + 40) setObject:v10 forKeyedSubscript:suffixesCopy];
    v9 = [*(self + 16) objectForKey:suffixesCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setValidSuffixes:v10];
    }
  }

LABEL_8:
}

@end