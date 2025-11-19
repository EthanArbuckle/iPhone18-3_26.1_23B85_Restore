@interface MPStoreItemMetadataImportWindow
- (MPServerObjectDatabase)serverObjectDatabase;
- (MPStoreItemMetadataImportWindow)initWithEventCadence:(double)a3 maximumLatency:(double)a4 serverObjectDatabase:(id)a5 queue:(id)a6;
- (void)_purge;
- (void)addPayload:(id)a3 userIdentity:(id)a4;
@end

@implementation MPStoreItemMetadataImportWindow

- (MPServerObjectDatabase)serverObjectDatabase
{
  WeakRetained = objc_loadWeakRetained(&self->_serverObjectDatabase);

  return WeakRetained;
}

- (void)_purge
{
  v46 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_accumulatedObjects copy];
  [(NSMutableArray *)self->_accumulatedObjects removeAllObjects];
  v32 = self;
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [v10 userIdentity];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [MEMORY[0x1E695DFB0] null];
        }

        v14 = v13;

        v15 = [v4 objectForKeyedSubscript:v14];
        if (v15)
        {
          v16 = [v10 platformDictionary];
          [v15 addObject:v16];
        }

        else
        {
          v17 = MEMORY[0x1E695DF70];
          v16 = [v10 platformDictionary];
          v18 = [v17 arrayWithObject:v16];
          [v4 setObject:v18 forKeyedSubscript:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  v31 = v5;

  WeakRetained = objc_loadWeakRetained(&v32->_serverObjectDatabase);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v4;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        v26 = [v20 objectForKeyedSubscript:{v25, v31}];
        v27 = [[MPServerObjectDatabaseStorePlatformImportRequest alloc] initWithPayload:v26];
        v28 = [MEMORY[0x1E695DFB0] null];

        if (v25 != v28)
        {
          [(MPServerObjectDatabaseImportRequest *)v27 setUserIdentity:v25];
        }

        queue = v32->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__MPStoreItemMetadataImportWindow__purge__block_invoke;
        block[3] = &unk_1E76823C0;
        v34 = WeakRetained;
        v35 = v27;
        v30 = v27;
        dispatch_async(queue, block);
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }
}

- (void)addPayload:(id)a3 userIdentity:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableArray *)self->_accumulatedObjects count])
  {
    [(MPStoreItemMetadataImportWindow *)self performSelector:sel__purge withObject:0 afterDelay:self->_maximumLatency];
  }

  v8 = [[MPStoreItemMetadataImportDescriptor alloc] initWithPayload:v7 userIdentity:v6];

  [(NSMutableArray *)self->_accumulatedObjects addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__checkCadence object:0];
  [(MPStoreItemMetadataImportWindow *)self performSelector:sel__checkCadence withObject:0 afterDelay:self->_eventCadence];
}

- (MPStoreItemMetadataImportWindow)initWithEventCadence:(double)a3 maximumLatency:(double)a4 serverObjectDatabase:(id)a5 queue:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = MPStoreItemMetadataImportWindow;
  v12 = [(MPStoreItemMetadataImportWindow *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_eventCadence = a3;
    v12->_maximumLatency = a4;
    objc_storeWeak(&v12->_serverObjectDatabase, v10);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    accumulatedObjects = v13->_accumulatedObjects;
    v13->_accumulatedObjects = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_queue, a6);
  }

  return v13;
}

@end