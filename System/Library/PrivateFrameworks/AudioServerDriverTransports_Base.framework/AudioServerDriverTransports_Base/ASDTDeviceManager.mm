@interface ASDTDeviceManager
+ (ASDTDeviceManager)deviceManagerWithConfig:(id)config withDelegate:(id)delegate;
+ (id)concurrentQueue;
- (ASDTDeviceManager)initWithConfig:(id)config withDelegate:(id)delegate;
- (ASDTDeviceManagerDelegate)delegate;
- (ASDTPlugin)plugin;
- (BOOL)addAudioDeviceWithCheck:(id)check;
- (NSArray)allDeviceFactories;
- (id)factoryForDeviceUID:(id)d;
- (id)generateUnderlyingDeviceUIDsFromConfig:(id)config;
- (id)messageForDroppedPacketsFromDevice:(id)device withScope:(unsigned int)scope andElement:(unsigned int)element;
- (int)getInitStatusForDeviceUID:(id)d;
- (void)buildAndInitializeDevice:(id)device;
- (void)configureDevices;
- (void)deviceConfigurationFailed:(id)failed;
- (void)deviceInitializationFailed:(id)failed;
- (void)initializeDevice:(id)device;
- (void)ioServiceAvailable:(id)available withManager:(id)manager;
- (void)ioServiceWillTerminate:(id)terminate withManager:(id)manager;
- (void)lockedSignalThread;
- (void)logStatsForDevice:(id)device withPowerState:(int)state;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)publishDevice:(id)device;
- (void)publishDeviceLocked:(id)locked;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDevices:(id)devices;
- (void)stopThread;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)threadLoop:(id)loop;
- (void)waitForInitialization;
- (void)waitForThreadStart;
@end

@implementation ASDTDeviceManager

- (void)systemHasPoweredOn
{
  v38 = *MEMORY[0x277D85DE8];
  [(ASDTDeviceList *)self audioDevices];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v2 = v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v37 count:16];
  if (v3)
  {
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          systemCompletedPowerOn = [v6 systemCompletedPowerOn];
          if (systemCompletedPowerOn)
          {
            v8 = ASDTBaseLogType();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              deviceUID = [v6 deviceUID];
              v11 = deviceUID;
              v12 = systemCompletedPowerOn;
              if (systemCompletedPowerOn - 32 >= 0x5F)
              {
                v12 = 32;
              }

              *buf = 138413826;
              v24 = name;
              v13 = BYTE1(systemCompletedPowerOn);
              if (BYTE1(systemCompletedPowerOn) - 32 >= 0x5F)
              {
                v13 = 32;
              }

              v25 = 1024;
              v26 = systemCompletedPowerOn;
              v14 = BYTE2(systemCompletedPowerOn);
              if (BYTE2(systemCompletedPowerOn) - 32 >= 0x5F)
              {
                v14 = 32;
              }

              v27 = 1024;
              if ((systemCompletedPowerOn - 0x20000000) >> 24 >= 0x5F)
              {
                v15 = 32;
              }

              else
              {
                v15 = HIBYTE(systemCompletedPowerOn);
              }

              v28 = v15;
              v29 = 1024;
              v30 = v14;
              v31 = 1024;
              v32 = v13;
              v33 = 1024;
              v34 = v12;
              v35 = 2112;
              v36 = deviceUID;
              _os_log_error_impl(&dword_241659000, v8, OS_LOG_TYPE_ERROR, "%@: systemHasPoweredOn: Received error %x (%c%c%c%c) from device '%@'.", buf, 0x34u);
            }
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v16 = [v2 countByEnumeratingWithState:&v19 objects:v37 count:16];
      v3 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (ASDTDeviceManager)deviceManagerWithConfig:(id)config withDelegate:(id)delegate
{
  configCopy = config;
  delegateCopy = delegate;
  v7 = [objc_alloc(objc_msgSend(configCopy "asdtDeviceManager"))];
  [v7 configureDevices];

  return v7;
}

- (ASDTDeviceManager)initWithConfig:(id)config withDelegate:(id)delegate
{
  v70 = *MEMORY[0x277D85DE8];
  configCopy = config;
  delegateCopy = delegate;
  v65.receiver = self;
  v65.super_class = ASDTDeviceManager;
  v8 = [(ASDTDeviceList *)&v65 init];
  if (!v8)
  {
    goto LABEL_42;
  }

  asdtName = [configCopy asdtName];
  [(ASDTDeviceManager *)v8 setName:asdtName];

  name = [(ASDTDeviceManager *)v8 name];
  LODWORD(asdtName) = name == 0;

  if (asdtName)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(ASDTDeviceManager *)v8 setName:v12];
  }

  [(ASDTDeviceManager *)v8 setConfiguration:configCopy];
  [(ASDTDeviceManager *)v8 setDelegate:delegateCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASDTDeviceManager *)v8 setPlugin:delegateCopy];
  }

  plugin = [(ASDTDeviceManager *)v8 plugin];
  v14 = plugin == 0;

  if (v14)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INTERACTIVE, 0);

    v21 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.concurrentQueue", v20);
    [(ASDTDeviceManager *)v8 setConcurrentQueue:v21];

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    plugin3 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_USER_INTERACTIVE, 0);

    powerNotificationQueue = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.serialQueue", plugin3);
  }

  else
  {
    plugin2 = [(ASDTDeviceManager *)v8 plugin];
    concurrentQueue = [plugin2 concurrentQueue];
    [(ASDTDeviceManager *)v8 setConcurrentQueue:concurrentQueue];

    plugin3 = [(ASDTDeviceManager *)v8 plugin];
    powerNotificationQueue = [plugin3 powerNotificationQueue];
  }

  [(ASDTDeviceManager *)v8 setSerialQueue:powerNotificationQueue];

  configuration = [(ASDTDeviceManager *)v8 configuration];
  asdtDevices = [configuration asdtDevices];

  v25 = [asdtDevices count];
  asdtManagerAudioObjectMaxCount = [configCopy asdtManagerAudioObjectMaxCount];
  if (asdtManagerAudioObjectMaxCount)
  {
    v27 = ASDTBaseLogType();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(ASDTDeviceManager *)v8 name];
      *buf = 138412546;
      v67 = name2;
      v68 = 1024;
      LODWORD(v69) = asdtManagerAudioObjectMaxCount;
      _os_log_impl(&dword_241659000, v27, OS_LOG_TYPE_DEFAULT, "%@: Setting maximum number of objects to %u.", buf, 0x12u);
    }

    plugin4 = [(ASDTDeviceManager *)v8 plugin];
    [plugin4 setMaximumNumberOfObjects:asdtManagerAudioObjectMaxCount];
  }

  v8->_userIsActive = 1;
  -[ASDTDeviceManager setVerboseDeviceLogging:](v8, "setVerboseDeviceLogging:", [configCopy asdtManagerVerboseLogging]);
  [configCopy asdtManagerRunningLogPeriod];
  [(ASDTDeviceManager *)v8 setRunningLogPeriod:?];
  v30 = ASDTBaseLogType();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    name3 = [(ASDTDeviceManager *)v8 name];
    [(ASDTDeviceManager *)v8 runningLogPeriod];
    *buf = 138412546;
    v67 = name3;
    v68 = 2048;
    v69 = v32;
    _os_log_impl(&dword_241659000, v30, OS_LOG_TYPE_DEFAULT, "%@: Running log period: %1.1lf", buf, 0x16u);
  }

  v33 = [MEMORY[0x277CBEB58] setWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setDeviceFactories:v33];

  v34 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setMatchedDeviceFactories:v34];

  v35 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setDeviceInitStatus:v35];

  v36 = [MEMORY[0x277CBEB58] setWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setDevicesRunning:v36];

  array = [MEMORY[0x277CBEB18] array];
  [(ASDTDeviceManager *)v8 setIoServiceDependencies:array];

  v38 = [(ASDTDeviceManager *)v8 generateUnderlyingDeviceUIDsFromConfig:asdtDevices];
  [(ASDTDeviceManager *)v8 setUnderlyingDeviceUIDs:v38];

  v39 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.initCond"];
  [(ASDTDeviceManager *)v8 setInitializingCond:v39];

  v40 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.threadCond"];
  [(ASDTDeviceManager *)v8 setThreadCond:v40];

  v41 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.factoryCond"];
  [(ASDTDeviceManager *)v8 setFactoryPublishCond:v41];

  v42 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:v8 selector:sel_threadLoop_ object:0];
  [(ASDTDeviceManager *)v8 setThread:v42];

  thread = [(ASDTDeviceManager *)v8 thread];
  [thread setName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.thread"];

  thread2 = [(ASDTDeviceManager *)v8 thread];
  [thread2 setQualityOfService:33];

  deviceInitStatus = [(ASDTDeviceManager *)v8 deviceInitStatus];
  if (deviceInitStatus)
  {
    devicesRunning = [(ASDTDeviceManager *)v8 devicesRunning];
    if (devicesRunning)
    {
      thread3 = [(ASDTDeviceManager *)v8 thread];
      if (thread3)
      {
        threadCond = [(ASDTDeviceManager *)v8 threadCond];
        if (threadCond)
        {
          deviceFactories = [(ASDTDeviceManager *)v8 deviceFactories];
          if (deviceFactories)
          {
            matchedDeviceFactories = [(ASDTDeviceManager *)v8 matchedDeviceFactories];
            if (matchedDeviceFactories)
            {
              initializingCond = [(ASDTDeviceManager *)v8 initializingCond];
              if (initializingCond)
              {
                underlyingDeviceUIDs = [(ASDTDeviceManager *)v8 underlyingDeviceUIDs];
                if (underlyingDeviceUIDs)
                {
                  ioServiceDependencies = [(ASDTDeviceManager *)v8 ioServiceDependencies];
                  if (ioServiceDependencies)
                  {
                    concurrentQueue2 = [(ASDTDeviceManager *)v8 concurrentQueue];
                    if (concurrentQueue2)
                    {
                      serialQueue = [(ASDTDeviceManager *)v8 serialQueue];
                      if (serialQueue)
                      {
                        factoryPublishCond = [(ASDTDeviceManager *)v8 factoryPublishCond];
                        v57 = factoryPublishCond == 0;
                      }

                      else
                      {
                        v57 = 1;
                      }

                      if (!v57)
                      {
                        objc_initWeak(buf, v8);
                        concurrentQueue3 = [(ASDTDeviceManager *)v8 concurrentQueue];
                        block[0] = MEMORY[0x277D85DD0];
                        block[1] = 3221225472;
                        block[2] = __49__ASDTDeviceManager_initWithConfig_withDelegate___block_invoke;
                        block[3] = &unk_278CE6068;
                        objc_copyWeak(&v64, buf);
                        dispatch_async(concurrentQueue3, block);

                        objc_destroyWeak(&v64);
                        objc_destroyWeak(buf);

LABEL_42:
                        v53 = v8;
                        goto LABEL_43;
                      }

                      goto LABEL_36;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_36:
  v52 = ASDTBaseLogType();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)v8 name];
    objc_claimAutoreleasedReturnValue();
    [ASDTDeviceManager initWithConfig:withDelegate:];
  }

  v53 = 0;
LABEL_43:

  v55 = *MEMORY[0x277D85DE8];
  return v53;
}

void __49__ASDTDeviceManager_initWithConfig_withDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained waitForThreadStart];
}

+ (id)concurrentQueue
{
  if (+[ASDTDeviceManager concurrentQueue]::onceToken != -1)
  {
    +[ASDTDeviceManager concurrentQueue];
  }

  v3 = +[ASDTDeviceManager concurrentQueue]::sConcurrentQueue;

  return v3;
}

void __36__ASDTDeviceManager_concurrentQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.concurrentQueue", attr);
  v2 = +[ASDTDeviceManager concurrentQueue]::sConcurrentQueue;
  +[ASDTDeviceManager concurrentQueue]::sConcurrentQueue = v1;
}

- (BOOL)addAudioDeviceWithCheck:(id)check
{
  v26 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond lock];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [checkCopy addObserver:self forKeyPath:@"powerState" options:1 context:0];
  }

  threadCond2 = [(ASDTDeviceManager *)self threadCond];
  [threadCond2 unlock];

  v17.receiver = self;
  v17.super_class = ASDTDeviceManager;
  v7 = [(ASDTDeviceList *)&v17 addAudioDeviceWithCheck:checkCopy];
  if (v7)
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTDeviceManager *)self name];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      deviceUID = [checkCopy deviceUID];
      *buf = 138413058;
      v19 = name;
      v20 = 2048;
      selfCopy = self;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = deviceUID;
      _os_log_impl(&dword_241659000, v8, OS_LOG_TYPE_DEFAULT, "%@(%p): Added %@ '%@'", buf, 0x2Au);
    }

    [checkCopy logDiagnostics:{-[ASDTDeviceManager verboseDeviceLogging](self, "verboseDeviceLogging")}];
  }

  else
  {
    threadCond3 = [(ASDTDeviceManager *)self threadCond];
    [threadCond3 lock];

    [checkCopy removeObserver:self forKeyPath:@"powerState"];
    threadCond4 = [(ASDTDeviceManager *)self threadCond];
    [threadCond4 unlock];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)generateUnderlyingDeviceUIDsFromConfig:(id)config
{
  v19 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v4 = [configCopy count];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = configCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        asdtUnderlyingDeviceUID = [*(*(&v14 + 1) + 8 * i) asdtUnderlyingDeviceUID];
        if (asdtUnderlyingDeviceUID)
        {
          [v5 addObject:asdtUnderlyingDeviceUID];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)removeAudioDevice:(id)device
{
  v43 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  if (deviceCopy && (-[ASDTDeviceList audioDevices](self, "audioDevices"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:deviceCopy], v6, (v7 & 1) != 0))
  {
    delegate = [(ASDTDeviceManager *)self delegate];
    audioDevices = [delegate audioDevices];
    v10 = [audioDevices containsObject:deviceCopy];

    if (v10)
    {
      v11 = ASDTBaseLogType();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        name = [(ASDTDeviceManager *)self name];
        deviceUID = [deviceCopy deviceUID];
        *buf = 138412546;
        v38 = name;
        v39 = 2112;
        v40 = deviceUID;
        _os_log_impl(&dword_241659000, v11, OS_LOG_TYPE_DEFAULT, "%@: Unpublishing '%@'.", buf, 0x16u);
      }

      delegate2 = [(ASDTDeviceManager *)self delegate];
      [delegate2 removeAudioDevice:deviceCopy];
    }

    matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
    deviceUID2 = [deviceCopy deviceUID];
    v17 = [matchedDeviceFactories objectForKey:deviceUID2];

    if (v17)
    {
      [v17 cleanup];
      deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
      [deviceFactories removeObject:v17];

      matchedDeviceFactories2 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      deviceUID3 = [deviceCopy deviceUID];
      [matchedDeviceFactories2 removeObjectForKey:deviceUID3];
    }

    deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
    deviceUID4 = [deviceCopy deviceUID];
    [deviceInitStatus removeObjectForKey:deviceUID4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      threadCond = [(ASDTDeviceManager *)self threadCond];
      [threadCond lock];

      devicesRunning = [(ASDTDeviceManager *)self devicesRunning];
      v25 = [devicesRunning containsObject:deviceCopy];

      if (v25)
      {
        devicesRunning2 = [(ASDTDeviceManager *)self devicesRunning];
        [devicesRunning2 removeObject:deviceCopy];
      }

      [deviceCopy removeObserver:self forKeyPath:@"powerState"];
      threadCond2 = [(ASDTDeviceManager *)self threadCond];
      [threadCond2 unlock];
    }

    v28 = ASDTBaseLogType();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(ASDTDeviceManager *)self name];
      deviceUID5 = [deviceCopy deviceUID];
      *buf = 138412546;
      v38 = name2;
      v39 = 2112;
      v40 = deviceUID5;
      _os_log_impl(&dword_241659000, v28, OS_LOG_TYPE_DEFAULT, "%@: Removing '%@'.", buf, 0x16u);
    }

    v36.receiver = self;
    v36.super_class = ASDTDeviceManager;
    [(ASDTDeviceList *)&v36 removeAudioDevice:deviceCopy];
    initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond2 unlock];
  }

  else
  {
    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 unlock];

    v17 = ASDTBaseLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      name3 = [(ASDTDeviceManager *)self name];
      deviceUID6 = [deviceCopy deviceUID];
      *buf = 138412802;
      v38 = name3;
      v39 = 2048;
      v40 = deviceCopy;
      v41 = 2112;
      v42 = deviceUID6;
      _os_log_debug_impl(&dword_241659000, v17, OS_LOG_TYPE_DEBUG, "%@: Bad or unmanaged device(%p) with UID: %@", buf, 0x20u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)removeAudioDevices:(id)devices
{
  v62 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  v5 = MEMORY[0x277CBEB58];
  audioDevices = [(ASDTDeviceList *)self audioDevices];
  v45 = [v5 setWithArray:audioDevices];

  v7 = [MEMORY[0x277CBEB98] setWithArray:devicesCopy];
  [v45 intersectSet:v7];

  if ([v45 count])
  {
    v8 = [v45 count];
    if (v8 != [devicesCopy count])
    {
      allObjects = [v45 allObjects];

      devicesCopy = allObjects;
    }

    delegate = [(ASDTDeviceManager *)self delegate];
    audioDevices2 = [delegate audioDevices];

    initializingCond3 = audioDevices2;
    if ([audioDevices2 count])
    {
      v12 = [MEMORY[0x277CBEB58] setWithArray:devicesCopy];
      v13 = [MEMORY[0x277CBEB98] setWithArray:audioDevices2];
      [v12 intersectSet:v13];

      if ([v12 count])
      {
        delegate2 = [(ASDTDeviceManager *)self delegate];
        allObjects2 = [v12 allObjects];
        [delegate2 removeAudioDevices:allObjects2];
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = devicesCopy;
    v17 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v17)
    {
      v18 = *v53;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v52 + 1) + 8 * i);
          matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
          deviceUID = [v20 deviceUID];
          v23 = [matchedDeviceFactories objectForKey:deviceUID];

          if (v23)
          {
            [v23 cleanup];
            deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
            [deviceFactories removeObject:v23];

            matchedDeviceFactories2 = [(ASDTDeviceManager *)self matchedDeviceFactories];
            deviceUID2 = [v20 deviceUID];
            [matchedDeviceFactories2 removeObjectForKey:deviceUID2];
          }

          deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
          deviceUID3 = [v20 deviceUID];
          [deviceInitStatus removeObjectForKey:deviceUID3];

          v29 = ASDTBaseLogType();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            name = [(ASDTDeviceManager *)self name];
            deviceUID4 = [v20 deviceUID];
            *buf = 138412546;
            v59 = name;
            v60 = 2112;
            v61 = deviceUID4;
            _os_log_impl(&dword_241659000, v29, OS_LOG_TYPE_DEFAULT, "%@: Removing '%@'.", buf, 0x16u);
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v17);
    }

    threadCond = [(ASDTDeviceManager *)self threadCond];
    [threadCond lock];

    devicesRunning = [(ASDTDeviceManager *)self devicesRunning];
    v34 = [MEMORY[0x277CBEB98] setWithArray:v16];
    [devicesRunning minusSet:v34];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = v16;
    v36 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v36)
    {
      v37 = *v49;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v49 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v48 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v39 removeObserver:self forKeyPath:@"powerState"];
          }
        }

        v36 = [v35 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v36);
    }

    threadCond2 = [(ASDTDeviceManager *)self threadCond];
    [threadCond2 unlock];

    v47.receiver = self;
    v47.super_class = ASDTDeviceManager;
    [(ASDTDeviceList *)&v47 removeAudioDevices:v35];
    initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond2 unlock];
  }

  else
  {
    v42 = ASDTBaseLogType();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager removeAudioDevices:];
    }

    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 unlock];
    v35 = devicesCopy;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (id)factoryForDeviceUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    initializingCond = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond lock];

    matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
    v7 = [matchedDeviceFactories objectForKey:dCopy];

    initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond2 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)allDeviceFactories
{
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
  allObjects = [deviceFactories allObjects];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  return allObjects;
}

- (void)buildAndInitializeDevice:(id)device
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceUID = [deviceCopy deviceUID];
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
  v8 = [matchedDeviceFactories objectForKey:deviceUID];

  if (!v8 || v8 == deviceCopy)
  {
    if (!v8)
    {
      [(ASDTDeviceManager *)self setNumDevicesToInitialize:[(ASDTDeviceManager *)self numDevicesToInitialize]+ 1];
      matchedDeviceFactories2 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      [matchedDeviceFactories2 setObject:deviceCopy forKey:deviceUID];
    }

    device = [deviceCopy device];

    if (device)
    {
      goto LABEL_9;
    }

    if ([deviceCopy deviceIsBuilding])
    {
      initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond2 unlock];

      goto LABEL_18;
    }

    [deviceCopy setDeviceIsBuilding:1];
    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 unlock];

    LODWORD(initializingCond3) = [deviceCopy buildDevice];
    initializingCond4 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond4 lock];

    [deviceCopy setDeviceIsBuilding:0];
    if (!initializingCond3)
    {
      goto LABEL_15;
    }

    device2 = [deviceCopy device];

    if (device2)
    {
LABEL_9:
      initializingCond5 = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond5 unlock];

      audioDevices = [(ASDTDeviceList *)self audioDevices];
      device3 = [deviceCopy device];
      v16 = [audioDevices containsObject:device3];

      if ((v16 & 1) == 0)
      {
        device4 = [deviceCopy device];
        [(ASDTDeviceList *)self addAudioDevice:device4];

        [(ASDTDeviceManager *)self initializeDevice:deviceCopy];
      }
    }

    else
    {
LABEL_15:
      config = [deviceCopy config];
      [deviceCopy cleanup];
      deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
      [deviceFactories removeObject:deviceCopy];

      matchedDeviceFactories3 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      [matchedDeviceFactories3 removeObjectForKey:deviceUID];

      initializingCond6 = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond6 unlock];

      v26 = ASDTBaseLogType();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(ASDTDeviceManager *)self name];
        objc_claimAutoreleasedReturnValue();
        [ASDTDeviceManager buildAndInitializeDevice:];
      }

      [(ASDTDeviceManager *)self deviceConfigurationFailed:config];
    }
  }

  else
  {
    initializingCond7 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond7 unlock];

    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager buildAndInitializeDevice:];
    }
  }

LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)initializeDevice:(id)device
{
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
  deviceUID = [deviceCopy deviceUID];
  v8 = [deviceInitStatus objectForKey:deviceUID];

  if (!v8)
  {
    deviceInitStatus2 = [(ASDTDeviceManager *)self deviceInitStatus];
    deviceUID2 = [deviceCopy deviceUID];
    [deviceInitStatus2 setObject:&unk_2853549C0 forKey:deviceUID2];

    concurrentQueue = [(ASDTDeviceManager *)self concurrentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ASDTDeviceManager_initializeDevice___block_invoke;
    block[3] = &unk_278CE64F0;
    v14 = deviceCopy;
    dispatch_async(concurrentQueue, block);
  }

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];
}

void __38__ASDTDeviceManager_initializeDevice___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) manager];
  if (v2)
  {
    v3 = ASDTBaseLogType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 name];
      v5 = [*(a1 + 32) deviceUID];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_241659000, v3, OS_LOG_TYPE_DEFAULT, "%@: Initializing '%@'", &v8, 0x16u);
    }

    if ([*(a1 + 32) initializeDevice])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [v2 deviceInitialized:*(a1 + 32) withStatus:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int)getInitStatusForDeviceUID:(id)d
{
  dCopy = d;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
  v7 = [deviceInitStatus objectForKey:dCopy];
  unsignedIntValue = [v7 unsignedIntValue];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  return unsignedIntValue;
}

- (void)publishDeviceLocked:(id)locked
{
  v33 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  deviceUID = [lockedCopy deviceUID];

  if (!deviceUID)
  {
    v7 = ASDTBaseLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager publishDeviceLocked:];
    }

    deviceUID2 = [lockedCopy deviceUID];
    v9 = deviceUID2 == 0;

    if (v9)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      name = [(ASDTDeviceManager *)self name];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTDeviceManager.mm" lineNumber:501 description:{@"%@: Bad device factory.", name}];
    }
  }

  device = [lockedCopy device];
  if (!device)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [lockedCopy deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager publishDeviceLocked:];
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    name2 = [(ASDTDeviceManager *)self name];
    deviceUID3 = [lockedCopy deviceUID];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ASDTDeviceManager.mm" lineNumber:505 description:{@"%@: Device factory for '%@' missing device object.", name2, deviceUID3}];
  }

  delegate = [(ASDTDeviceManager *)self delegate];
  audioDevices = [delegate audioDevices];
  v17 = [audioDevices containsObject:device];

  if ((v17 & 1) == 0)
  {
    v18 = ASDTBaseLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID4 = [device deviceUID];
      deviceName = [device deviceName];
      *buf = 138412546;
      *&buf[4] = deviceUID4;
      *&buf[12] = 2112;
      *&buf[14] = deviceName;
      _os_log_impl(&dword_241659000, v18, OS_LOG_TYPE_DEFAULT, "Publishing %@ (%@)", buf, 0x16u);
    }

    delegate2 = [(ASDTDeviceManager *)self delegate];
    [delegate2 addAudioDevice:device];

    ASDTTime::machAbsoluteTime(v22, v31);
    if (lockedCopy)
    {
      [lockedCopy initTime];
    }

    else
    {
      memset(v30, 0, sizeof(v30));
    }

    *buf = *v31;
    *&buf[16] = *&v31[16];
    ASDTTime::operator-=(buf, v30, v23, v24);
    v25 = ASDTBaseLogType();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID5 = [lockedCopy deviceUID];
      *v31 = 138412546;
      *&v31[4] = deviceUID5;
      *&v31[12] = 2048;
      *&v31[14] = *buf / 1000000000.0;
      _os_log_impl(&dword_241659000, v25, OS_LOG_TYPE_DEFAULT, "Device '%@' published after %1.4lfs", v31, 0x16u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)publishDevice:(id)device
{
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  [(ASDTDeviceManager *)self publishDeviceLocked:deviceCopy];
  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];
}

- (void)waitForInitialization
{
  configuration = [(ASDTDeviceManager *)self configuration];
  -[ASDTDeviceManager waitForInitializationWithTimeoutUs:](self, "waitForInitializationWithTimeoutUs:", [configuration asdtManagerInitializationWaitUs]);
}

- (void)configureDevices
{
  v58 = *MEMORY[0x277D85DE8];
  configuration = [(ASDTDeviceManager *)self configuration];
  asdtDevices = [configuration asdtDevices];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = asdtDevices;
  v5 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v5)
  {
    v7 = *v48;
    *&v6 = 138412546;
    v37 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        asdtDeviceUID = [v9 asdtDeviceUID];
        if (asdtDeviceUID)
        {
          v11 = [ASDTAudioDeviceFactory forDeviceConfig:v9 withManager:self];
          if (v11)
          {
            initializingCond = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond lock];

            deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
            [deviceFactories addObject:v11];

            initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond2 unlock];
          }

          else
          {
            initializingCond2 = ASDTBaseLogType();
            if (os_log_type_enabled(initializingCond2, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              *buf = v37;
              v54 = name;
              v55 = 2112;
              v56 = v9;
              _os_log_error_impl(&dword_241659000, initializingCond2, OS_LOG_TYPE_ERROR, "%@: Failure creating factory for: %@", buf, 0x16u);
            }
          }

LABEL_19:

          goto LABEL_20;
        }

        asdtSubclass = [v9 asdtSubclass];
        if ([asdtSubclass conformsToProtocol:&unk_285364B48])
        {
          v11 = [asdtSubclass ioServiceDependenciesForConfig:v9];
          if ([v11 count])
          {
            initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond3 lock];

            ioServiceDependencies = [(ASDTDeviceManager *)self ioServiceDependencies];
            [ioServiceDependencies addObjectsFromArray:v11];

            initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond2 unlock];
          }

          else
          {
            initializingCond2 = ASDTBaseLogType();
            if (os_log_type_enabled(initializingCond2, OS_LOG_TYPE_ERROR))
            {
              name2 = [(ASDTDeviceManager *)self name];
              *buf = v37;
              v54 = name2;
              v55 = 2112;
              v56 = v9;
              _os_log_error_impl(&dword_241659000, initializingCond2, OS_LOG_TYPE_ERROR, "%@: Could not identify service dependencies for configuration: %@", buf, 0x16u);
            }
          }

          goto LABEL_19;
        }

        v11 = ASDTBaseLogType();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          name3 = [(ASDTDeviceManager *)self name];
          *buf = v37;
          v54 = name3;
          v55 = 2112;
          v56 = v9;
          _os_log_error_impl(&dword_241659000, v11, OS_LOG_TYPE_ERROR, "%@: Could not identify required services for configuration: %@", buf, 0x16u);
        }

LABEL_20:
      }

      v5 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v5);
  }

  initializingCond4 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond4 lock];

  deviceFactories2 = [(ASDTDeviceManager *)self deviceFactories];
  allObjects = [deviceFactories2 allObjects];

  ioServiceDependencies2 = [(ASDTDeviceManager *)self ioServiceDependencies];
  v25 = [ioServiceDependencies2 copy];

  initializingCond5 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond5 unlock];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = allObjects;
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v28)
  {
    v29 = *v44;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v43 + 1) + 8 * j);
        if ([v31 checkDependencies])
        {
          [(ASDTDeviceManager *)self buildAndInitializeDevice:v31];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v28);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = v25;
  v33 = [v32 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v33)
  {
    v34 = *v40;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v39 + 1) + 8 * k) addManagerDelegate:self];
      }

      v33 = [v32 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v33);
  }

  [(ASDTDeviceManager *)self waitForInitialization];
  v36 = *MEMORY[0x277D85DE8];
}

- (void)ioServiceAvailable:(id)available withManager:(id)manager
{
  v41 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  managerCopy = manager;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  ioServiceDependencies = [(ASDTDeviceManager *)self ioServiceDependencies];
  v29 = [ioServiceDependencies copy];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v29;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v10)
  {
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if ([v13 ioServiceMatches:availableCopy withManager:managerCopy])
        {
          idValue = [availableCopy idValue];
          identifier = [idValue identifier];

          initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
          [initializingCond3 lock];

          matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
          v18 = [matchedDeviceFactories objectForKey:identifier];

          initializingCond4 = [(ASDTDeviceManager *)self initializingCond];
          [initializingCond4 unlock];

          if (v18)
          {
            v20 = ASDTBaseLogType();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              *buf = 138412546;
              v37 = name;
              v38 = 2112;
              v39 = identifier;
              _os_log_error_impl(&dword_241659000, v20, OS_LOG_TYPE_ERROR, "%@: Device with UID '%@' already matched.", buf, 0x16u);
            }
          }

          else
          {
            configuration = [v13 configuration];
            v20 = [configuration mutableCopy];

            [v20 setObject:identifier forKey:@"DeviceUID"];
            v18 = [ASDTAudioDeviceFactory forDeviceConfig:v20 withManager:self];
            if (v18)
            {
              initializingCond5 = [(ASDTDeviceManager *)self initializingCond];
              [initializingCond5 lock];

              deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
              [deviceFactories addObject:v18];

              initializingCond6 = [(ASDTDeviceManager *)self initializingCond];
              [initializingCond6 unlock];

              [(ASDTDeviceManager *)self buildAndInitializeDevice:v18];
            }

            else
            {
              v26 = ASDTBaseLogType();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                name2 = [(ASDTDeviceManager *)self name];
                *buf = 138412546;
                v37 = name2;
                v38 = 2112;
                v39 = v20;
                _os_log_error_impl(&dword_241659000, v26, OS_LOG_TYPE_ERROR, "%@: Failure creating factory for: %@", buf, 0x16u);
              }

              [(ASDTDeviceManager *)self deviceConfigurationFailed:v20];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v10);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)ioServiceWillTerminate:(id)terminate withManager:(id)manager
{
  v19 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  idValue = [terminateCopy idValue];
  identifier = [idValue identifier];
  v9 = [(ASDTDeviceList *)self getAudioDeviceWithUID:identifier];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  if (v9)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTDeviceManager *)self name];
      deviceUID = [v9 deviceUID];
      v15 = 138412546;
      v16 = name;
      v17 = 2112;
      v18 = deviceUID;
      _os_log_impl(&dword_241659000, v11, OS_LOG_TYPE_DEFAULT, "%@: Terminate notification incoming for '%@'.", &v15, 0x16u);
    }

    [(ASDTDeviceManager *)self removeAudioDevice:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfigurationFailed:(id)failed
{
  v7 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)self name];
    objc_claimAutoreleasedReturnValue();
    [ASDTDeviceManager deviceConfigurationFailed:];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceInitializationFailed:(id)failed
{
  v7 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)self name];
    objc_claimAutoreleasedReturnValue();
    [failedCopy deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTDeviceManager deviceInitializationFailed:];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)systemWillSleep
{
  v38 = *MEMORY[0x277D85DE8];
  [(ASDTDeviceList *)self audioDevices];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v2 = v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v37 count:16];
  if (v3)
  {
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          systemSleepPending = [v6 systemSleepPending];
          if (systemSleepPending)
          {
            v8 = ASDTBaseLogType();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              deviceUID = [v6 deviceUID];
              v11 = deviceUID;
              v12 = systemSleepPending;
              if (systemSleepPending - 32 >= 0x5F)
              {
                v12 = 32;
              }

              *buf = 138413826;
              v24 = name;
              v13 = BYTE1(systemSleepPending);
              if (BYTE1(systemSleepPending) - 32 >= 0x5F)
              {
                v13 = 32;
              }

              v25 = 1024;
              v26 = systemSleepPending;
              v14 = BYTE2(systemSleepPending);
              if (BYTE2(systemSleepPending) - 32 >= 0x5F)
              {
                v14 = 32;
              }

              v27 = 1024;
              if ((systemSleepPending - 0x20000000) >> 24 >= 0x5F)
              {
                v15 = 32;
              }

              else
              {
                v15 = HIBYTE(systemSleepPending);
              }

              v28 = v15;
              v29 = 1024;
              v30 = v14;
              v31 = 1024;
              v32 = v13;
              v33 = 1024;
              v34 = v12;
              v35 = 2112;
              v36 = deviceUID;
              _os_log_error_impl(&dword_241659000, v8, OS_LOG_TYPE_ERROR, "%@: systemWillSleep: Received error %x (%c%c%c%c) from device '%@'.", buf, 0x34u);
            }
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v16 = [v2 countByEnumeratingWithState:&v19 objects:v37 count:16];
      v3 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)waitForThreadStart
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: Failed to start thread.", v5);
}

- (void)stopThread
{
  v16 = *MEMORY[0x277D85DE8];
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond lock];

  thread = [(ASDTDeviceManager *)self thread];
  [thread cancel];

  threadCond2 = [(ASDTDeviceManager *)self threadCond];
  [threadCond2 signal];

  threadCond3 = [(ASDTDeviceManager *)self threadCond];
  [threadCond3 unlock];

  *&v7 = 138412290;
  v13 = v7;
  while (1)
  {
    thread2 = [(ASDTDeviceManager *)self thread];
    isFinished = [thread2 isFinished];

    if (isFinished)
    {
      break;
    }

    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      name = [(ASDTDeviceManager *)self name];
      *buf = v13;
      v15 = name;
      _os_log_impl(&dword_241659000, v10, OS_LOG_TYPE_INFO, "%@: Waiting for thread to finish...", buf, 0xCu);
    }

    usleep(0x2710u);
  }

  [(ASDTDeviceManager *)self setThread:0];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)lockedSignalThread
{
  [(ASDTDeviceManager *)self setThreadWorkToDo:1];
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond signal];
}

- (void)threadLoop:(id)loop
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = ASDTBaseLogType();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    name = [(ASDTDeviceManager *)self name];
    *buf = 138412290;
    *&buf[4] = name;
    _os_log_impl(&dword_241659000, v4, OS_LOG_TYPE_DEFAULT, "%@: Started background thread.", buf, 0xCu);
  }

  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  [(ASDTDeviceManager *)self setThreadStarted:1];
  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 broadcast];

  initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond3 unlock];

  thread = [(ASDTDeviceManager *)self thread];
  [thread setQualityOfService:17];

  v39 = 0uLL;
  v40 = 0x10000;
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond lock];

  while (1)
  {
    thread2 = [(ASDTDeviceManager *)self thread];
    isCancelled = [thread2 isCancelled];

    if (isCancelled)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    if (![(ASDTDeviceManager *)self threadWorkToDo])
    {
      if (v39)
      {
        threadCond2 = [(ASDTDeviceManager *)self threadCond];
        *buf = v39;
        v43 = v40;
        [threadCond2 waitUntilTime:buf];
      }

      else
      {
        threadCond2 = [(ASDTDeviceManager *)self threadCond];
        [threadCond2 wait];
      }
    }

    [(ASDTDeviceManager *)self setThreadWorkToDo:0];
    devicesRunning = [(ASDTDeviceManager *)self devicesRunning];
    allObjects = [devicesRunning allObjects];

    threadCond3 = [(ASDTDeviceManager *)self threadCond];
    [threadCond3 unlock];

    v18 = [allObjects count];
    if (!v18)
    {
      ASDTTime::ASDTTime(buf, 0, 1, v19);
LABEL_23:
      v39 = *buf;
      v40 = v43;
      goto LABEL_24;
    }

    if (!v39)
    {
      runningLogPeriod = [(ASDTDeviceManager *)self runningLogPeriod];
      ASDTTime::futureSecs(runningLogPeriod, v29, buf);
      goto LABEL_23;
    }

    ASDTTime::machAbsoluteTime(v18, buf);
    if (*buf > v39)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = allObjects;
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v21)
      {
        v22 = *v36;
        do
        {
          v23 = 0;
          do
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v20);
            }

            -[ASDTDeviceManager logStatsForDevice:withPowerState:](self, "logStatsForDevice:withPowerState:", *(*(&v35 + 1) + 8 * v23), [*(*(&v35 + 1) + 8 * v23) powerState]);
            ++v23;
          }

          while (v21 != v23);
          v21 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v21);
      }

      [(ASDTDeviceManager *)self runningLogPeriod];
      ASDTTime::ASDTTime(buf, llround(v24 * 1000000000.0), 1, v25);
      ASDTTime::operator+=(&v39, buf, v26, v27);
    }

LABEL_24:
    threadCond4 = [(ASDTDeviceManager *)self threadCond];
    [threadCond4 lock];

    objc_autoreleasePoolPop(v13);
  }

  threadCond5 = [(ASDTDeviceManager *)self threadCond];
  [threadCond5 unlock];

  v32 = ASDTBaseLogType();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [(ASDTDeviceManager *)self name];
    *buf = 138412290;
    *&buf[4] = name2;
    _os_log_impl(&dword_241659000, v32, OS_LOG_TYPE_DEFAULT, "%@: Finished background thread.", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"powerState"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    -[ASDTDeviceManager powerStateChangedForDevice:toState:](self, "powerStateChangedForDevice:toState:", objectCopy, [v13 unsignedIntValue]);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ASDTDeviceManager;
    [(ASDTDeviceManager *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)messageForDroppedPacketsFromDevice:(id)device withScope:(unsigned int)scope andElement:(unsigned int)element
{
  deviceCopy = device;
  v13[0] = 1883533936;
  v13[1] = scope;
  v13[2] = element;
  if ([deviceCopy hasProperty:v13] & 1) != 0 && (v11 = 4, v12 = 0, (objc_msgSend(deviceCopy, "getProperty:withQualifierSize:qualifierData:dataSize:andData:forClient:", v13, 0, 0, &v11, &v12, 0)))
  {
    v8 = "Host";
    if (element != 1)
    {
      v8 = "Remote";
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %u", v8, v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)logStatsForDevice:(id)device withPowerState:(int)state
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CCACA8];
  name = [(ASDTDeviceManager *)self name];
  deviceUID = [deviceCopy deviceUID];
  v9 = deviceUID;
  v10 = "not ";
  if (state == 1920298606)
  {
    v10 = "";
  }

  v11 = [v6 stringWithFormat:@"%@: '%@' is %srunning", name, deviceUID, v10];

  if (v11)
  {
    [array addObject:v11];
  }

  v29 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:deviceCopy withScope:1869968496];
  v12 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:deviceCopy withScope:1768845428];
  v28 = v12;
  if (__PAIR128__(v29, v12) != 0)
  {
    v13 = &stru_28534DD28;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_28534DD28;
    }

    if (v12)
    {
      v15 = v29 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = "; ";
    if (v15)
    {
      v16 = "";
    }

    if (v29)
    {
      v13 = v29;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Packets Dropped: %@%s%@", v13, v16, v14];

    if (v17)
    {
      v11 = v17;
      [array addObject:v17];
    }

    else
    {
      v11 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    status = [deviceCopy status];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allKeys = [status allKeys];
    v20 = [allKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = *v33;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          v24 = MEMORY[0x277CCACA8];
          v25 = [status objectForKeyedSubscript:v23];
          v26 = [v24 stringWithFormat:@"%@: %@", v23, v25];

          v11 = v26;
          if (v26)
          {
            [array addObject:v26];
          }
        }

        v20 = [allKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v20);
    }
  }

  [MEMORY[0x277CEFB58] asdtLogComponents:array withSeparator:{@", "}];

  v27 = *MEMORY[0x277D85DE8];
}

- (ASDTDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ASDTPlugin)plugin
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);

  return WeakRetained;
}

- (void)initWithConfig:withDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: Memory allocation error.", v5);
}

- (void)removeAudioDevices:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  _os_log_debug_impl(&dword_241659000, v5, OS_LOG_TYPE_DEBUG, "%@: Bad or unmanaged devices to remove. %@", v4, 0x16u);
}

- (void)buildAndInitializeDevice:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Device with UID '%@' is already matched.", v4, v5);
}

- (void)buildAndInitializeDevice:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed to build device '%@' after resources ready.", v4, v5);
}

- (void)deviceInitialized:withStatus:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: No devices to initialize!", v5);
}

- (void)deviceInitialized:withStatus:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_10(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Initialization of device '%@' failed; not publishing it.", v5, v6);
}

- (void)publishDeviceLocked:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: Bad device factory.", v5);
}

- (void)publishDeviceLocked:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_10(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Device factory for '%@' missing device object.", v5, v6);
}

- (void)waitForInitializationWithTimeoutUs:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_241659000, v3, OS_LOG_TYPE_DEBUG, "%@: Timeout waiting for audio devices to initialize.", v4, 0xCu);
}

- (void)deviceConfigurationFailed:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed creating audio device with configuration:\n%@", v4, v5);
}

- (void)deviceInitializationFailed:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_10(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed initializing audio device with UID %@", v5, v6);
}

@end