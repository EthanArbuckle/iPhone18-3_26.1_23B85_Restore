@interface _GCAppleTVRemoteControllerManager
- (BOOL)combineSiriRemoteHIDDevicesWithNewController:(id)a3 existingController:(id)a4;
- (GCController)firstMicroGamepad;
- (_GCAppleTVRemoteControllerManager)init;
- (_GCAppleTVRemoteControllerManager)initWithDeviceSessionConfiguration:(id)a3 queue:(id)a4 environment:(id)a5;
- (id)activateWithSession:(id)a3 environment:(id)a4 options:(unint64_t)a5;
- (id)invalidateWithSession:(id)a3 environment:(id)a4;
- (id)matchingHIDServiceAttributes;
- (int)connectedATVRemoteCount;
- (void)CBApplicationDidBecomeActive;
- (void)CBApplicationWillResignActive;
- (void)_legacy_publishController:(id)a3;
- (void)_legacy_unpublishController:(id)a3;
- (void)_onqueue_HIDServiceAdded:(id)a3;
- (void)_onqueue_HIDServiceRemoved:(id)a3;
- (void)_onqueue_addController:(uint64_t)a1;
- (void)_onqueue_removeController:(void *)a3 registryID:;
- (void)awakeWithSession:(id)a3 environment:(id)a4;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)removeCoalescedControllerComponent:(id)a3;
- (void)servicesDidChange:(id)a3 withAddedServices:(id)a4 removedServices:(id)a5;
- (void)setFirstMicroGamepad:(id)a3;
- (void)storeController:(id)a3;
@end

@implementation _GCAppleTVRemoteControllerManager

- (_GCAppleTVRemoteControllerManager)initWithDeviceSessionConfiguration:(id)a3 queue:(id)a4 environment:(id)a5
{
  v8 = a4;
  v23.receiver = self;
  v23.super_class = _GCAppleTVRemoteControllerManager;
  v9 = a5;
  v10 = a3;
  v11 = [(_GCAppleTVRemoteControllerManager *)&v23 init];
  sessionQueue = v11->_sessionQueue;
  v11->_sessionQueue = v8;
  v13 = v8;

  LOBYTE(v8) = [v10 coalesceRemotes];
  v11->_supportsMultipleRemotes = v8 ^ 1;
  v14 = objc_opt_new();
  controllersByUDID = v11->_controllersByUDID;
  v11->_controllersByUDID = v14;

  v16 = objc_opt_new();
  controllersByRegistryID = v11->_controllersByRegistryID;
  v11->_controllersByRegistryID = v16;

  v18 = objc_opt_new();
  devices = v11->_devices;
  v11->_devices = v18;

  v20 = GCLookupService();

  hidServiceProviding = v11->_hidServiceProviding;
  v11->_hidServiceProviding = v20;

  return v11;
}

- (_GCAppleTVRemoteControllerManager)init
{
  [(_GCAppleTVRemoteControllerManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)awakeWithSession:(id)a3 environment:(id)a4
{
  v5 = [a3 hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = v5;
}

- (id)activateWithSession:(id)a3 environment:(id)a4 options:(unint64_t)a5
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___GCAppleTVRemoteControllerManager_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_1E841A9A8;
  v8[4] = self;
  v6 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:{v8, a5}];

  return v6;
}

- (id)invalidateWithSession:(id)a3 environment:(id)a4
{
  v5 = [_GCCurrentApplicationForegroundMonitor sharedInstance:a3];
  [v5 removeObserver:self];

  hidEventObservation = self->_hidEventObservation;
  self->_hidEventObservation = 0;

  v7 = [(GCHIDSystemServiceProviding *)self->_hidServiceProviding unregisterServicesChangedObserver:self notifyExisting:1];
  v8 = MEMORY[0x1E69A06D0];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

- (void)CBApplicationWillResignActive
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(_GCAppleTVRemoteControllerManager *)self devices];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 motion];

        if (v8)
        {
          v9 = [v7 motion];
          [v9 _pauseMotionUpdates:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)CBApplicationDidBecomeActive
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(_GCAppleTVRemoteControllerManager *)self devices];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 motion];

        if (v8)
        {
          v9 = [v7 motion];
          [v9 _pauseMotionUpdates:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_legacy_publishController:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_sessionQueue);
  if ([v7 areAllHIDDevicesConnected] && (objc_msgSend(v7, "isPublished") & 1) == 0)
  {
    [v7 _legacy_invalidateDescription];
    [v7 setPublished:1];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [(_GCAppleTVRemoteControllerManager *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v5];
    v6 = [(NSSet *)self->_devices setByAddingObject:v7];
    objc_setProperty_atomic(self, a2, v6, 88);

    [(_GCAppleTVRemoteControllerManager *)self didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v5];
  }
}

- (void)_legacy_unpublishController:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_sessionQueue);
  if ([v7 isPublished])
  {
    [v7 setPublished:0];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [(_GCAppleTVRemoteControllerManager *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
    v6 = [(NSSet *)self->_devices gc_setByRemovingObject:v7];
    objc_setProperty_atomic(self, a2, v6, 88);

    [(_GCAppleTVRemoteControllerManager *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
  }
}

- (void)storeController:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "deviceHash")}];
  [(NSMutableDictionary *)self->_controllersByUDID setObject:v4 forKey:v5];
  v6 = [v4 hidServices];
  v7 = [v6 mutableCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) registryID];
        if (gc_isInternalBuild())
        {
          [(_GCAppleTVRemoteControllerManager *)v22 storeController:v13, &v23];
          if (!v13)
          {
            goto LABEL_10;
          }
        }

        else if (!v13)
        {
          goto LABEL_10;
        }

        [(NSMutableDictionary *)self->_controllersByRegistryID setObject:v4 forKey:v13];
        if (gc_isInternalBuild())
        {
          [(_GCAppleTVRemoteControllerManager *)&v16 storeController:v17];
        }

LABEL_10:

        ++v12;
      }

      while (v10 != v12);
      v14 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v10 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_HIDServiceAdded:(id)a3
{
  v4 = a3;
  v5 = [v4 numberPropertyForKey:@"GameControllerSupportedHIDDevice"];
  if (([v5 BOOLValue] & 1) == 0)
  {
    if (isDeviceAppleSiriRemote([v4 service]))
    {
      if (gc_isInternalBuild())
      {
        [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceAdded:];
      }

      v6 = objc_opt_class();
    }

    else
    {
      v6 = 0;
    }

    if (isDeviceAppleDirectionalRemote([v4 service]))
    {
      if (gc_isInternalBuild())
      {
        [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceAdded:];
      }

      v6 = objc_opt_class();
    }

    if (v6 && ([v6 conformsToProtocol:&unk_1F4E97480] & 1) == 0)
    {
      if (gc_isInternalBuild())
      {
        [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceAdded:v4];
      }

      v7 = [[GCController alloc] initWithProfileClass:v6 service:v4];
      [(GCController *)v7 setCoalescingDelegate:self];
      if (v7)
      {
        [(_GCAppleTVRemoteControllerManager *)self _onqueue_addController:v7];
      }
    }
  }
}

- (void)_onqueue_HIDServiceRemoved:(id)a3
{
  v4 = a3;
  v5 = [v4 registryID];
  v6 = [(NSMutableDictionary *)self->_controllersByRegistryID objectForKey:v5];
  if (v6)
  {
    [(_GCAppleTVRemoteControllerManager *)self _onqueue_removeController:v6 registryID:v5];
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceRemoved:v6];
    }

    [v6 removeServiceRef:{objc_msgSend(v4, "service")}];
  }
}

- (void)servicesDidChange:(id)a3 withAddedServices:(id)a4 removedServices:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_GCAppleTVRemoteControllerManager *)self _onqueue_HIDServiceRemoved:*(*(&v23 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_GCAppleTVRemoteControllerManager *)self _onqueue_HIDServiceAdded:*(*(&v19 + 1) + 8 * v17++), v19];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)matchingHIDServiceAttributes
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19[0] = @"DeviceUsagePage";
  v19[1] = @"DeviceUsage";
  v20[0] = &unk_1F4E8F2A8;
  v20[1] = &unk_1F4E8F2C0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17[0] = @"DeviceUsagePage";
  v17[1] = @"DeviceUsage";
  v18[0] = &unk_1F4E8F2A8;
  v18[1] = &unk_1F4E8F2D8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = @"DeviceUsagePage";
  v15[1] = @"DeviceUsage";
  v16[0] = &unk_1F4E8F2C0;
  v16[1] = &unk_1F4E8F2F0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13[0] = @"DeviceUsagePage";
  v13[1] = @"DeviceUsage";
  v14[0] = &unk_1F4E8F308;
  v14[1] = &unk_1F4E8F320;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11[0] = @"DeviceUsagePage";
  v11[1] = @"DeviceUsage";
  v12[0] = &unk_1F4E8F2A8;
  v12[1] = &unk_1F4E8F2D8;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
  if (IOHIDEventGetType() == 11 && _DescendantPointerEvent(a3))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];

    v9 = v5;
  }

  v6 = [(NSMutableDictionary *)self->_controllersByRegistryID objectForKey:v9];
  v7 = [v6 isComponentBased];
  if (v6 && (v7 & 1) == 0)
  {
    v8 = +[_GCLegacyDeviceSession sharedInstance];
    [v8 becomeCurrentController:v6];

    [v6 _legacy_handleEvent:a3];
  }
}

- (void)removeCoalescedControllerComponent:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = self;
  v5 = [(_GCAppleTVRemoteControllerManager *)self firstMicroGamepad];
  v6 = [(GCController *)v4 deviceHash];
  v7 = [(GCController *)v5 profile];
  if ([v7 owner] == v6)
  {
    [v7 setOwner:0];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [(NSMutableDictionary *)v28->_controllersByUDID allValues];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v9)
  {

    v12 = 0;
    v11 = 0;
LABEL_34:
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:];
    }

    [(_GCAppleTVRemoteControllerManager *)v28 _legacy_unpublishController:v5];
    [(_GCAppleTVRemoteControllerManager *)v28 setFirstMicroGamepad:0];
    goto LABEL_37;
  }

  v10 = v9;
  v26 = v7;
  v27 = v5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *v30;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v29 + 1) + 8 * i);
      if (v16 != v4 && [*(*(&v29 + 1) + 8 * i) isATVRemote] && -[GCController areAllHIDDevicesConnected](v16, "areAllHIDDevicesConnected"))
      {
        ++v13;
        controller_genericBTRemote = v28->__controller_genericBTRemote;
        v18 = v16;
        if (v16 == controller_genericBTRemote)
        {
          v19 = v11;
        }

        else
        {
          v19 = v12;
        }

        if (v16 == controller_genericBTRemote)
        {
          v11 = v18;
        }

        else
        {
          v12 = v18;
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v10);

  if (!v13)
  {
    v7 = v26;
    v5 = v27;
    goto LABEL_34;
  }

  v7 = v26;
  v5 = v27;
  if (v11 && v11 == v28->__controller_genericBTRemote && v13 == 1)
  {
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:];
    }

    [(_GCAppleTVRemoteControllerManager *)v28 _legacy_unpublishController:v27];
    [(_GCAppleTVRemoteControllerManager *)v28 setFirstMicroGamepad:v11];
    v20 = v28;
    v21 = v11;
  }

  else
  {
    if (v27 != v4)
    {
      goto LABEL_37;
    }

    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:];
    }

    [(_GCAppleTVRemoteControllerManager *)v28 _legacy_unpublishController:v27];
    [(_GCAppleTVRemoteControllerManager *)v28 setFirstMicroGamepad:v12];
    v20 = v28;
    v21 = v12;
  }

  [(_GCAppleTVRemoteControllerManager *)v20 _legacy_publishController:v21];
LABEL_37:
  v22 = [(GCController *)v4 hidServices];
  v23 = [v22 count];

  if (v23 <= 1)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[GCController deviceHash](v4, "deviceHash")}];
    [(NSMutableDictionary *)v28->_controllersByUDID removeObjectForKey:v24];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (int)connectedATVRemoteCount
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NSMutableDictionary *)self->_controllersByUDID allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isATVRemote])
        {
          v5 += [v8 areAllHIDDevicesConnected];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (GCController)firstMicroGamepad
{
  WeakRetained = objc_loadWeakRetained(&self->_firstMicroGamepad);

  return WeakRetained;
}

- (void)setFirstMicroGamepad:(id)a3
{
  obj = a3;
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_firstMicroGamepad);

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_firstMicroGamepad);
      [(_GCAppleTVRemoteControllerManager *)self _legacy_unpublishController:v5];
    }
  }

  objc_storeWeak(&self->_firstMicroGamepad, obj);
}

- (BOOL)combineSiriRemoteHIDDevicesWithNewController:(id)a3 existingController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 hidServices];
  v9 = [v8 firstObject];
  v10 = [v9 registryID];

  if (v10)
  {
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
    }

    v11 = [v7 motion];
    [v11 _stopDeviceMotionUpdates];

    v12 = [v7 motion];
    v13 = [v12 valueChangedHandler];

    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:v13 existingController:?];
    }

    if ([v6 physicalDeviceUsesCompass])
    {
      [v7 setPhysicalDeviceUsesCompass:{objc_msgSend(v6, "physicalDeviceUsesCompass")}];
    }

    [v7 addServiceRefs:v6];
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
    }

    [(NSMutableDictionary *)self->_controllersByRegistryID setObject:v7 forKey:v10];
    [v6 clearServiceRef];
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:v7 existingController:?];
      if (!v13)
      {
LABEL_13:
        v15 = [v7 physicalDeviceUniqueID];

        if (!v15)
        {
          v16 = [v6 physicalDeviceUniqueID];
          [v7 setPhysicalDeviceUniqueID:v16];
        }

        v17 = [v7 profile];
        v18 = [v17 conformsToProtocol:&unk_1F4E9C418];

        if (!v18)
        {
          v27 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v19 = [v7 profile];
        v20 = [v6 profile];
        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
        }

        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:v19 existingController:?];
        }

        if (![v19 deviceType])
        {
          [v19 setDeviceType:{objc_msgSend(v20, "deviceType")}];
        }

        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:v19 existingController:?];
        }

        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
        }

        if ([v19 deviceType] != 1 || (objc_msgSend(v7, "hidServices"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22 <= 2))
        {
          if ([v19 deviceType] != 2 || (objc_msgSend(v7, "hidServices"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v24 <= 2))
          {
            if ([v19 deviceType] != 5 || (objc_msgSend(v7, "hidServices"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v26 < 2))
            {
              v27 = 0;
              goto LABEL_37;
            }

            objc_storeStrong(&self->__controller_genericBTRemote, a4);
          }
        }

        v27 = 1;
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (!v13)
    {
      goto LABEL_13;
    }

    v14 = [v7 motion];
    [v14 setValueChangedHandler:v13];

    goto LABEL_13;
  }

  v27 = 0;
LABEL_39:

  return v27;
}

- (void)_onqueue_addController:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (gc_isInternalBuild())
    {
      v15 = getGCLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 hidServices];
        *v20 = 138412546;
        *&v20[4] = v3;
        OUTLINED_FUNCTION_4_12();
        *&v20[14] = v17;
        _os_log_impl(&dword_1D2CD5000, v15, OS_LOG_TYPE_DEFAULT, "addController:%@, services: %@", v20, 0x16u);
      }
    }

    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "deviceHash", *v20)}];
    v5 = [*(a1 + 24) objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      if ([v5 isATVRemote] && objc_msgSend(v3, "isATVRemote"))
      {
        v7 = [a1 combineSiriRemoteHIDDevicesWithNewController:v3 existingController:v6];
      }

      else if ([v3 isForwarded])
      {
        v7 = 0;
      }

      else
      {
        [*(a1 + 24) setObject:v3 forKey:v4];
        v7 = 1;
      }

      v8 = v6;
      goto LABEL_20;
    }

    if (gc_isInternalBuild())
    {
      v18 = getGCLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 24);
        *v20 = 138412290;
        *&v20[4] = v19;
        _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_DEFAULT, "existing controller does not exist: %@", v20, 0xCu);
      }
    }

    if ([v3 isATVRemote])
    {
      v7 = [v3 isForwarded];
    }

    else
    {
      v7 = 1;
    }

    v9 = [v3 physicalInputProfile];
    if ([v9 conformsToProtocol:&unk_1F4E9C418])
    {
      v10 = [v3 physicalInputProfile];
      v11 = [v10 deviceType];

      if (v11 != 4)
      {
LABEL_19:
        [a1 storeController:v3];
        v8 = v3;
LABEL_20:
        v13 = v8;

        [v13 setAllHIDDevicesConnected:v7];
        [a1 _legacy_publishController:v13];

        goto LABEL_21;
      }

      v12 = v3;
      v9 = *(a1 + 56);
      *(a1 + 56) = v12;
      v7 = 1;
    }

    goto LABEL_19;
  }

LABEL_21:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_removeController:(void *)a3 registryID:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (gc_isInternalBuild())
    {
      v18 = getGCLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v5;
        v22 = 2048;
        v23 = [v5 deviceHash];
        _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_DEFAULT, "removeController:%@ for hash: %lu", &v20, 0x16u);
      }
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "deviceHash")}];
    v8 = [*(a1 + 24) objectForKey:v7];
    if (v6)
    {
      if (gc_isInternalBuild())
      {
        v19 = getGCLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_4_12();
          v23 = v7;
          _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, "removing from registry lookup with registry ID: %@ and UDID: %@", &v20, 0x16u);
        }
      }

      [*(a1 + 32) removeObjectForKey:v6];
    }

    v9 = [v8 physicalInputProfile];
    if ([v9 conformsToProtocol:&unk_1F4E9C418])
    {
      v10 = [v8 physicalInputProfile];
      if ([v10 deviceType] == 4)
      {
      }

      else
      {
        v11 = [v8 physicalInputProfile];
        v12 = [v11 deviceType];

        if (v12 != 5)
        {
          goto LABEL_12;
        }
      }

      v9 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

LABEL_12:
    v13 = [v5 profile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v5 hidServices];
      v15 = [v14 count];

      if (v15 >= 2)
      {
        if (gc_isInternalBuild())
        {
          v16 = getGCLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_8();
            _os_log_impl(&dword_1D2CD5000, v16, OS_LOG_TYPE_DEFAULT, "Coalesced keyboard was removed with registryID: %@", &v20, 0xCu);
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    [v8 setAllHIDDevicesConnected:0];
    [*(a1 + 24) removeObjectForKey:v7];
    [a1 _legacy_unpublishController:v8];
LABEL_20:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)storeController:(void *)a3 .cold.1(uint8_t *a1, uint64_t a2, void *a3)
{
  v7 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v7))
  {
    *a1 = 138412290;
    *a3 = a2;
    _os_log_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_DEFAULT, "got registryID = %@", a1, 0xCu);
  }
}

- (void)storeController:(uint8_t *)a1 .cold.2(uint8_t *a1, _BYTE *a2)
{
  v5 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v5))
  {
    *a1 = 0;
    *a2 = 0;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "added to controllers by registry id lookup", a1, 2u);
  }
}

- (void)_onqueue_HIDServiceAdded:.cold.1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_onqueue_HIDServiceAdded:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_onqueue_HIDServiceAdded:(void *)a1 .cold.3(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 registryID];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_HIDServiceRemoved:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 hidServices];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeCoalescedControllerComponent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeCoalescedControllerComponent:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeCoalescedControllerComponent:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)combineSiriRemoteHIDDevicesWithNewController:existingController:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(const void *)a1 existingController:.cold.2(const void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = _Block_copy(a1);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)combineSiriRemoteHIDDevicesWithNewController:existingController:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(void *)a1 existingController:.cold.4(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 hidServices];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)combineSiriRemoteHIDDevicesWithNewController:existingController:.cold.5()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(void *)a1 existingController:.cold.6(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    [a1 deviceType];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(void *)a1 existingController:.cold.7(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    [a1 deviceType];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end