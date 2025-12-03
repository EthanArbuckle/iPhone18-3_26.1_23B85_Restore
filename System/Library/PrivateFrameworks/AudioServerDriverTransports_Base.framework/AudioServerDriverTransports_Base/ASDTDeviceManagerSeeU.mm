@interface ASDTDeviceManagerSeeU
- (ASDTDeviceManagerSeeU)initWithConfig:(id)config withDelegate:(id)delegate;
- (BOOL)addAudioDeviceWithCheck:(id)check;
- (BOOL)setupPublishUnderlyingDevicesProperty;
- (void)publishDevice:(id)device;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDevices:(id)devices;
- (void)updateUnderlyingDeviceVisibility;
@end

@implementation ASDTDeviceManagerSeeU

- (ASDTDeviceManagerSeeU)initWithConfig:(id)config withDelegate:(id)delegate
{
  configCopy = config;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = ASDTDeviceManagerSeeU;
  v8 = [(ASDTDeviceManager *)&v12 initWithConfig:configCopy withDelegate:delegateCopy];
  if (v8 && ([MEMORY[0x277CBEB58] set], v9 = objc_claimAutoreleasedReturnValue(), -[ASDTDeviceManagerSeeU setUnderlyingDevices:](v8, "setUnderlyingDevices:", v9), v9, !-[ASDTDeviceManagerSeeU setupPublishUnderlyingDevicesProperty](v8, "setupPublishUnderlyingDevicesProperty")))
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (BOOL)addAudioDeviceWithCheck:(id)check
{
  v19 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  v17.receiver = self;
  v17.super_class = ASDTDeviceManagerSeeU;
  v5 = [(ASDTDeviceManager *)&v17 addAudioDeviceWithCheck:checkCopy];
  if (v5)
  {
    deviceUID = [checkCopy deviceUID];
    v7 = [(ASDTDeviceManager *)self factoryForDeviceUID:deviceUID];

    config = [v7 config];
    asdtOptionallyPublishedDevice = [config asdtOptionallyPublishedDevice];

    if (asdtOptionallyPublishedDevice)
    {
      initializingCond = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond lock];

      v11 = ASDTBaseLogType();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        deviceName = [checkCopy deviceName];
        [(ASDTDeviceManagerSeeU *)deviceName addAudioDeviceWithCheck:buf, v11];
      }

      underlyingDevices = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
      [underlyingDevices addObject:checkCopy];

      initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond2 unlock];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)removeAudioDevice:(id)device
{
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  underlyingDevices = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
  v7 = [underlyingDevices containsObject:deviceCopy];

  if (v7)
  {
    underlyingDevices2 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    [underlyingDevices2 removeObject:deviceCopy];
  }

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  v10.receiver = self;
  v10.super_class = ASDTDeviceManagerSeeU;
  [(ASDTDeviceManager *)&v10 removeAudioDevice:deviceCopy];
}

- (void)removeAudioDevices:(id)devices
{
  devicesCopy = devices;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  if ([devicesCopy count])
  {
    underlyingDevices = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    v7 = [MEMORY[0x277CBEB98] setWithArray:devicesCopy];
    [underlyingDevices minusSet:v7];
  }

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  v9.receiver = self;
  v9.super_class = ASDTDeviceManagerSeeU;
  [(ASDTDeviceManager *)&v9 removeAudioDevices:devicesCopy];
}

- (void)publishDevice:(id)device
{
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  underlyingDevices = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
  device = [deviceCopy device];
  v8 = [underlyingDevices containsObject:device];

  if (!v8 || (-[ASDTDeviceManagerSeeU publishUnderlyingDevicesProperty](self, "publishUnderlyingDevicesProperty"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 uint32Value], v9, v10))
  {
    v12.receiver = self;
    v12.super_class = ASDTDeviceManagerSeeU;
    [(ASDTDeviceManager *)&v12 publishDeviceLocked:deviceCopy];
  }

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];
}

- (BOOL)setupPublishUnderlyingDevicesProperty
{
  selfCopy = self;
  v16[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v15[0] = @"Subclass";
  v15[1] = @"Selector";
  v16[0] = @"ASDTUInt32Property";
  v16[1] = &unk_2853549D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v4 = [ASDTCustomProperty customPropertyForConfig:v3];
  [(ASDTDeviceManagerSeeU *)selfCopy setPublishUnderlyingDevicesProperty:v4];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__ASDTDeviceManagerSeeU_setupPublishUnderlyingDevicesProperty__block_invoke;
  v12[3] = &unk_278CE6540;
  objc_copyWeak(&v13, &location);
  publishUnderlyingDevicesProperty = [(ASDTDeviceManagerSeeU *)selfCopy publishUnderlyingDevicesProperty];
  [publishUnderlyingDevicesProperty setPropertyChangeBlock:v12];

  plugin = [(ASDTDeviceManager *)selfCopy plugin];
  publishUnderlyingDevicesProperty2 = [(ASDTDeviceManagerSeeU *)selfCopy publishUnderlyingDevicesProperty];
  [plugin addCustomProperty:publishUnderlyingDevicesProperty2];

  publishUnderlyingDevicesProperty3 = [(ASDTDeviceManagerSeeU *)selfCopy publishUnderlyingDevicesProperty];
  -[ASDTDeviceManagerSeeU setUnderlyingDevicesArePublished:](selfCopy, "setUnderlyingDevicesArePublished:", [publishUnderlyingDevicesProperty3 uint32Value] != 0);

  publishUnderlyingDevicesProperty4 = [(ASDTDeviceManagerSeeU *)selfCopy publishUnderlyingDevicesProperty];
  LOBYTE(selfCopy) = publishUnderlyingDevicesProperty4 != 0;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

void __62__ASDTDeviceManagerSeeU_setupPublishUnderlyingDevicesProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ASDTDeviceManagerSeeU_setupPublishUnderlyingDevicesProperty__block_invoke_2;
  block[3] = &unk_278CE6068;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __62__ASDTDeviceManagerSeeU_setupPublishUnderlyingDevicesProperty__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateUnderlyingDeviceVisibility];
}

- (void)updateUnderlyingDeviceVisibility
{
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  publishUnderlyingDevicesProperty = [(ASDTDeviceManagerSeeU *)self publishUnderlyingDevicesProperty];
  uint32Value = [publishUnderlyingDevicesProperty uint32Value];

  underlyingDevicesArePublished = [(ASDTDeviceManagerSeeU *)self underlyingDevicesArePublished];
  if (uint32Value)
  {
    if (underlyingDevicesArePublished)
    {
      goto LABEL_7;
    }

    [(ASDTDeviceManagerSeeU *)self setUnderlyingDevicesArePublished:1];
    delegate = [(ASDTDeviceManager *)self delegate];
    underlyingDevices = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    allObjects = [underlyingDevices allObjects];
    [delegate addAudioDevices:allObjects];
  }

  else
  {
    if (!underlyingDevicesArePublished)
    {
      goto LABEL_7;
    }

    [(ASDTDeviceManagerSeeU *)self setUnderlyingDevicesArePublished:0];
    delegate = [(ASDTDeviceManager *)self delegate];
    underlyingDevices = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    allObjects = [underlyingDevices allObjects];
    [delegate removeAudioDevices:allObjects];
  }

LABEL_7:
  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];
}

- (void)addAudioDeviceWithCheck:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_241659000, log, OS_LOG_TYPE_DEBUG, "  Added %@ to underlyingDevices", buf, 0xCu);
}

@end