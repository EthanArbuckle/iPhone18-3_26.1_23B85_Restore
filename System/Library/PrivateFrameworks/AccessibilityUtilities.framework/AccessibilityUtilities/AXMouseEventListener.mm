@interface AXMouseEventListener
+ (id)sharedInstance;
- (BOOL)_handleMouseButtonEvent:(id)event;
- (BOOL)currentDevicesHaveAssistiveTouchCustomActions;
- (id)_init;
- (id)discoveredMouseDevices;
- (void)_finishHandlingMouseButtonEvent:(id)event buttonMask:(double)mask creatorHIDServiceClient:(__IOHIDServiceClient *)client;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)deviceMonitorDidDetectDeviceEvent:(id)event;
- (void)endFilteringButtonEvents;
- (void)mouseSettingsDidChange;
- (void)removeObserver:(id)observer;
@end

@implementation AXMouseEventListener

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[AXMouseEventListener sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __38__AXMouseEventListener_sharedInstance__block_invoke()
{
  v0 = [[AXMouseEventListener alloc] _init];
  v1 = sharedInstance__Shared;
  sharedInstance__Shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_init
{
  v21.receiver = self;
  v21.super_class = AXMouseEventListener;
  v2 = [(AXMouseEventListener *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachedMouseDevicesLock._os_unfair_lock_opaque = 0;
    v2->_observerLock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

    v6 = [AXDeviceMonitor alloc];
    _mouseMatching = [objc_opt_class() _mouseMatching];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v9 = [(AXDeviceMonitor *)v6 initWithMatchingMultiple:_mouseMatching callbackRunLoop:mainRunLoop];
    deviceMonitor = v3->_deviceMonitor;
    v3->_deviceMonitor = v9;

    [(AXDeviceMonitor *)v3->_deviceMonitor setDelegate:v3];
    [(AXDeviceMonitor *)v3->_deviceMonitor begin];
    v11 = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"AXMouseEventListener" HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:0];
    eventProcessor = v3->_eventProcessor;
    v3->_eventProcessor = v11;

    [(AXEventProcessor *)v3->_eventProcessor setHIDEventFilterMask:16];
    objc_initWeak(&location, v3);
    v13 = v3->_eventProcessor;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __29__AXMouseEventListener__init__block_invoke;
    v18[3] = &unk_1E71EC9F0;
    objc_copyWeak(&v19, &location);
    [(AXEventProcessor *)v13 setHIDEventHandler:v18];
    v14 = +[AXSettings sharedInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __29__AXMouseEventListener__init__block_invoke_2;
    v16[3] = &unk_1E71EA778;
    objc_copyWeak(&v17, &location);
    [v14 registerUpdateBlock:v16 forRetrieveSelector:sel_assistiveTouchMouseCustomizedClickActions withListener:v3];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __29__AXMouseEventListener__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 3200)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained _handleMouseButtonEvent:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __29__AXMouseEventListener__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained mouseSettingsDidChange];
}

- (void)dealloc
{
  [(AXEventProcessor *)self->_eventProcessor cleanup];
  [(AXMouseEventListener *)self endFilteringButtonEvents];
  [(AXDeviceMonitor *)self->_deviceMonitor invalidate];
  v3.receiver = self;
  v3.super_class = AXMouseEventListener;
  [(AXMouseEventListener *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
  if (objc_opt_respondsToSelector())
  {
    os_unfair_lock_lock(&self->_cachedMouseDevicesLock);
    v4 = [(NSSet *)self->_cachedMouseDevices count];
    os_unfair_lock_unlock(&self->_cachedMouseDevicesLock);
    if (v4)
    {
      [observerCopy mouseDevicesChanged:self];
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observerLock);
}

- (id)discoveredMouseDevices
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_cachedMouseDevicesLock);
  cachedMouseDevices = self->_cachedMouseDevices;
  os_unfair_lock_unlock(&self->_cachedMouseDevicesLock);
  if (!cachedMouseDevices)
  {
    copyDevices = [(AXDeviceMonitor *)self->_deviceMonitor copyDevices];
    v5 = [MEMORY[0x1E695DFA8] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = copyDevices;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = CFGetTypeID(v11);
          if (v12 == IOHIDDeviceGetTypeID())
          {
            v13 = [AXCustomizableMouse mouseForHIDDevice:v11, v17];
            if (v13 && ![(NSSet *)v5 containsObject:v13])
            {
              [(NSSet *)v5 addObject:v13];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock(&self->_cachedMouseDevicesLock);
    v14 = self->_cachedMouseDevices;
    self->_cachedMouseDevices = v5;

    os_unfair_lock_unlock(&self->_cachedMouseDevicesLock);
  }

  os_unfair_lock_lock(&self->_cachedMouseDevicesLock);
  allObjects = [(NSSet *)self->_cachedMouseDevices allObjects];
  os_unfair_lock_unlock(&self->_cachedMouseDevicesLock);

  return allObjects;
}

- (void)endFilteringButtonEvents
{
  if ([(AXEventProcessor *)self->_eventProcessor isHandlingHIDEvents])
  {
    eventProcessor = self->_eventProcessor;

    [(AXEventProcessor *)eventProcessor endHandlingHIDEventsForReason:@"Filtering mouse events for AXMouseEventListener"];
  }
}

- (BOOL)currentDevicesHaveAssistiveTouchCustomActions
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  discoveredMouseDevices = [(AXMouseEventListener *)self discoveredMouseDevices];
  v3 = [discoveredMouseDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(discoveredMouseDevices);
        }

        if ([*(*(&v7 + 1) + 8 * i) customActionsRequireAssistiveTouch])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [discoveredMouseDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)mouseSettingsDidChange
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  discoveredMouseDevices = [(AXMouseEventListener *)self discoveredMouseDevices];
  v3 = [discoveredMouseDevices countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v3)
  {
LABEL_34:

    return;
  }

  v4 = v3;
  v26 = 0;
  v5 = *v34;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v34 != v5)
      {
        objc_enumerationMutation(discoveredMouseDevices);
      }

      v7 = *(*(&v33 + 1) + 8 * i);
      identifier = [v7 identifier];
      v9 = +[AXCustomizableMouse _existingMouseForIdentifier:vendorId:productId:](AXCustomizableMouse, "_existingMouseForIdentifier:vendorId:productId:", identifier, [v7 vendorId], objc_msgSend(v7, "productId"));

      if ([v7 hasCustomActions])
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v17 = ASTLogMouse();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18B15E000, v17, OS_LOG_TYPE_INFO, "device removed all custom actions", buf, 2u);
        }

        v26 = 1;
      }

      else if (v9)
      {
        v11 = discoveredMouseDevices;
        os_unfair_lock_lock(&self->_cachedMouseDevicesLock);
        buttonMap = [v9 buttonMap];
        buttonMap2 = [v7 buttonMap];
        v14 = [buttonMap isEqualToDictionary:buttonMap2];

        if ((v14 & 1) == 0)
        {
          v15 = ASTLogMouse();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "device updated custom actions", buf, 2u);
          }

          buttonMap3 = [v9 buttonMap];
          [v7 setButtonMap:buttonMap3];

          v26 = 1;
        }

        os_unfair_lock_unlock(&self->_cachedMouseDevicesLock);
        discoveredMouseDevices = v11;
      }
    }

    v4 = [discoveredMouseDevices countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v4);

  if (v26)
  {
    os_unfair_lock_lock(&self->_observerLock);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observerLock);
    v19 = ASTLogMouse();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_INFO, "notifying observers that custom actions did change", buf, 2u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    discoveredMouseDevices = allObjects;
    v20 = [discoveredMouseDevices countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(discoveredMouseDevices);
          }

          v24 = discoveredMouseDevices;
          v25 = *(*(&v28 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v25 mouseCustomActionsDidChange:self];
          }

          discoveredMouseDevices = v24;
        }

        v21 = [v24 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v21);
    }

    goto LABEL_34;
  }
}

- (void)deviceMonitorDidDetectDeviceEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_cachedMouseDevicesLock);
  cachedMouseDevices = self->_cachedMouseDevices;
  self->_cachedMouseDevices = 0;

  os_unfair_lock_unlock(&self->_cachedMouseDevicesLock);
  os_unfair_lock_lock(&self->_observerLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observerLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 mouseDevicesChanged:{self, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)_handleMouseButtonEvent:(id)event
{
  eventCopy = event;
  pointerControllerInfo = [eventCopy pointerControllerInfo];
  creatorHIDServiceClient = [eventCopy creatorHIDServiceClient];
  v7 = 0;
  if (pointerControllerInfo)
  {
    v8 = creatorHIDServiceClient;
    if (creatorHIDServiceClient)
    {
      [pointerControllerInfo pointerButtonMask];
      if (v9 != 0.0 && (v10 = v9, [pointerControllerInfo pointerButtonNumber], v11 == 1) && (objc_msgSend(pointerControllerInfo, "pointerButtonClickCount"), v12))
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __48__AXMouseEventListener__handleMouseButtonEvent___block_invoke;
        v14[3] = &unk_1E71ECB28;
        v14[4] = self;
        v15 = eventCopy;
        v16 = v10;
        v17 = v8;
        dispatch_async(MEMORY[0x1E69E96A0], v14);

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)_finishHandlingMouseButtonEvent:(id)event buttonMask:(double)mask creatorHIDServiceClient:(__IOHIDServiceClient *)client
{
  v6 = 0;
  v20 = *MEMORY[0x1E69E9840];
  while (((mask >> v6) & 1) == 0)
  {
    if (++v6 == 65534)
    {
      return;
    }
  }

  v7 = [AXCustomizableMouse mouseForHIDServiceClient:client];
  if (v7)
  {
    os_unfair_lock_lock(&self->_observerLock);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observerLock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = allObjects;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v14 mouseEventListener:self customizableMouse:v7 interceptedMouseButton:{v6 + 1, v15}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

@end