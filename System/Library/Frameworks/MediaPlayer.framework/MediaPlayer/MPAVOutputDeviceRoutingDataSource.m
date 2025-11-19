@interface MPAVOutputDeviceRoutingDataSource
+ (id)_globalAudioSessionLock;
- (BOOL)_isRemovingPredictedDevice:(id)a3;
- (BOOL)_shouldAddPredictedDeviceToOuputDevices:(id)a3;
- (BOOL)_shouldDetachOutputDevicesToGroup:(id)a3;
- (BOOL)didReceiveDiscoveryResults;
- (BOOL)routeIsLeaderOfEndpoint:(id)a3;
- (MPAVEndpointRoute)endpointRoute;
- (MPMRAVOutputContextWrapper)applicationOutputContext;
- (MRAVEndpoint)endpoint;
- (MRAVOutputDevice)predictedDevice;
- (MRAVRoutingDiscoverySessionConfiguration)discoverySessionConfiguration;
- (NSString)routingContextUID;
- (id)_detachableDevicesInOutputDevices:(id)a3;
- (id)_initWithEndpointRoute:(id)a3;
- (id)_outputDeviceRouteWithUID:(id)a3;
- (id)_stateDumpObject;
- (id)getRoutesForCategory:(id)a3;
- (id)outputDevicesForRoutes:(id)a3;
- (void)_endpointsDidChangeNotification:(id)a3;
- (void)_generateDiscoverySession;
- (void)_onDiscoverySessionQueue_generateCompanionDiscoverySession;
- (void)_onDiscoverySessionQueue_generateDiscoverySession;
- (void)_outputDevicesDidChange:(id)a3;
- (void)_outputDevicesDidChangeNotification:(id)a3;
- (void)_personalRoutesDidChange;
- (void)_registerNotifications;
- (void)_resetPredictedOutputDevice;
- (void)_routeStatusDidChangeNotification:(id)a3;
- (void)_setShouldSourceOutputDevicesFromAVODDS:(BOOL)a3;
- (void)_unregisterNotifications;
- (void)addRouteToGroup:(id)a3 completion:(id)a4;
- (void)addRoutesToGroup:(id)a3 completion:(id)a4;
- (void)createGroupFromOutputDevices:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)removeRouteFromGroup:(id)a3 completion:(id)a4;
- (void)removeRoutesFromGroup:(id)a3 completion:(id)a4;
- (void)setCompanionDiscoverySession:(id)a3;
- (void)setDidReceiveDiscoveryResults:(BOOL)a3;
- (void)setDiscoveryMode:(int64_t)a3;
- (void)setDiscoverySession:(id)a3;
- (void)setEndpointRoute:(id)a3;
- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5;
- (void)setPredictedDevice:(id)a3;
- (void)setRoutingContextUID:(id)a3;
- (void)setTargetSessionID:(unsigned int)a3;
@end

@implementation MPAVOutputDeviceRoutingDataSource

- (void)_registerNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__outputDevicesDidChangeNotification_ name:*MEMORY[0x1E69B0B60] object:0];
  [v3 addObserver:self selector:sel__routeStatusDidChangeNotification_ name:*MEMORY[0x1E69B12E0] object:0];
}

- (void)_generateDiscoverySession
{
  discoverySessionQueue = self->_discoverySessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPAVOutputDeviceRoutingDataSource__generateDiscoverySession__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(discoverySessionQueue, block);
}

- (void)_onDiscoverySessionQueue_generateDiscoverySession
{
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  v6 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
  if ([v6 isCompanionEndpoint])
  {
    v3 = v6;
  }

  else
  {
    v3 = MEMORY[0x1E69B09C0];
  }

  v4 = [(MPAVOutputDeviceRoutingDataSource *)self discoverySessionConfiguration];
  v5 = [v3 discoverySessionWithConfiguration:v4];
  [(MPAVOutputDeviceRoutingDataSource *)self setDiscoverySession:v5];
}

void __45__MPAVOutputDeviceRoutingDataSource_endpoint__block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 160) endpointWrapper];
  v2 = v6;
  v3 = [v6 unwrappedValue];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (MRAVRoutingDiscoverySessionConfiguration)discoverySessionConfiguration
{
  v3 = [objc_alloc(MEMORY[0x1E69B09C8]) initWithEndpointFeatures:1];
  [v3 setTargetAudioSessionID:{-[MPAVOutputDeviceRoutingDataSource targetSessionID](self, "targetSessionID")}];

  return v3;
}

- (MRAVEndpoint)endpoint
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__5640;
  v8 = __Block_byref_object_dispose__5641;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (MPAVEndpointRoute)endpointRoute
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__5640;
  v8 = __Block_byref_object_dispose__5641;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (MPMRAVOutputContextWrapper)applicationOutputContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5640;
  v10 = __Block_byref_object_dispose__5641;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__MPAVOutputDeviceRoutingDataSource_applicationOutputContext__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__MPAVOutputDeviceRoutingDataSource_applicationOutputContext__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) endpoint];
  if (!v4 || ([*(a1 + 32) endpoint], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "isLocalEndpoint")))
  {
    v3 = *(*(a1 + 32) + 136);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (BOOL)didReceiveDiscoveryResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  discoverySessionQueue = self->_discoverySessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__MPAVOutputDeviceRoutingDataSource_didReceiveDiscoveryResults__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(discoverySessionQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_stateDumpObject
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v18[0] = v3;
  v17[1] = @"predictedDevice";
  v4 = [(MPAVOutputDeviceRoutingDataSource *)self predictedDevice];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<NONE>";
  }

  v18[1] = v6;
  v17[2] = @"AVOutputContext.predictedDevice";
  v7 = [(MPAVOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v7 unwrappedValue];
  v8 = MRAVOutputContextCopyPredictedOutputDevice();
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<NONE>";
  }

  v18[2] = v10;
  v17[3] = @"AVOutputContext.outputDeviceUIDs";
  v11 = [(MPAVOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v11 unwrappedValue];
  v12 = MRAVOutputContextCopyOutputDevices();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<NONE>";
  }

  v18[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

- (void)_resetPredictedOutputDevice
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Reset predicted outputDevice", v6, 2u);
  }

  v4 = [(MPAVOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v4 unwrappedValue];
  MRAVOutputContextResetPredictedOutputDevice();
  v5 = [(MRAVRoutingDiscoverySession *)self->_discoverySession availableOutputDevices];
  [(MPAVOutputDeviceRoutingDataSource *)self _outputDevicesDidChange:v5];
}

- (void)_onDiscoverySessionQueue_generateCompanionDiscoverySession
{
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  v4 = [objc_alloc(MEMORY[0x1E69B09C8]) initWithEndpointFeatures:8];
  v3 = [MEMORY[0x1E69B09C0] discoverySessionWithConfiguration:v4];
  [(MPAVOutputDeviceRoutingDataSource *)self setCompanionDiscoverySession:v3];
}

- (void)_setShouldSourceOutputDevicesFromAVODDS:(BOOL)a3
{
  if (self->_shouldSourceOutputDevicesFromAVODDS != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_shouldSourceOutputDevicesFromAVODDS = a3;
    v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "Output device UIDs determined to be available. Output devices from AVODDS will no longer be ignored.";
        v9 = &v11;
LABEL_7:
        _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else if (v7)
    {
      v10 = 0;
      v8 = "Output device UIDs determined to be unavailable. Output devices from AVODDS will be ignored.";
      v9 = &v10;
      goto LABEL_7;
    }
  }
}

- (id)_outputDeviceRouteWithUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5640;
  serialQueue = self->_serialQueue;
  v16 = __Block_byref_object_dispose__5641;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MPAVOutputDeviceRoutingDataSource__outputDeviceRouteWithUID___block_invoke;
  block[3] = &unk_1E7681330;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__MPAVOutputDeviceRoutingDataSource__outputDeviceRouteWithUID___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 120);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 routeUID];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_outputDevicesDidChange:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
}

- (void)_personalRoutesDidChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
}

- (void)_unregisterNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69B0B60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69B12E0] object:0];
}

- (BOOL)_isRemovingPredictedDevice:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [(MPAVOutputDeviceRoutingDataSource *)self predictedDevice];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldAddPredictedDeviceToOuputDevices:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v4 count];

  if (v6 == 1)
  {
    v7 = [v5 isSplitterCapable];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MPAVOutputDeviceRoutingDataSource *)self predictedDevice];
  v9 = [v8 supportsBluetoothSharing];

  v10 = [v5 routeUID];
  v11 = [(MPAVOutputDeviceRoutingDataSource *)self predictedDevice];
  v12 = [v11 uid];
  v13 = [v10 isEqualToString:v12];

  if (v7)
  {
    v14 = v9 & (v13 ^ 1);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_shouldDetachOutputDevicesToGroup:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_detachesRoutesToGroup)
  {
    v5 = [(MPAVOutputDeviceRoutingDataSource *)self endpointRoute];
    v6 = [v5 endpointWrapper];
    [v6 unwrappedValue];
    v7 = MRAVEndpointGetDesignatedGroupLeader();

    if (([v4 containsObject:v7] & 1) == 0)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        v12 = 1;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v12 &= [*(*(&v16 + 1) + 8 * i) isGroupable];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);

        if ((v12 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v14 = [v8 count] > 1;
      goto LABEL_15;
    }

LABEL_11:
    v14 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)_detachableDevicesInOutputDevices:(id)a3
{
  v4 = [a3 msv_filter:&__block_literal_global_61];
  if ([(MPAVOutputDeviceRoutingDataSource *)self _shouldDetachOutputDevicesToGroup:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)outputDevicesForRoutes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v12 + 1) + 8 * i) outputDevices];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_routeStatusDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v17 = objc_alloc_init(v4);
  v6 = [v5 userInfo];

  v7 = [v6 objectForKey:*MEMORY[0x1E69B12D8]];
  v8 = [v7 objectForKey:@"RouteUID"];
  v9 = [v6 objectForKey:*MEMORY[0x1E69B12E8]];
  v10 = [(MPAVOutputDeviceRoutingDataSource *)self _outputDeviceRouteWithUID:v8];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    [v17 setObject:v10 forKey:@"Route"];
    v13 = [v9 integerValue];
    if ((v13 - 2) <= 3)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:v13 userInfo:0];
      if (v14)
      {
        v15 = v14;
        [v17 setObject:v14 forKey:@"Error"];
      }
    }
  }

  if ([v17 count])
  {
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:@"MPAVRoutingDataSourceFailureNotification" object:self userInfo:v17];
  }
}

- (void)_outputDevicesDidChangeNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
}

- (void)_endpointsDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 name];

  [v7 postNotificationName:v6 object:self];
}

- (BOOL)routeIsLeaderOfEndpoint:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPAVOutputDeviceRoutingDataSource.m" lineNumber:894 description:@"must be an MPAVOutputDeviceRoute"];
  }

  if ([v5 isGroupLeader] && (-[MPAVOutputDeviceRoutingDataSource endpointRoute](self, "endpointRoute"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
    v9 = [v8 outputDevices];
    v10 = [v7 setWithArray:v9];

    v11 = MEMORY[0x1E695DFD8];
    v12 = [v5 outputDevices];
    v13 = [v11 setWithArray:v12];

    v14 = [v10 intersectsSet:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)removeRoutesFromGroup:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MPAVOutputDeviceRoutingDataSource *)self outputDevicesForRoutes:a3];
  if ([(MPAVOutputDeviceRoutingDataSource *)self _isRemovingPredictedDevice:v7])
  {
    [(MPAVOutputDeviceRoutingDataSource *)self _resetPredictedOutputDevice];
    v6[2](v6, 0);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__MPAVOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke;
    aBlock[3] = &unk_1E7676C60;
    v28 = v6;
    v39 = v6;
    v8 = _Block_copy(aBlock);
    v27 = dispatch_get_global_queue(21, 0);
    v9 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v11)
    {
      v24 = v8;
      v25 = self;
      v26 = v7;
      v12 = *v35;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = [v14 uid];
          v16 = [v9 designatedGroupLeader];
          v17 = [v16 uid];
          v18 = [v15 isEqualToString:v17];

          if (v18)
          {
            v11 = v14;
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_13:
      self = v25;
      v7 = v26;
      v8 = v24;
    }

    v19 = [v10 mutableCopy];
    v20 = [v10 count];
    if (v11 && v20 >= 2)
    {
      [v19 removeObject:v11];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__MPAVOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke_3;
    block[3] = &unk_1E76793C0;
    block[4] = self;
    v30 = v19;
    v31 = v27;
    v32 = v10;
    v33 = v8;
    v21 = v8;
    v22 = v27;
    v23 = v19;
    dispatch_async(v22, block);

    v6 = v28;
  }
}

void __70__MPAVOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v4;
    v5 = v3;
    msv_dispatch_on_main_queue();
  }
}

void __70__MPAVOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke_3(id *a1)
{
  v2 = [a1[4] endpointRoute];
  v3 = [v2 endpointWrapper];
  [v3 unwrappedValue];
  v4 = a1[7];
  v5 = a1[6];
  v6 = a1[8];
  MRAVEndpointRemoveOutputDevicesWithInitiator();
}

void __70__MPAVOutputDeviceRoutingDataSource_removeRoutesFromGroup_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:*(a1 + 32)];
  [v6 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:*(a1 + 32)];
  v4 = [*(a1 + 32) _detachableDevicesInOutputDevices:*(a1 + 40)];
  v5 = v4;
  if (a2 || ![v4 count])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) createGroupFromOutputDevices:v5 queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)removeRouteFromGroup:(id)a3 completion:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"MPAVOutputDeviceRoutingDataSource.m" lineNumber:835 description:{@"invalid class for %@", v11}];
  }

  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(MPAVOutputDeviceRoutingDataSource *)self removeRoutesFromGroup:v9 completion:v8];
}

- (void)addRoutesToGroup:(id)a3 completion:(id)a4
{
  v6 = a4;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __65__MPAVOutputDeviceRoutingDataSource_addRoutesToGroup_completion___block_invoke;
  v21 = &unk_1E7680CA8;
  v22 = self;
  v7 = v6;
  v23 = v7;
  v8 = a3;
  v9 = _Block_copy(&v18);
  v10 = [(MPAVOutputDeviceRoutingDataSource *)self outputDevicesForRoutes:v8, v18, v19, v20, v21, v22];
  v11 = [v10 mutableCopy];

  LODWORD(v10) = [(MPAVOutputDeviceRoutingDataSource *)self _shouldAddPredictedDeviceToOuputDevices:v8];
  if (v10)
  {
    v12 = [(MPAVOutputDeviceRoutingDataSource *)self predictedDevice];
    [v11 addObject:v12];
  }

  v13 = dispatch_get_global_queue(21, 0);
  if (self->_supportsQueueHandoff || ([MEMORY[0x1E69B0A28] sharedManager], v14 = objc_claimAutoreleasedReturnValue(), -[MPAVOutputDeviceRoutingDataSource presentingAppBundleID](self, "presentingAppBundleID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "activeActivityExistsForBundle:", v15), v15, v14, v16))
  {
    v17 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
    [v17 migrateToOrAddOutputDevices:v11 initiator:self->_initiator withReplyQueue:v13 completion:v9];
  }

  else
  {
    v17 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
    [v17 addOutputDevices:v11 initiator:self->_initiator withReplyQueue:v13 completion:v9];
  }
}

void __65__MPAVOutputDeviceRoutingDataSource_addRoutesToGroup_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:*(a1 + 32)];
  [v3 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:*(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)addRouteToGroup:(id)a3 completion:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"MPAVOutputDeviceRoutingDataSource.m" lineNumber:804 description:{@"invalid class for %@", v11}];
  }

  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(MPAVOutputDeviceRoutingDataSource *)self addRoutesToGroup:v9 completion:v8];
}

- (void)createGroupFromOutputDevices:(id)a3 queue:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v21 + 1) + 8 * v15) uid];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = MEMORY[0x1E69B0990];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__MPAVOutputDeviceRoutingDataSource_createGroupFromOutputDevices_queue_completion___block_invoke;
  v19[3] = &unk_1E7680D68;
  v20 = v9;
  v18 = v9;
  [v17 createEndpointWithOutputDeviceUIDs:v10 queue:v8 completion:v19];
}

- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v44 = a4;
  v10 = a5;
  v45 = [(MPAVOutputDeviceRoutingDataSource *)self applicationOutputContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    v12 = [v11 outputDevices];
    v41 = [v12 mutableCopy];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke;
    aBlock[3] = &unk_1E76795E8;
    objc_copyWeak(&v61, &location);
    v13 = v10;
    v60 = v13;
    v14 = _Block_copy(aBlock);
    v15 = dispatch_get_global_queue(21, 0);
    v16 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
    v42 = [v16 outputDevices];

    v17 = [(MPAVOutputDeviceRoutingDataSource *)self endpointRoute];
    if (v17 && (-[MPAVOutputDeviceRoutingDataSource endpoint](self, "endpoint"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isLocalEndpoint], v18, v17, (v19 & 1) == 0))
    {
      if (self->_supportsQueueHandoff || ([MEMORY[0x1E69B0A28] sharedManager], v35 = objc_claimAutoreleasedReturnValue(), -[MPAVOutputDeviceRoutingDataSource presentingAppBundleID](self, "presentingAppBundleID"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v35, "activeActivityExistsForBundle:", v36), v36, v35, v37))
      {
        v20 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
        v38 = [v11 outputDevices];
        [v20 migrateToOrSetOutputDevices:v38 initiator:self->_initiator withReplyQueue:v15 completion:v14];
      }

      else
      {
        v20 = [(MPAVOutputDeviceRoutingDataSource *)self endpoint];
        v40 = [v11 outputDevices];
        [v20 setOutputDevices:v40 initiator:self->_initiator withReplyQueue:v15 completion:v14];
      }
    }

    else if (v45)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_3;
      block[3] = &unk_1E76767D0;
      v58 = v14;
      block[4] = self;
      v53 = v42;
      v54 = v45;
      v55 = v41;
      v56 = v15;
      v57 = v11;
      dispatch_async(v56, block);

      v20 = v58;
    }

    else
    {
      if (!v13)
      {
LABEL_29:

        objc_destroyWeak(&v61);
        objc_destroyWeak(&location);

        goto LABEL_30;
      }

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:5 userInfo:0];
      (*(v13 + 2))(v13, v20);
    }

    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v45;
    if (v45)
    {
      v43 = v9;
      v22 = [v43 endpointWrapper];
      [v22 unwrappedValue];
      v23 = MRAVEndpointCopyOutputDevices();

      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v48 objects:v63 count:16];
      if (v26)
      {
        v27 = *v49;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v49 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = MRAVOutputDeviceCopyUniqueIdentifier();
            v30 = MRComputeBaseRouteUID();

            if (v30)
            {
              [v24 addObject:v30];
            }
          }

          v26 = [v25 countByEnumeratingWithState:&v48 objects:v63 count:16];
        }

        while (v26);
      }

      MRAVReconnaissanceSessionCreateWithEndpointFeatures();
      v46 = v45;
      v47 = v10;
      MRAVReconnaissanceSessionBeginSearch();

      goto LABEL_30;
    }

    if (v10)
    {
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPAVRoutingControllerErrorDomain" code:5 userInfo:0];
      (*(v10 + 2))(v10, v39);

LABEL_30:
      v21 = v45;
    }
  }

  else
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = NSStringFromSelector(a2);
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [v31 handleFailureInMethod:a2 object:self file:@"MPAVOutputDeviceRoutingDataSource.m" lineNumber:783 description:{@"invalid class for %@ (%@)", v32, v34}];

    v21 = v45;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

void __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  v6 = WeakRetained;
  msv_dispatch_on_main_queue();
}

void __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_3(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_4;
  aBlock[3] = &unk_1E7676C60;
  v9 = *(a1 + 80);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 32) _detachableDevicesInOutputDevices:*(a1 + 40)];
  if ([v3 count])
  {
    [*(a1 + 48) unwrappedValue];
    v7 = v2;
    v5 = v3;
    v6 = *(a1 + 64);
    MRAVOutputContextSetOutputDevicesWithInitiator();
  }

  else
  {
    if ([*(a1 + 72) isDeviceSpeakerRoute])
    {
      v4 = [*(a1 + 32) predictedDevice];

      if (v4)
      {
        [*(a1 + 32) _resetPredictedOutputDevice];
      }
    }

    [*(a1 + 48) unwrappedValue];
    MRAVOutputContextSetOutputDevicesWithInitiator();
  }
}

void __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ([v6 count])
  {
    [*(a1 + 32) unwrappedValue];
    v7 = dispatch_get_global_queue(21, 0);
    v9 = *(a1 + 48);
    MRAVOutputContextSetOutputDevicesWithInitiator();
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, a4);
    }
  }

  CFRelease(*(a1 + 56));
}

void __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "picked endpoint route, set devices: %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }
  }

  else
  {
    v6 = dispatch_get_global_queue(21, 0);
    v7 = *(a1 + 40);
    MRAVEndpointUpdateActiveSystemEndpointWithReason();
  }
}

uint64_t __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_42(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "picked endpoint route, clear system endpoint: %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:*(a1 + 32)];
    [v4 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:*(a1 + 32)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) createGroupFromOutputDevices:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void __76__MPAVOutputDeviceRoutingDataSource_setPickedRoute_withPassword_completion___block_invoke_2(void *a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:a1[4]];
  [v3 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:a1[4]];
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[5]);
  }
}

- (id)getRoutesForCategory:(id)a3
{
  v188[1] = *MEMORY[0x1E69E9840];
  v104 = a3;
  v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v109 = self;
  v4 = [(MPAVOutputDeviceRoutingDataSource *)self endpointRoute];
  v108 = [(MPAVOutputDeviceRoutingDataSource *)v109 applicationOutputContext];
  v171 = 0;
  v172 = &v171;
  v173 = 0x3032000000;
  v174 = __Block_byref_object_copy__5640;
  v175 = __Block_byref_object_dispose__5641;
  v176 = 0;
  v164 = MEMORY[0x1E69E9820];
  v165 = 3221225472;
  v166 = __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke;
  v167 = &unk_1E7681330;
  v170 = &v171;
  v168 = v109;
  v5 = v4;
  v169 = v5;
  msv_dispatch_sync_on_queue();
  v107 = v5;
  if (v5)
  {
    v6 = [v5 endpointObject];
    v7 = [v6 resolvedOutputDevices];

    v8 = [v107 isDeviceRoute] ^ 1;
  }

  else if (v108)
  {
    v9 = v108;
    [v108 unwrappedValue];
    v7 = MRAVOutputContextCopyOutputDevices();
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  v10 = v108;
  [v108 unwrappedValue];
  v11 = MRAVOutputContextCopyPredictedOutputDevice();
  v12 = v11;
  v106 = v11;
  if (v11)
  {
    v188[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:1];

    v7 = v13;
    v12 = v106;
  }

  [(MPAVOutputDeviceRoutingDataSource *)v109 setPredictedDevice:v12];
  v14 = [v7 count];
  v113 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v103 = v14;
  if (v8)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v160 objects:v187 count:16];
    if (v17)
    {
      v18 = *v161;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v161 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v160 + 1) + 8 * i);
          v21 = [v20 logicalDeviceID];
          if ([v20 isProxyGroupPlayer] && objc_msgSend(v21, "length"))
          {
            [v15 addObject:v21];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v160 objects:v187 count:16];
      }

      while (v17);
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v22 = v16;
    v23 = [v22 countByEnumeratingWithState:&v156 objects:v186 count:16];
    if (v23)
    {
      v24 = *v157;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v157 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v156 + 1) + 8 * j);
          v27 = [v26 uid];
          v28 = MRComputeBaseRouteUID();

          v29 = [v26 logicalDeviceID];
          if (v28 && ([v26 isProxyGroupPlayer] & 1) == 0 && (!objc_msgSend(v29, "length") || (objc_msgSend(v15, "containsObject:", v29) & 1) == 0))
          {
            [v113 addObject:v28];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v156 objects:v186 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v15 = v7;
    v30 = [v15 countByEnumeratingWithState:&v152 objects:v185 count:16];
    if (v30)
    {
      v31 = *v153;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v153 != v31)
          {
            objc_enumerationMutation(v15);
          }

          v33 = [*(*(&v152 + 1) + 8 * k) uid];
          v34 = MRComputeBaseRouteUID();

          if (v34)
          {
            [v113 addObject:v34];
          }
        }

        v30 = [v15 countByEnumeratingWithState:&v152 objects:v185 count:16];
      }

      while (v30);
    }
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  obj = v7;
  v35 = [obj countByEnumeratingWithState:&v148 objects:v184 count:16];
  if (v35)
  {
    v36 = *v149;
    while (2)
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v149 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v148 + 1) + 8 * m);
        v39 = [v38 uid];
        v40 = MRComputeBaseRouteUID();

        if (!v40)
        {
          v42 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v38;
            _os_log_impl(&dword_1A238D000, v42, OS_LOG_TYPE_DEFAULT, "Found picked device with nil UID: %{public}@", &buf, 0xCu);
          }

          v41 = 0;
          goto LABEL_53;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v148 objects:v184 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v41 = 1;
LABEL_53:

  v43 = objc_alloc(MEMORY[0x1E695DFA8]);
  v116 = [v43 initWithCapacity:{objc_msgSend(v172[5], "count")}];
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v44 = v172[5];
  v45 = [v44 countByEnumeratingWithState:&v144 objects:v183 count:16];
  if (v45)
  {
    v115 = 0;
    v46 = *v145;
    do
    {
      for (n = 0; n != v45; ++n)
      {
        if (*v145 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v144 + 1) + 8 * n);
        if ([v48 isLocalDevice])
        {
          v49 = v48;

          v115 = v49;
        }

        v50 = [v48 uid];
        v51 = MRComputeBaseRouteUID();

        if (v51)
        {
          [v116 addObject:v51];
        }

        else
        {
          v52 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v48;
            _os_log_impl(&dword_1A238D000, v52, OS_LOG_TYPE_DEFAULT, "Found discovery device with nil UID: %{public}@", &buf, 0xCu);
          }

          v41 = 0;
        }
      }

      v45 = [v44 countByEnumeratingWithState:&v144 objects:v183 count:16];
    }

    while (v45);
  }

  else
  {
    v115 = 0;
  }

  -[MPAVOutputDeviceRoutingDataSource _setShouldSourceOutputDevicesFromAVODDS:](v109, "_setShouldSourceOutputDevicesFromAVODDS:", ([v172[5] count] != 0) & v41);
  if (!v109->_shouldSourceOutputDevicesFromAVODDS)
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v65 = obj;
    v66 = [v65 countByEnumeratingWithState:&v136 objects:v181 count:16];
    if (v66)
    {
      v67 = *v137;
      while (2)
      {
        for (ii = 0; ii != v66; ++ii)
        {
          if (*v137 != v67)
          {
            objc_enumerationMutation(v65);
          }

          if ([*(*(&v136 + 1) + 8 * ii) isLocalDevice])
          {

            v53 = v65;
            v71 = 1;
            goto LABEL_95;
          }
        }

        v66 = [v65 countByEnumeratingWithState:&v136 objects:v181 count:16];
        if (v66)
        {
          continue;
        }

        break;
      }
    }

    v69 = v65;
    v53 = v69;
    if (!v115)
    {
      v71 = 0;
      goto LABEL_95;
    }

    v70 = [v69 arrayByAddingObject:?];
    goto LABEL_93;
  }

  v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v54 = obj;
  v55 = [v54 countByEnumeratingWithState:&v140 objects:v182 count:16];
  if (v55)
  {
    v56 = *v141;
    do
    {
      for (jj = 0; jj != v55; ++jj)
      {
        if (*v141 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v58 = *(*(&v140 + 1) + 8 * jj);
        v59 = [v58 uid];
        v60 = MRComputeBaseRouteUID();

        if (([v116 containsObject:v60] & 1) == 0)
        {
          [v53 addObject:v58];
        }
      }

      v55 = [v54 countByEnumeratingWithState:&v140 objects:v182 count:16];
    }

    while (v55);
  }

  v61 = [v53 count];
  v62 = v172[5];
  if (!v61)
  {
    v70 = v62;
LABEL_93:
    v64 = v70;
    goto LABEL_94;
  }

  v63 = [v62 mutableCopy];
  v64 = [v63 arrayByAddingObjectsFromArray:v53];

LABEL_94:
  v71 = 0;
  v53 = v64;
LABEL_95:
  v72 = objc_alloc(MEMORY[0x1E695DF90]);
  v73 = [v72 initWithCapacity:{objc_msgSend(v172[5], "count")}];
  v74 = objc_alloc(MEMORY[0x1E695DF70]);
  v75 = [v74 initWithCapacity:{objc_msgSend(v172[5], "count")}];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v53;
  v77 = [v76 countByEnumeratingWithState:&v132 objects:v180 count:16];
  v111 = v71;
  v78 = 0;
  if (!v77)
  {
    goto LABEL_109;
  }

  v79 = *v133;
  do
  {
    for (kk = 0; kk != v77; ++kk)
    {
      if (*v133 != v79)
      {
        objc_enumerationMutation(v76);
      }

      v81 = *(*(&v132 + 1) + 8 * kk);
      v82 = [v81 logicalDeviceID];
      v83 = v82;
      if (v78)
      {
        v78 = 1;
        if (!v82)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v78 = [v81 isPickedOnPairedDevice];
        if (!v83)
        {
LABEL_106:
          [v75 addObject:v81];
          goto LABEL_107;
        }
      }

      v84 = [v73 objectForKey:v83];
      if (!v84)
      {
        v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v73 setObject:v84 forKey:v83];
      }

      [v84 addObject:v81];

LABEL_107:
    }

    v77 = [v76 countByEnumeratingWithState:&v132 objects:v180 count:16];
  }

  while (v77);
LABEL_109:

  v85 = v107;
  v86 = v85;
  if (v107)
  {
    v87 = [v85 isDeviceRoute];
  }

  else
  {
    v87 = 1;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v178 = 0x2020000000;
  v179 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_22;
  aBlock[3] = &unk_1E7676768;
  aBlock[4] = v109;
  v129 = v87;
  v130 = v78;
  p_buf = &buf;
  v128 = v103;
  v114 = v113;
  v125 = v114;
  v131 = v111;
  v88 = v105;
  v126 = v88;
  v89 = _Block_copy(aBlock);
  serialQueue = v109->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_3;
  block[3] = &unk_1E767D688;
  block[4] = v109;
  v91 = v88;
  v118 = v91;
  v92 = v73;
  v119 = v92;
  v93 = v89;
  v122 = v93;
  v94 = v75;
  v120 = v94;
  v112 = v104;
  v121 = v112;
  v123 = v87;
  dispatch_sync(serialQueue, block);
  v95 = [(MPAVRoutingDataSource *)v109 filterMode];
  switch(v95)
  {
    case 1:
      v96 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_29];
      v97 = [v91 filteredArrayUsingPredicate:v96];
      v98 = [v97 mutableCopy];
      goto LABEL_118;
    case 2:
      v96 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_33];
      v97 = [v91 filteredArrayUsingPredicate:v96];
      v98 = [v97 mutableCopy];
LABEL_118:
      v99 = v98;

      goto LABEL_120;
    case 3:
      v96 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_31];
      v97 = [v91 filteredArrayUsingPredicate:v96];
      v98 = [v97 mutableCopy];
      goto LABEL_118;
  }

  v99 = v91;
LABEL_120:
  v100 = v121;
  v101 = v99;

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v171, 8);

  return v101;
}

void __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  v6 = [*(a1 + 40) endpointObject];
  v3 = [v2 availableOutputDevicesForEndpoint:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_22(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (([*(a1 + 32) supportsMultipleSelection] & 1) == 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_2;
    v20[3] = &unk_1E7676740;
    v21 = *(a1 + 40);
    v5 = [v3 sortedArrayUsingComparator:v20];
    v6 = [v5 firstObject];
    v23[0] = v6;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  v7 = [[MPAVOutputDeviceRoute alloc] initWithOutputDevices:v4];
  v8 = v7;
  if ((*(a1 + 72) & 1) != 0 || ![(MPAVOutputDeviceRoute *)v7 isDeviceRoute]&& [(MPAVRoute *)v8 isSmartAudio])
  {
    if (*(*(a1 + 32) + 128) == 1)
    {
      if (*(a1 + 73) == 1)
      {
        v9 = [(MPAVOutputDeviceRoute *)v8 isPickedOnPairedDevice];
      }

      else if (*(a1 + 64) || ![(MPAVOutputDeviceRoute *)v8 isDeviceRoute]|| (v10 = *(*(a1 + 56) + 8), (*(v10 + 24) & 1) != 0))
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v11 = [(MPAVOutputDeviceRoute *)v8 outputDevices];
        v9 = [v11 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v9)
        {
          v12 = *v17;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v11);
              }

              v14 = [*(*(&v16 + 1) + 8 * i) uid];
              v15 = MRComputeBaseRouteUID();

              LOBYTE(v14) = [*(a1 + 40) containsObject:v15];
              if (v14)
              {
                v9 = 1;
                goto LABEL_26;
              }
            }

            v9 = [v11 countByEnumeratingWithState:&v16 objects:v22 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:
      }

      else
      {
        v9 = 1;
        *(v10 + 24) = 1;
      }
    }

    else if ([(MPAVOutputDeviceRoute *)v8 isDeviceRoute])
    {
      v9 = *(a1 + 74);
    }

    else
    {
      v9 = 1;
    }

    [(MPAVRoute *)v8 setPicked:v9];
    [*(a1 + 48) addObject:v8];
  }
}

void __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_3(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) endpoint];
  v3 = [v2 personalOutputDevices];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = [MPAVOutputDeviceRoute alloc];
        v48 = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        v12 = [(MPAVOutputDeviceRoute *)v10 initWithOutputDevices:v11];

        [*(a1 + 40) addObject:v12];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v6);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [*(a1 + 48) objectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(a1 + 72) + 16))();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v15);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = *(a1 + 56);
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      v22 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(a1 + 72);
        v45 = *(*(&v33 + 1) + 8 * v22);
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:{1, v33}];
        (*(v23 + 16))(v23, v24);

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v20);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = [*(a1 + 32) activeAudioCategory];
  }

  v27 = v26;
  if (*(a1 + 80) == 1 && [v26 isEqualToString:*MEMORY[0x1E6958070]] && !*(a1 + 32))
  {
    v28 = *(a1 + 40);
    v29 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_5685];
    [v28 filterUsingPredicate:v29];
  }

  v30 = [*(a1 + 40) copy];
  v31 = *(a1 + 32);
  v32 = *(v31 + 120);
  *(v31 + 120) = v30;
}

uint64_t __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isTVRoute] & 1) != 0 || (objc_msgSend(v2, "isAppleTVRoute"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 containsDeviceWithSubtype:18];
  }

  return v3;
}

uint64_t __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isTVRoute] & 1) != 0 || (objc_msgSend(v2, "isAppleTVRoute"))
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 containsDeviceWithSubtype:18] ^ 1;
  }

  return v3;
}

uint64_t __58__MPAVOutputDeviceRoutingDataSource_getRoutesForCategory___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 uid];
  v7 = MRComputeBaseRouteUID();

  v8 = [v5 uid];

  v9 = MRComputeBaseRouteUID();

  v10 = [*(a1 + 32) containsObject:v7];
  v11 = [*(a1 + 32) containsObject:v9];
  if (!v10 || v11)
  {
    if (v10 & 1 | ((v11 & 1) == 0))
    {
      v12 = [v7 compare:v9];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)setDiscoveryMode:(int64_t)a3
{
  discoverySessionQueue = self->_discoverySessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__MPAVOutputDeviceRoutingDataSource_setDiscoveryMode___block_invoke;
  v4[3] = &unk_1E7682398;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(discoverySessionQueue, v4);
}

uint64_t __54__MPAVOutputDeviceRoutingDataSource_setDiscoveryMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 144) = v2;
  v3 = v2 - 1;
  if (v3 < 3)
  {
    v4 = (v3 + 1);
  }

  else
  {
    v4 = 0;
  }

  [*(*(a1 + 32) + 192) setDiscoveryMode:v4];
  v5 = *(*(a1 + 32) + 184);

  return [v5 setDiscoveryMode:v4];
}

- (void)setCompanionDiscoverySession:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession removeEndpointsChangedCallback:self->_companionCallbackToken];
  objc_storeStrong(&self->_companionDiscoverySession, a3);
  self->_didFindCompanion = 0;
  objc_initWeak(&location, self);
  companionDiscoverySession = self->_companionDiscoverySession;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __66__MPAVOutputDeviceRoutingDataSource_setCompanionDiscoverySession___block_invoke;
  v12 = &unk_1E7676718;
  objc_copyWeak(&v13, &location);
  v7 = [(MRAVRoutingDiscoverySession *)companionDiscoverySession addEndpointsChangedCallback:&v9];
  companionCallbackToken = self->_companionCallbackToken;
  self->_companionCallbackToken = v7;

  [(MRAVRoutingDiscoverySession *)self->_companionDiscoverySession setDiscoveryMode:3, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __66__MPAVOutputDeviceRoutingDataSource_setCompanionDiscoverySession___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ((WeakRetained[96] & 1) == 0 && [*(*(&v10 + 1) + 8 * i) isCompanionEndpoint])
          {
            msv_dispatch_sync_on_queue();
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

void __66__MPAVOutputDeviceRoutingDataSource_setCompanionDiscoverySession___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) discoverySessionConfiguration];
  v4 = [v2 discoverySessionWithConfiguration:v3];
  [*(a1 + 32) setDiscoverySession:v4];

  *(*(a1 + 32) + 96) = 1;
}

- (void)setDiscoverySession:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_discoverySessionQueue);
  [(MRAVRoutingDiscoverySession *)self->_discoverySession removeOutputDevicesChangedCallback:self->_callbackToken];
  [(MRAVRoutingDiscoverySession *)self->_discoverySession setDiscoveryMode:0];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MPAVOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v7 = v5;
  v19 = v7;
  dispatch_sync(serialQueue, block);
  objc_storeStrong(&self->_discoverySession, a3);
  self->_devicePresenceDetected = [(MRAVRoutingDiscoverySession *)self->_discoverySession devicePresenceDetected];
  self->_didReceiveDiscoveryResults = 0;
  objc_initWeak(&location, self);
  discoverySession = self->_discoverySession;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__MPAVOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_2;
  v14[3] = &unk_1E76766F0;
  objc_copyWeak(&v16, &location);
  v9 = v7;
  v15 = v9;
  v10 = [(MRAVRoutingDiscoverySession *)discoverySession addOutputDevicesChangedCallback:v14];
  callbackToken = self->_callbackToken;
  self->_callbackToken = v10;

  v12 = [(MPAVOutputDeviceRoutingDataSource *)self discoveryMode]- 1;
  if (v12 < 3)
  {
    v13 = (v12 + 1);
  }

  else
  {
    v13 = 0;
  }

  [(MRAVRoutingDiscoverySession *)self->_discoverySession setDiscoveryMode:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __57__MPAVOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (v2)
  {
    [v2 unwrappedValue];
    v3 = MRAVOutputContextCopyUniqueIdentifier();
    [*(a1 + 40) setRoutingContextUID:v3];
  }
}

void __57__MPAVOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v6 = v3;
    v10 = v6;
    msv_dispatch_sync_on_queue();
    if (*(v12 + 24) == 1)
    {
      [v5 _outputDevicesDidChange:{v6, v7, 3221225472, __57__MPAVOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_3, &unk_1E7681900, v8, v9, v6, &v11}];
    }

    _Block_object_dispose(&v11, 8);
  }
}

void *__57__MPAVOutputDeviceRoutingDataSource_setDiscoverySession___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 192);
  if (result == v2)
  {
    *(*(a1 + 32) + 113) = [result devicePresenceDetected];
    result = [*(a1 + 48) count];
    if (result)
    {
      *(*(a1 + 32) + 129) = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

- (void)setDidReceiveDiscoveryResults:(BOOL)a3
{
  discoverySessionQueue = self->_discoverySessionQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__MPAVOutputDeviceRoutingDataSource_setDidReceiveDiscoveryResults___block_invoke;
  v4[3] = &unk_1E7682280;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(discoverySessionQueue, v4);
}

- (void)setPredictedDevice:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MPAVOutputDeviceRoutingDataSource_setPredictedDevice___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __56__MPAVOutputDeviceRoutingDataSource_setPredictedDevice___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 152);
  v4 = v3;
  if (v3 == v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = [v3 isEqual:v2];

  if ((v5 & 1) == 0)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v9 = v6;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Setting predicted device: %@", &v10, 0x20u);
    }

    goto LABEL_5;
  }

LABEL_6:
  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
}

- (MRAVOutputDevice)predictedDevice
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__5640;
  v8 = __Block_byref_object_dispose__5641;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)setTargetSessionID:(unsigned int)a3
{
  if (self->_targetSessionID != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_targetSessionID = a3;
    discoverySessionQueue = self->_discoverySessionQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__MPAVOutputDeviceRoutingDataSource_setTargetSessionID___block_invoke;
    v6[3] = &unk_1E76811D8;
    v6[4] = self;
    v7 = a3;
    dispatch_async(discoverySessionQueue, v6);
  }
}

- (void)setEndpointRoute:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4 = a3;
  msv_dispatch_sync_on_queue();
  if (*(v7 + 24) == 1)
  {
    [(MPAVOutputDeviceRoutingDataSource *)self setDidReceiveDiscoveryResults:0];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:@"MPAVRouteDidChangeNotification" object:0];
    [v5 addObserver:self selector:sel__personalRoutesDidChange name:@"MPAVRouteDidChangeNotification" object:v4];
    [v5 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
    [v5 postNotificationName:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:self];
    [(MPAVOutputDeviceRoutingDataSource *)self _generateDiscoverySession];
  }

  _Block_object_dispose(&v6, 8);
}

void __54__MPAVOutputDeviceRoutingDataSource_setEndpointRoute___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 160);
  if (v3 == v2)
  {
  }

  else
  {
    v5 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      objc_storeStrong((*(a1 + 32) + 160), *(a1 + 40));
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (void)setRoutingContextUID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPAVOutputDeviceRoutingDataSource.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"routingContextUID"}];
  }

  v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543874;
    v16 = v8;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> setting routing context UID = %{public}@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MPAVOutputDeviceRoutingDataSource_setRoutingContextUID___block_invoke;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v14 = v5;
  v10 = v5;
  dispatch_sync(serialQueue, block);
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"MPAVRoutingDataSourceRoutesDidChangeNotification" object:self];
  [v11 postNotificationName:@"MPAVRoutingDataSourceActiveAudioRouteDidChangeNotification" object:self];
}

void __58__MPAVOutputDeviceRoutingDataSource_setRoutingContextUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;

  v4 = [objc_opt_class() _globalAudioSessionLock];
  [v4 lock];
  RoutingContext = MRAVOutputContextCreateRoutingContext();
  if (RoutingContext)
  {
    v6 = RoutingContext;
    v7 = [[MPMRAVOutputContextWrapper alloc] initWithMRAVOutputContext:RoutingContext];
    v8 = *(a1 + 32);
    v9 = *(v8 + 136);
    *(v8 + 136) = v7;

    CFRelease(v6);
  }

  [v4 unlock];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 72);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MPAVOutputDeviceRoutingDataSource_setRoutingContextUID___block_invoke_2;
  v13[3] = &unk_1E76823C0;
  v13[4] = v11;
  v14 = v10;
  dispatch_async(v12, v13);
}

- (NSString)routingContextUID
{
  v2 = [(MPAVOutputDeviceRoutingDataSource *)self applicationOutputContext];
  [v2 unwrappedValue];
  v3 = MRAVOutputContextCopyUniqueIdentifier();

  return v3;
}

- (void)dealloc
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __44__MPAVOutputDeviceRoutingDataSource_dealloc__block_invoke;
  v7 = &unk_1E7682518;
  v8 = self;
  msv_dispatch_sync_on_queue();
  [(MPAVOutputDeviceRoutingDataSource *)self _unregisterNotifications];
  v3.receiver = self;
  v3.super_class = MPAVOutputDeviceRoutingDataSource;
  [(MPAVRoutingDataSource *)&v3 dealloc];
}

uint64_t __44__MPAVOutputDeviceRoutingDataSource_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 192) removeOutputDevicesChangedCallback:*(*(a1 + 32) + 104)];
  [*(*(a1 + 32) + 192) setDiscoveryMode:0];
  [*(*(a1 + 32) + 184) removeEndpointsChangedCallback:*(*(a1 + 32) + 88)];
  v2 = *(*(a1 + 32) + 184);

  return [v2 setDiscoveryMode:0];
}

- (id)_initWithEndpointRoute:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MPAVOutputDeviceRoutingDataSource;
  v6 = [(MPAVRoutingDataSource *)&v16 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPAVOutputDeviceRoutingDataSource/serialQueue", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    v9 = dispatch_queue_create("com.apple.MediaPlayer.MPAVOutputDeviceRoutingDataSource/discoverySessionQueue", 0);
    discoverySessionQueue = v6->_discoverySessionQueue;
    v6->_discoverySessionQueue = v9;

    v6->_attemptedToInitializeAppOutputContext = 0;
    v6->_shouldSourceOutputDevicesFromAVODDS = 1;
    v6->_supportsMultipleSelection = 1;
    v6->_supportsQueueHandoff = 1;
    objc_storeStrong(&v6->_endpointRoute, a3);
    SharedAudioPresentationContext = MRAVOutputContextGetSharedAudioPresentationContext();
    if (SharedAudioPresentationContext)
    {
      v12 = [[MPMRAVOutputContextWrapper alloc] initWithMRAVOutputContext:SharedAudioPresentationContext];
      applicationOutputContext = v6->_applicationOutputContext;
      v6->_applicationOutputContext = v12;

      SharedAudioPresentationContext = MRAVOutputContextCopyUniqueIdentifier();
    }

    v14 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = SharedAudioPresentationContext;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "Created new application output context: %{public}@ for data source: %{public}@", buf, 0x16u);
    }

    [(MPAVOutputDeviceRoutingDataSource *)v6 _registerNotifications];
    [(MPAVOutputDeviceRoutingDataSource *)v6 _generateDiscoverySession];
  }

  return v6;
}

+ (id)_globalAudioSessionLock
{
  if (_globalAudioSessionLock___once != -1)
  {
    dispatch_once(&_globalAudioSessionLock___once, &__block_literal_global_63_5709);
  }

  v3 = _globalAudioSessionLock___globalAudioSessionLock;

  return v3;
}

void __60__MPAVOutputDeviceRoutingDataSource__globalAudioSessionLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _globalAudioSessionLock___globalAudioSessionLock;
  _globalAudioSessionLock___globalAudioSessionLock = v0;
}

@end