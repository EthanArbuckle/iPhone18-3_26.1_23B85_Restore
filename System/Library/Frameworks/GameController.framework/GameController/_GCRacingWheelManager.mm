@interface _GCRacingWheelManager
- (NSSet)racingWheels;
- (_GCRacingWheelManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)activateWithSession:(id)session environment:(id)environment;
- (id)invalidateWithSession:(id)session environment:(id)environment;
@end

@implementation _GCRacingWheelManager

- (_GCRacingWheelManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = _GCRacingWheelManager;
  v8 = [(_GCRacingWheelManager *)&v18 init];
  objc_storeStrong(&v8->_sessionQueue, queue);
  v9 = objc_alloc_init(MEMORY[0x1E69A06F0]);
  deviceNotificationPort = v8->_deviceNotificationPort;
  v8->_deviceNotificationPort = v9;

  v11 = v8->_deviceNotificationPort;
  if (v11)
  {
    [(GCIONotificationPort *)v11 setQueue:v8->_sessionQueue];
    v17.version = 0;
    memset(&v17.copyDescription, 0, 24);
    v17.retain = _IOObjectCFRetain;
    v17.release = _IOObjectCFRelease;
    v12 = *MEMORY[0x1E695E480];
    v8->_deviceNotificationIterators = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v17);
    v8->_connectedWheelDeviceNotifications = CFSetCreateMutable(v12, 0, &v17);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    connectedWheels = v8->_connectedWheels;
    v8->_connectedWheels = v13;

    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activateWithSession:(id)session environment:(id)environment
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57___GCRacingWheelManager_activateWithSession_environment___block_invoke;
  v6[3] = &unk_1E841A9A8;
  v6[4] = self;
  v4 = [MEMORY[0x1E69A06D0] futureWithLabel:@"Activate GCRacingWheelManager" block:v6];

  return v4;
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke;
  v6[3] = &unk_1E841A9A8;
  v6[4] = self;
  v4 = [MEMORY[0x1E69A06D0] futureWithLabel:@"Invalidate GCRacingWheelManager" block:v6];

  return v4;
}

- (NSSet)racingWheels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E695DFD8];
  allValues = [(NSMutableDictionary *)selfCopy->_connectedWheels allValues];
  v5 = allValues;
  if (allValues)
  {
    v6 = allValues;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [v3 setWithArray:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

@end