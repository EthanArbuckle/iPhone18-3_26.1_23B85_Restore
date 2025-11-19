@interface ASDTDeviceManagerSeeU
- (ASDTDeviceManagerSeeU)initWithConfig:(id)a3 withDelegate:(id)a4;
- (BOOL)addAudioDeviceWithCheck:(id)a3;
- (BOOL)setupPublishUnderlyingDevicesProperty;
- (void)publishDevice:(id)a3;
- (void)removeAudioDevice:(id)a3;
- (void)removeAudioDevices:(id)a3;
- (void)updateUnderlyingDeviceVisibility;
@end

@implementation ASDTDeviceManagerSeeU

- (ASDTDeviceManagerSeeU)initWithConfig:(id)a3 withDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ASDTDeviceManagerSeeU;
  v8 = [(ASDTDeviceManager *)&v12 initWithConfig:v6 withDelegate:v7];
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

- (BOOL)addAudioDeviceWithCheck:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ASDTDeviceManagerSeeU;
  v5 = [(ASDTDeviceManager *)&v17 addAudioDeviceWithCheck:v4];
  if (v5)
  {
    v6 = [v4 deviceUID];
    v7 = [(ASDTDeviceManager *)self factoryForDeviceUID:v6];

    v8 = [v7 config];
    v9 = [v8 asdtOptionallyPublishedDevice];

    if (v9)
    {
      v10 = [(ASDTDeviceManager *)self initializingCond];
      [v10 lock];

      v11 = ASDTBaseLogType();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v4 deviceName];
        [(ASDTDeviceManagerSeeU *)v12 addAudioDeviceWithCheck:buf, v11];
      }

      v13 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
      [v13 addObject:v4];

      v14 = [(ASDTDeviceManager *)self initializingCond];
      [v14 unlock];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)removeAudioDevice:(id)a3
{
  v4 = a3;
  v5 = [(ASDTDeviceManager *)self initializingCond];
  [v5 lock];

  v6 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    [v8 removeObject:v4];
  }

  v9 = [(ASDTDeviceManager *)self initializingCond];
  [v9 unlock];

  v10.receiver = self;
  v10.super_class = ASDTDeviceManagerSeeU;
  [(ASDTDeviceManager *)&v10 removeAudioDevice:v4];
}

- (void)removeAudioDevices:(id)a3
{
  v4 = a3;
  v5 = [(ASDTDeviceManager *)self initializingCond];
  [v5 lock];

  if ([v4 count])
  {
    v6 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v4];
    [v6 minusSet:v7];
  }

  v8 = [(ASDTDeviceManager *)self initializingCond];
  [v8 unlock];

  v9.receiver = self;
  v9.super_class = ASDTDeviceManagerSeeU;
  [(ASDTDeviceManager *)&v9 removeAudioDevices:v4];
}

- (void)publishDevice:(id)a3
{
  v4 = a3;
  v5 = [(ASDTDeviceManager *)self initializingCond];
  [v5 lock];

  v6 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
  v7 = [v4 device];
  v8 = [v6 containsObject:v7];

  if (!v8 || (-[ASDTDeviceManagerSeeU publishUnderlyingDevicesProperty](self, "publishUnderlyingDevicesProperty"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 uint32Value], v9, v10))
  {
    v12.receiver = self;
    v12.super_class = ASDTDeviceManagerSeeU;
    [(ASDTDeviceManager *)&v12 publishDeviceLocked:v4];
  }

  v11 = [(ASDTDeviceManager *)self initializingCond];
  [v11 unlock];
}

- (BOOL)setupPublishUnderlyingDevicesProperty
{
  v2 = self;
  v16[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v15[0] = @"Subclass";
  v15[1] = @"Selector";
  v16[0] = @"ASDTUInt32Property";
  v16[1] = &unk_2853549D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v4 = [ASDTCustomProperty customPropertyForConfig:v3];
  [(ASDTDeviceManagerSeeU *)v2 setPublishUnderlyingDevicesProperty:v4];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__ASDTDeviceManagerSeeU_setupPublishUnderlyingDevicesProperty__block_invoke;
  v12[3] = &unk_278CE6540;
  objc_copyWeak(&v13, &location);
  v5 = [(ASDTDeviceManagerSeeU *)v2 publishUnderlyingDevicesProperty];
  [v5 setPropertyChangeBlock:v12];

  v6 = [(ASDTDeviceManager *)v2 plugin];
  v7 = [(ASDTDeviceManagerSeeU *)v2 publishUnderlyingDevicesProperty];
  [v6 addCustomProperty:v7];

  v8 = [(ASDTDeviceManagerSeeU *)v2 publishUnderlyingDevicesProperty];
  -[ASDTDeviceManagerSeeU setUnderlyingDevicesArePublished:](v2, "setUnderlyingDevicesArePublished:", [v8 uint32Value] != 0);

  v9 = [(ASDTDeviceManagerSeeU *)v2 publishUnderlyingDevicesProperty];
  LOBYTE(v2) = v9 != 0;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
  return v2;
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
  v7 = [(ASDTDeviceManager *)self initializingCond];
  [v7 lock];

  v8 = [(ASDTDeviceManagerSeeU *)self publishUnderlyingDevicesProperty];
  v3 = [v8 uint32Value];

  v4 = [(ASDTDeviceManagerSeeU *)self underlyingDevicesArePublished];
  if (v3)
  {
    if (v4)
    {
      goto LABEL_7;
    }

    [(ASDTDeviceManagerSeeU *)self setUnderlyingDevicesArePublished:1];
    v9 = [(ASDTDeviceManager *)self delegate];
    v5 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    v6 = [v5 allObjects];
    [v9 addAudioDevices:v6];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    [(ASDTDeviceManagerSeeU *)self setUnderlyingDevicesArePublished:0];
    v9 = [(ASDTDeviceManager *)self delegate];
    v5 = [(ASDTDeviceManagerSeeU *)self underlyingDevices];
    v6 = [v5 allObjects];
    [v9 removeAudioDevices:v6];
  }

LABEL_7:
  v10 = [(ASDTDeviceManager *)self initializingCond];
  [v10 unlock];
}

- (void)addAudioDeviceWithCheck:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_241659000, log, OS_LOG_TYPE_DEBUG, "  Added %@ to underlyingDevices", buf, 0xCu);
}

@end