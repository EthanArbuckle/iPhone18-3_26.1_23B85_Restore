@interface PKRecognitionQueryController
- (id)drawingQueryWithIdentifier:(id *)a1;
- (id)initWithRecognitionSessionManager:(id *)a1;
- (id)setupAndStartQuery:(uint64_t)a1;
- (id)visibleStrokesQueryWithIdentifier:(id *)a1;
- (uint64_t)clearDrawingQueries;
- (uint64_t)clearVisibleStrokesQueries;
- (void)_cleanupQuery:(uint64_t)a1;
- (void)removeQueryWithIdentifier:(id *)a1;
- (void)setMathPreferredUpdatesInterval:(double)a3;
- (void)setSuffixes:(void *)a3 forQueryWithIdentifier:;
- (void)setupDrawingQueriesIfNecessary;
- (void)setupVisibleStrokesQueries;
- (void)updateQueriesIfNecessaryWithState:(id *)a1;
@end

@implementation PKRecognitionQueryController

- (id)initWithRecognitionSessionManager:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = PKRecognitionQueryController;
    a1 = objc_msgSendSuper2(&v13, sel_init);
    if (a1)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = a1[2];
      a1[2] = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = a1[3];
      a1[3] = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = a1[4];
      a1[4] = v8;

      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = a1[5];
      a1[5] = v10;

      objc_storeWeak(a1 + 6, v3);
    }
  }

  return a1;
}

- (void)removeQueryWithIdentifier:(id *)a1
{
  if (a1)
  {
    v3 = a1[2];
    v6 = a2;
    v4 = [v3 objectForKey:v6];
    [(PKRecognitionQueryController *)a1 _cleanupQuery:v4];

    v5 = [a1[3] objectForKey:v6];
    [(PKRecognitionQueryController *)a1 _cleanupQuery:v5];

    [a1[4] removeObjectForKey:v6];
    [a1[2] removeObjectForKey:v6];
    [a1[3] removeObjectForKey:v6];
    [a1[5] removeObjectForKey:v6];
  }
}

- (void)_cleanupQuery:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    [v2 pause];
    [v2 setDelegate:0];
    [v2 teardown];
  }
}

- (id)visibleStrokesQueryWithIdentifier:(id *)a1
{
  if (a1)
  {
    a1 = [a1[3] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (id)drawingQueryWithIdentifier:(id *)a1
{
  if (a1)
  {
    a1 = [a1[2] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)updateQueriesIfNecessaryWithState:(id *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [a1[4] allKeys];
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
        v8 = [a1[4] objectForKey:v7];
        if (a2 == 3)
        {
          v9 = [a1[2] objectForKey:v7];

          v10 = a1 + 2;
          if (v9)
          {
            goto LABEL_10;
          }

LABEL_9:
          v11 = [(PKRecognitionQueryController *)a1 setupAndStartQuery:v8];
          [*v10 setObject:v11 forKeyedSubscript:v7];

          goto LABEL_10;
        }

        v12 = [a1[3] objectForKey:v7];

        v10 = a1 + 3;
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

- (id)setupAndStartQuery:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 alloc];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [v3 initWithRecognitionSessionManager:WeakRetained];

    v6 = objc_loadWeakRetained((a1 + 48));
    [v5 setDelegate:v6];

    if (*(a1 + 8) != 0.0)
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
  if (a1)
  {
    [(PKRecognitionQueryController *)a1 clearVisibleStrokesQueries];
    [(PKRecognitionQueryController *)a1 clearDrawingQueries];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(a1 + 32) allKeys];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          v8 = -[PKRecognitionQueryController setupAndStartQuery:](a1, [*(a1 + 32) objectForKeyedSubscript:v7]);
          [*(a1 + 24) setObject:v8 forKey:v7];
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

- (void)setupDrawingQueriesIfNecessary
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [a1[4] allKeys];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = [a1[4] objectForKeyedSubscript:v7];
          v9 = [a1[2] objectForKey:v7];

          if (!v9)
          {
            v10 = [(PKRecognitionQueryController *)a1 setupAndStartQuery:v8];
            [a1[2] setObject:v10 forKey:v7];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [a1[5] objectForKeyedSubscript:v7];
              [v10 setValidSuffixes:v11];
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }
}

- (void)setMathPreferredUpdatesInterval:(double)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1[1] = a3;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [objc_getProperty(a1 a2];
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

          [*(*(&v20 + 1) + 8 * v9++) setMathPreferredUpdatesInterval:a3];
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
    v11 = [objc_getProperty(a1 v10];
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

          [*(*(&v16 + 1) + 8 * v15++) setMathPreferredUpdatesInterval:a3];
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
    v2 = [*(result + 24) allValues];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(v2);
          }

          [(PKRecognitionQueryController *)v1 _cleanupQuery:?];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
    v2 = [*(result + 16) allValues];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(v2);
          }

          [(PKRecognitionQueryController *)v1 _cleanupQuery:?];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return [*(v1 + 16) removeAllObjects];
  }

  return result;
}

- (void)setSuffixes:(void *)a3 forQueryWithIdentifier:
{
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (v6 == v10)
    {
      v7 = [*(a1 + 40) objectForKeyedSubscript:v5];
      v8 = [v10 isEqualToSet:v7];

      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    [*(a1 + 40) setObject:v10 forKeyedSubscript:v5];
    v9 = [*(a1 + 16) objectForKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setValidSuffixes:v10];
    }
  }

LABEL_8:
}

@end