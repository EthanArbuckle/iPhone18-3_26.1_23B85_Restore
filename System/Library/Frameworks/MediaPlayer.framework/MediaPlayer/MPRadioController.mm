@interface MPRadioController
- (BOOL)isRadioAvailable;
- (MPRadioController)init;
- (void)_beginRemoteProcessAssertionWithCompletionHandler:(id)handler;
- (void)_endRemoteProcessAssertion;
- (void)_getConnectionWithCompletionHandler:(id)handler;
- (void)_setRadioAvailable:(BOOL)available;
- (void)clientRadioControllerRadioAvailabilityDidChange:(BOOL)change;
- (void)clientRadioControllerRecentStationsDidChange;
- (void)dealloc;
- (void)getRecentStationGroupsWithCompletionHandler:(id)handler;
@end

@implementation MPRadioController

- (void)_getConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_connection)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E76824C8;
    v6[4] = self;
    v7 = handlerCopy;
    [(MPRadioController *)self _beginRemoteProcessAssertionWithCompletionHandler:v6];
  }
}

uint64_t __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2])
  {
    [v2 _endRemoteProcessAssertion];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.MediaPlayer.MPRadioControllerServer" options:0];
    objc_storeStrong((*(a1 + 32) + 16), v3);
    v4 = *(*(a1 + 32) + 16);
    v5 = MPServiceRadioControllerGetXPCInterface();
    [v4 setRemoteObjectInterface:v5];

    [*(*(a1 + 32) + 16) setExportedObject:?];
    v6 = *(*(a1 + 32) + 16);
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F154C308];
    [v6 setExportedInterface:v7];

    objc_initWeak(&location, *(*(a1 + 32) + 16));
    objc_initWeak(&from, *(a1 + 32));
    v8 = *(*(a1 + 32) + 16);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_2;
    v19[3] = &unk_1E767D468;
    objc_copyWeak(&v20, &from);
    objc_copyWeak(&v21, &location);
    [v8 setInterruptionHandler:v19];
    v9 = *(*(a1 + 32) + 16);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_2_24;
    v16[3] = &unk_1E767D468;
    objc_copyWeak(&v17, &from);
    objc_copyWeak(&v18, &location);
    [v9 setInvalidationHandler:v16];
    [*(*(a1 + 32) + 16) resume];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_2_26;
    v15[3] = &unk_1E767D2A0;
    v15[4] = v10;
    v12 = [v11 remoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E767B220;
    v14[4] = *(a1 + 32);
    [v12 serviceRadioControllerGetRadioAvailabilityWithCompletionHandler:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 16));
  }

  return result;
}

void __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "[MPRadioController] Connection interrupted.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_23;
    v7[3] = &unk_1E76823C0;
    v8 = WeakRetained;
    v9 = v5;
    dispatch_barrier_async(v6, v7);
  }
}

void __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_2_24(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "[MPRadioController] Connection invalidated.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_25;
    v7[3] = &unk_1E76823C0;
    v8 = WeakRetained;
    v9 = v5;
    dispatch_barrier_async(v6, v7);
  }
}

void __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_2_26(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7682518;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

void __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_5;
  block[3] = &unk_1E767A6F8;
  v10 = v5;
  v11 = v6;
  v12 = a2;
  v8 = v5;
  dispatch_barrier_async(v7, block);
}

uint64_t __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) _setRadioAvailable:*(a1 + 48)];
  }

  v2 = *(a1 + 40);

  return [v2 _endRemoteProcessAssertion];
}

void __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_25(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  if (v3 == v2)
  {
    *(v1 + 16) = 0;
  }
}

void __57__MPRadioController__getConnectionWithCompletionHandler___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2 == *(a1 + 40))
  {
    *(v1 + 16) = 0;

    *(*(a1 + 32) + 24) = 0;
  }
}

- (void)_setRadioAvailable:(BOOL)available
{
  if (self->_isRadioAvailable != available)
  {
    block[7] = v3;
    block[8] = v4;
    self->_isRadioAvailable = available;
    CFPreferencesSetAppValue(@"MPRadioControllerRadioAvailability", [MEMORY[0x1E696AD98] numberWithBool:?], @"com.apple.mobileipod");
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MPRadioController__setRadioAvailable___block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

void __40__MPRadioController__setRadioAvailable___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPRadioControllerRadioAvailabilityDidChangeNotification" object:*(a1 + 32)];
}

- (void)_endRemoteProcessAssertion
{
  v4 = self->_remoteProcessAssertionCount - 1;
  self->_remoteProcessAssertionCount = v4;
  if (!v4)
  {
    block[7] = v2;
    block[8] = v3;
    v6 = dispatch_time(0, 3000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MPRadioController__endRemoteProcessAssertion__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  }
}

void __47__MPRadioController__endRemoteProcessAssertion__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MPRadioController__endRemoteProcessAssertion__block_invoke_2;
  block[3] = &unk_1E7682518;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

void __47__MPRadioController__endRemoteProcessAssertion__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 48))
  {
    [*(v2 + 32) setInvalidationHandler:0];
    [*(*(a1 + 32) + 32) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

- (void)_beginRemoteProcessAssertionWithCompletionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  remoteProcessAssertionCompletionHandler = self->_remoteProcessAssertionCompletionHandler;
  ++self->_remoteProcessAssertionCount;
  if (self->_hasLaunchedService && remoteProcessAssertionCompletionHandler == 0)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v7 = [remoteProcessAssertionCompletionHandler copy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E7677BD8;
    v8 = v7;
    v15 = v8;
    v16 = handlerCopy;
    v9 = [v14 copy];
    v10 = self->_remoteProcessAssertionCompletionHandler;
    self->_remoteProcessAssertionCompletionHandler = v9;

    if (!self->_hasLaunchedService)
    {
      self->_hasLaunchedService = 1;
      mEMORY[0x1E699FCA0] = [MEMORY[0x1E699FCA0] sharedService];
      v17 = *MEMORY[0x1E699F8E8];
      v18[0] = MEMORY[0x1E695E118];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_2;
      v13[3] = &unk_1E767D2A0;
      v13[4] = self;
      [mEMORY[0x1E699FCA0] openApplication:@"com.apple.Music" options:v12 withResult:v13];
    }
  }
}

uint64_t __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7682518;
  block[4] = v1;
  dispatch_barrier_async(v2, block);
}

void __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) >= 1 && !*(v2 + 32))
  {
    objc_initWeak(&location, v2);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__10361;
    v18 = __Block_byref_object_dispose__10362;
    v19 = 0;
    v3 = objc_alloc(MEMORY[0x1E698D038]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_17;
    v12[3] = &unk_1E7677C00;
    objc_copyWeak(&v13, &location);
    v12[4] = &v14;
    v4 = [v3 initWithBundleIdentifier:@"com.apple.Music" flags:7 reason:4 name:@"com.apple.MediaPlayer.MPRadioController.connection" withHandler:v12];
    v5 = v15[5];
    v15[5] = v4;

    v6 = v15[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_3_20;
    v10[3] = &unk_1E767D0A0;
    objc_copyWeak(&v11, &location);
    v10[4] = &v14;
    [v6 setInvalidationHandler:v10];
    objc_storeStrong((*(a1 + 32) + 32), v15[5]);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    _Block_object_dispose(&v14, 8);

    objc_destroyWeak(&location);
    v2 = *(a1 + 32);
  }

  v7 = [*(v2 + 40) copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  if (v7)
  {
    v7[2](v7);
  }
}

void __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_17(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = WeakRetained[1];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_2_18;
      v6[3] = &unk_1E76819F0;
      v8 = *(a1 + 32);
      v7 = WeakRetained;
      dispatch_barrier_async(v5, v6);
    }
  }
}

void __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_3_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_4;
    v5[3] = &unk_1E76819F0;
    v7 = *(a1 + 32);
    v6 = WeakRetained;
    dispatch_barrier_async(v4, v5);
  }
}

void __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(v1 + 32);
  if (v2 == v3)
  {
    *(v1 + 32) = 0;
  }
}

void __71__MPRadioController__beginRemoteProcessAssertionWithCompletionHandler___block_invoke_2_18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(v1 + 32);
  if (v2 == v3)
  {
    *(v1 + 32) = 0;
  }
}

- (void)getRecentStationGroupsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E76824C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_barrier_async(accessQueue, v7);
}

void __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_1E76824C8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _beginRemoteProcessAssertionWithCompletionHandler:v2];
}

void __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_3;
  v4[3] = &unk_1E7677BB0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _getConnectionWithCompletionHandler:v4];
}

void __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_4;
  aBlock[3] = &unk_1E76818B0;
  v4 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v14 = v4;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_6;
    v11[3] = &unk_1E7680CA8;
    v11[4] = *(a1 + 32);
    v7 = v5;
    v12 = v7;
    v8 = [v3 remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_8;
    v9[3] = &unk_1E76818B0;
    v9[4] = *(a1 + 32);
    v10 = v7;
    [v8 serviceRadioControllerGetRecentStationGroupsWithCompletionHandler:v9];
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_5;
    block[3] = &unk_1E7681568;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }

  [*(a1 + 32) _endRemoteProcessAssertion];
}

void __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_7;
  v7[3] = &unk_1E76824C8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_barrier_async(v4, v7);
}

void __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MPRadioController_getRecentStationGroupsWithCompletionHandler___block_invoke_9;
  block[3] = &unk_1E7681568;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_barrier_async(v7, block);
}

- (BOOL)isRadioAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MPRadioController_isRadioAvailable__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)clientRadioControllerRecentStationsDidChange
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MPRadioController_clientRadioControllerRecentStationsDidChange__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(v3, block);
}

void __65__MPRadioController_clientRadioControllerRecentStationsDidChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPRadioControllerRecentStationsDidChangeNotification" object:*(a1 + 32)];
}

- (void)clientRadioControllerRadioAvailabilityDidChange:(BOOL)change
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__MPRadioController_clientRadioControllerRadioAvailabilityDidChange___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  changeCopy = change;
  dispatch_barrier_async(accessQueue, v4);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(BKSProcessAssertion *)self->_remoteProcessAssertion invalidate];
  v3.receiver = self;
  v3.super_class = MPRadioController;
  [(MPRadioController *)&v3 dealloc];
}

- (MPRadioController)init
{
  v6.receiver = self;
  v6.super_class = MPRadioController;
  v2 = [(MPRadioController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.MPRadioController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v2->_isRadioAvailable = CFPreferencesGetAppBooleanValue(@"MPRadioControllerRadioAvailability", @"com.apple.mobileipod", 0) != 0;
    [(MPRadioController *)v2 _getConnectionWithCompletionHandler:0];
  }

  return v2;
}

@end