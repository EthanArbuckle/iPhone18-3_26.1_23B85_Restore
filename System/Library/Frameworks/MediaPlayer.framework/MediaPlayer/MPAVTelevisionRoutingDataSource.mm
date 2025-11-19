@interface MPAVTelevisionRoutingDataSource
- (BOOL)devicePresenceDetected;
- (MPAVTelevisionRoutingDataSource)init;
- (id)_discoveredTelevisions;
- (id)getRoutesForCategory:(id)a3;
- (void)_onQueue_controllerDidDiscoverTelevision:(void *)a3;
- (void)_onQueue_controllerDidRemoveTelevision:(void *)a3;
- (void)dealloc;
- (void)setDiscoveryMode:(int64_t)a3;
@end

@implementation MPAVTelevisionRoutingDataSource

- (void)_onQueue_controllerDidRemoveTelevision:(void *)a3
{
  [(NSMutableArray *)self->_discoveredTelevisions removeObject:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
}

- (void)_onQueue_controllerDidDiscoverTelevision:(void *)a3
{
  [(NSMutableArray *)self->_discoveredTelevisions addObject:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
}

- (id)_discoveredTelevisions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5926;
  v10 = __Block_byref_object_dispose__5927;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MPAVTelevisionRoutingDataSource__discoveredTelevisions__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__MPAVTelevisionRoutingDataSource__discoveredTelevisions__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)getRoutesForCategory:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(MPAVTelevisionRoutingDataSource *)self _discoveredTelevisions];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MPAVTelevisionRoute alloc];
        v12 = [(MPAVTelevisionRoute *)v11 initWithTelevision:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)devicePresenceDetected
{
  v2 = [(MPAVTelevisionRoutingDataSource *)self _discoveredTelevisions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setDiscoveryMode:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MPAVTelevisionRoutingDataSource;
  [(MPAVRoutingDataSource *)&v10 setDiscoveryMode:?];
  IsDiscoveringDevices = MRTelevisionControllerIsDiscoveringDevices();
  if (!a3 || (IsDiscoveringDevices & 1) != 0)
  {
    if (IsDiscoveringDevices)
    {
      v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        discoveryController = self->_discoveryController;
        *buf = 138543362;
        v12 = discoveryController;
        _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[TelevisionRoutingDataSource] Ending discovery with controller: %{public}@", buf, 0xCu);
      }

      MRTelevisionControllerEndDiscovery();
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_discoveryController;
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "[TelevisionRoutingDataSource] Beginning discovery using controller: %{public}@", buf, 0xCu);
    }

    MRTelevisionControllerBeginDiscovery();
  }
}

- (void)dealloc
{
  MRTelevisionControllerSetDiscoveryCallback();
  MRTelevisionControllerSetRemovalCallback();
  CFRelease(self->_discoveryController);
  v3.receiver = self;
  v3.super_class = MPAVTelevisionRoutingDataSource;
  [(MPAVRoutingDataSource *)&v3 dealloc];
}

- (MPAVTelevisionRoutingDataSource)init
{
  v11.receiver = self;
  v11.super_class = MPAVTelevisionRoutingDataSource;
  v2 = [(MPAVRoutingDataSource *)&v11 init];
  if (v2)
  {
    v2->_discoveryController = MRTelevisionControllerCreate();
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    discoveredTelevisions = v2->_discoveredTelevisions;
    v2->_discoveredTelevisions = v3;

    v5 = dispatch_queue_create("com.apple.MediaPlayer.MPAVTelevisionRoutingDataSource/serialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    objc_initWeak(&location, v2);
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __39__MPAVTelevisionRoutingDataSource_init__block_invoke;
    v8[4] = &unk_1E76768E8;
    objc_copyWeak(&v9, &location);
    MRTelevisionControllerSetDiscoveryCallback();
    objc_copyWeak(v8, &location);
    MRTelevisionControllerSetRemovalCallback();
    objc_destroyWeak(v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __39__MPAVTelevisionRoutingDataSource_init__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onQueue_controllerDidDiscoverTelevision:a2];
}

void __39__MPAVTelevisionRoutingDataSource_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onQueue_controllerDidRemoveTelevision:a2];
}

@end