@interface ASDTPlugin
+ (id)forBundleID:(id)a3;
- (BOOL)allowSystemSleep;
- (BOOL)callRequestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4;
- (BOOL)configurationChangePendingForObject:(id)a3;
- (BOOL)configurationChangeRunningForObject:(id)a3;
- (BOOL)requestConfigurationChange:(id)a3;
- (BOOL)requestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4;
- (BOOL)systemIsSleeping;
- (NSArray)audioDevices;
- (id)initForBundleID:(id)a3;
- (void)addAudioDevice:(id)a3;
- (void)addAudioDevices:(id)a3;
- (void)dealloc;
- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)a3;
- (void)removeAudioDevice:(id)a3;
- (void)removeAudioDevices:(id)a3;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)waitForChangeRequests;
- (void)waitForConfigurationChangesForDevice:(id)a3;
@end

@implementation ASDTPlugin

- (void)systemHasPoweredOn
{
  v3 = [(ASDTPlugin *)self deviceManager];
  [v3 systemHasPoweredOn];

  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 systemHasPoweredOn];
}

- (NSArray)audioDevices
{
  v2 = [(ASDTPlugin *)self publishedDevices];
  v3 = [v2 audioDevices];

  return v3;
}

+ (id)forBundleID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForBundleID:v4];

  return v5;
}

- (id)initForBundleID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ASDTPlugin;
  v5 = [(ASDTPlugin *)&v26 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  atomic_store(0, &v5->_configChangeNumber.__a_.__a_value);
  v7 = v4;
  if (!v4)
  {
    v25.receiver = v5;
    v25.super_class = ASDTPlugin;
    v7 = [(ASDTPlugin *)&v25 bundleID];
  }

  [(ASDTPlugin *)v6 setAsdtBundleID:v7];
  if (!v4)
  {
  }

  v8 = [(ASDTPlugin *)v6 bundleID];
  v9 = [(ASDTPlugin *)v6 powerNotificationQueue];
  v10 = [ASDTSystemPowerNotifier notifierForBundleName:v8 delegate:v6 queue:v9 earlyWake:0];
  [(ASDTPlugin *)v6 setSystemPowerNotifier:v10];

  v11 = objc_alloc_init(ASDTDeviceList);
  [(ASDTPlugin *)v6 setPublishedDevices:v11];

  v12 = [ASDTChangeRequestManager forDelegate:v6];
  [(ASDTPlugin *)v6 setChangeRequestManager:v12];

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);

  v15 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTPlugin.concurrentQueue", v14);
  [(ASDTPlugin *)v6 setConcurrentQueue:v15];

  v16 = [(ASDTPlugin *)v6 systemPowerNotifier];
  if (v16)
  {
    v17 = [(ASDTPlugin *)v6 publishedDevices];
    if (v17)
    {
      v18 = [(ASDTPlugin *)v6 changeRequestManager];
      v19 = v18 == 0;

      if (!v19)
      {

LABEL_10:
        v20 = v6;
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v21 = ASDTBaseLogType();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [(ASDTPlugin *)v6 bundleID];
    [(ASDTPlugin *)v22 initForBundleID:v27, v21];
  }

  v20 = 0;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)dealloc
{
  v3 = [(ASDTPlugin *)self deviceManager];
  [v3 stopThread];

  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 dealloc];
}

- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASDTPlugin *)self bundleID];
    *buf = 138412546;
    v19 = v6;
    v20 = 2080;
    v21 = "310.2";
    _os_log_impl(&dword_241659000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s Initialization Start", buf, 0x16u);
  }

  v17.receiver = self;
  v17.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v17 halInitializeWithPluginHost:a3];
  v7 = [(ASDTPlugin *)self config];
  if (v7)
  {
    v8 = [ASDTDeviceManager deviceManagerWithConfig:v7 withDelegate:self];
    [(ASDTPlugin *)self setDeviceManager:v8];

    v9 = [(ASDTPlugin *)self deviceManager];
    LODWORD(v8) = v9 == 0;

    if (!v8)
    {
      v10 = "Success";
      goto LABEL_11;
    }

    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [(ASDTPlugin *)self bundleID];
      [(ASDTPlugin *)v13 halInitializeWithPluginHost:v24, v11];
    }
  }

  else
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(ASDTPlugin *)self bundleID];
      [(ASDTPlugin *)v12 halInitializeWithPluginHost:v24, v11];
    }
  }

  v10 = "Failure";
LABEL_11:
  [(ASDTPlugin *)self setInitializationComplete:1];
  v14 = ASDTBaseLogType();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(ASDTPlugin *)self bundleID];
    *buf = 138412802;
    v19 = v15;
    v20 = 2080;
    v21 = "310.2";
    v22 = 2080;
    v23 = v10;
    _os_log_impl(&dword_241659000, v14, OS_LOG_TYPE_DEFAULT, "%@ %s Initialization End; Result: %s", buf, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addAudioDevice:(id)a3
{
  v4 = a3;
  v5 = [(ASDTPlugin *)self publishedDevices];
  [v5 addAudioDevice:v4];

  v6 = [(ASDTPlugin *)self changeRequestManager];
  [v6 waitForConfigurationChangesForDevice:v4];

  v7.receiver = self;
  v7.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v7 addAudioDevice:v4];
}

- (void)addAudioDevices:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASDTPlugin *)self publishedDevices];
  [v5 addAudioDevices:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(ASDTPlugin *)self changeRequestManager];
        [v11 waitForConfigurationChangesForDevice:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13.receiver = self;
  v13.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v13 addAudioDevices:v6];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeAudioDevice:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v6 removeAudioDevice:v4];
  v5 = [(ASDTPlugin *)self publishedDevices];
  [v5 removeAudioDevice:v4];
}

- (void)removeAudioDevices:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v6 removeAudioDevices:v4];
  v5 = [(ASDTPlugin *)self publishedDevices];
  [v5 removeAudioDevices:v4];
}

- (BOOL)callRequestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4
{
  v5.receiver = self;
  v5.super_class = ASDTPlugin;
  return [(ASDTPlugin *)&v5 requestConfigurationChangeForDevice:a3 withBlock:a4];
}

- (BOOL)requestConfigurationChange:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASDTPlugin *)self initializationComplete];
  v6 = [(ASDTPlugin *)self publishedDevices];
  v7 = [v6 audioDevices];

  if (v5 && ([v4 object], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, (v9 & 1) != 0))
  {
    v10 = [v4 object];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__ASDTPlugin_requestConfigurationChange___block_invoke_2;
    v19[3] = &unk_278CE64F0;
    v20 = v4;
    v11 = [(ASDTPlugin *)self callRequestConfigurationChangeForDevice:v10 withBlock:v19];
    v12 = &v20;
  }

  else
  {
    v13 = ASDTBaseLogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 name];
      v15 = v14;
      v16 = "before initialization is complete";
      if (v5)
      {
        v16 = "for unpublished device";
      }

      *buf = 136315394;
      v24 = v16;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "Executing configuration change %s: %@", buf, 0x16u);
    }

    v10 = [(ASDTPlugin *)self concurrentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__ASDTPlugin_requestConfigurationChange___block_invoke;
    block[3] = &unk_278CE64F0;
    v12 = &v22;
    v22 = v4;
    dispatch_async(v10, block);
    v11 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)requestConfigurationChangeForDevice:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASDTPlugin *)self changeRequestManager];
  v9 = [v8 requestConfigurationChangeForDevice:v6 withBlock:v7];

  return v9;
}

- (BOOL)configurationChangePendingForObject:(id)a3
{
  v4 = a3;
  v5 = [(ASDTPlugin *)self changeRequestManager];
  v6 = [v5 configurationChangePendingForObject:v4];

  return v6;
}

- (BOOL)configurationChangeRunningForObject:(id)a3
{
  v4 = a3;
  v5 = [(ASDTPlugin *)self changeRequestManager];
  v6 = [v5 configurationChangeRunningForObject:v4];

  return v6;
}

- (void)waitForConfigurationChangesForDevice:(id)a3
{
  v5 = a3;
  v4 = [(ASDTPlugin *)self changeRequestManager];
  [v4 waitForConfigurationChangesForDevice:v5];
}

- (void)waitForChangeRequests
{
  v2 = [(ASDTPlugin *)self changeRequestManager];
  [v2 waitForAllConfigurationChanges];
}

- (BOOL)systemIsSleeping
{
  v2 = [(ASDTPlugin *)self systemPowerNotifier];
  v3 = [v2 systemIsSleeping];

  return v3;
}

- (BOOL)allowSystemSleep
{
  v3 = [(ASDTPlugin *)self deviceManager];

  if (!v3)
  {
    return 1;
  }

  v4 = [(ASDTPlugin *)self deviceManager];
  v5 = [v4 allowSystemSleep];

  return v5;
}

- (void)systemWillSleep
{
  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 systemWillSleep];
  v3 = [(ASDTPlugin *)self deviceManager];
  [v3 systemWillSleep];
}

- (void)initForBundleID:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_9(&dword_241659000, a2, a3, "%@: Memory allocation error.", a2);
}

- (void)halInitializeWithPluginHost:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_9(&dword_241659000, a2, a3, "%@: Failed creating device manager.", a2);
}

- (void)halInitializeWithPluginHost:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_9(&dword_241659000, a2, a3, "%@: No configuration found.", a2);
}

@end