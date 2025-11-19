@interface MPAVRoutingDataSource
- (BOOL)hasActiveAudioCategory;
- (MPAVRoutingDataSource)init;
- (NSString)activeAudioCategory;
- (id)getRoutesForCategory:(id)a3;
- (void)_activeAudioRouteDidChangeNotification:(id)a3;
- (void)_externalScreenTypeDidChangeNotification:(id)a3;
- (void)_reloadActiveAudioCategoryWithCompletion:(id)a3;
- (void)_superclassRegisterNotifications;
- (void)_superclassUnregisterNotifications;
- (void)_volumeControlAvailabilityDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)getExternalScreenTypeWithCompletion:(id)a3;
- (void)getPickedRouteHasVolumeControlWithCompletion:(id)a3;
- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5;
- (void)unpickAirPlayAVRoutesWithCompletion:(id)a3;
@end

@implementation MPAVRoutingDataSource

- (MPAVRoutingDataSource)init
{
  v12.receiver = self;
  v12.super_class = MPAVRoutingDataSource;
  v2 = [(MPAVRoutingDataSource *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.MPAVRoutingDataSource/serialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = dispatch_queue_create("com.apple.MediaPlayer.MPAVRoutingDataSource/workerQueue", 0);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v5;

    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPAVRoutingDataSource/callbackQueue", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    [(MPAVRoutingDataSource *)v2 _superclassRegisterNotifications];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__MPAVRoutingDataSource_init__block_invoke;
    v10[3] = &unk_1E7679340;
    v11 = v2;
    [(MPAVRoutingDataSource *)v11 _reloadActiveAudioCategoryWithCompletion:v10];
  }

  return v2;
}

- (void)_superclassRegisterNotifications
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__volumeControlAvailabilityDidChangeNotification_ name:*MEMORY[0x1E69B12A8] object:0];
  [v3 addObserver:self selector:sel__externalScreenTypeDidChangeNotification_ name:*MEMORY[0x1E69B0DB0] object:0];
  v4 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v5 = MEMORY[0x1E69AE9C0];
  v7[0] = *MEMORY[0x1E69AE9C0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 setAttribute:v6 forKey:*MEMORY[0x1E69AECD8] error:0];

  [v3 addObserver:self selector:sel__activeAudioRouteDidChangeNotification_ name:*v5 object:0];
  MRMediaRemoteSetWantsVolumeControlNotifications();
  MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications();
}

- (NSString)activeAudioCategory
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__5835;
  v8 = __Block_byref_object_dispose__5836;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __29__MPAVRoutingDataSource_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MPAVRoutingDataSource_init__block_invoke_2;
  block[3] = &unk_1E7682518;
  v4 = v1;
  dispatch_sync(v2, block);
}

- (BOOL)hasActiveAudioCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MPAVRoutingDataSource_hasActiveAudioCategory__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_superclassUnregisterNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69B12A8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69B0DB0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69AE9C0] object:0];
  MRMediaRemoteSetWantsVolumeControlNotifications();
  MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications();
}

- (void)_reloadActiveAudioCategoryWithCompletion:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MPAVRoutingDataSource__reloadActiveAudioCategoryWithCompletion___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

void __66__MPAVRoutingDataSource__reloadActiveAudioCategoryWithCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) activeAudioCategory];
  v3 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v4 = [v3 attributeForKey:*MEMORY[0x1E69AEA88]];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __66__MPAVRoutingDataSource__reloadActiveAudioCategoryWithCompletion___block_invoke_2;
  v12 = &unk_1E76823C0;
  v13 = v5;
  v7 = v4;
  v14 = v7;
  dispatch_sync(v6, &v9);
  if (v2 != v7 && ([v2 isEqual:{v7, v9, v10, v11, v12, v13}] & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = v2;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[BaseRoutingDataSource] Active audio category changed from %{public}@ to %{public}@", buf, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __66__MPAVRoutingDataSource__reloadActiveAudioCategoryWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (void)_activeAudioRouteDidChangeNotification:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[BaseRoutingDataSource] Received active audio route did change notification: %{public}@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MPAVRoutingDataSource__activeAudioRouteDidChangeNotification___block_invoke;
  v7[3] = &unk_1E76768C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(MPAVRoutingDataSource *)self _reloadActiveAudioCategoryWithCompletion:v7];
}

void __64__MPAVRoutingDataSource__activeAudioRouteDidChangeNotification___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__MPAVRoutingDataSource__activeAudioRouteDidChangeNotification___block_invoke_2;
    v5[3] = &unk_1E76823C0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __64__MPAVRoutingDataSource__activeAudioRouteDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) userInfo];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:*(a1 + 40) userInfo:v3];
}

- (void)_externalScreenTypeDidChangeNotification:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69B0DB8]];
  v6 = [v5 unsignedIntValue];

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v6 == 2);
  }

  v14 = @"ExternalScreenType";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v6;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "[BaseRoutingDataSource] Received external screen type did change notification with screen type = %ld", &v12, 0xCu);
  }

  [v10 postNotificationName:@"MPAVRoutingDataSourceExternalScreenTypeDidChangeNotification" object:self userInfo:v9];
}

- (void)_volumeControlAvailabilityDidChangeNotification:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  [v5 objectForKey:*MEMORY[0x1E69B1310]];

  MRNowPlayingPlayerPathGetOrigin();
  if (MROriginIsLocalOrigin())
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69B12B0]];

    v10 = @"VolumeControlAvailability";
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"MPAVRoutingDataSourceVolumeControlAvailabilityDidChangeNotification" object:self userInfo:v8];
  }
}

- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E695DF30];
  v12 = *MEMORY[0x1E695D930];
  v13 = MEMORY[0x1E696AEC0];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is abstract", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)getRoutesForCategory:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is abstract", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)unpickAirPlayAVRoutesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[BaseRoutingDataSource] Unpicking AirPlay AV routes...", buf, 2u);
  }

  v6 = v3;
  v5 = v3;
  MRMediaRemoteUnpickAirPlayAVRoutes();
}

uint64_t __61__MPAVRoutingDataSource_unpickAirPlayAVRoutesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
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

    v11 = 138543362;
    v12 = a2;
    v6 = "[BaseRoutingDataSource] Failed to unpick AirPlay AV routes: %{public}@";
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
    v6 = "[BaseRoutingDataSource] Successfully unpicked AirPlay AV routes";
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

- (void)getPickedRouteHasVolumeControlWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = qos_class_self();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__MPAVRoutingDataSource_getPickedRouteHasVolumeControlWithCompletion___block_invoke;
    v8[3] = &unk_1E76824C8;
    v8[4] = self;
    v9 = v4;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v5, 0, v8);
    v7 = dispatch_get_global_queue(0, 0);
    dispatch_async(v7, v6);
  }
}

void __70__MPAVRoutingDataSource_getPickedRouteHasVolumeControlWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  MRMediaRemoteGetPickedRouteHasVolumeControl();
}

- (void)getExternalScreenTypeWithCompletion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    MRMediaRemoteGetExternalScreenType();
  }
}

uint64_t __61__MPAVRoutingDataSource_getExternalScreenTypeWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a2 == 2);
  }

  return (*(v2 + 16))(v2, v3);
}

- (void)dealloc
{
  [(MPAVRoutingDataSource *)self _superclassUnregisterNotifications];
  v3.receiver = self;
  v3.super_class = MPAVRoutingDataSource;
  [(MPAVRoutingDataSource *)&v3 dealloc];
}

@end