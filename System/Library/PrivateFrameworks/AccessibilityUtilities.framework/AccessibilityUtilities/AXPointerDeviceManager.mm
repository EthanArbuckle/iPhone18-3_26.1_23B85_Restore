@interface AXPointerDeviceManager
+ (id)sharedInstance;
- (BOOL)containsDragLockCompatibleDevice;
- (BOOL)containsTrackpad;
- (NSArray)connectedDevices;
- (id)_init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)mousePointerDevicesDidConnect:(id)connect;
- (void)mousePointerDevicesDidDisconnect:(id)disconnect;
- (void)removeObserver:(id)observer;
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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = weakObjectsHashTable;

    mEMORY[0x1E698E3E8] = [MEMORY[0x1E698E3E8] sharedInstance];
    v9 = [mEMORY[0x1E698E3E8] addPointerDeviceObserver:v3];
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
  allObjects = [(NSMutableSet *)self->_lock_cachedMousePointerDevices allObjects];
  os_unfair_lock_unlock(&self->_devicesLock);

  return allObjects;
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

        senderDescriptor = [*(*(&v9 + 1) + 8 * i) senderDescriptor];
        hardwareType = [senderDescriptor hardwareType];

        if (hardwareType == 9)
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)sendUpdateToObservers
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  connectedDevices = [(AXPointerDeviceManager *)self connectedDevices];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = allObjects;
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

        [*(*(&v10 + 1) + 8 * v9++) connectedPointerDevicesDidChange:{connectedDevices, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)mousePointerDevicesDidConnect:(id)connect
{
  connectCopy = connect;
  os_unfair_lock_lock(&self->_devicesLock);
  [(NSMutableSet *)self->_lock_cachedMousePointerDevices unionSet:connectCopy];

  os_unfair_lock_unlock(&self->_devicesLock);

  [(AXPointerDeviceManager *)self sendUpdateToObservers];
}

- (void)mousePointerDevicesDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  os_unfair_lock_lock(&self->_devicesLock);
  [(NSMutableSet *)self->_lock_cachedMousePointerDevices minusSet:disconnectCopy];

  os_unfair_lock_unlock(&self->_devicesLock);

  [(AXPointerDeviceManager *)self sendUpdateToObservers];
}

@end