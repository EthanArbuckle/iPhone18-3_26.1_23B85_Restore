@interface MPAVEndpointRoutingDataSource
- (BOOL)didReceiveDiscoveryResults;
- (MPAVEndpointRoutingDataSource)initWithThrottlingEnabled:(BOOL)enabled;
- (MRAVRoutingDiscoverySessionConfiguration)discoverySessionConfiguration;
- (id)getRoutesForCategory:(id)category;
- (int64_t)discoveryMode;
- (void)_clearDiscoverySessionCallback;
- (void)_endpointsDidChange:(id)change;
- (void)_setDiscoverySessionCallback;
- (void)dealloc;
- (void)setDidReceiveDiscoveryResults:(BOOL)results;
- (void)setDiscoveryMode:(int64_t)mode;
- (void)setPickedRoute:(id)route withPassword:(id)password completion:(id)completion;
- (void)setRoutingContextUID:(id)d;
- (void)setSuppressNotifications:(BOOL)notifications;
- (void)setTargetSessionID:(unsigned int)d;
@end

@implementation MPAVEndpointRoutingDataSource

- (MRAVRoutingDiscoverySessionConfiguration)discoverySessionConfiguration
{
  v3 = [objc_alloc(MEMORY[0x1E69B09C8]) initWithEndpointFeatures:8];
  [v3 setTargetAudioSessionID:{-[MPAVEndpointRoutingDataSource targetSessionID](self, "targetSessionID")}];

  return v3;
}

- (void)_setDiscoverySessionCallback
{
  if (!self->_callbackToken)
  {
    objc_initWeak(&location, self);
    discoverySession = self->_discoverySession;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__MPAVEndpointRoutingDataSource__setDiscoverySessionCallback__block_invoke;
    v6[3] = &unk_1E7676718;
    objc_copyWeak(&v7, &location);
    v4 = [(MRAVRoutingDiscoverySession *)discoverySession addEndpointsChangedCallback:v6];
    callbackToken = self->_callbackToken;
    self->_callbackToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __61__MPAVEndpointRoutingDataSource__setDiscoverySessionCallback__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v4 count])
    {
      [WeakRetained setDidReceiveDiscoveryResults:1];
    }

    [WeakRetained _endpointsDidChange:v4];
  }
}

- (BOOL)didReceiveDiscoveryResults
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = [(MPAVEndpointRoutingDataSource *)self serialQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MPAVEndpointRoutingDataSource_didReceiveDiscoveryResults__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_clearDiscoverySessionCallback
{
  if (self->_callbackToken)
  {
    [(MRAVRoutingDiscoverySession *)self->_discoverySession removeEndpointsChangedCallback:?];
    callbackToken = self->_callbackToken;
    self->_callbackToken = 0;
  }
}

- (void)_endpointsDidChange:(id)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
}

- (void)setPickedRoute:(id)route withPassword:(id)password completion:(id)completion
{
  routeCopy = route;
  passwordCopy = password;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    routeUID = [routeCopy routeUID];
    v12 = MRAVRouteQueryCreate();
    MRAVRouteQuerySetRouteUID();
    v21 = completionCopy;
    MRMediaRemoteFindAndPickRoute();
    CFRelease(v12);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E69B09A0];
      routingContextUID = self->_routingContextUID;
      v15 = routeCopy;
      v16 = [v13 sharedLocalEndpointForRoutingContextWithUID:routingContextUID];
      endpointObject = [v15 endpointObject];

      outputDevices = [endpointObject outputDevices];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [v16 setOutputDevices:outputDevices initiator:v20 withReplyQueue:MEMORY[0x1E69E96A0] completion:completionCopy];
    }
  }
}

uint64_t __72__MPAVEndpointRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v5 = v4;
  if (a2)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 138412290;
    v12 = a2;
    v6 = "[EndpointRoutingDataSource] Route search failed with error: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v6 = "[EndpointRoutingDataSource] Successfully found and picked route.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
  }

  _os_log_impl(&dword_1A238D000, v7, v8, v6, &v11, v9);
LABEL_7:

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (id)getRoutesForCategory:(id)category
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5454;
  v11 = __Block_byref_object_dispose__5455;
  v12 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MPAVEndpointRoutingDataSource_getRoutesForCategory___block_invoke;
  v6[3] = &unk_1E76819F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__MPAVEndpointRoutingDataSource_getRoutesForCategory___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = [*(*(a1 + 32) + 104) copy];
  [*(*(a1 + 32) + 104) removeAllObjects];
  v21 = a1;
  v2 = [*(*(a1 + 32) + 64) availableEndpoints];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 uniqueIdentifier];
        v10 = [v22 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = v10;
          v12 = [[MPMRAVEndpointWrapper alloc] initWithMRAVEndpoint:v8];
          [(MPAVEndpointRoute *)v11 setEndpointWrapper:v12];
        }

        else
        {
          v11 = [[MPAVEndpointRoute alloc] initWithEndpoint:v8];
        }

        v13 = [v8 externalDevice];

        v14 = [(MPAVEndpointRoute *)v11 connection];
        v15 = [v14 externalDevice];

        if (v15 != v13)
        {
          if (v13)
          {
            v16 = [[MPAVRouteConnection alloc] initWithExternalDevice:v13];
            [(MPAVEndpointRoute *)v11 setConnection:v16];
          }

          else
          {
            [(MPAVEndpointRoute *)v11 setConnection:0];
          }
        }

        [*(*(v21 + 32) + 104) setObject:v11 forKeyedSubscript:v9];
        [v3 addObject:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v17 = [v3 copy];
  v18 = *(*(v21 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

- (void)setDiscoveryMode:(int64_t)mode
{
  if ((mode - 1) < 3)
  {
    mode = mode;
  }

  else
  {
    mode = 0;
  }

  [(MRAVRoutingDiscoverySession *)self->_discoverySession setDiscoveryMode:mode];
}

- (int64_t)discoveryMode
{
  v2 = [(MRAVRoutingDiscoverySession *)self->_discoverySession discoveryMode]- 1;
  if (v2 < 3)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)setDidReceiveDiscoveryResults:(BOOL)results
{
  serialQueue = [(MPAVEndpointRoutingDataSource *)self serialQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__MPAVEndpointRoutingDataSource_setDidReceiveDiscoveryResults___block_invoke;
  v6[3] = &unk_1E7682280;
  v6[4] = self;
  resultsCopy = results;
  dispatch_sync(serialQueue, v6);
}

- (void)setRoutingContextUID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAVEndpointRoutingDataSource.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"routingContextUID"}];
  }

  if (![(NSString *)self->_routingContextUID isEqualToString:dCopy])
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v12 = objc_opt_class();
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = dCopy;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> setting routing context UID = %{public}@", buf, 0x20u);
    }

    v7 = [dCopy copy];
    routingContextUID = self->_routingContextUID;
    self->_routingContextUID = v7;

    [(MRAVRoutingDiscoverySession *)self->_discoverySession setRoutingContextUID:self->_routingContextUID];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
  }
}

- (void)setTargetSessionID:(unsigned int)d
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_targetSessionID != d)
  {
    v3 = *&d;
    v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543874;
      v8 = objc_opt_class();
      v9 = 2048;
      selfCopy = self;
      v11 = 1026;
      v12 = v3;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>_targetSessionID setting target session ID = %{public}d", &v7, 0x1Cu);
    }

    self->_targetSessionID = v3;
    [(MRAVRoutingDiscoverySession *)self->_discoverySession setTargetAudioSessionID:v3];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
  }
}

- (void)setSuppressNotifications:(BOOL)notifications
{
  if (notifications)
  {
    [(MPAVEndpointRoutingDataSource *)self _clearDiscoverySessionCallback];
  }

  else
  {
    [(MPAVEndpointRoutingDataSource *)self _setDiscoverySessionCallback];
  }

  self->_suppressNotifications = notifications;
}

- (void)dealloc
{
  [(MRAVRoutingDiscoverySession *)self->_discoverySession removeEndpointsChangedCallback:self->_callbackToken];
  v3.receiver = self;
  v3.super_class = MPAVEndpointRoutingDataSource;
  [(MPAVRoutingDataSource *)&v3 dealloc];
}

- (MPAVEndpointRoutingDataSource)initWithThrottlingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13.receiver = self;
  v13.super_class = MPAVEndpointRoutingDataSource;
  v4 = [(MPAVRoutingDataSource *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    endpoints = v4->_endpoints;
    v4->_endpoints = v5;

    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPAVEndpointRoutingDataSource/serialQueue", 0);
    serialQueue = v4->_serialQueue;
    v4->_serialQueue = v7;

    discoverySessionConfiguration = [(MPAVEndpointRoutingDataSource *)v4 discoverySessionConfiguration];
    [discoverySessionConfiguration setEnableThrottling:enabledCopy];
    v4->_suppressNotifications = 0;
    v10 = [MEMORY[0x1E69B09C0] discoverySessionWithConfiguration:discoverySessionConfiguration];
    discoverySession = v4->_discoverySession;
    v4->_discoverySession = v10;

    if (!v4->_suppressNotifications)
    {
      [(MPAVEndpointRoutingDataSource *)v4 _setDiscoverySessionCallback];
    }
  }

  return v4;
}

@end