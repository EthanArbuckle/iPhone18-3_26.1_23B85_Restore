@interface _GCAppleTVRemoteControllerManager
- (BOOL)combineSiriRemoteHIDDevicesWithNewController:(id)controller existingController:(id)existingController;
- (GCController)firstMicroGamepad;
- (_GCAppleTVRemoteControllerManager)init;
- (_GCAppleTVRemoteControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options;
- (id)invalidateWithSession:(id)session environment:(id)environment;
- (id)matchingHIDServiceAttributes;
- (int)connectedATVRemoteCount;
- (void)CBApplicationDidBecomeActive;
- (void)CBApplicationWillResignActive;
- (void)_legacy_publishController:(id)controller;
- (void)_legacy_unpublishController:(id)controller;
- (void)_onqueue_HIDServiceAdded:(id)added;
- (void)_onqueue_HIDServiceRemoved:(id)removed;
- (void)_onqueue_addController:(uint64_t)controller;
- (void)_onqueue_removeController:(void *)controller registryID:;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)removeCoalescedControllerComponent:(id)component;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
- (void)setFirstMicroGamepad:(id)gamepad;
- (void)storeController:(id)controller;
@end

@implementation _GCAppleTVRemoteControllerManager

- (_GCAppleTVRemoteControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = _GCAppleTVRemoteControllerManager;
  environmentCopy = environment;
  configurationCopy = configuration;
  v11 = [(_GCAppleTVRemoteControllerManager *)&v23 init];
  sessionQueue = v11->_sessionQueue;
  v11->_sessionQueue = queueCopy;
  v13 = queueCopy;

  LOBYTE(queueCopy) = [configurationCopy coalesceRemotes];
  v11->_supportsMultipleRemotes = queueCopy ^ 1;
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

- (void)awakeWithSession:(id)session environment:(id)environment
{
  hidEventSource = [session hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = hidEventSource;
}

- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___GCAppleTVRemoteControllerManager_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_1E841A9A8;
  v8[4] = self;
  v6 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:{v8, options}];

  return v6;
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  v5 = [_GCCurrentApplicationForegroundMonitor sharedInstance:session];
  [v5 removeObserver:self];

  hidEventObservation = self->_hidEventObservation;
  self->_hidEventObservation = 0;

  v7 = [(GCHIDSystemServiceProviding *)self->_hidServiceProviding unregisterServicesChangedObserver:self notifyExisting:1];
  v8 = MEMORY[0x1E69A06D0];
  null = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 futureWithResult:null];

  return v10;
}

- (void)CBApplicationWillResignActive
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [(_GCAppleTVRemoteControllerManager *)self devices];
  v3 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        motion = [v7 motion];

        if (motion)
        {
          motion2 = [v7 motion];
          [motion2 _pauseMotionUpdates:1];
        }
      }

      v4 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  devices = [(_GCAppleTVRemoteControllerManager *)self devices];
  v3 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        motion = [v7 motion];

        if (motion)
        {
          motion2 = [v7 motion];
          [motion2 _pauseMotionUpdates:0];
        }
      }

      v4 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_legacy_publishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  if ([controllerCopy areAllHIDDevicesConnected] && (objc_msgSend(controllerCopy, "isPublished") & 1) == 0)
  {
    [controllerCopy _legacy_invalidateDescription];
    [controllerCopy setPublished:1];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
    [(_GCAppleTVRemoteControllerManager *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v5];
    v6 = [(NSSet *)self->_devices setByAddingObject:controllerCopy];
    objc_setProperty_atomic(self, a2, v6, 88);

    [(_GCAppleTVRemoteControllerManager *)self didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v5];
  }
}

- (void)_legacy_unpublishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  if ([controllerCopy isPublished])
  {
    [controllerCopy setPublished:0];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
    [(_GCAppleTVRemoteControllerManager *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
    v6 = [(NSSet *)self->_devices gc_setByRemovingObject:controllerCopy];
    objc_setProperty_atomic(self, a2, v6, 88);

    [(_GCAppleTVRemoteControllerManager *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
  }
}

- (void)storeController:(id)controller
{
  v25 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(controllerCopy, "deviceHash")}];
  [(NSMutableDictionary *)self->_controllersByUDID setObject:controllerCopy forKey:v5];
  hidServices = [controllerCopy hidServices];
  v7 = [hidServices mutableCopy];

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

        registryID = [*(*(&v18 + 1) + 8 * v12) registryID];
        if (gc_isInternalBuild())
        {
          [(_GCAppleTVRemoteControllerManager *)v22 storeController:registryID, &v23];
          if (!registryID)
          {
            goto LABEL_10;
          }
        }

        else if (!registryID)
        {
          goto LABEL_10;
        }

        [(NSMutableDictionary *)self->_controllersByRegistryID setObject:controllerCopy forKey:registryID];
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

- (void)_onqueue_HIDServiceAdded:(id)added
{
  addedCopy = added;
  v5 = [addedCopy numberPropertyForKey:@"GameControllerSupportedHIDDevice"];
  if (([v5 BOOLValue] & 1) == 0)
  {
    if (isDeviceAppleSiriRemote([addedCopy service]))
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

    if (isDeviceAppleDirectionalRemote([addedCopy service]))
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
        [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceAdded:addedCopy];
      }

      v7 = [[GCController alloc] initWithProfileClass:v6 service:addedCopy];
      [(GCController *)v7 setCoalescingDelegate:self];
      if (v7)
      {
        [(_GCAppleTVRemoteControllerManager *)self _onqueue_addController:v7];
      }
    }
  }
}

- (void)_onqueue_HIDServiceRemoved:(id)removed
{
  removedCopy = removed;
  registryID = [removedCopy registryID];
  v6 = [(NSMutableDictionary *)self->_controllersByRegistryID objectForKey:registryID];
  if (v6)
  {
    [(_GCAppleTVRemoteControllerManager *)self _onqueue_removeController:v6 registryID:registryID];
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceRemoved:v6];
    }

    [v6 removeServiceRef:{objc_msgSend(removedCopy, "service")}];
  }
}

- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices
{
  v29 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  removedServicesCopy = removedServices;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [removedServicesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(removedServicesCopy);
        }

        [(_GCAppleTVRemoteControllerManager *)self _onqueue_HIDServiceRemoved:*(*(&v23 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [removedServicesCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = servicesCopy;
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

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
  if (IOHIDEventGetType() == 11 && _DescendantPointerEvent(event))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];

    v9 = v5;
  }

  v6 = [(NSMutableDictionary *)self->_controllersByRegistryID objectForKey:v9];
  isComponentBased = [v6 isComponentBased];
  if (v6 && (isComponentBased & 1) == 0)
  {
    v8 = +[_GCLegacyDeviceSession sharedInstance];
    [v8 becomeCurrentController:v6];

    [v6 _legacy_handleEvent:event];
  }
}

- (void)removeCoalescedControllerComponent:(id)component
{
  v34 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  selfCopy = self;
  firstMicroGamepad = [(_GCAppleTVRemoteControllerManager *)self firstMicroGamepad];
  deviceHash = [(GCController *)componentCopy deviceHash];
  profile = [(GCController *)firstMicroGamepad profile];
  if ([profile owner] == deviceHash)
  {
    [profile setOwner:0];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_controllersByUDID allValues];
  v9 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v9)
  {

    v12 = 0;
    v11 = 0;
LABEL_34:
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:];
    }

    [(_GCAppleTVRemoteControllerManager *)selfCopy _legacy_unpublishController:firstMicroGamepad];
    [(_GCAppleTVRemoteControllerManager *)selfCopy setFirstMicroGamepad:0];
    goto LABEL_37;
  }

  v10 = v9;
  v26 = profile;
  v27 = firstMicroGamepad;
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
        objc_enumerationMutation(allValues);
      }

      v16 = *(*(&v29 + 1) + 8 * i);
      if (v16 != componentCopy && [*(*(&v29 + 1) + 8 * i) isATVRemote] && -[GCController areAllHIDDevicesConnected](v16, "areAllHIDDevicesConnected"))
      {
        ++v13;
        controller_genericBTRemote = selfCopy->__controller_genericBTRemote;
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

    v10 = [allValues countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v10);

  if (!v13)
  {
    profile = v26;
    firstMicroGamepad = v27;
    goto LABEL_34;
  }

  profile = v26;
  firstMicroGamepad = v27;
  if (v11 && v11 == selfCopy->__controller_genericBTRemote && v13 == 1)
  {
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:];
    }

    [(_GCAppleTVRemoteControllerManager *)selfCopy _legacy_unpublishController:v27];
    [(_GCAppleTVRemoteControllerManager *)selfCopy setFirstMicroGamepad:v11];
    v20 = selfCopy;
    v21 = v11;
  }

  else
  {
    if (v27 != componentCopy)
    {
      goto LABEL_37;
    }

    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:];
    }

    [(_GCAppleTVRemoteControllerManager *)selfCopy _legacy_unpublishController:v27];
    [(_GCAppleTVRemoteControllerManager *)selfCopy setFirstMicroGamepad:v12];
    v20 = selfCopy;
    v21 = v12;
  }

  [(_GCAppleTVRemoteControllerManager *)v20 _legacy_publishController:v21];
LABEL_37:
  hidServices = [(GCController *)componentCopy hidServices];
  v23 = [hidServices count];

  if (v23 <= 1)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[GCController deviceHash](componentCopy, "deviceHash")}];
    [(NSMutableDictionary *)selfCopy->_controllersByUDID removeObjectForKey:v24];
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
  allValues = [(NSMutableDictionary *)self->_controllersByUDID allValues];
  v3 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isATVRemote])
        {
          v5 += [v8 areAllHIDDevicesConnected];
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)setFirstMicroGamepad:(id)gamepad
{
  obj = gamepad;
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

- (BOOL)combineSiriRemoteHIDDevicesWithNewController:(id)controller existingController:(id)existingController
{
  controllerCopy = controller;
  existingControllerCopy = existingController;
  hidServices = [controllerCopy hidServices];
  firstObject = [hidServices firstObject];
  registryID = [firstObject registryID];

  if (registryID)
  {
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
    }

    motion = [existingControllerCopy motion];
    [motion _stopDeviceMotionUpdates];

    motion2 = [existingControllerCopy motion];
    valueChangedHandler = [motion2 valueChangedHandler];

    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:valueChangedHandler existingController:?];
    }

    if ([controllerCopy physicalDeviceUsesCompass])
    {
      [existingControllerCopy setPhysicalDeviceUsesCompass:{objc_msgSend(controllerCopy, "physicalDeviceUsesCompass")}];
    }

    [existingControllerCopy addServiceRefs:controllerCopy];
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
    }

    [(NSMutableDictionary *)self->_controllersByRegistryID setObject:existingControllerCopy forKey:registryID];
    [controllerCopy clearServiceRef];
    if (gc_isInternalBuild())
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingControllerCopy existingController:?];
      if (!valueChangedHandler)
      {
LABEL_13:
        physicalDeviceUniqueID = [existingControllerCopy physicalDeviceUniqueID];

        if (!physicalDeviceUniqueID)
        {
          physicalDeviceUniqueID2 = [controllerCopy physicalDeviceUniqueID];
          [existingControllerCopy setPhysicalDeviceUniqueID:physicalDeviceUniqueID2];
        }

        profile = [existingControllerCopy profile];
        v18 = [profile conformsToProtocol:&unk_1F4E9C418];

        if (!v18)
        {
          v27 = 0;
LABEL_38:

          goto LABEL_39;
        }

        profile2 = [existingControllerCopy profile];
        profile3 = [controllerCopy profile];
        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
        }

        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:profile2 existingController:?];
        }

        if (![profile2 deviceType])
        {
          [profile2 setDeviceType:{objc_msgSend(profile3, "deviceType")}];
        }

        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:profile2 existingController:?];
        }

        if (gc_isInternalBuild())
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingController:];
        }

        if ([profile2 deviceType] != 1 || (objc_msgSend(existingControllerCopy, "hidServices"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22 <= 2))
        {
          if ([profile2 deviceType] != 2 || (objc_msgSend(existingControllerCopy, "hidServices"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v24 <= 2))
          {
            if ([profile2 deviceType] != 5 || (objc_msgSend(existingControllerCopy, "hidServices"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v26 < 2))
            {
              v27 = 0;
              goto LABEL_37;
            }

            objc_storeStrong(&self->__controller_genericBTRemote, existingController);
          }
        }

        v27 = 1;
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (!valueChangedHandler)
    {
      goto LABEL_13;
    }

    motion3 = [existingControllerCopy motion];
    [motion3 setValueChangedHandler:valueChangedHandler];

    goto LABEL_13;
  }

  v27 = 0;
LABEL_39:

  return v27;
}

- (void)_onqueue_addController:(uint64_t)controller
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (controller)
  {
    dispatch_assert_queue_V2(*(controller + 8));
    if (gc_isInternalBuild())
    {
      v15 = getGCLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        hidServices = [v3 hidServices];
        *v20 = 138412546;
        *&v20[4] = v3;
        OUTLINED_FUNCTION_4_12();
        *&v20[14] = v17;
        _os_log_impl(&dword_1D2CD5000, v15, OS_LOG_TYPE_DEFAULT, "addController:%@, services: %@", v20, 0x16u);
      }
    }

    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "deviceHash", *v20)}];
    v5 = [*(controller + 24) objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      if ([v5 isATVRemote] && objc_msgSend(v3, "isATVRemote"))
      {
        isForwarded = [controller combineSiriRemoteHIDDevicesWithNewController:v3 existingController:v6];
      }

      else if ([v3 isForwarded])
      {
        isForwarded = 0;
      }

      else
      {
        [*(controller + 24) setObject:v3 forKey:v4];
        isForwarded = 1;
      }

      v8 = v6;
      goto LABEL_20;
    }

    if (gc_isInternalBuild())
    {
      v18 = getGCLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(controller + 24);
        *v20 = 138412290;
        *&v20[4] = v19;
        _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_DEFAULT, "existing controller does not exist: %@", v20, 0xCu);
      }
    }

    if ([v3 isATVRemote])
    {
      isForwarded = [v3 isForwarded];
    }

    else
    {
      isForwarded = 1;
    }

    physicalInputProfile = [v3 physicalInputProfile];
    if ([physicalInputProfile conformsToProtocol:&unk_1F4E9C418])
    {
      physicalInputProfile2 = [v3 physicalInputProfile];
      deviceType = [physicalInputProfile2 deviceType];

      if (deviceType != 4)
      {
LABEL_19:
        [controller storeController:v3];
        v8 = v3;
LABEL_20:
        v13 = v8;

        [v13 setAllHIDDevicesConnected:isForwarded];
        [controller _legacy_publishController:v13];

        goto LABEL_21;
      }

      v12 = v3;
      physicalInputProfile = *(controller + 56);
      *(controller + 56) = v12;
      isForwarded = 1;
    }

    goto LABEL_19;
  }

LABEL_21:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_removeController:(void *)controller registryID:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  controllerCopy = controller;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if (gc_isInternalBuild())
    {
      v18 = getGCLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v5;
        v22 = 2048;
        deviceHash = [v5 deviceHash];
        _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_DEFAULT, "removeController:%@ for hash: %lu", &v20, 0x16u);
      }
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "deviceHash")}];
    v8 = [*(self + 24) objectForKey:v7];
    if (controllerCopy)
    {
      if (gc_isInternalBuild())
      {
        v19 = getGCLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_4_12();
          deviceHash = v7;
          _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, "removing from registry lookup with registry ID: %@ and UDID: %@", &v20, 0x16u);
        }
      }

      [*(self + 32) removeObjectForKey:controllerCopy];
    }

    physicalInputProfile = [v8 physicalInputProfile];
    if ([physicalInputProfile conformsToProtocol:&unk_1F4E9C418])
    {
      physicalInputProfile2 = [v8 physicalInputProfile];
      if ([physicalInputProfile2 deviceType] == 4)
      {
      }

      else
      {
        physicalInputProfile3 = [v8 physicalInputProfile];
        deviceType = [physicalInputProfile3 deviceType];

        if (deviceType != 5)
        {
          goto LABEL_12;
        }
      }

      physicalInputProfile = *(self + 56);
      *(self + 56) = 0;
    }

LABEL_12:
    profile = [v5 profile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hidServices = [v5 hidServices];
      v15 = [hidServices count];

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
    [*(self + 24) removeObjectForKey:v7];
    [self _legacy_unpublishController:v8];
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