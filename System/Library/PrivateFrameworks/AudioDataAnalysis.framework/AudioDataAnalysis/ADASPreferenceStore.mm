@interface ADASPreferenceStore
+ (id)sharedInstance;
- (ADASPreferenceStore)init;
- (void)initNPSDomain;
- (void)pairedDeviceStateChanged:(id)changed;
- (void)registerForNotifications;
@end

@implementation ADASPreferenceStore

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[ADASPreferenceStore sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __37__ADASPreferenceStore_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(ADASPreferenceStore);

  return MEMORY[0x2821F96F8]();
}

- (void)pairedDeviceStateChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  os_unfair_lock_lock(&self->_npsDomainLock);
  v5 = ADAFLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = changedCopy;
    _os_log_impl(&dword_241579000, v5, OS_LOG_TYPE_DEFAULT, "NPSDomainAccessor state change: %@", &v9, 0xCu);
  }

  coreAudioDomain = self->_coreAudioDomain;
  self->_coreAudioDomain = 0;

  coreAudioDeviceDomain = self->_coreAudioDeviceDomain;
  self->_coreAudioDeviceDomain = 0;

  os_unfair_lock_unlock(&self->_npsDomainLock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_pairedDeviceStateChanged_ name:*MEMORY[0x277D2BC48] object:0];
  [defaultCenter addObserver:self selector:sel_pairedDeviceStateChanged_ name:*MEMORY[0x277D2BC50] object:0];
  [defaultCenter addObserver:self selector:sel_pairedDeviceStateChanged_ name:*MEMORY[0x277D2BC68] object:0];
  [defaultCenter addObserver:self selector:sel_pairedDeviceStateChanged_ name:*MEMORY[0x277D2BC78] object:0];
}

- (void)initNPSDomain
{
  if (!self->_coreAudioDomain || !self->_coreAudioDeviceDomain)
  {
    block[5] = v2;
    block[6] = v3;
    npsDomainAccessorQueue = self->_npsDomainAccessorQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__ADASPreferenceStore_initNPSDomain__block_invoke;
    block[3] = &unk_278CE12E0;
    block[4] = self;
    dispatch_async(npsDomainAccessorQueue, block);
  }
}

void __36__ADASPreferenceStore_initNPSDomain__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if (!*(v2 + 48))
  {
    v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.coreaudio"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 56))
  {
    v6 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.coreaudio.device"];
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;

    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 8));
}

- (ADASPreferenceStore)init
{
  v25.receiver = self;
  v25.super_class = ADASPreferenceStore;
  v2 = [(ADASPreferenceStore *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_npsDomainLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.coreaudio.adam.nps", 0);
    npsDomainAccessorQueue = v3->_npsDomainAccessorQueue;
    v3->_npsDomainAccessorQueue = v4;

    coreAudioDomain = v3->_coreAudioDomain;
    v3->_coreAudioDomain = 0;

    coreAudioDeviceDomain = v3->_coreAudioDeviceDomain;
    v3->_coreAudioDeviceDomain = 0;

    [(ADASPreferenceStore *)v3 initNPSDomain];
    [(ADASPreferenceStore *)v3 registerForNotifications];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"VolumeLimitEnabled", @"_ADAFPreferenceKeyVolumeLimitEnabled", @"VolumeLimitThreshold", @"_ADAFPreferenceKeyVolumeLimitThreshold", @"LoudnessCompensationEnabled", @"_ADAFPreferenceKeyLoudnessCompensationEnabled", @"EnableHAELiveMonitor", @"_ADAFPreferenceKeyHAENotificationFeatureEnabled", @"HAENSampleTransient", @"_ADAFPreferenceKeyHAESampleTransient", @"EnableHAEHKWrite", @"_ADAFPreferenceKeyHAEEnableHKWrite", @"EnableHAEOtherDevices", @"_ADAFPreferenceKeyHAEEnableOtherDevices", @"UnknownDeviceIsHeadphone", @"_ADAFPreferenceKeyConnectedWiredDeviceIsHeadphone", @"HAENVolumeReductionDelta", @"_ADAFPreferenceKeyVolumeReductionDelta", @"HAELiveMonitorThreshold", @"_ADAFPreferenceKeyHAENotificationLiveThreshold", @"HAELiveMonitorWindowInSecond", @"_ADAFPreferenceKeyHAENotificationLiveWindowInSeconds", @"HAENKnownAccessories", @"_ADAFPreferenceKeyKnownAccessories", @"HAENKnownAccessoryExpiryDays", @"_ADAFPreferenceKeyHAENKnownAccessoryExpiryDays", @"MXVolumeLimitOn", @"_ADAFPreferenceKeyMXVolumeLimitOn", @"HAENRegionCode", @"_ADAFPreferenceKeyHAENDeviceCountryCodeOverride", @"HAENDeviceProductTypeOverride", @"_ADAFPreferenceKeyHAENDeviceProductTypeOverride", 0}];
    keyMap = v3->_keyMap;
    v3->_keyMap = v8;

    v10 = MGGetStringAnswer();
    v11 = [v10 isEqualToString:@"iPad"];
    v12 = MEMORY[0x277CBEAC0];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v11 ^ 1u];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:85];
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:0.0625];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:14.0];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v20 = [v12 dictionaryWithObjectsAndKeys:{v13, @"VolumeLimitEnabled", v14, @"EnableHAEHKWrite", v15, @"EnableHAEOtherDevices", v16, @"VolumeLimitThreshold", v17, @"HAENVolumeReductionDelta", v18, @"HAENKnownAccessoryExpiryDays", v19, @"EnableHAELiveMonitor", 0}];
    defaultValues = v3->_defaultValues;
    v3->_defaultValues = v20;

    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"HAENUnknownWiredDeviceStatusChanged", @"_ADAFPreferenceKeyConnectedWiredDeviceIsHeadphone", @"HAENVolumeLimitStatusDidChange", @"_ADAFPreferenceKeyMXVolumeLimitOn", @"HAENRLSStatusDidChange", @"_ADAFPreferenceKeyVolumeLimitEnabled", @"HAENRLSStatusDidChange", @"_ADAFPreferenceKeyVolumeLimitThreshold", @"HAENKnownAccessoriesDidChange", @"_ADAFPreferenceKeyKnownAccessories", 0}];
    specialDarwinKeys = v3->_specialDarwinKeys;
    v3->_specialDarwinKeys = v22;
  }

  return v3;
}

@end