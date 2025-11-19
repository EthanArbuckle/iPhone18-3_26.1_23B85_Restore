@interface MPAVLightweightRoutingController
- (MPAVLightweightRoutingController)initWithName:(id)a3;
- (MPAVLightweightRoutingControllerDelegate)delegate;
- (NSArray)pickedRoutes;
- (void)_availableOutputDevicesDidChangeNotification:(id)a3;
- (void)_onSyncSelf_schedulePickedRoutesChangedNotification;
- (void)_outputContextDevicesDidChangeNotification:(id)a3;
- (void)_postPickedRoutesChangedNotification;
- (void)dealloc;
- (void)setDiscoveryMode:(int64_t)a3;
@end

@implementation MPAVLightweightRoutingController

- (MPAVLightweightRoutingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_postPickedRoutesChangedNotification
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [(MPAVLightweightRoutingController *)self delegate];
  v3 = [(MPAVLightweightRoutingController *)self pickedRoutes];
  [v4 lightweightRoutingController:self didChangePickedRoutes:v3];
}

- (void)_onSyncSelf_schedulePickedRoutesChangedNotification
{
  if (!self->_notificationScheduled)
  {
    self->_notificationScheduled = 1;
    v3 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__MPAVLightweightRoutingController__onSyncSelf_schedulePickedRoutesChangedNotification__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __87__MPAVLightweightRoutingController__onSyncSelf_schedulePickedRoutesChangedNotification__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 24) = 0;
  objc_sync_exit(v2);

  v3 = *(a1 + 32);

  return [v3 _postPickedRoutesChangedNotification];
}

- (void)_outputContextDevicesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(MPAVLightweightRoutingController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = self;
    objc_sync_enter(v8);
    [(NSDate *)v8->_lastOutputContextNotificationDate timeIntervalSinceNow];
    if (v8->_lastOutputContextNotificationDate && v9 >= -2.0)
    {
      [(MPAVLightweightRoutingController *)v8 _onSyncSelf_schedulePickedRoutesChangedNotification];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__MPAVLightweightRoutingController__outputContextDevicesDidChangeNotification___block_invoke;
      block[3] = &unk_1E7682518;
      block[4] = v8;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    lastOutputContextNotificationDate = v8->_lastOutputContextNotificationDate;
    v8->_lastOutputContextNotificationDate = v7;

    objc_sync_exit(v8);
  }
}

- (void)_availableOutputDevicesDidChangeNotification:(id)a3
{
  v4 = [(MPAVLightweightRoutingController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__MPAVLightweightRoutingController__availableOutputDevicesDidChangeNotification___block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __81__MPAVLightweightRoutingController__availableOutputDevicesDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lightweightRoutingController:*(a1 + 32) didChangeDevicePresenceDetected:{objc_msgSend(*(a1 + 32), "isDevicePresenceDetected")}];
}

- (NSArray)pickedRoutes
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(AVOutputContext *)self->_avOutputContext outputDevices];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MRAVOutputDeviceCreateFromAVOutputDevice();
        v10 = [MPAVOutputDeviceRoute alloc];
        v19 = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:{1, v15}];
        v12 = [(MPAVOutputDeviceRoute *)v10 initWithOutputDevices:v11];

        CFRelease(v9);
        [(MPAVRoute *)v12 setPicked:1];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (void)setDiscoveryMode:(int64_t)a3
{
  v3 = a3;
  if (a3 >= 2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPAVLightweightRoutingController.m" lineNumber:75 description:@"The lightweight routing controller only supports disabled and presence discovery modes. If detailed is needed please use MPAVRoutingController."];

    a3 = 0;
  }

  self->_discoveryMode = v3;
  [(AVOutputDeviceDiscoverySession *)self->_avDiscoverySession setDiscoveryMode:a3];

  MRMediaRemoteSetWantsVolumeControlNotifications();
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPAVLightweightRoutingController;
  [(MPAVLightweightRoutingController *)&v4 dealloc];
}

- (MPAVLightweightRoutingController)initWithName:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MPAVLightweightRoutingController;
  v5 = [(MPAVLightweightRoutingController *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = [objc_alloc(MEMORY[0x1E6958810]) initWithDeviceFeatures:1];
    avDiscoverySession = v5->_avDiscoverySession;
    v5->_avDiscoverySession = v8;

    [(AVOutputDeviceDiscoverySession *)v5->_avDiscoverySession setDiscoveryMode:0];
    v10 = MEMORY[0x1E69587F0];
    v11 = [MEMORY[0x1E6958460] sharedInstance];
    v12 = [v11 routingContextUID];
    v13 = [v10 outputContextForID:v12];
    avOutputContext = v5->_avOutputContext;
    v5->_avOutputContext = v13;

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v5 selector:sel__availableOutputDevicesDidChangeNotification_ name:*MEMORY[0x1E69587A0] object:v5->_avDiscoverySession];
    [v15 addObserver:v5 selector:sel__outputContextDevicesDidChangeNotification_ name:*MEMORY[0x1E69586A8] object:v5->_avOutputContext];
    [v15 addObserver:v5 selector:sel__outputContextDevicesDidChangeNotification_ name:*MEMORY[0x1E69586B0] object:v5->_avOutputContext];
  }

  return v5;
}

@end