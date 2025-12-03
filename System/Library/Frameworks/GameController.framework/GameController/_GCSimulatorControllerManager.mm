@interface _GCSimulatorControllerManager
- (NSSet)devices;
- (_GCSimulatorControllerManager)init;
- (_GCSimulatorControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)invalidateWithSession:(id)session environment:(id)environment;
- (id)matchingHIDServiceAttributes;
- (void)_onqueue_HIDServiceAdded:(uint64_t)added;
- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed;
- (void)_onqueue_addController:(uint64_t)controller;
- (void)_onqueue_removeController:(uint64_t)controller;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
@end

@implementation _GCSimulatorControllerManager

- (_GCSimulatorControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = _GCSimulatorControllerManager;
  environmentCopy = environment;
  v9 = [(_GCSimulatorControllerManager *)&v19 init];
  sessionQueue = v9->_sessionQueue;
  v9->_sessionQueue = queueCopy;
  v11 = queueCopy;

  v12 = GCLookupService();

  hidServiceProviding = v9->_hidServiceProviding;
  v9->_hidServiceProviding = v12;

  v14 = objc_opt_new();
  hidEventSource = v9->_hidEventSource;
  v9->_hidEventSource = v14;

  v16 = objc_opt_new();
  devices = v9->_devices;
  v9->_devices = v16;

  return v9;
}

- (_GCSimulatorControllerManager)init
{
  [(_GCSimulatorControllerManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)awakeWithSession:(id)session environment:(id)environment
{
  hidEventSource = [session hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = hidEventSource;
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___GCSimulatorControllerManager_invalidateWithSession_environment___block_invoke;
  v7[3] = &unk_1E841A9A8;
  v7[4] = self;
  v5 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:v7];

  return v5;
}

- (id)matchingHIDServiceAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"DeviceUsagePage";
  v7[1] = @"DeviceUsage";
  v8[0] = &unk_1F4E8F338;
  v8[1] = &unk_1F4E8F350;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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

        if (self)
        {
          [(_GCSimulatorControllerManager *)self _onqueue_removeController:?];
        }

        ++v12;
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

        [(_GCSimulatorControllerManager *)self _onqueue_HIDServiceAdded:?];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_addController:(uint64_t)controller
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (controller)
  {
    dispatch_assert_queue_V2(*(controller + 8));
    v4 = [*(controller + 32) objectForKey:v3];

    if (v4)
    {
      if (!gc_isInternalBuild())
      {
        goto LABEL_14;
      }

      oslog = getGCLogger();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        [(_GCSimulatorControllerManager *)v3 _onqueue_addController:?];
      }
    }

    else
    {
      oslog = objc_opt_new();
      [oslog setProductCategory:@"MFi"];
      v5 = [v3 propertyForKey:@"Product"];
      [oslog setVendorName:v5];

      memset(v26, 0, 512);
      GCExtendedGamepadInitInfoMake(v26);
      v27 = 0;
      v28 = 0;
      v24 = [[GCExtendedGamepad alloc] initWithInfo:v26];
      v6 = [GCController alloc];
      v30[0] = oslog;
      v30[1] = v24;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v8 = [(GCController *)v6 initWithComponents:v7];

      v9 = objc_alloc_init(_GCGamepadEventKeyboardEventAdapterConfig);
      [(_GCGamepadEventKeyboardEventAdapterConfig *)v9 mapUsagePage:12 usage:516 toGamepadElement:23];
      v10 = [[_GCKeyboardEventHIDAdapter alloc] initWithSource:*(controller + 24) service:v3];
      v11 = [[_GCGamepadEventGamepadHIDAdapter alloc] initWithSource:*(controller + 24) service:v3];
      v12 = [[_GCGamepadEventKeyboardEventAdapter alloc] initWithConfiguration:v9 source:v10];
      v13 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
      for (i = 0; i != 47; ++i)
      {
        v16 = ((i - 24) & 0xFFFFFFFFFFFFFFEFLL) != 0 && (i & 0x3E) != 22;
        [(_GCGamepadEventFusionConfig *)v13 setPassRule:1 forElement:i forSourceAtIndex:v16, v24];
      }

      v17 = [_GCGamepadEventFusion alloc];
      v29[0] = v12;
      v29[1] = v11;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v19 = [(_GCGamepadEventFusion *)v17 initWithConfiguration:v13 sources:v18];
      [(GCExtendedGamepad *)v24 setGamepadEventSource:v19];

      v20 = [MEMORY[0x1E695DFD8] setWithObject:v8];
      [controller willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v20];
      v21 = *(controller + 32);
      objc_sync_enter(v21);
      [*(controller + 32) setObject:v8 forKey:v3];
      objc_sync_exit(v21);

      [controller didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v20];
      for (j = 0; j != 1584; j += 72)
      {
        __destructor_8_s0_s48_s56_s64(v26 + j);
      }
    }
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_removeController:(uint64_t)controller
{
  v3 = a2;
  if (controller)
  {
    v7 = v3;
    dispatch_assert_queue_V2(*(controller + 8));
    v4 = [*(controller + 32) objectForKey:v7];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      [controller willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
      v6 = *(controller + 32);
      objc_sync_enter(v6);
      [*(controller + 32) removeObjectForKey:v7];
      [(_GCSimulatorControllerManager *)v6 _onqueue_removeController:controller, v5];
    }

    v3 = v7;
  }
}

- (NSSet)devices
{
  v3 = objc_opt_new();
  v4 = self->_devices;
  objc_sync_enter(v4);
  allValues = [(NSMutableDictionary *)self->_devices allValues];
  [v3 addObjectsFromArray:allValues];

  objc_sync_exit(v4);

  return v3;
}

- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed
{
  if (removed)
  {
    [(_GCSimulatorControllerManager *)removed _onqueue_removeController:a2];
  }
}

- (void)_onqueue_HIDServiceAdded:(uint64_t)added
{
  v3 = a2;
  if (added)
  {
    v5 = v3;
    v4 = [v3 propertyForKey:@"PhysicalDeviceUniqueID"];
    if ([v4 isEqual:@"SimulatedGamepad"])
    {
      [(_GCSimulatorControllerManager *)added _onqueue_addController:v5];
    }

    v3 = v5;
  }
}

- (void)_onqueue_addController:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "#NOTE Added HID service %@ is already tracked as a controller.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_onqueue_removeController:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  objc_sync_exit(a1);

  [a2 didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:a3];
}

@end