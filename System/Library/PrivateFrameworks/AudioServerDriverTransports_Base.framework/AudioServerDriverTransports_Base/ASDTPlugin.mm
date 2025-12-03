@interface ASDTPlugin
+ (id)forBundleID:(id)d;
- (BOOL)allowSystemSleep;
- (BOOL)callRequestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (BOOL)configurationChangePendingForObject:(id)object;
- (BOOL)configurationChangeRunningForObject:(id)object;
- (BOOL)requestConfigurationChange:(id)change;
- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (BOOL)systemIsSleeping;
- (NSArray)audioDevices;
- (id)initForBundleID:(id)d;
- (void)addAudioDevice:(id)device;
- (void)addAudioDevices:(id)devices;
- (void)dealloc;
- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDevices:(id)devices;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)waitForChangeRequests;
- (void)waitForConfigurationChangesForDevice:(id)device;
@end

@implementation ASDTPlugin

- (void)systemHasPoweredOn
{
  deviceManager = [(ASDTPlugin *)self deviceManager];
  [deviceManager systemHasPoweredOn];

  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 systemHasPoweredOn];
}

- (NSArray)audioDevices
{
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  audioDevices = [publishedDevices audioDevices];

  return audioDevices;
}

+ (id)forBundleID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initForBundleID:dCopy];

  return v5;
}

- (id)initForBundleID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v26.receiver = self;
  v26.super_class = ASDTPlugin;
  v5 = [(ASDTPlugin *)&v26 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  atomic_store(0, &v5->_configChangeNumber.__a_.__a_value);
  bundleID = dCopy;
  if (!dCopy)
  {
    v25.receiver = v5;
    v25.super_class = ASDTPlugin;
    bundleID = [(ASDTPlugin *)&v25 bundleID];
  }

  [(ASDTPlugin *)v6 setAsdtBundleID:bundleID];
  if (!dCopy)
  {
  }

  bundleID2 = [(ASDTPlugin *)v6 bundleID];
  powerNotificationQueue = [(ASDTPlugin *)v6 powerNotificationQueue];
  v10 = [ASDTSystemPowerNotifier notifierForBundleName:bundleID2 delegate:v6 queue:powerNotificationQueue earlyWake:0];
  [(ASDTPlugin *)v6 setSystemPowerNotifier:v10];

  v11 = objc_alloc_init(ASDTDeviceList);
  [(ASDTPlugin *)v6 setPublishedDevices:v11];

  v12 = [ASDTChangeRequestManager forDelegate:v6];
  [(ASDTPlugin *)v6 setChangeRequestManager:v12];

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);

  v15 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTPlugin.concurrentQueue", v14);
  [(ASDTPlugin *)v6 setConcurrentQueue:v15];

  systemPowerNotifier = [(ASDTPlugin *)v6 systemPowerNotifier];
  if (systemPowerNotifier)
  {
    publishedDevices = [(ASDTPlugin *)v6 publishedDevices];
    if (publishedDevices)
    {
      changeRequestManager = [(ASDTPlugin *)v6 changeRequestManager];
      v19 = changeRequestManager == 0;

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
    bundleID3 = [(ASDTPlugin *)v6 bundleID];
    [(ASDTPlugin *)bundleID3 initForBundleID:v27, v21];
  }

  v20 = 0;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)dealloc
{
  deviceManager = [(ASDTPlugin *)self deviceManager];
  [deviceManager stopThread];

  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 dealloc];
}

- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = ASDTBaseLogType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(ASDTPlugin *)self bundleID];
    *buf = 138412546;
    v19 = bundleID;
    v20 = 2080;
    v21 = "310.2";
    _os_log_impl(&dword_241659000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s Initialization Start", buf, 0x16u);
  }

  v17.receiver = self;
  v17.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v17 halInitializeWithPluginHost:host];
  config = [(ASDTPlugin *)self config];
  if (config)
  {
    v8 = [ASDTDeviceManager deviceManagerWithConfig:config withDelegate:self];
    [(ASDTPlugin *)self setDeviceManager:v8];

    deviceManager = [(ASDTPlugin *)self deviceManager];
    LODWORD(v8) = deviceManager == 0;

    if (!v8)
    {
      v10 = "Success";
      goto LABEL_11;
    }

    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      bundleID2 = [(ASDTPlugin *)self bundleID];
      [(ASDTPlugin *)bundleID2 halInitializeWithPluginHost:v24, v11];
    }
  }

  else
  {
    v11 = ASDTBaseLogType();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      bundleID3 = [(ASDTPlugin *)self bundleID];
      [(ASDTPlugin *)bundleID3 halInitializeWithPluginHost:v24, v11];
    }
  }

  v10 = "Failure";
LABEL_11:
  [(ASDTPlugin *)self setInitializationComplete:1];
  v14 = ASDTBaseLogType();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    bundleID4 = [(ASDTPlugin *)self bundleID];
    *buf = 138412802;
    v19 = bundleID4;
    v20 = 2080;
    v21 = "310.2";
    v22 = 2080;
    v23 = v10;
    _os_log_impl(&dword_241659000, v14, OS_LOG_TYPE_DEFAULT, "%@ %s Initialization End; Result: %s", buf, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addAudioDevice:(id)device
{
  deviceCopy = device;
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices addAudioDevice:deviceCopy];

  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  [changeRequestManager waitForConfigurationChangesForDevice:deviceCopy];

  v7.receiver = self;
  v7.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v7 addAudioDevice:deviceCopy];
}

- (void)addAudioDevices:(id)devices
{
  v19 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices addAudioDevices:devicesCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = devicesCopy;
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
        changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
        [changeRequestManager waitForConfigurationChangesForDevice:v10];

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

- (void)removeAudioDevice:(id)device
{
  deviceCopy = device;
  v6.receiver = self;
  v6.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v6 removeAudioDevice:deviceCopy];
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices removeAudioDevice:deviceCopy];
}

- (void)removeAudioDevices:(id)devices
{
  devicesCopy = devices;
  v6.receiver = self;
  v6.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v6 removeAudioDevices:devicesCopy];
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices removeAudioDevices:devicesCopy];
}

- (BOOL)callRequestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = ASDTPlugin;
  return [(ASDTPlugin *)&v5 requestConfigurationChangeForDevice:device withBlock:block];
}

- (BOOL)requestConfigurationChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  initializationComplete = [(ASDTPlugin *)self initializationComplete];
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  audioDevices = [publishedDevices audioDevices];

  if (initializationComplete && ([changeCopy object], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(audioDevices, "containsObject:", v8), v8, (v9 & 1) != 0))
  {
    object = [changeCopy object];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__ASDTPlugin_requestConfigurationChange___block_invoke_2;
    v19[3] = &unk_278CE64F0;
    v20 = changeCopy;
    v11 = [(ASDTPlugin *)self callRequestConfigurationChangeForDevice:object withBlock:v19];
    v12 = &v20;
  }

  else
  {
    v13 = ASDTBaseLogType();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      name = [changeCopy name];
      v15 = name;
      v16 = "before initialization is complete";
      if (initializationComplete)
      {
        v16 = "for unpublished device";
      }

      *buf = 136315394;
      v24 = v16;
      v25 = 2112;
      v26 = name;
      _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "Executing configuration change %s: %@", buf, 0x16u);
    }

    object = [(ASDTPlugin *)self concurrentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__ASDTPlugin_requestConfigurationChange___block_invoke;
    block[3] = &unk_278CE64F0;
    v12 = &v22;
    v22 = changeCopy;
    dispatch_async(object, block);
    v11 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  v9 = [changeRequestManager requestConfigurationChangeForDevice:deviceCopy withBlock:blockCopy];

  return v9;
}

- (BOOL)configurationChangePendingForObject:(id)object
{
  objectCopy = object;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  v6 = [changeRequestManager configurationChangePendingForObject:objectCopy];

  return v6;
}

- (BOOL)configurationChangeRunningForObject:(id)object
{
  objectCopy = object;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  v6 = [changeRequestManager configurationChangeRunningForObject:objectCopy];

  return v6;
}

- (void)waitForConfigurationChangesForDevice:(id)device
{
  deviceCopy = device;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  [changeRequestManager waitForConfigurationChangesForDevice:deviceCopy];
}

- (void)waitForChangeRequests
{
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  [changeRequestManager waitForAllConfigurationChanges];
}

- (BOOL)systemIsSleeping
{
  systemPowerNotifier = [(ASDTPlugin *)self systemPowerNotifier];
  systemIsSleeping = [systemPowerNotifier systemIsSleeping];

  return systemIsSleeping;
}

- (BOOL)allowSystemSleep
{
  deviceManager = [(ASDTPlugin *)self deviceManager];

  if (!deviceManager)
  {
    return 1;
  }

  deviceManager2 = [(ASDTPlugin *)self deviceManager];
  allowSystemSleep = [deviceManager2 allowSystemSleep];

  return allowSystemSleep;
}

- (void)systemWillSleep
{
  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 systemWillSleep];
  deviceManager = [(ASDTPlugin *)self deviceManager];
  [deviceManager systemWillSleep];
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