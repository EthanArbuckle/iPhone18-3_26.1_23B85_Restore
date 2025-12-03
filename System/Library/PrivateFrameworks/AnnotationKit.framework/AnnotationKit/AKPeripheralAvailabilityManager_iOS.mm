@interface AKPeripheralAvailabilityManager_iOS
- (AKPeripheralAvailabilityManager_iOS)init;
- (void)dealloc;
- (void)postConnectionStatusNotification;
- (void)startMonitoringForPeripheralConnection;
- (void)stopMonitoringForPeripheralConnection;
@end

@implementation AKPeripheralAvailabilityManager_iOS

- (AKPeripheralAvailabilityManager_iOS)init
{
  v3.receiver = self;
  v3.super_class = AKPeripheralAvailabilityManager_iOS;
  result = [(AKPeripheralAvailabilityManager_iOS *)&v3 init];
  if (result)
  {
    result->_currentAvailability = 0;
  }

  return result;
}

- (void)dealloc
{
  [(AKPeripheralAvailabilityManager_iOS *)self teardown];
  v3.receiver = self;
  v3.super_class = AKPeripheralAvailabilityManager_iOS;
  [(AKPeripheralAvailabilityManager_iOS *)&v3 dealloc];
}

- (void)postConnectionStatusNotification
{
  mainThread = [MEMORY[0x277CCACC8] mainThread];

  if (mainThread)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AKPeripheralAvailabilityManagerAvailabilityNotification" object:self userInfo:0];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23F42D90C;
    block[3] = &unk_278C7B540;
    block[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)startMonitoringForPeripheralConnection
{
  if (!self->stylusHidManager)
  {
    v3 = IOHIDManagerCreate(*MEMORY[0x277CBECE8], 0);
    self->stylusHidManager = v3;
    if (v3)
    {
      matching = [MEMORY[0x277CBEB38] dictionary];
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:76];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"VendorID"];
      [(__CFDictionary *)matching setObject:v4 forKey:v5];

      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ProductIDArray"];
      [(__CFDictionary *)matching setObject:&unk_2851BAAD0 forKey:v6];

      IOHIDManagerSetDeviceMatching(self->stylusHidManager, matching);
      IOHIDManagerOpen(self->stylusHidManager, 0);
      IOHIDManagerRegisterDeviceMatchingCallback(self->stylusHidManager, sub_23F42DB04, self);
      IOHIDManagerRegisterDeviceRemovalCallback(self->stylusHidManager, sub_23F42DB78, self);
      stylusHidManager = self->stylusHidManager;
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      getCFRunLoop = [mainRunLoop getCFRunLoop];
      IOHIDManagerScheduleWithRunLoop(stylusHidManager, getCFRunLoop, *MEMORY[0x277CBF048]);
    }
  }
}

- (void)stopMonitoringForPeripheralConnection
{
  stylusHidManager = self->stylusHidManager;
  if (stylusHidManager)
  {
    CFRelease(stylusHidManager);
    self->stylusHidManager = 0;
  }
}

@end