@interface MPStoreItemMetadataImportWindow
- (MPServerObjectDatabase)serverObjectDatabase;
- (MPStoreItemMetadataImportWindow)initWithEventCadence:(double)cadence maximumLatency:(double)latency serverObjectDatabase:(id)database queue:(id)queue;
- (void)_purge;
- (void)addPayload:(id)payload userIdentity:(id)identity;
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
  selfCopy = self;
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
        userIdentity = [v10 userIdentity];
        v12 = userIdentity;
        if (userIdentity)
        {
          null = userIdentity;
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v14 = null;

        v15 = [v4 objectForKeyedSubscript:v14];
        if (v15)
        {
          platformDictionary = [v10 platformDictionary];
          [v15 addObject:platformDictionary];
        }

        else
        {
          v17 = MEMORY[0x1E695DF70];
          platformDictionary = [v10 platformDictionary];
          v18 = [v17 arrayWithObject:platformDictionary];
          [v4 setObject:v18 forKeyedSubscript:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  v31 = v5;

  WeakRetained = objc_loadWeakRetained(&selfCopy->_serverObjectDatabase);
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
        null2 = [MEMORY[0x1E695DFB0] null];

        if (v25 != null2)
        {
          [(MPServerObjectDatabaseImportRequest *)v27 setUserIdentity:v25];
        }

        queue = selfCopy->_queue;
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

- (void)addPayload:(id)payload userIdentity:(id)identity
{
  identityCopy = identity;
  payloadCopy = payload;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableArray *)self->_accumulatedObjects count])
  {
    [(MPStoreItemMetadataImportWindow *)self performSelector:sel__purge withObject:0 afterDelay:self->_maximumLatency];
  }

  v8 = [[MPStoreItemMetadataImportDescriptor alloc] initWithPayload:payloadCopy userIdentity:identityCopy];

  [(NSMutableArray *)self->_accumulatedObjects addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__checkCadence object:0];
  [(MPStoreItemMetadataImportWindow *)self performSelector:sel__checkCadence withObject:0 afterDelay:self->_eventCadence];
}

- (MPStoreItemMetadataImportWindow)initWithEventCadence:(double)cadence maximumLatency:(double)latency serverObjectDatabase:(id)database queue:(id)queue
{
  databaseCopy = database;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = MPStoreItemMetadataImportWindow;
  v12 = [(MPStoreItemMetadataImportWindow *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_eventCadence = cadence;
    v12->_maximumLatency = latency;
    objc_storeWeak(&v12->_serverObjectDatabase, databaseCopy);
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    accumulatedObjects = v13->_accumulatedObjects;
    v13->_accumulatedObjects = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

@end