@interface _FPUnionDataSource
- (BOOL)hasMoreIncoming;
- (FPCollectionDataSourceDelegate)delegate;
- (_FPUnionDataSource)initWithCollections:(id)a3;
- (void)collection:(id)a3 didEncounterError:(id)a4;
- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6;
- (void)collection:(id)a3 didUpdateObservedItem:(id)a4;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)invalidate;
- (void)start;
@end

@implementation _FPUnionDataSource

- (void)start
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_isRunning)
  {
    v2->_isRunning = 1;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2->_collections;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          [v7 setDelegate:v2];
          v8 = [v7 workingQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __27___FPUnionDataSource_start__block_invoke;
          block[3] = &unk_1E79399B0;
          block[4] = v7;
          dispatch_async(v8, block);
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  objc_sync_exit(v2);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isRunning)
  {
    obj->_isRunning = 0;
    objc_sync_exit(obj);

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = obj->_collections;
    v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          v8 = [v7 workingQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __32___FPUnionDataSource_invalidate__block_invoke;
          block[3] = &unk_1E79399B0;
          block[4] = v7;
          dispatch_async(v8, block);
        }

        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    objc_sync_exit(obj);
    v10 = *MEMORY[0x1E69E9840];
  }
}

- (FPCollectionDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (_FPUnionDataSource)initWithCollections:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _FPUnionDataSource;
  v5 = [(_FPUnionDataSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    collections = v5->_collections;
    v5->_collections = v6;
  }

  return v5;
}

- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = self;
  objc_sync_enter(v12);
  LODWORD(a4) = v12->_isRunning;
  objc_sync_exit(v12);

  if (a4 == 1)
  {
    v24 = v11;
    v13 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          if ([v9 isRootItem:v19])
          {
            [v9 updateRootItem:v19];
          }

          else
          {
            v20 = [v9 itemFilteringPredicate];
            v21 = [v9 additionalItemFilteringPredicate];
            if ((!v20 || [v20 evaluateWithObject:v19]) && (!v21 || objc_msgSend(v21, "evaluateWithObject:", v19)))
            {
              [v13 addObject:v19];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v11 = v24;
    if ([v24 count] || objc_msgSend(v13, "count"))
    {
      v22 = [(_FPUnionDataSource *)v12 delegate];
      [v22 dataSource:v12 receivedUpdatedItems:v13 deletedItems:v24 hasMoreChanges:0];
    }

    v10 = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)collection:(id)a3 didEncounterError:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = self;
  objc_sync_enter(v6);
  isRunning = v6->_isRunning;
  objc_sync_exit(v6);

  if (isRunning)
  {
    if ([v5 fp_isFileProviderError:-2001])
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_INFO, "[INFO] error in union collection, skipping: %@", &v11, 0xCu);
      }
    }

    else
    {
      [(_FPUnionDataSource *)v6 invalidate];
      v9 = [(_FPUnionDataSource *)v6 delegate];
      [v9 dataSource:v6 wasInvalidatedWithError:v5];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)collection:(id)a3 didUpdateObservedItem:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  isRunning = v8->_isRunning;
  objc_sync_exit(v8);

  if (isRunning)
  {
    if ([v6 isRootItem:v7])
    {
      [v6 updateRootItem:v7];
    }

    else
    {
      v10 = [v6 itemFilteringPredicate];
      v11 = [v6 additionalItemFilteringPredicate];
      if ((!v10 || [v10 evaluateWithObject:v7]) && (!v11 || objc_msgSend(v11, "evaluateWithObject:", v7)))
      {
        v12 = [(_FPUnionDataSource *)v8 delegate];
        v15[0] = v7;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [v12 dataSource:v8 receivedUpdatedItems:v13 deletedItems:MEMORY[0x1E695E0F0] hasMoreChanges:0];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  isRunning = v3->_isRunning;
  objc_sync_exit(v3);

  if (isRunning)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3->_collections;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) items];
          [v5 addObjectsFromArray:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [(_FPUnionDataSource *)v3 delegate];
    [v12 dataSource:v3 replaceContentsWithItems:v5 hasMoreChanges:0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasMoreIncoming
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  isRunning = v2->_isRunning;
  objc_sync_exit(v2);

  if (isRunning)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v2->_collections;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v10 + 1) + 8 * i) hasMoreUpdates])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end