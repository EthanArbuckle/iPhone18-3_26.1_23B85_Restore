@interface ASDTDeviceManager
+ (ASDTDeviceManager)deviceManagerWithConfig:(id)a3 withDelegate:(id)a4;
+ (id)concurrentQueue;
- (ASDTDeviceManager)initWithConfig:(id)a3 withDelegate:(id)a4;
- (ASDTDeviceManagerDelegate)delegate;
- (ASDTPlugin)plugin;
- (BOOL)addAudioDeviceWithCheck:(id)a3;
- (NSArray)allDeviceFactories;
- (id)factoryForDeviceUID:(id)a3;
- (id)generateUnderlyingDeviceUIDsFromConfig:(id)a3;
- (id)messageForDroppedPacketsFromDevice:(id)a3 withScope:(unsigned int)a4 andElement:(unsigned int)a5;
- (int)getInitStatusForDeviceUID:(id)a3;
- (void)buildAndInitializeDevice:(id)a3;
- (void)configureDevices;
- (void)deviceConfigurationFailed:(id)a3;
- (void)deviceInitializationFailed:(id)a3;
- (void)initializeDevice:(id)a3;
- (void)ioServiceAvailable:(id)a3 withManager:(id)a4;
- (void)ioServiceWillTerminate:(id)a3 withManager:(id)a4;
- (void)lockedSignalThread;
- (void)logStatsForDevice:(id)a3 withPowerState:(int)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)publishDevice:(id)a3;
- (void)publishDeviceLocked:(id)a3;
- (void)removeAudioDevice:(id)a3;
- (void)removeAudioDevices:(id)a3;
- (void)stopThread;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)threadLoop:(id)a3;
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
          v7 = [v6 systemCompletedPowerOn];
          if (v7)
          {
            v8 = ASDTBaseLogType();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v9 = [(ASDTDeviceManager *)self name];
              v10 = [v6 deviceUID];
              v11 = v10;
              v12 = v7;
              if (v7 - 32 >= 0x5F)
              {
                v12 = 32;
              }

              *buf = 138413826;
              v24 = v9;
              v13 = BYTE1(v7);
              if (BYTE1(v7) - 32 >= 0x5F)
              {
                v13 = 32;
              }

              v25 = 1024;
              v26 = v7;
              v14 = BYTE2(v7);
              if (BYTE2(v7) - 32 >= 0x5F)
              {
                v14 = 32;
              }

              v27 = 1024;
              if ((v7 - 0x20000000) >> 24 >= 0x5F)
              {
                v15 = 32;
              }

              else
              {
                v15 = HIBYTE(v7);
              }

              v28 = v15;
              v29 = 1024;
              v30 = v14;
              v31 = 1024;
              v32 = v13;
              v33 = 1024;
              v34 = v12;
              v35 = 2112;
              v36 = v10;
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

+ (ASDTDeviceManager)deviceManagerWithConfig:(id)a3 withDelegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_msgSend(v5 "asdtDeviceManager"))];
  [v7 configureDevices];

  return v7;
}

- (ASDTDeviceManager)initWithConfig:(id)a3 withDelegate:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v65.receiver = self;
  v65.super_class = ASDTDeviceManager;
  v8 = [(ASDTDeviceList *)&v65 init];
  if (!v8)
  {
    goto LABEL_42;
  }

  v9 = [v6 asdtName];
  [(ASDTDeviceManager *)v8 setName:v9];

  v10 = [(ASDTDeviceManager *)v8 name];
  LODWORD(v9) = v10 == 0;

  if (v9)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(ASDTDeviceManager *)v8 setName:v12];
  }

  [(ASDTDeviceManager *)v8 setConfiguration:v6];
  [(ASDTDeviceManager *)v8 setDelegate:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASDTDeviceManager *)v8 setPlugin:v7];
  }

  v13 = [(ASDTDeviceManager *)v8 plugin];
  v14 = v13 == 0;

  if (v14)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INTERACTIVE, 0);

    v21 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.concurrentQueue", v20);
    [(ASDTDeviceManager *)v8 setConcurrentQueue:v21];

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_USER_INTERACTIVE, 0);

    v18 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.serialQueue", v17);
  }

  else
  {
    v15 = [(ASDTDeviceManager *)v8 plugin];
    v16 = [v15 concurrentQueue];
    [(ASDTDeviceManager *)v8 setConcurrentQueue:v16];

    v17 = [(ASDTDeviceManager *)v8 plugin];
    v18 = [v17 powerNotificationQueue];
  }

  [(ASDTDeviceManager *)v8 setSerialQueue:v18];

  v23 = [(ASDTDeviceManager *)v8 configuration];
  v24 = [v23 asdtDevices];

  v25 = [v24 count];
  v26 = [v6 asdtManagerAudioObjectMaxCount];
  if (v26)
  {
    v27 = ASDTBaseLogType();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(ASDTDeviceManager *)v8 name];
      *buf = 138412546;
      v67 = v28;
      v68 = 1024;
      LODWORD(v69) = v26;
      _os_log_impl(&dword_241659000, v27, OS_LOG_TYPE_DEFAULT, "%@: Setting maximum number of objects to %u.", buf, 0x12u);
    }

    v29 = [(ASDTDeviceManager *)v8 plugin];
    [v29 setMaximumNumberOfObjects:v26];
  }

  v8->_userIsActive = 1;
  -[ASDTDeviceManager setVerboseDeviceLogging:](v8, "setVerboseDeviceLogging:", [v6 asdtManagerVerboseLogging]);
  [v6 asdtManagerRunningLogPeriod];
  [(ASDTDeviceManager *)v8 setRunningLogPeriod:?];
  v30 = ASDTBaseLogType();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(ASDTDeviceManager *)v8 name];
    [(ASDTDeviceManager *)v8 runningLogPeriod];
    *buf = 138412546;
    v67 = v31;
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

  v37 = [MEMORY[0x277CBEB18] array];
  [(ASDTDeviceManager *)v8 setIoServiceDependencies:v37];

  v38 = [(ASDTDeviceManager *)v8 generateUnderlyingDeviceUIDsFromConfig:v24];
  [(ASDTDeviceManager *)v8 setUnderlyingDeviceUIDs:v38];

  v39 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.initCond"];
  [(ASDTDeviceManager *)v8 setInitializingCond:v39];

  v40 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.threadCond"];
  [(ASDTDeviceManager *)v8 setThreadCond:v40];

  v41 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.factoryCond"];
  [(ASDTDeviceManager *)v8 setFactoryPublishCond:v41];

  v42 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:v8 selector:sel_threadLoop_ object:0];
  [(ASDTDeviceManager *)v8 setThread:v42];

  v43 = [(ASDTDeviceManager *)v8 thread];
  [v43 setName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.thread"];

  v44 = [(ASDTDeviceManager *)v8 thread];
  [v44 setQualityOfService:33];

  v45 = [(ASDTDeviceManager *)v8 deviceInitStatus];
  if (v45)
  {
    v46 = [(ASDTDeviceManager *)v8 devicesRunning];
    if (v46)
    {
      v47 = [(ASDTDeviceManager *)v8 thread];
      if (v47)
      {
        v48 = [(ASDTDeviceManager *)v8 threadCond];
        if (v48)
        {
          v49 = [(ASDTDeviceManager *)v8 deviceFactories];
          if (v49)
          {
            v50 = [(ASDTDeviceManager *)v8 matchedDeviceFactories];
            if (v50)
            {
              v62 = [(ASDTDeviceManager *)v8 initializingCond];
              if (v62)
              {
                v61 = [(ASDTDeviceManager *)v8 underlyingDeviceUIDs];
                if (v61)
                {
                  v60 = [(ASDTDeviceManager *)v8 ioServiceDependencies];
                  if (v60)
                  {
                    v59 = [(ASDTDeviceManager *)v8 concurrentQueue];
                    if (v59)
                    {
                      v58 = [(ASDTDeviceManager *)v8 serialQueue];
                      if (v58)
                      {
                        v51 = [(ASDTDeviceManager *)v8 factoryPublishCond];
                        v57 = v51 == 0;
                      }

                      else
                      {
                        v57 = 1;
                      }

                      if (!v57)
                      {
                        objc_initWeak(buf, v8);
                        v54 = [(ASDTDeviceManager *)v8 concurrentQueue];
                        block[0] = MEMORY[0x277D85DD0];
                        block[1] = 3221225472;
                        block[2] = __49__ASDTDeviceManager_initWithConfig_withDelegate___block_invoke;
                        block[3] = &unk_278CE6068;
                        objc_copyWeak(&v64, buf);
                        dispatch_async(v54, block);

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

- (BOOL)addAudioDeviceWithCheck:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASDTDeviceManager *)self threadCond];
  [v5 lock];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 addObserver:self forKeyPath:@"powerState" options:1 context:0];
  }

  v6 = [(ASDTDeviceManager *)self threadCond];
  [v6 unlock];

  v17.receiver = self;
  v17.super_class = ASDTDeviceManager;
  v7 = [(ASDTDeviceList *)&v17 addAudioDeviceWithCheck:v4];
  if (v7)
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(ASDTDeviceManager *)self name];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v4 deviceUID];
      *buf = 138413058;
      v19 = v9;
      v20 = 2048;
      v21 = self;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_241659000, v8, OS_LOG_TYPE_DEFAULT, "%@(%p): Added %@ '%@'", buf, 0x2Au);
    }

    [v4 logDiagnostics:{-[ASDTDeviceManager verboseDeviceLogging](self, "verboseDeviceLogging")}];
  }

  else
  {
    v13 = [(ASDTDeviceManager *)self threadCond];
    [v13 lock];

    [v4 removeObserver:self forKeyPath:@"powerState"];
    v14 = [(ASDTDeviceManager *)self threadCond];
    [v14 unlock];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)generateUnderlyingDeviceUIDsFromConfig:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
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

        v10 = [*(*(&v14 + 1) + 8 * i) asdtUnderlyingDeviceUID];
        if (v10)
        {
          [v5 addObject:v10];
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

- (void)removeAudioDevice:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASDTDeviceManager *)self initializingCond];
  [v5 lock];

  if (v4 && (-[ASDTDeviceList audioDevices](self, "audioDevices"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:v4], v6, (v7 & 1) != 0))
  {
    v8 = [(ASDTDeviceManager *)self delegate];
    v9 = [v8 audioDevices];
    v10 = [v9 containsObject:v4];

    if (v10)
    {
      v11 = ASDTBaseLogType();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(ASDTDeviceManager *)self name];
        v13 = [v4 deviceUID];
        *buf = 138412546;
        v38 = v12;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_241659000, v11, OS_LOG_TYPE_DEFAULT, "%@: Unpublishing '%@'.", buf, 0x16u);
      }

      v14 = [(ASDTDeviceManager *)self delegate];
      [v14 removeAudioDevice:v4];
    }

    v15 = [(ASDTDeviceManager *)self matchedDeviceFactories];
    v16 = [v4 deviceUID];
    v17 = [v15 objectForKey:v16];

    if (v17)
    {
      [v17 cleanup];
      v18 = [(ASDTDeviceManager *)self deviceFactories];
      [v18 removeObject:v17];

      v19 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      v20 = [v4 deviceUID];
      [v19 removeObjectForKey:v20];
    }

    v21 = [(ASDTDeviceManager *)self deviceInitStatus];
    v22 = [v4 deviceUID];
    [v21 removeObjectForKey:v22];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [(ASDTDeviceManager *)self threadCond];
      [v23 lock];

      v24 = [(ASDTDeviceManager *)self devicesRunning];
      v25 = [v24 containsObject:v4];

      if (v25)
      {
        v26 = [(ASDTDeviceManager *)self devicesRunning];
        [v26 removeObject:v4];
      }

      [v4 removeObserver:self forKeyPath:@"powerState"];
      v27 = [(ASDTDeviceManager *)self threadCond];
      [v27 unlock];
    }

    v28 = ASDTBaseLogType();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(ASDTDeviceManager *)self name];
      v30 = [v4 deviceUID];
      *buf = 138412546;
      v38 = v29;
      v39 = 2112;
      v40 = v30;
      _os_log_impl(&dword_241659000, v28, OS_LOG_TYPE_DEFAULT, "%@: Removing '%@'.", buf, 0x16u);
    }

    v36.receiver = self;
    v36.super_class = ASDTDeviceManager;
    [(ASDTDeviceList *)&v36 removeAudioDevice:v4];
    v31 = [(ASDTDeviceManager *)self initializingCond];
    [v31 unlock];
  }

  else
  {
    v32 = [(ASDTDeviceManager *)self initializingCond];
    [v32 unlock];

    v17 = ASDTBaseLogType();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(ASDTDeviceManager *)self name];
      v35 = [v4 deviceUID];
      *buf = 138412802;
      v38 = v34;
      v39 = 2048;
      v40 = v4;
      v41 = 2112;
      v42 = v35;
      _os_log_debug_impl(&dword_241659000, v17, OS_LOG_TYPE_DEBUG, "%@: Bad or unmanaged device(%p) with UID: %@", buf, 0x20u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)removeAudioDevices:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v4 = [(ASDTDeviceManager *)self initializingCond];
  [v4 lock];

  v5 = MEMORY[0x277CBEB58];
  v6 = [(ASDTDeviceList *)self audioDevices];
  v45 = [v5 setWithArray:v6];

  v7 = [MEMORY[0x277CBEB98] setWithArray:v46];
  [v45 intersectSet:v7];

  if ([v45 count])
  {
    v8 = [v45 count];
    if (v8 != [v46 count])
    {
      v9 = [v45 allObjects];

      v46 = v9;
    }

    v10 = [(ASDTDeviceManager *)self delegate];
    v11 = [v10 audioDevices];

    v44 = v11;
    if ([v11 count])
    {
      v12 = [MEMORY[0x277CBEB58] setWithArray:v46];
      v13 = [MEMORY[0x277CBEB98] setWithArray:v11];
      [v12 intersectSet:v13];

      if ([v12 count])
      {
        v14 = [(ASDTDeviceManager *)self delegate];
        v15 = [v12 allObjects];
        [v14 removeAudioDevices:v15];
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = v46;
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
          v21 = [(ASDTDeviceManager *)self matchedDeviceFactories];
          v22 = [v20 deviceUID];
          v23 = [v21 objectForKey:v22];

          if (v23)
          {
            [v23 cleanup];
            v24 = [(ASDTDeviceManager *)self deviceFactories];
            [v24 removeObject:v23];

            v25 = [(ASDTDeviceManager *)self matchedDeviceFactories];
            v26 = [v20 deviceUID];
            [v25 removeObjectForKey:v26];
          }

          v27 = [(ASDTDeviceManager *)self deviceInitStatus];
          v28 = [v20 deviceUID];
          [v27 removeObjectForKey:v28];

          v29 = ASDTBaseLogType();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [(ASDTDeviceManager *)self name];
            v31 = [v20 deviceUID];
            *buf = 138412546;
            v59 = v30;
            v60 = 2112;
            v61 = v31;
            _os_log_impl(&dword_241659000, v29, OS_LOG_TYPE_DEFAULT, "%@: Removing '%@'.", buf, 0x16u);
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v17);
    }

    v32 = [(ASDTDeviceManager *)self threadCond];
    [v32 lock];

    v33 = [(ASDTDeviceManager *)self devicesRunning];
    v34 = [MEMORY[0x277CBEB98] setWithArray:v16];
    [v33 minusSet:v34];

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

    v40 = [(ASDTDeviceManager *)self threadCond];
    [v40 unlock];

    v47.receiver = self;
    v47.super_class = ASDTDeviceManager;
    [(ASDTDeviceList *)&v47 removeAudioDevices:v35];
    v41 = [(ASDTDeviceManager *)self initializingCond];
    [v41 unlock];
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

    v44 = [(ASDTDeviceManager *)self initializingCond];
    [v44 unlock];
    v35 = v46;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (id)factoryForDeviceUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ASDTDeviceManager *)self initializingCond];
    [v5 lock];

    v6 = [(ASDTDeviceManager *)self matchedDeviceFactories];
    v7 = [v6 objectForKey:v4];

    v8 = [(ASDTDeviceManager *)self initializingCond];
    [v8 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)allDeviceFactories
{
  v3 = [(ASDTDeviceManager *)self initializingCond];
  [v3 lock];

  v4 = [(ASDTDeviceManager *)self deviceFactories];
  v5 = [v4 allObjects];

  v6 = [(ASDTDeviceManager *)self initializingCond];
  [v6 unlock];

  return v5;
}

- (void)buildAndInitializeDevice:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceUID];
  v6 = [(ASDTDeviceManager *)self initializingCond];
  [v6 lock];

  v7 = [(ASDTDeviceManager *)self matchedDeviceFactories];
  v8 = [v7 objectForKey:v5];

  if (!v8 || v8 == v4)
  {
    if (!v8)
    {
      [(ASDTDeviceManager *)self setNumDevicesToInitialize:[(ASDTDeviceManager *)self numDevicesToInitialize]+ 1];
      v11 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      [v11 setObject:v4 forKey:v5];
    }

    v12 = [v4 device];

    if (v12)
    {
      goto LABEL_9;
    }

    if ([v4 deviceIsBuilding])
    {
      v18 = [(ASDTDeviceManager *)self initializingCond];
      [v18 unlock];

      goto LABEL_18;
    }

    [v4 setDeviceIsBuilding:1];
    v19 = [(ASDTDeviceManager *)self initializingCond];
    [v19 unlock];

    LODWORD(v19) = [v4 buildDevice];
    v20 = [(ASDTDeviceManager *)self initializingCond];
    [v20 lock];

    [v4 setDeviceIsBuilding:0];
    if (!v19)
    {
      goto LABEL_15;
    }

    v21 = [v4 device];

    if (v21)
    {
LABEL_9:
      v13 = [(ASDTDeviceManager *)self initializingCond];
      [v13 unlock];

      v14 = [(ASDTDeviceList *)self audioDevices];
      v15 = [v4 device];
      v16 = [v14 containsObject:v15];

      if ((v16 & 1) == 0)
      {
        v17 = [v4 device];
        [(ASDTDeviceList *)self addAudioDevice:v17];

        [(ASDTDeviceManager *)self initializeDevice:v4];
      }
    }

    else
    {
LABEL_15:
      v22 = [v4 config];
      [v4 cleanup];
      v23 = [(ASDTDeviceManager *)self deviceFactories];
      [v23 removeObject:v4];

      v24 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      [v24 removeObjectForKey:v5];

      v25 = [(ASDTDeviceManager *)self initializingCond];
      [v25 unlock];

      v26 = ASDTBaseLogType();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(ASDTDeviceManager *)self name];
        objc_claimAutoreleasedReturnValue();
        [ASDTDeviceManager buildAndInitializeDevice:];
      }

      [(ASDTDeviceManager *)self deviceConfigurationFailed:v22];
    }
  }

  else
  {
    v9 = [(ASDTDeviceManager *)self initializingCond];
    [v9 unlock];

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

- (void)initializeDevice:(id)a3
{
  v4 = a3;
  v5 = [(ASDTDeviceManager *)self initializingCond];
  [v5 lock];

  v6 = [(ASDTDeviceManager *)self deviceInitStatus];
  v7 = [v4 deviceUID];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v9 = [(ASDTDeviceManager *)self deviceInitStatus];
    v10 = [v4 deviceUID];
    [v9 setObject:&unk_2853549C0 forKey:v10];

    v11 = [(ASDTDeviceManager *)self concurrentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ASDTDeviceManager_initializeDevice___block_invoke;
    block[3] = &unk_278CE64F0;
    v14 = v4;
    dispatch_async(v11, block);
  }

  v12 = [(ASDTDeviceManager *)self initializingCond];
  [v12 unlock];
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

- (int)getInitStatusForDeviceUID:(id)a3
{
  v4 = a3;
  v5 = [(ASDTDeviceManager *)self initializingCond];
  [v5 lock];

  v6 = [(ASDTDeviceManager *)self deviceInitStatus];
  v7 = [v6 objectForKey:v4];
  v8 = [v7 unsignedIntValue];

  v9 = [(ASDTDeviceManager *)self initializingCond];
  [v9 unlock];

  return v8;
}

- (void)publishDeviceLocked:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 deviceUID];

  if (!v6)
  {
    v7 = ASDTBaseLogType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager publishDeviceLocked:];
    }

    v8 = [v5 deviceUID];
    v9 = v8 == 0;

    if (v9)
    {
      v28 = [MEMORY[0x277CCA890] currentHandler];
      v29 = [(ASDTDeviceManager *)self name];
      [v28 handleFailureInMethod:a2 object:self file:@"ASDTDeviceManager.mm" lineNumber:501 description:{@"%@: Bad device factory.", v29}];
    }
  }

  v10 = [v5 device];
  if (!v10)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [v5 deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager publishDeviceLocked:];
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [(ASDTDeviceManager *)self name];
    v14 = [v5 deviceUID];
    [v12 handleFailureInMethod:a2 object:self file:@"ASDTDeviceManager.mm" lineNumber:505 description:{@"%@: Device factory for '%@' missing device object.", v13, v14}];
  }

  v15 = [(ASDTDeviceManager *)self delegate];
  v16 = [v15 audioDevices];
  v17 = [v16 containsObject:v10];

  if ((v17 & 1) == 0)
  {
    v18 = ASDTBaseLogType();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v10 deviceUID];
      v20 = [v10 deviceName];
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_impl(&dword_241659000, v18, OS_LOG_TYPE_DEFAULT, "Publishing %@ (%@)", buf, 0x16u);
    }

    v21 = [(ASDTDeviceManager *)self delegate];
    [v21 addAudioDevice:v10];

    ASDTTime::machAbsoluteTime(v22, v31);
    if (v5)
    {
      [v5 initTime];
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
      v26 = [v5 deviceUID];
      *v31 = 138412546;
      *&v31[4] = v26;
      *&v31[12] = 2048;
      *&v31[14] = *buf / 1000000000.0;
      _os_log_impl(&dword_241659000, v25, OS_LOG_TYPE_DEFAULT, "Device '%@' published after %1.4lfs", v31, 0x16u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)publishDevice:(id)a3
{
  v6 = a3;
  v4 = [(ASDTDeviceManager *)self initializingCond];
  [v4 lock];

  [(ASDTDeviceManager *)self publishDeviceLocked:v6];
  v5 = [(ASDTDeviceManager *)self initializingCond];
  [v5 unlock];
}

- (void)waitForInitialization
{
  v3 = [(ASDTDeviceManager *)self configuration];
  -[ASDTDeviceManager waitForInitializationWithTimeoutUs:](self, "waitForInitializationWithTimeoutUs:", [v3 asdtManagerInitializationWaitUs]);
}

- (void)configureDevices
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [(ASDTDeviceManager *)self configuration];
  v4 = [v3 asdtDevices];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v4;
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
        v10 = [v9 asdtDeviceUID];
        if (v10)
        {
          v11 = [ASDTAudioDeviceFactory forDeviceConfig:v9 withManager:self];
          if (v11)
          {
            v12 = [(ASDTDeviceManager *)self initializingCond];
            [v12 lock];

            v13 = [(ASDTDeviceManager *)self deviceFactories];
            [v13 addObject:v11];

            v14 = [(ASDTDeviceManager *)self initializingCond];
            [v14 unlock];
          }

          else
          {
            v14 = ASDTBaseLogType();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v19 = [(ASDTDeviceManager *)self name];
              *buf = v37;
              v54 = v19;
              v55 = 2112;
              v56 = v9;
              _os_log_error_impl(&dword_241659000, v14, OS_LOG_TYPE_ERROR, "%@: Failure creating factory for: %@", buf, 0x16u);
            }
          }

LABEL_19:

          goto LABEL_20;
        }

        v15 = [v9 asdtSubclass];
        if ([v15 conformsToProtocol:&unk_285364B48])
        {
          v11 = [v15 ioServiceDependenciesForConfig:v9];
          if ([v11 count])
          {
            v16 = [(ASDTDeviceManager *)self initializingCond];
            [v16 lock];

            v17 = [(ASDTDeviceManager *)self ioServiceDependencies];
            [v17 addObjectsFromArray:v11];

            v14 = [(ASDTDeviceManager *)self initializingCond];
            [v14 unlock];
          }

          else
          {
            v14 = ASDTBaseLogType();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v20 = [(ASDTDeviceManager *)self name];
              *buf = v37;
              v54 = v20;
              v55 = 2112;
              v56 = v9;
              _os_log_error_impl(&dword_241659000, v14, OS_LOG_TYPE_ERROR, "%@: Could not identify service dependencies for configuration: %@", buf, 0x16u);
            }
          }

          goto LABEL_19;
        }

        v11 = ASDTBaseLogType();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v18 = [(ASDTDeviceManager *)self name];
          *buf = v37;
          v54 = v18;
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

  v21 = [(ASDTDeviceManager *)self initializingCond];
  [v21 lock];

  v22 = [(ASDTDeviceManager *)self deviceFactories];
  v23 = [v22 allObjects];

  v24 = [(ASDTDeviceManager *)self ioServiceDependencies];
  v25 = [v24 copy];

  v26 = [(ASDTDeviceManager *)self initializingCond];
  [v26 unlock];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = v23;
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

- (void)ioServiceAvailable:(id)a3 withManager:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = a4;
  v7 = [(ASDTDeviceManager *)self initializingCond];
  [v7 lock];

  v8 = [(ASDTDeviceManager *)self ioServiceDependencies];
  v29 = [v8 copy];

  v9 = [(ASDTDeviceManager *)self initializingCond];
  [v9 unlock];

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
        if ([v13 ioServiceMatches:v6 withManager:v31])
        {
          v14 = [v6 idValue];
          v15 = [v14 identifier];

          v16 = [(ASDTDeviceManager *)self initializingCond];
          [v16 lock];

          v17 = [(ASDTDeviceManager *)self matchedDeviceFactories];
          v18 = [v17 objectForKey:v15];

          v19 = [(ASDTDeviceManager *)self initializingCond];
          [v19 unlock];

          if (v18)
          {
            v20 = ASDTBaseLogType();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [(ASDTDeviceManager *)self name];
              *buf = 138412546;
              v37 = v21;
              v38 = 2112;
              v39 = v15;
              _os_log_error_impl(&dword_241659000, v20, OS_LOG_TYPE_ERROR, "%@: Device with UID '%@' already matched.", buf, 0x16u);
            }
          }

          else
          {
            v22 = [v13 configuration];
            v20 = [v22 mutableCopy];

            [v20 setObject:v15 forKey:@"DeviceUID"];
            v18 = [ASDTAudioDeviceFactory forDeviceConfig:v20 withManager:self];
            if (v18)
            {
              v23 = [(ASDTDeviceManager *)self initializingCond];
              [v23 lock];

              v24 = [(ASDTDeviceManager *)self deviceFactories];
              [v24 addObject:v18];

              v25 = [(ASDTDeviceManager *)self initializingCond];
              [v25 unlock];

              [(ASDTDeviceManager *)self buildAndInitializeDevice:v18];
            }

            else
            {
              v26 = ASDTBaseLogType();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = [(ASDTDeviceManager *)self name];
                *buf = 138412546;
                v37 = v27;
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

- (void)ioServiceWillTerminate:(id)a3 withManager:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ASDTDeviceManager *)self initializingCond];
  [v6 lock];

  v7 = [v5 idValue];
  v8 = [v7 identifier];
  v9 = [(ASDTDeviceList *)self getAudioDeviceWithUID:v8];

  v10 = [(ASDTDeviceManager *)self initializingCond];
  [v10 unlock];

  if (v9)
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(ASDTDeviceManager *)self name];
      v13 = [v9 deviceUID];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_241659000, v11, OS_LOG_TYPE_DEFAULT, "%@: Terminate notification incoming for '%@'.", &v15, 0x16u);
    }

    [(ASDTDeviceManager *)self removeAudioDevice:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfigurationFailed:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)self name];
    objc_claimAutoreleasedReturnValue();
    [ASDTDeviceManager deviceConfigurationFailed:];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceInitializationFailed:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)self name];
    objc_claimAutoreleasedReturnValue();
    [v4 deviceUID];
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
          v7 = [v6 systemSleepPending];
          if (v7)
          {
            v8 = ASDTBaseLogType();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v9 = [(ASDTDeviceManager *)self name];
              v10 = [v6 deviceUID];
              v11 = v10;
              v12 = v7;
              if (v7 - 32 >= 0x5F)
              {
                v12 = 32;
              }

              *buf = 138413826;
              v24 = v9;
              v13 = BYTE1(v7);
              if (BYTE1(v7) - 32 >= 0x5F)
              {
                v13 = 32;
              }

              v25 = 1024;
              v26 = v7;
              v14 = BYTE2(v7);
              if (BYTE2(v7) - 32 >= 0x5F)
              {
                v14 = 32;
              }

              v27 = 1024;
              if ((v7 - 0x20000000) >> 24 >= 0x5F)
              {
                v15 = 32;
              }

              else
              {
                v15 = HIBYTE(v7);
              }

              v28 = v15;
              v29 = 1024;
              v30 = v14;
              v31 = 1024;
              v32 = v13;
              v33 = 1024;
              v34 = v12;
              v35 = 2112;
              v36 = v10;
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
  v3 = [(ASDTDeviceManager *)self threadCond];
  [v3 lock];

  v4 = [(ASDTDeviceManager *)self thread];
  [v4 cancel];

  v5 = [(ASDTDeviceManager *)self threadCond];
  [v5 signal];

  v6 = [(ASDTDeviceManager *)self threadCond];
  [v6 unlock];

  *&v7 = 138412290;
  v13 = v7;
  while (1)
  {
    v8 = [(ASDTDeviceManager *)self thread];
    v9 = [v8 isFinished];

    if (v9)
    {
      break;
    }

    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(ASDTDeviceManager *)self name];
      *buf = v13;
      v15 = v11;
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
  v3 = [(ASDTDeviceManager *)self threadCond];
  [v3 signal];
}

- (void)threadLoop:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = ASDTBaseLogType();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ASDTDeviceManager *)self name];
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&dword_241659000, v4, OS_LOG_TYPE_DEFAULT, "%@: Started background thread.", buf, 0xCu);
  }

  v6 = [(ASDTDeviceManager *)self initializingCond];
  [v6 lock];

  [(ASDTDeviceManager *)self setThreadStarted:1];
  v7 = [(ASDTDeviceManager *)self initializingCond];
  [v7 broadcast];

  v8 = [(ASDTDeviceManager *)self initializingCond];
  [v8 unlock];

  v9 = [(ASDTDeviceManager *)self thread];
  [v9 setQualityOfService:17];

  v39 = 0uLL;
  v40 = 0x10000;
  v10 = [(ASDTDeviceManager *)self threadCond];
  [v10 lock];

  while (1)
  {
    v11 = [(ASDTDeviceManager *)self thread];
    v12 = [v11 isCancelled];

    if (v12)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    if (![(ASDTDeviceManager *)self threadWorkToDo])
    {
      if (v39)
      {
        v14 = [(ASDTDeviceManager *)self threadCond];
        *buf = v39;
        v43 = v40;
        [v14 waitUntilTime:buf];
      }

      else
      {
        v14 = [(ASDTDeviceManager *)self threadCond];
        [v14 wait];
      }
    }

    [(ASDTDeviceManager *)self setThreadWorkToDo:0];
    v15 = [(ASDTDeviceManager *)self devicesRunning];
    v16 = [v15 allObjects];

    v17 = [(ASDTDeviceManager *)self threadCond];
    [v17 unlock];

    v18 = [v16 count];
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
      v28 = [(ASDTDeviceManager *)self runningLogPeriod];
      ASDTTime::futureSecs(v28, v29, buf);
      goto LABEL_23;
    }

    ASDTTime::machAbsoluteTime(v18, buf);
    if (*buf > v39)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v16;
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
    v30 = [(ASDTDeviceManager *)self threadCond];
    [v30 lock];

    objc_autoreleasePoolPop(v13);
  }

  v31 = [(ASDTDeviceManager *)self threadCond];
  [v31 unlock];

  v32 = ASDTBaseLogType();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(ASDTDeviceManager *)self name];
    *buf = 138412290;
    *&buf[4] = v33;
    _os_log_impl(&dword_241659000, v32, OS_LOG_TYPE_DEFAULT, "%@: Finished background thread.", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"powerState"])
  {
    v13 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    -[ASDTDeviceManager powerStateChangedForDevice:toState:](self, "powerStateChangedForDevice:toState:", v11, [v13 unsignedIntValue]);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ASDTDeviceManager;
    [(ASDTDeviceManager *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (id)messageForDroppedPacketsFromDevice:(id)a3 withScope:(unsigned int)a4 andElement:(unsigned int)a5
{
  v7 = a3;
  v13[0] = 1883533936;
  v13[1] = a4;
  v13[2] = a5;
  if ([v7 hasProperty:v13] & 1) != 0 && (v11 = 4, v12 = 0, (objc_msgSend(v7, "getProperty:withQualifierSize:qualifierData:dataSize:andData:forClient:", v13, 0, 0, &v11, &v12, 0)))
  {
    v8 = "Host";
    if (a5 != 1)
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

- (void)logStatsForDevice:(id)a3 withPowerState:(int)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v31 = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(ASDTDeviceManager *)self name];
  v8 = [v30 deviceUID];
  v9 = v8;
  v10 = "not ";
  if (a4 == 1920298606)
  {
    v10 = "";
  }

  v11 = [v6 stringWithFormat:@"%@: '%@' is %srunning", v7, v8, v10];

  if (v11)
  {
    [v31 addObject:v11];
  }

  v29 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:v30 withScope:1869968496];
  v12 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:v30 withScope:1768845428];
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
      [v31 addObject:v17];
    }

    else
    {
      v11 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v30 status];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [v18 allKeys];
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = *v33;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          v24 = MEMORY[0x277CCACA8];
          v25 = [v18 objectForKeyedSubscript:v23];
          v26 = [v24 stringWithFormat:@"%@: %@", v23, v25];

          v11 = v26;
          if (v26)
          {
            [v31 addObject:v26];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v20);
    }
  }

  [MEMORY[0x277CEFB58] asdtLogComponents:v31 withSeparator:{@", "}];

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