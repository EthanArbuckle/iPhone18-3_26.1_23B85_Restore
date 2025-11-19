@interface AXPointerDeviceManager
+ (id)sharedInstance;
- (BOOL)containsDragLockCompatibleDevice;
- (BOOL)containsTrackpad;
- (NSArray)connectedDevices;
- (id)_init;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)mousePointerDevicesDidConnect:(id)a3;
- (void)mousePointerDevicesDidDisconnect:(id)a3;
- (void)removeObserver:(id)a3;
- (void)sendUpdateToObservers;
@end

@implementation AXPointerDeviceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[AXPointerDeviceManager sharedInstance];
  }

  v3 = sharedInstance_deviceManager;

  return v3;
}

uint64_t __40__AXPointerDeviceManager_sharedInstance__block_invoke()
{
  sharedInstance_deviceManager = [[AXPointerDeviceManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = AXPointerDeviceManager;
  v2 = [(AXPointerDeviceManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_devicesLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DFA8] set];
    lock_cachedMousePointerDevices = v3->_lock_cachedMousePointerDevices;
    v3->_lock_cachedMousePointerDevices = v4;

    v3->_observersLock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = v6;

    v8 = [MEMORY[0x1E698E3E8] sharedInstance];
    v9 = [v8 addPointerDeviceObserver:v3];
    pointerDeviceObserverAssertion = v3->_pointerDeviceObserverAssertion;
    v3->_pointerDeviceObserverAssertion = v9;
  }

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_pointerDeviceObserverAssertion invalidate];
  v3.receiver = self;
  v3.super_class = AXPointerDeviceManager;
  [(AXPointerDeviceManager *)&v3 dealloc];
}

- (NSArray)connectedDevices
{
  os_unfair_lock_lock(&self->_devicesLock);
  v3 = [(NSMutableSet *)self->_lock_cachedMousePointerDevices allObjects];
  os_unfair_lock_unlock(&self->_devicesLock);

  return v3;
}

- (BOOL)containsTrackpad
{
  v14 = *MEMORY[0x1E69E9840];
  [(AXPointerDeviceManager *)self connectedDevices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) senderDescriptor];
        v7 = [v6 hardwareType];

        if (v7 == 9)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)containsDragLockCompatibleDevice
{
  v12 = *MEMORY[0x1E69E9840];
  [(AXPointerDeviceManager *)self connectedDevices];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) supportsDragLock])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)sendUpdateToObservers
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v4 = [(AXPointerDeviceManager *)self connectedDevices];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) connectedPointerDevicesDidChange:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)mousePointerDevicesDidConnect:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_devicesLock);
  [(NSMutableSet *)self->_lock_cachedMousePointerDevices unionSet:v4];

  os_unfair_lock_unlock(&self->_devicesLock);

  [(AXPointerDeviceManager *)self sendUpdateToObservers];
}

- (void)mousePointerDevicesDidDisconnect:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_devicesLock);
  [(NSMutableSet *)self->_lock_cachedMousePointerDevices minusSet:v4];

  os_unfair_lock_unlock(&self->_devicesLock);

  [(AXPointerDeviceManager *)self sendUpdateToObservers];
}

@end