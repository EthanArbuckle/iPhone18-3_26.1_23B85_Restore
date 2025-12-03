@interface MPAVRoutingController
+ (BOOL)bundleIdRepresentsLongFormVideoContent:(id)content;
+ (MPAVRoute)systemRoute;
+ (id)_currentDeviceRoutingSymbolImage;
+ (id)_sharedWorkerQueue;
+ (id)_symbolImageForRoute:(id)route;
+ (id)_symbolImageForRoutes:(id)routes;
+ (id)_symbolNameForModelID:(id)d;
+ (id)_symbolNameForProductIdentifier:(id)identifier;
+ (id)_symbolNameForRoute:(id)route;
+ (id)_symbolNameForRoutes:(id)routes;
+ (id)systemRouteWithContextUID:(id)d;
+ (void)_getActiveRouteWithTimeout:(double)timeout type:(int64_t)type completion:(id)completion;
+ (void)getActiveRouteWithTimeout:(double)timeout completion:(id)completion;
+ (void)setActiveRoute:(id)route completion:(id)completion;
+ (void)setActiveRoute:(id)route reason:(id)reason completion:(id)completion;
- (BOOL)_deviceAvailabilityOverrideState;
- (BOOL)_pickRoute:(id)route completion:(id)completion;
- (BOOL)_shouldSendDelegateRoutesChanged;
- (BOOL)addPickedRoute:(id)route completion:(id)completion;
- (BOOL)airtunesRouteIsPicked;
- (BOOL)alwaysAllowUpdates;
- (BOOL)handsetRouteIsPicked;
- (BOOL)pickBestDeviceRoute;
- (BOOL)pickHandsetRoute;
- (BOOL)pickSpeakerRoute;
- (BOOL)receiverRouteIsPicked;
- (BOOL)removePickedRoute:(id)route completion:(id)completion;
- (BOOL)routeOtherThanHandsetAndSpeakerAvailable;
- (BOOL)routeOtherThanHandsetAvailable;
- (BOOL)speakerRouteIsPicked;
- (BOOL)volumeControlIsAvailable;
- (BOOL)wirelessDisplayRouteIsPicked;
- (BOOL)wirelessDisplayRoutesAvailable;
- (MPAVOutputDevicePlaybackDataSource)playbackDataSource;
- (MPAVRoute)pickedRoute;
- (MPAVRoutingController)init;
- (MPAVRoutingController)initWithDataSource:(id)source name:(id)name;
- (MPAVRoutingController)initWithName:(id)name;
- (MPAVRoutingControllerDelegate)delegate;
- (NSArray)availableRoutes;
- (NSArray)pickedRoutes;
- (NSString)description;
- (id)_fullStateDumpObject;
- (id)_pickedRouteInArray:(id)array;
- (id)_pickedRoutesInArray:(id)array;
- (id)_stateDumpObject;
- (id)cachedPickedRoutes;
- (id)cachedRoutes;
- (id)updateAvailableRoutes;
- (id)updatePickedRoutes;
- (id)videoRouteForRoute:(id)route;
- (int64_t)_externalScreenType:(BOOL *)type;
- (int64_t)_volumeControlStateForPickedRoute;
- (int64_t)activeRouteType;
- (int64_t)externalScreenType;
- (void)_activeAudioRouteDidChangeNotification:(id)notification;
- (void)_clearLegacyCachedRoute;
- (void)_externalScreenTypeDidChangeNotification:(id)notification;
- (void)_mediaServerDiedNotification:(id)notification;
- (void)_onQueueSetExternalScreenType:(int64_t)type;
- (void)_pickableRoutesDidChangeNotification:(id)notification;
- (void)_promptForHijackIfNeeded:(id)needed handler:(id)handler;
- (void)_registerNotifications;
- (void)_routeStatusDidChangeNotification:(id)notification;
- (void)_scheduleSendDelegateRoutesChanged;
- (void)_sendDelegateFailedToPickRouteWithError:(id)error;
- (void)_sendDelegatePickedRoutesChanged;
- (void)_setExternalScreenType:(int64_t)type;
- (void)_setVolumeControlStateForPickedRoute:(int64_t)route;
- (void)_syncUpdateRoutes;
- (void)_unregisterNotifications;
- (void)_updateCachedRoutes;
- (void)_volumeControlAvailabilityDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)fetchAvailableRoutesWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)getActiveRouteWithTimeout:(double)timeout completion:(id)completion;
- (void)selectRoute:(id)route operation:(int64_t)operation completion:(id)completion;
- (void)selectRoutes:(id)routes operation:(int64_t)operation completion:(id)completion;
- (void)setCachedRoutes:(id)routes;
- (void)setCategory:(id)category;
- (void)setPresentedBundleID:(id)d;
- (void)setRepresentedBundleID:(id)d;
- (void)unpickAirPlayScreenRouteWithCompletion:(id)completion;
- (void)unpickTVRoutes;
@end

@implementation MPAVRoutingController

+ (MPAVRoute)systemRoute
{
  if (systemRoute_onceToken != -1)
  {
    dispatch_once(&systemRoute_onceToken, &__block_literal_global_53);
  }

  v3 = systemRoute_systemRoute;

  return v3;
}

void __36__MPAVRoutingController_systemRoute__block_invoke()
{
  v0 = [[MPAVEndpointRoute alloc] initWithEndpoint:MRAVEndpointGetLocalEndpoint()];
  v1 = systemRoute_systemRoute;
  systemRoute_systemRoute = v0;
}

- (void)_registerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__pickableRoutesDidChangeNotification_ name:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self->_dataSource];
  [defaultCenter addObserver:self selector:sel__routeStatusDidChangeNotification_ name:@"MPAVRoutingDataSourceFailureNotification" object:self->_dataSource];
  [defaultCenter addObserver:self selector:sel__volumeControlAvailabilityDidChangeNotification_ name:@"MPAVRoutingDataSourceVolumeControlAvailabilityDidChangeNotification" object:self->_dataSource];
  [defaultCenter addObserver:self selector:sel__externalScreenTypeDidChangeNotification_ name:@"MPAVRoutingDataSourceExternalScreenTypeDidChangeNotification" object:self->_dataSource];
  [defaultCenter addObserver:self selector:sel__activeAudioRouteDidChangeNotification_ name:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:self->_dataSource];
  objc_initWeak(&location, self);
  _sharedWorkerQueue = [objc_opt_class() _sharedWorkerQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MPAVRoutingController__registerNotifications__block_invoke;
  v5[3] = &unk_1E7676D98;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch("com.apple.airplay.deviceAvailability", &self->_deviceAvailabilityNotifyToken, _sharedWorkerQueue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

+ (id)_sharedWorkerQueue
{
  if (_sharedWorkerQueue_onceToken != -1)
  {
    dispatch_once(&_sharedWorkerQueue_onceToken, &__block_literal_global_7592);
  }

  v3 = _sharedWorkerQueue___sharedWorkerQueue;

  return v3;
}

void __43__MPAVRoutingController__sharedWorkerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaPlayer.MPAVRoutingController/sharedWorkerQueue", v2);
  v1 = _sharedWorkerQueue___sharedWorkerQueue;
  _sharedWorkerQueue___sharedWorkerQueue = v0;
}

void __57__MPAVRoutingController__sendDelegatePickedRoutesChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    v3 = [v2 pickedRoute];
    [WeakRetained routingController:v2 pickedRouteDidChange:v3];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = [v4 pickedRoutes];
    [WeakRetained routingController:v4 pickedRoutesDidChange:v5];
  }
}

void __59__MPAVRoutingController__scheduleSendDelegateRoutesChanged__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    *(v1 + 33) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MPAVRoutingController__scheduleSendDelegateRoutesChanged__block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __59__MPAVRoutingController__scheduleSendDelegateRoutesChanged__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingControllerAvailableRoutesDidChange:*(a1 + 32)];
  }

  *(*(a1 + 32) + 33) = 0;
}

- (MPAVRoute)pickedRoute
{
  v22 = *MEMORY[0x1E69E9840];
  pickedRoutes = [(MPAVRoutingController *)self pickedRoutes];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7464;
  v16 = __Block_byref_object_dispose__7465;
  v17 = 0;
  serialQueue = self->_serialQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__MPAVRoutingController_pickedRoute__block_invoke;
  v11[3] = &unk_1E76819F0;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(serialQueue, v11);
  v5 = v13[5];
  if (v5)
  {
    firstObject = v5;
  }

  else
  {
    firstObject = [pickedRoutes firstObject];
  }

  v7 = firstObject;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    routeName = [v7 routeName];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = routeName;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ returning single pickedRoute: %{public}@", buf, 0x16u);
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (NSArray)pickedRoutes
{
  cachedPickedRoutes = [(MPAVRoutingController *)self cachedPickedRoutes];
  if (![cachedPickedRoutes count] && -[MPAVRoutingController fetchAvailableRoutesSynchronously](self, "fetchAvailableRoutesSynchronously"))
  {
    [(MPAVRoutingController *)self _syncUpdateRoutes];
    cachedPickedRoutes2 = [(MPAVRoutingController *)self cachedPickedRoutes];

    cachedPickedRoutes = cachedPickedRoutes2;
  }

  return cachedPickedRoutes;
}

- (id)cachedPickedRoutes
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__7464;
  v8 = __Block_byref_object_dispose__7465;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __43__MPAVRoutingController_cachedPickedRoutes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_sendDelegatePickedRoutesChanged
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MPAVRoutingController__sendDelegatePickedRoutesChanged__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_scheduleSendDelegateRoutesChanged
{
  if ([(MPAVRoutingController *)self _shouldSendDelegateRoutesChanged])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MPAVRoutingController__scheduleSendDelegateRoutesChanged__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)_shouldSendDelegateRoutesChanged
{
  dataSource = [(MPAVRoutingController *)self dataSource];
  if (([dataSource didReceiveDiscoveryResults] & 1) == 0)
  {

    goto LABEL_7;
  }

  dataSource2 = [(MPAVRoutingController *)self dataSource];
  hasActiveAudioCategory = [dataSource2 hasActiveAudioCategory];

  if (!hasActiveAudioCategory)
  {
LABEL_7:
    LOBYTE(v6) = 0;
    return v6;
  }

  if ([(MPAVRoutingController *)self discoveryMode]|| (v6 = [(MPAVRoutingController *)self alwaysAllowUpdates]))
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)alwaysAllowUpdates
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)_clearLegacyCachedRoute
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MPAVRoutingController__clearLegacyCachedRoute__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __48__MPAVRoutingController__clearLegacyCachedRoute__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;
}

- (void)_updateCachedRoutes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__MPAVRoutingController__updateCachedRoutes__block_invoke;
  v2[3] = &unk_1E7676BF0;
  v2[4] = self;
  [(MPAVRoutingController *)self fetchAvailableRoutesWithCompletionQueue:MEMORY[0x1E69E96A0] completionHandler:v2];
}

- (MPAVOutputDevicePlaybackDataSource)playbackDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackDataSource);

  return WeakRetained;
}

- (MPAVRoutingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_fullStateDumpObject
{
  v21[7] = *MEMORY[0x1E69E9840];
  v20[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v4 = v3;
  dataSource = self->_dataSource;
  name = self->_name;
  if (!name)
  {
    name = @"<NONE>";
  }

  v21[0] = v3;
  v21[1] = name;
  v20[1] = @"name";
  v20[2] = @"dataSource";
  if (dataSource)
  {
    v7 = dataSource;
  }

  else
  {
    v7 = @"<NONE>";
  }

  v21[2] = v7;
  v20[3] = @"discoveryMode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_discoveryMode];
  v21[3] = v8;
  v20[4] = @"cachedRoutes";
  cachedRoutes = [(MPAVRoutingController *)self cachedRoutes];
  v10 = cachedRoutes;
  if (cachedRoutes)
  {
    v11 = cachedRoutes;
  }

  else
  {
    v11 = @"<NONE>";
  }

  v21[4] = v11;
  v20[5] = @"cachedPickedRoutes";
  cachedPickedRoutes = [(MPAVRoutingController *)self cachedPickedRoutes];
  v13 = cachedPickedRoutes;
  if (cachedPickedRoutes)
  {
    v14 = cachedPickedRoutes;
  }

  else
  {
    v14 = @"<NONE>";
  }

  v21[5] = v14;
  v20[6] = @"pendingRoutes";
  pendingPickedRoute = [(MPAVRoutingControllerSelectionQueue *)self->_routingControllerSelectionQueue pendingPickedRoute];
  v16 = pendingPickedRoute;
  if (pendingPickedRoute)
  {
    v17 = pendingPickedRoute;
  }

  else
  {
    v17 = @"<NONE>";
  }

  v21[6] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:7];

  return v18;
}

- (id)_stateDumpObject
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v7[1] = @"name";
  v8[0] = v3;
  name = self->_name;
  if (!name)
  {
    name = @"<NONE>";
  }

  v8[1] = name;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (BOOL)removePickedRoute:(id)route completion:(id)completion
{
  [(MPAVRoutingController *)self selectRoute:route operation:2 completion:completion];

  return [(MPAVRoutingController *)self supportsMultipleSelection];
}

- (BOOL)addPickedRoute:(id)route completion:(id)completion
{
  [(MPAVRoutingController *)self selectRoute:route operation:1 completion:completion];

  return [(MPAVRoutingController *)self supportsMultipleSelection];
}

- (BOOL)_pickRoute:(id)route completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  completionCopy = completion;
  if (!routeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAVRoutingController.m" lineNumber:1168 description:{@"Invalid parameter not satisfying: %@", @"route"}];
  }

  [(MPAVRoutingController *)self _clearLegacyCachedRoute];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  cachedPickedRoutes = [(MPAVRoutingController *)self cachedPickedRoutes];
  v10 = [cachedPickedRoutes countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(cachedPickedRoutes);
        }

        [*(*(&v26 + 1) + 8 * v12++) setPicked:0];
      }

      while (v10 != v12);
      v10 = [cachedPickedRoutes countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v30 = routeCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [(MPAVRoutingControllerSelectionQueue *)self->_routingControllerSelectionQueue addPendingRoutes:v13];
  objc_initWeak(&location, self);
  dataSource = self->_dataSource;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__MPAVRoutingController__pickRoute_completion___block_invoke;
  v20[3] = &unk_1E7676DC0;
  objc_copyWeak(&v24, &location);
  v15 = v13;
  v21 = v15;
  v16 = routeCopy;
  v22 = v16;
  v17 = completionCopy;
  v23 = v17;
  [(MPAVRoutingDataSource *)dataSource setPickedRoute:v16 withPassword:0 completion:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return 1;
}

void __47__MPAVRoutingController__pickRoute_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] removePendingRoutes:*(a1 + 32)];
    v6 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        v19 = v3;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Failed to pick single route %{public}@ error: %{public}@", buf, 0x16u);
      }

      [v5 _sendDelegateFailedToPickRouteWithError:v3];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        *buf = 138543362;
        v17 = v9;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Successfully picked single route %{public}@", buf, 0xCu);
      }

      v10 = *(a1 + 40);
      v14 = @"MPAVRoutingControllerRouteUserInfoKey";
      v15 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"MPAVRoutingControllerDidPickRouteNotification" object:v5 userInfo:v11];
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }
}

void __47__MPAVRoutingController__registerNotifications__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    WeakRetained[60] = (state64 & 3) != 0;
    [WeakRetained _scheduleSendDelegateRoutesChanged];
  }
}

- (void)_volumeControlAvailabilityDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"VolumeControlAvailability"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [(MPAVRoutingController *)self _setVolumeControlStateForPickedRoute:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingController:self volumeControlAvailabilityDidChange:bOOLValue];
  }
}

- (void)_routeStatusDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKey:@"Route"];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 objectForKey:@"Error"];

  v8 = v10;
  if (v10)
  {
    isPicked = [v10 isPicked];
    v8 = v10;
    if ((isPicked & 1) != 0 || v7)
    {
      [(MPAVRoutingControllerSelectionQueue *)self->_routingControllerSelectionQueue cancelInProgressSelectionForRoute:v10];
      v8 = v10;
    }
  }

  if ([v8 routeSubtype] == 9)
  {
    [(MPAVRoutingController *)self _sendDelegateFailedToPickRouteWithError:v7];
  }
}

- (void)_pickableRoutesDidChangeNotification:(id)notification
{
  _sharedWorkerQueue = [objc_opt_class() _sharedWorkerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPAVRoutingController__pickableRoutesDidChangeNotification___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(_sharedWorkerQueue, block);
}

uint64_t __62__MPAVRoutingController__pickableRoutesDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__MPAVRoutingController__pickableRoutesDidChangeNotification___block_invoke_2;
  v3[3] = &unk_1E7676BF0;
  v3[4] = v1;
  return [v1 fetchAvailableRoutesWithCompletionQueue:MEMORY[0x1E69E96A0] completionHandler:v3];
}

uint64_t __62__MPAVRoutingController__pickableRoutesDidChangeNotification___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _sendDelegatePickedRoutesChanged];
  [*(*(a1 + 32) + 48) pickedRouteDidChange];
  v2 = *(a1 + 32);

  return [v2 _scheduleSendDelegateRoutesChanged];
}

- (void)_mediaServerDiedNotification:(id)notification
{
  [(MPAVRoutingController *)self _unregisterNotifications];

  [(MPAVRoutingController *)self _registerNotifications];
}

- (void)_externalScreenTypeDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"ExternalScreenType"];
  integerValue = [v5 integerValue];

  [(MPAVRoutingController *)self _setExternalScreenType:integerValue];
}

- (void)_activeAudioRouteDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  [(MPAVRoutingController *)self _clearLegacyCachedRoute];
  [(MPAVRoutingController *)self _updateCachedRoutes];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __64__MPAVRoutingController__activeAudioRouteDidChangeNotification___block_invoke;
  v10 = &unk_1E76823C0;
  v5 = notificationCopy;
  v11 = v5;
  selfCopy = self;
  v6 = _Block_copy(&v7);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6[2](v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __64__MPAVRoutingController__activeAudioRouteDidChangeNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) userInfo];
    v8 = 136446466;
    v9 = "[MPAVRoutingController _activeAudioRouteDidChangeNotification:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "🎥 %{public}s %{public}@", &v8, 0x16u);
  }

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69AE9C8]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 88));
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained routingControllerDidPauseFromActiveRouteChange:*(a1 + 40)];
    }
  }
}

- (int64_t)_volumeControlStateForPickedRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MPAVRoutingController__volumeControlStateForPickedRoute__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_unregisterNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self->_dataSource];
  [defaultCenter removeObserver:self name:@"MPAVRoutingDataSourceFailureNotification" object:self->_dataSource];
  [defaultCenter removeObserver:self name:@"MPAVRoutingDataSourceVolumeControlAvailabilityDidChangeNotification" object:self->_dataSource];
  [defaultCenter removeObserver:self name:@"MPAVRoutingDataSourceExternalScreenTypeDidChangeNotification" object:self->_dataSource];
  [defaultCenter removeObserver:self name:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:self->_dataSource];
  notify_cancel(self->_deviceAvailabilityNotifyToken);
}

- (void)_setVolumeControlStateForPickedRoute:(int64_t)route
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__MPAVRoutingController__setVolumeControlStateForPickedRoute___block_invoke;
  v4[3] = &unk_1E7682398;
  v4[4] = self;
  v4[5] = route;
  dispatch_sync(serialQueue, v4);
}

void __62__MPAVRoutingController__setVolumeControlStateForPickedRoute___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 40);
  *(v3 + 40) = v4;
  if (v5 != v4)
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MPAVRoutingController__setVolumeControlStateForPickedRoute___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __62__MPAVRoutingController__setVolumeControlStateForPickedRoute___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPAVRoutingControllerDidUpdateVolumeControlStateNotification" object:*(a1 + 32) userInfo:0];
}

- (void)_setExternalScreenType:(int64_t)type
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MPAVRoutingController__setExternalScreenType___block_invoke;
  v4[3] = &unk_1E7682398;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(serialQueue, v4);
}

- (void)_sendDelegateFailedToPickRouteWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MPAVRoutingController__sendDelegateFailedToPickRouteWithError___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __65__MPAVRoutingController__sendDelegateFailedToPickRouteWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingController:*(a1 + 32) didFailToPickRouteWithError:*(a1 + 40)];
  }
}

- (void)_promptForHijackIfNeeded:(id)needed handler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  handlerCopy = handler;
  if (handlerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x3032000000;
      v46[3] = __Block_byref_object_copy__7464;
      v46[4] = __Block_byref_object_dispose__7465;
      v47 = 0;
      v10 = objc_alloc(MEMORY[0x1E69635F8]);
      presentedBundleID = [(MPAVRoutingController *)self presentedBundleID];
      v12 = [v10 initWithBundleIdentifier:presentedBundleID allowPlaceholder:0 error:0];

      localizedName = [v12 localizedName];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__MPAVRoutingController__promptForHijackIfNeeded_handler___block_invoke;
      aBlock[3] = &unk_1E7676CD8;
      aBlock[4] = self;
      v14 = neededCopy;
      v42 = v14;
      v45 = v46;
      v15 = localizedName;
      v43 = v15;
      v16 = handlerCopy;
      v44 = v16;
      v30 = _Block_copy(aBlock);
      v17 = objc_loadWeakRetained(&self->_playbackDataSource);
      v18 = objc_loadWeakRetained(&self->_delegate);
      isPicked = [v14 isPicked];
      if (v17)
      {
        v20 = isPicked;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = os_log_create("com.apple.amp.mediaplayer", "Routing");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v49 = v14;
          v50 = 2114;
          v51 = v17;
          _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_DEFAULT, "Skipping playback checks. Route: %{public}@, playbackDataSource: %{public}@", buf, 0x16u);
        }

        (*(v16 + 2))(v16, 1);
      }

      else
      {
        v29 = v14;
        dataSource = [(MPAVRoutingController *)self dataSource];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          dataSource2 = [(MPAVRoutingController *)self dataSource];
          endpointRoute = [dataSource2 endpointRoute];
        }

        else
        {
          endpointRoute = 0;
        }

        v26 = os_log_create("com.apple.amp.mediaplayer", "Routing");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v29;
          _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "Hijack - Requesting playbackState for %@", buf, 0xCu);
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __58__MPAVRoutingController__promptForHijackIfNeeded_handler___block_invoke_74;
        v31[3] = &unk_1E7676D28;
        v32 = v29;
        v27 = endpointRoute;
        v33 = v27;
        v28 = v32;
        v34 = v28;
        v35 = v18;
        v38 = v30;
        selfCopy = self;
        v39 = v16;
        v40 = v46;
        v37 = v15;
        [v17 getOutputDeviceIsPlaying:v28 completion:v31];
      }

      _Block_object_dispose(v46, 8);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1);
    }
  }
}

void __58__MPAVRoutingController__promptForHijackIfNeeded_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__MPAVRoutingController__promptForHijackIfNeeded_handler___block_invoke_2;
  v9[3] = &unk_1E767AC48;
  v9[4] = v5;
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  [WeakRetained routingController:v5 shouldHijackRoute:v6 alertStyle:a2 busyRouteName:v7 presentingAppName:v8 completion:v9];
}

void __58__MPAVRoutingController__promptForHijackIfNeeded_handler___block_invoke_74(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 67109378;
    v31 = a2;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Hijack - playbackState is %{BOOL}u for %@", buf, 0x12u);
  }

  if (([*(a1 + 40) isDeviceRoute] & 1) != 0 || !objc_msgSend(*(a1 + 48), "isDeviceRoute"))
  {
    v6 = [*(a1 + 48) isProxyGroupPlayer];
    if (v6)
    {
      LOBYTE(v6) = [*(a1 + 64) routeIsLeaderOfEndpoint:*(a1 + 48)];
    }

    if (a2 && (v6 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [*(a1 + 56) routingController:*(a1 + 64) shouldHijackRoute:*(a1 + 48) alertStyle:0 busyRouteName:*(*(*(a1 + 96) + 8) + 40) presentingAppName:*(a1 + 72) completion:*(a1 + 88)];
    }

    else
    {
      MRAVOutputContextGetSharedAudioPresentationContext();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = MRAVOutputContextCopyOutputDevices();
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v26;
LABEL_16:
        v12 = 0;
        while (1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = MRAVOutputDeviceCopyUniqueIdentifier();
          v14 = [*(a1 + 48) routeUID];
          v15 = [v13 isEqualToString:v14];

          if ((v10 & 1) != 0 || (MRAVOutputDeviceIsLocalDevice() & 1) == 0)
          {
            v16 = MRAVOutputDeviceCopyName();
            v17 = *(*(a1 + 96) + 8);
            v18 = *(v17 + 40);
            *(v17 + 40) = v16;

            if (v15)
            {

              goto LABEL_30;
            }

            v10 = 1;
          }

          else
          {
            v10 = 0;
          }

          if (v9 == ++v12)
          {
            v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v9)
            {
              goto LABEL_16;
            }

            if ((v10 & 1) == 0)
            {
              goto LABEL_38;
            }

            if (!v15)
            {
LABEL_34:
              v20 = [*(a1 + 64) pickedRoute];
              if (![v20 isDeviceRoute])
              {

                goto LABEL_38;
              }

              v21 = objc_opt_respondsToSelector();

              if ((v21 & 1) == 0)
              {
                goto LABEL_38;
              }

              (*(*(a1 + 80) + 16))();
              goto LABEL_39;
            }

LABEL_30:
            if ([*(a1 + 48) isAirPlayRoute])
            {
              v22 = *(a1 + 56);
              v19 = v22.i64[0];
              v23 = *(a1 + 80);
              v24 = *(a1 + 88);
              MRMediaRemoteGetNowPlayingClient();

              goto LABEL_39;
            }

            goto LABEL_34;
          }
        }
      }

LABEL_38:
      (*(*(a1 + 88) + 16))();
LABEL_39:
    }
  }

  else if (a2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

void __58__MPAVRoutingController__promptForHijackIfNeeded_handler___block_invoke_75(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MRNowPlayingClientGetBundleIdentifier() copy];
  v3 = [*(a1 + 32) presentedBundleID];
  v4 = [v3 isEqualToString:v2];

  v5 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = @"does NOT represent NowPlaying App";
    }

    else
    {
      v6 = @"represents NowPlaying App";
    }

    v7 = [*(a1 + 32) presentedBundleID];
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v2;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Hijack - RoutingController %{public}@ Presenting: %{public}@ NowPlaying: %{public}@", &v8, 0x20u);
  }

  if (v4 & 1) == 0 && *(a1 + 64) == 1 && (objc_opt_respondsToSelector())
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __58__MPAVRoutingController__promptForHijackIfNeeded_handler___block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) presentedBundleID];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Perform hijack for %@", &v9, 0xCu);
    }

    v4 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v7 = [*(a1 + 32) presentedBundleID];
    [v4 setAttribute:v7 forKey:*MEMORY[0x1E69AE9E8] error:0];
    goto LABEL_7;
  }

  if (v5)
  {
    v7 = [*(a1 + 32) presentedBundleID];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "Do not perform hijack for %@", &v9, 0xCu);
LABEL_7:
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_pickedRoutesInArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isPicked])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_pickedRouteInArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isPicked])
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_onQueueSetExternalScreenType:(int64_t)type
{
  if (self->_externalScreenType != type)
  {
    block[5] = v3;
    block[6] = v4;
    self->_externalScreenType = type;
    self->_hasExternalScreenType = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__MPAVRoutingController__onQueueSetExternalScreenType___block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __55__MPAVRoutingController__onQueueSetExternalScreenType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingControllerExternalScreenTypeDidChange:*(a1 + 32)];
  }
}

- (int64_t)_externalScreenType:(BOOL *)type
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MPAVRoutingController__externalScreenType___block_invoke;
  block[3] = &unk_1E767D4B8;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v8;
  dispatch_sync(serialQueue, block);
  if (type)
  {
    *type = *(v9 + 24);
  }

  v5 = v13[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void *__45__MPAVRoutingController__externalScreenType___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 24);
  *(*(result[6] + 8) + 24) = *(result[4] + 32);
  return result;
}

- (BOOL)_deviceAvailabilityOverrideState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MPAVRoutingController__deviceAvailabilityOverrideState__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_syncUpdateRoutes
{
  v3 = [(MPAVRoutingDataSource *)self->_dataSource getRoutesForCategory:self->_category];
  [(MPAVRoutingController *)self setCachedRoutes:v3];
}

- (void)unpickTVRoutes
{
  v18 = *MEMORY[0x1E69E9840];
  MRAVOutputContextGetSharedAudioPresentationContext();
  v2 = MRAVOutputContextCopyOutputDevices();
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (MRAVOutputDeviceGetSubtype() == 11 || MRAVOutputDeviceGetSubtype() == 13)
        {
          [v3 addObject:{v9, v13}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    MRAVOutputContextGetSharedAudioPresentationContext();
    MRAVOutputContextRemoveOutputDevices();
  }

  else
  {
    mEMORY[0x1E69587F0] = [MEMORY[0x1E69587F0] sharedAudioPresentationOutputContext];
    mEMORY[0x1E69587F0]2 = [MEMORY[0x1E69587F0] sharedAudioPresentationOutputContext];
    outputDevices = [mEMORY[0x1E69587F0]2 outputDevices];
    [mEMORY[0x1E69587F0] setOutputDevices:outputDevices];
  }
}

- (BOOL)wirelessDisplayRoutesAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  availableRoutes = [(MPAVRoutingController *)self availableRoutes];
  v4 = [availableRoutes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(availableRoutes);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 supportsWirelessDisplay] & 1) != 0 || objc_msgSend(v8, "routeType") == 2)
        {

          return 1;
        }
      }

      v5 = [availableRoutes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(MPAVRoutingController *)self _deviceAvailabilityOverrideState]|| [(MPAVRoutingDataSource *)self->_dataSource devicePresenceDetected];
}

- (BOOL)wirelessDisplayRouteIsPicked
{
  pickedRoute = [(MPAVRoutingController *)self pickedRoute];
  v3 = [pickedRoute routeType] == 2;

  return v3;
}

- (id)videoRouteForRoute:(id)route
{
  v18 = *MEMORY[0x1E69E9840];
  routeUID = [route routeUID];
  if ([routeUID length])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    availableRoutes = [(MPAVRoutingController *)self availableRoutes];
    v6 = [availableRoutes countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(availableRoutes);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          routeUID2 = [v9 routeUID];
          if ([routeUID isEqualToString:routeUID2])
          {
            routeType = [v9 routeType];

            if (routeType == 1)
            {
              v6 = v9;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v6 = [availableRoutes countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

LABEL_15:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)unpickAirPlayScreenRouteWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = self->_dataSource;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MPAVRoutingController_unpickAirPlayScreenRouteWithCompletion___block_invoke;
  v7[3] = &unk_1E76816D0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MPAVRoutingDataSource *)dataSource unpickAirPlayAVRoutesWithCompletion:v7];
}

uint64_t __64__MPAVRoutingController_unpickAirPlayScreenRouteWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)routeOtherThanHandsetAvailable
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  availableRoutes = [(MPAVRoutingController *)self availableRoutes];
  v4 = [availableRoutes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(availableRoutes);
        }

        if ([*(*(&v9 + 1) + 8 * v7) pickableRouteType])
        {

          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [availableRoutes countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(MPAVRoutingController *)self _deviceAvailabilityOverrideState]|| [(MPAVRoutingDataSource *)self->_dataSource devicePresenceDetected];
}

- (BOOL)routeOtherThanHandsetAndSpeakerAvailable
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  availableRoutes = [(MPAVRoutingController *)self availableRoutes];
  v4 = [availableRoutes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(availableRoutes);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 pickableRouteType] && objc_msgSend(v8, "routeSubtype") != 1)
        {

          return 1;
        }
      }

      v5 = [availableRoutes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(MPAVRoutingController *)self _deviceAvailabilityOverrideState]|| [(MPAVRoutingDataSource *)self->_dataSource devicePresenceDetected];
}

- (BOOL)receiverRouteIsPicked
{
  pickedRoute = [(MPAVRoutingController *)self pickedRoute];
  v3 = [pickedRoute routeSubtype] == 4;

  return v3;
}

- (BOOL)speakerRouteIsPicked
{
  pickedRoute = [(MPAVRoutingController *)self pickedRoute];
  v3 = [pickedRoute routeSubtype] == 1;

  return v3;
}

- (void)selectRoutes:(id)routes operation:(int64_t)operation completion:(id)completion
{
  routesCopy = routes;
  completionCopy = completion;
  [(MPAVRoutingControllerSelectionQueue *)self->_routingControllerSelectionQueue addPendingRoutes:routesCopy];
  firstObject = [routesCopy firstObject];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MPAVRoutingController_selectRoutes_operation_completion___block_invoke;
  v13[3] = &unk_1E7676C18;
  v13[4] = self;
  v14 = routesCopy;
  v15 = completionCopy;
  operationCopy = operation;
  v11 = completionCopy;
  v12 = routesCopy;
  [(MPAVRoutingController *)self _promptForHijackIfNeeded:firstObject handler:v13];
}

void __59__MPAVRoutingController_selectRoutes_operation_completion___block_invoke(void *a1, int a2)
{
  v3 = *(a1[4] + 48);
  if (a2)
  {
    v5 = a1[6];
    v4 = a1[7];
    v6 = a1[5];

    [v3 enqueueSelectionOperation:v4 forRoutes:v6 completion:v5];
  }

  else
  {
    [v3 removePendingRoutes:a1[5]];
    v7 = a1[6];
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPErrorDomain" code:1 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)selectRoute:(id)route operation:(int64_t)operation completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v8 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  routeCopy2 = route;
  v11 = [v8 arrayWithObjects:&routeCopy count:1];

  [(MPAVRoutingController *)self selectRoutes:v11 operation:operation completion:completionCopy, routeCopy, v13];
}

- (BOOL)pickSpeakerRoute
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  availableRoutes = [(MPAVRoutingController *)self availableRoutes];
  v4 = [availableRoutes countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(availableRoutes);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 routeSubtype] == 1)
        {
          routingControllerSelectionQueue = self->_routingControllerSelectionQueue;
          v18 = v8;
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
          [(MPAVRoutingControllerSelectionQueue *)routingControllerSelectionQueue enqueueSelectionOperation:0 forRoutes:v10 completion:0];

          serialQueue = self->_serialQueue;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __41__MPAVRoutingController_pickSpeakerRoute__block_invoke;
          v13[3] = &unk_1E76823C0;
          v13[4] = self;
          v13[5] = v8;
          dispatch_sync(serialQueue, v13);
          goto LABEL_11;
        }
      }

      v5 = [availableRoutes countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return 1;
}

- (BOOL)pickHandsetRoute
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  availableRoutes = [(MPAVRoutingController *)self availableRoutes];
  v4 = [availableRoutes countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(availableRoutes);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (![v7 pickableRouteType])
        {
          routingControllerSelectionQueue = self->_routingControllerSelectionQueue;
          v17 = v7;
          LOBYTE(v4) = 1;
          v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
          [(MPAVRoutingControllerSelectionQueue *)routingControllerSelectionQueue enqueueSelectionOperation:0 forRoutes:v9 completion:0];

          serialQueue = self->_serialQueue;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __41__MPAVRoutingController_pickHandsetRoute__block_invoke;
          v12[3] = &unk_1E76823C0;
          v12[4] = self;
          v12[5] = v7;
          dispatch_sync(serialQueue, v12);
          goto LABEL_11;
        }
      }

      v4 = [availableRoutes countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)pickBestDeviceRoute
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  availableRoutes = [(MPAVRoutingController *)self availableRoutes];
  v4 = [availableRoutes countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(availableRoutes);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 routeSubtype] == 1 || objc_msgSend(v8, "routeSubtype") == 2)
        {
          routingControllerSelectionQueue = self->_routingControllerSelectionQueue;
          v17 = v8;
          v9 = 1;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
          [(MPAVRoutingControllerSelectionQueue *)routingControllerSelectionQueue enqueueSelectionOperation:0 forRoutes:v11 completion:0];

          goto LABEL_13;
        }
      }

      v5 = [availableRoutes countByEnumeratingWithState:&v13 objects:v18 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (BOOL)handsetRouteIsPicked
{
  pickedRoute = [(MPAVRoutingController *)self pickedRoute];
  v3 = [pickedRoute pickableRouteType] == 0;

  return v3;
}

- (void)getActiveRouteWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _getActiveRouteWithTimeout:-[MPAVRoutingController activeRouteType](self type:"activeRouteType") completion:{completionCopy, timeout}];
}

- (void)fetchAvailableRoutesWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (handlerCopy)
  {
    _sharedWorkerQueue = [objc_opt_class() _sharedWorkerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__MPAVRoutingController_fetchAvailableRoutesWithCompletionQueue_completionHandler___block_invoke;
    block[3] = &unk_1E7681568;
    block[4] = self;
    v10 = queueCopy;
    v11 = handlerCopy;
    dispatch_async(_sharedWorkerQueue, block);
  }
}

void __83__MPAVRoutingController_fetchAvailableRoutesWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) getRoutesForCategory:*(*(a1 + 32) + 120)];
  v3 = [v2 copy];

  [*(a1 + 32) setCachedRoutes:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__MPAVRoutingController_fetchAvailableRoutesWithCompletionQueue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E76824C8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)updatePickedRoutes
{
  [(MPAVRoutingController *)self _syncUpdateRoutes];

  return [(MPAVRoutingController *)self cachedPickedRoutes];
}

- (id)updateAvailableRoutes
{
  [(MPAVRoutingController *)self _syncUpdateRoutes];

  return [(MPAVRoutingController *)self cachedRoutes];
}

- (BOOL)airtunesRouteIsPicked
{
  pickedRoute = [(MPAVRoutingController *)self pickedRoute];
  v3 = [pickedRoute routeSubtype] == 9;

  return v3;
}

- (void)setRepresentedBundleID:(id)d
{
  dCopy = d;
  if (self->_representedBundleID != dCopy)
  {
    v7 = dCopy;
    objc_storeStrong(&self->_representedBundleID, d);
    if ([objc_opt_class() bundleIdRepresentsLongFormVideoContent:self->_representedBundleID])
    {
      v6 = 1;
    }

    else
    {
      v6 = [objc_opt_class() bundleIdRepresentsLongFormVideoContent:self->_presentedBundleID];
    }

    self->_representsLongFormVideoContent = v6;
    dCopy = v7;
  }
}

- (void)setPresentedBundleID:(id)d
{
  dCopy = d;
  if (self->_presentedBundleID != dCopy)
  {
    v7 = dCopy;
    objc_storeStrong(&self->_presentedBundleID, d);
    if ([objc_opt_class() bundleIdRepresentsLongFormVideoContent:self->_presentedBundleID])
    {
      v6 = 1;
    }

    else
    {
      v6 = [objc_opt_class() bundleIdRepresentsLongFormVideoContent:self->_representedBundleID];
    }

    self->_representsLongFormVideoContent = v6;
    dCopy = v7;
  }
}

- (BOOL)volumeControlIsAvailable
{
  _volumeControlStateForPickedRoute = [(MPAVRoutingController *)self _volumeControlStateForPickedRoute];
  if (!_volumeControlStateForPickedRoute)
  {
    dataSource = self->_dataSource;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__MPAVRoutingController_volumeControlIsAvailable__block_invoke;
    v6[3] = &unk_1E7679340;
    v6[4] = self;
    [(MPAVRoutingDataSource *)dataSource getPickedRouteHasVolumeControlWithCompletion:v6];
  }

  return _volumeControlStateForPickedRoute == 1;
}

uint64_t __49__MPAVRoutingController_volumeControlIsAvailable__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [*(a1 + 32) _setVolumeControlStateForPickedRoute:v3];
  v4 = *(a1 + 32);

  return [v4 _scheduleSendDelegateRoutesChanged];
}

- (void)setCategory:(id)category
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [category copy];
  category = self->_category;
  self->_category = v4;

  v6 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_category;
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "Audio category override changed to %{public}@", &v8, 0xCu);
  }

  [(MPAVRoutingController *)self _updateCachedRoutes];
}

- (int64_t)externalScreenType
{
  v7 = 0;
  v3 = [(MPAVRoutingController *)self _externalScreenType:&v7];
  if ((v7 & 1) == 0)
  {
    dataSource = self->_dataSource;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__MPAVRoutingController_externalScreenType__block_invoke;
    v6[3] = &unk_1E7681CA0;
    v6[4] = self;
    [(MPAVRoutingDataSource *)dataSource getExternalScreenTypeWithCompletion:v6];
  }

  return v3;
}

- (NSArray)availableRoutes
{
  cachedRoutes = [(MPAVRoutingController *)self cachedRoutes];
  if (!cachedRoutes)
  {
    if ([(MPAVRoutingController *)self fetchAvailableRoutesSynchronously])
    {
      [(MPAVRoutingController *)self _syncUpdateRoutes];
      cachedRoutes = [(MPAVRoutingController *)self cachedRoutes];
      [(MPAVRoutingController *)self _scheduleSendDelegateRoutesChanged];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __40__MPAVRoutingController_availableRoutes__block_invoke;
      v7[3] = &unk_1E7676BF0;
      v7[4] = self;
      [(MPAVRoutingController *)self fetchAvailableRoutesWithCompletionQueue:MEMORY[0x1E69E96A0] completionHandler:v7];
      cachedRoutes = 0;
    }
  }

  if ([(NSArray *)cachedRoutes count])
  {
    v4 = cachedRoutes;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setCachedRoutes:(id)routes
{
  routesCopy = routes;
  v3 = routesCopy;
  msv_dispatch_sync_on_queue();
}

void __41__MPAVRoutingController_setCachedRoutes___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = [*(v6 + 8) valueForKey:@"routeName"];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v16 = 138543618;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ updated routes: [%@]", &v16, 0x16u);
  }

  v9 = [*(a1 + 32) _pickedRoutesInArray:*(a1 + 40)];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  v12 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = [*(v13 + 16) valueForKey:@"routeName"];
    v15 = [v14 componentsJoinedByString:{@", "}];
    v16 = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = v15;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ updated picked routes: [%@]", &v16, 0x16u);
  }
}

- (id)cachedRoutes
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__7464;
  v8 = __Block_byref_object_dispose__7465;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __37__MPAVRoutingController_cachedRoutes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)description
{
  name = self->_name;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (name)
  {
    [v4 stringWithFormat:@"<%@ %p %@ dataSource=%@>", v5, self, self->_name, self->_dataSource];
  }

  else
  {
    [v4 stringWithFormat:@"<%@ %p dataSource=%@>", v5, self, self->_dataSource, v8];
  }
  v6 = ;

  return v6;
}

- (void)dealloc
{
  MEMORY[0x1A58DF190](self->_stateHandle, a2);
  [(MPAVRoutingController *)self _unregisterNotifications];
  v3.receiver = self;
  v3.super_class = MPAVRoutingController;
  [(MPAVRoutingController *)&v3 dealloc];
}

- (MPAVRoutingController)init
{
  v3 = objc_alloc_init(MPAVOutputDeviceRoutingDataSource);
  v4 = [(MPAVRoutingController *)self initWithDataSource:v3 name:0];

  return v4;
}

- (MPAVRoutingController)initWithName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(MPAVOutputDeviceRoutingDataSource);
  v6 = [(MPAVRoutingController *)self initWithDataSource:v5 name:nameCopy];

  return v6;
}

- (MPAVRoutingController)initWithDataSource:(id)source name:(id)name
{
  sourceCopy = source;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = MPAVRoutingController;
  v9 = [(MPAVRoutingController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_alwaysAllowUpdates = 1;
    objc_storeStrong(&v9->_dataSource, source);
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_discoveryMode = 0;
    v10->_routeTypes = -1;
    v13 = [[MPAVRoutingControllerSelectionQueue alloc] initWithRoutingController:v10];
    routingControllerSelectionQueue = v10->_routingControllerSelectionQueue;
    v10->_routingControllerSelectionQueue = v13;

    v15 = dispatch_queue_create("com.apple.MediaPlayer.MPAVRoutingController/serialQueue", 0);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v15;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49__MPAVRoutingController_initWithDataSource_name___block_invoke;
    v19[3] = &unk_1E7681F08;
    v17 = v10;
    v20 = v17;
    v17->_stateHandle = __49__MPAVRoutingController_initWithDataSource_name___block_invoke(v19);
    [(MPAVRoutingController *)v17 _registerNotifications];
  }

  return v10;
}

uint64_t __49__MPAVRoutingController_initWithDataSource_name___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = dispatch_get_global_queue(0, 0);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), *(a1 + 32)];
  objc_copyWeak(&v6, &location);
  v4 = MSVLogAddStateHandler();
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
  return v4;
}

uint64_t __49__MPAVRoutingController_initWithDataSource_name___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _fullStateDumpObject];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)activeRouteType
{
  if (self->_presentedBundleID)
  {
    presentedBundleID = self->_presentedBundleID;

    return MEMORY[0x1EEE1C8A8](presentedBundleID, a2);
  }

  else
  {
    v4 = objc_opt_class();

    return [v4 activeRouteType];
  }
}

+ (void)_getActiveRouteWithTimeout:(double)timeout type:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if (_getActiveRouteWithTimeout_type_completion__onceToken != -1)
  {
    dispatch_once(&_getActiveRouteWithTimeout_type_completion__onceToken, &__block_literal_global_59);
  }

  v7 = completionCopy;
  v6 = completionCopy;
  MRAVEndpointResolveActiveSystemEndpointWithType();
}

void __68__MPAVRoutingController__getActiveRouteWithTimeout_type_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = +[MPAVRoutingController systemRoute];
  if (!a2 || MRAVEndpointGetLocalEndpoint() == a2)
  {
    v7 = v4;
  }

  else
  {
    v8 = [[MPAVEndpointRoute alloc] initWithEndpoint:a2];

    v5 = MRAVEndpointGetExternalDevice();
    if (v5)
    {
      v6 = [[MPAVRouteConnection alloc] initWithExternalDeviceObject:v5];
      [(MPAVEndpointRoute *)v8 setConnection:v6];
    }

    v7 = v8;
  }

  v9 = v7;
  (*(*(a1 + 32) + 16))();
}

void __68__MPAVRoutingController__getActiveRouteWithTimeout_type_completion___block_invoke()
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = [v2 addObserverForName:*MEMORY[0x1E69B0C30] object:0 queue:0 usingBlock:&__block_literal_global_63_7582];
  v1 = _getActiveRouteWithTimeout_type_completion____activeRouteNotificationObserver;
  _getActiveRouteWithTimeout_type_completion____activeRouteNotificationObserver = v0;
}

void __68__MPAVRoutingController__getActiveRouteWithTimeout_type_completion___block_invoke_3()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"MPAVRoutingControllerActiveSystemRouteDidChangeNotification" object:0];
}

+ (id)_symbolNameForProductIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69B0A18];
  identifierCopy = identifier;
  sharedProvider = [v3 sharedProvider];
  v6 = [sharedProvider symbolNameForProductIdentifier:identifierCopy];

  return v6;
}

+ (id)_symbolNameForModelID:(id)d
{
  v3 = MEMORY[0x1E69B0A18];
  dCopy = d;
  sharedProvider = [v3 sharedProvider];
  v6 = [sharedProvider symbolNameForModelID:dCopy];

  return v6;
}

+ (BOOL)bundleIdRepresentsLongFormVideoContent:(id)content
{
  v3 = MEMORY[0x1E69AED10];
  contentCopy = content;
  sharedAVSystemController = [v3 sharedAVSystemController];
  v6 = [sharedAVSystemController hasRouteSharingPolicyLongFormVideo:contentCopy];

  return v6;
}

+ (id)systemRouteWithContextUID:(id)d
{
  if (d)
  {
    systemRoute = [[MPAVEndpointRoute alloc] initWithEndpoint:MRAVEndpointGetLocalEndpoint()];
  }

  else
  {
    systemRoute = [self systemRoute];
  }

  return systemRoute;
}

+ (void)setActiveRoute:(id)route reason:(id)reason completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  reasonCopy = reason;
  completionCopy = completion;
  v10 = routeCopy;
  v11 = v10;
  if (v10 && (v12 = [v10 isDeviceRoute], v11, !v12))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      endpointWrapper = [v11 endpointWrapper];
      [endpointWrapper unwrappedValue];
      v17 = completionCopy;
      MRAVEndpointUpdateActiveSystemEndpointWithReason();

      v13 = v17;
    }

    else
    {
      if (!completionCopy)
      {
        goto LABEL_5;
      }

      v15 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"Active route must be of type MPAVEndpointRoute.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [v15 errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:4 userInfo:v13];
      (*(completionCopy + 2))(completionCopy, v16);
    }
  }

  else
  {
    v18 = completionCopy;
    MRAVEndpointUpdateActiveSystemEndpointWithReason();
    v13 = v18;
  }

LABEL_5:
}

uint64_t __58__MPAVRoutingController_setActiveRoute_reason_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __58__MPAVRoutingController_setActiveRoute_reason_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)setActiveRoute:(id)route completion:(id)completion
{
  completionCopy = completion;
  routeCopy = route;
  [objc_opt_class() setActiveRoute:routeCopy reason:0 completion:completionCopy];
}

+ (void)getActiveRouteWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  [self _getActiveRouteWithTimeout:objc_msgSend(self type:"activeRouteType") completion:{completionCopy, timeout}];
}

+ (id)_currentDeviceRoutingSymbolImage
{
  _currentDeviceRoutingSymbolName = [self _currentDeviceRoutingSymbolName];
  v3 = [MEMORY[0x1E69DCAB8] _systemImageNamed:_currentDeviceRoutingSymbolName];

  return v3;
}

+ (id)_symbolNameForRoutes:(id)routes
{
  v3 = [routes msv_flatMap:&__block_literal_global_43];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E69B09B8] symbolNameForOutputDevices:v6];

  return v7;
}

id __46__MPAVRoutingController__symbolNameForRoutes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 endpointObject];
    v4 = [v3 resolvedOutputDevices];
    v5 = v4;
    v6 = MEMORY[0x1E695E0F0];
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = MEMORY[0x1E695E0F0];
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = [v2 outputDevices];
    v3 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v7 = v10;
  }

LABEL_11:

  return v7;
}

+ (id)_symbolNameForRoute:(id)route
{
  v10 = *MEMORY[0x1E69E9840];
  if (route)
  {
    routeCopy = route;
    v4 = MEMORY[0x1E695DEC8];
    routeCopy2 = route;
    v6 = [v4 arrayWithObjects:&routeCopy count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [self _symbolNameForRoutes:{v6, routeCopy, v10}];

  return v7;
}

+ (id)_symbolImageForRoute:(id)route
{
  v4 = [self _symbolNameForRoute:route];
  v5 = [self _symbolImageForIdentifier:v4];

  return v5;
}

+ (id)_symbolImageForRoutes:(id)routes
{
  v4 = [self _symbolNameForRoutes:routes];
  v5 = [self _symbolImageForIdentifier:v4];

  return v5;
}

@end