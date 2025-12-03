@interface CLKDevice
+ (CGRect)screenBoundsForSizeClass:(unint64_t)class;
+ (CLKDevice)currentDevice;
+ (double)screenCornerRadiusForSizeClass:(unint64_t)class;
+ (id)_cachedDeviceForUUID:(id)d;
+ (id)_createCurrentDeviceWithPDRDevice:(id)device;
+ (id)activePDRDevice;
+ (id)deviceForDescriptor:(id)descriptor;
+ (id)deviceForNRDevice:(id)device forced:(BOOL)forced;
+ (id)deviceForPDRDevice:(id)device forced:(BOOL)forced;
+ (id)deviceForPairingID:(id)d forced:(BOOL)forced;
+ (id)pdrDeviceForPairingID:(id)d;
+ (unsigned)_pdrCapabilityFromNRDeviceCapability:(id)capability;
+ (unsigned)_uint32FromHexString:(id)string;
+ (void)_deviceDidBecomeActive:(id)active;
+ (void)_handlePDRDeviceChanged:(id)changed;
+ (void)_removeCachedDeviceForUUID:(id)d;
+ (void)activePDRDevice;
+ (void)enumerateSizeClasses:(id)classes;
+ (void)initialize;
+ (void)resetCurrentDevice;
+ (void)setCurrentDevice:(id)device;
- (BOOL)_checkUpdateFlushCapabilitiesCache_locked;
- (BOOL)_queryAndCacheNanoRegistryDeviceCapabilities;
- (BOOL)_supportsCapabilityUncached:(unsigned int)uncached;
- (BOOL)hasRichMediaComplications;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExplorer;
- (BOOL)isLocked;
- (BOOL)isRunningGraceOrLater;
- (BOOL)isTinker;
- (BOOL)supportsCapability:(id)capability;
- (BOOL)supportsCharon;
- (BOOL)supportsPDRCapability:(unsigned int)capability;
- (BOOL)supportsPolaris;
- (BOOL)supportsUrsa;
- (BOOL)unlockedSinceBoot;
- (CGRect)screenBounds;
- (CLKDevice)initWithPDRDevice:(id)device;
- (CLKDevice)initWithSizeClass:(unint64_t)class;
- (CLKDeviceDescriptor)descriptor;
- (NRDevice)nrDevice;
- (id)description;
- (int64_t)productFamilyType;
- (int64_t)productTypeFromProductTypeString:(id)string;
- (int64_t)retrieveProductType;
- (unint64_t)version;
- (void)_loadDeviceInfo;
- (void)_loadSupportsVictoryFaces;
- (void)customCompanionSetup;
- (void)dealloc;
- (void)handleDeviceDidPairNotification;
- (void)updateKeybagLockStateCacheWithState:(int)state;
- (void)updateTinkerState;
@end

@implementation CLKDevice

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v5 = [processName isEqualToString:@"Bridge"];

    if ((v5 & 1) == 0)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__deviceDidBecomeActive_ name:*MEMORY[0x277D37C08] object:0];
    }
  }
}

+ (CLKDevice)currentDevice
{
  os_unfair_lock_lock(&__deviceLock);
  v3 = __currentDevice;
  if (!__currentDevice)
  {
    if (_CLKDeviceHasNanoRegistryEntitlement_onceToken != -1)
    {
      +[CLKDevice currentDevice];
    }

    if (_CLKDeviceHasNanoRegistryEntitlement_hasEntitlement == 1)
    {
      v4 = +[CLKDevice activePDRDevice];
    }

    else
    {
      v4 = 0;
    }

    v5 = [self _createCurrentDeviceWithPDRDevice:v4];
    v6 = __currentDevice;
    __currentDevice = v5;

    v3 = __currentDevice;
  }

  v7 = v3;
  os_unfair_lock_unlock(&__deviceLock);

  return v7;
}

- (void)_loadDeviceInfo
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_23702D000, log, OS_LOG_TYPE_ERROR, "Gizmo(%@) has invalid size class! %d", &v3, 0x12u);
}

- (NRDevice)nrDevice
{
  if (self->_pdrDevice)
  {
    os_unfair_lock_lock(&self->_protectedLock);
    nrDevice = self->_nrDevice;
    if (!nrDevice)
    {
      mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
      pairingID = [(CLKDevice *)self pairingID];
      v6 = [mEMORY[0x277D2BCF8] deviceForPairingID:pairingID];
      v7 = self->_nrDevice;
      self->_nrDevice = v6;

      nrDevice = self->_nrDevice;
    }

    v8 = nrDevice;
    os_unfair_lock_unlock(&self->_protectedLock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateTinkerState
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_protectedLock);
  isTinker = self->_isTinker;
  pdrDevice = [(CLKDevice *)self pdrDevice];
  v5 = [pdrDevice valueForProperty:*MEMORY[0x277D37BB0]];
  self->_isTinker = [v5 BOOLValue];

  v6 = self->_isTinker;
  os_unfair_lock_unlock(&self->_protectedLock);
  if (isTinker != v6)
  {
    v7 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&dword_23702D000, v7, OS_LOG_TYPE_DEFAULT, "Tinker state changed: %lu", &v8, 0xCu);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_44);
  }
}

- (int64_t)retrieveProductType
{
  pdrDevice = [(CLKDevice *)self pdrDevice];
  v4 = [pdrDevice valueForProperty:*MEMORY[0x277D37BE8]];

  v5 = [(CLKDevice *)self productTypeFromProductTypeString:v4];
  return v5;
}

- (void)_loadSupportsVictoryFaces
{
  if ([(CLKDevice *)self supportsPDRCapability:3887189377]|| [(CLKDevice *)self collectionType]== 6)
  {
    v3 = 1;
  }

  else if ([(CLKDevice *)self supportsPDRCapability:890657665])
  {
    v3 = [(CLKDevice *)self collectionType]!= 5;
  }

  else
  {
    v3 = 0;
  }

  self->_supportsVictoryFaces = v3;
}

- (void)customCompanionSetup
{
  self->_version = 1;
  self->_capabilitiesLock._os_unfair_lock_opaque = 0;
  self->_cachedCapabilitiesLock._os_unfair_lock_opaque = 0;
  v3 = objc_opt_new();
  supportedCapabilitiesCache = self->_supportedCapabilitiesCache;
  self->_supportedCapabilitiesCache = v3;

  [(CLKDevice *)self _queryAndCacheNanoRegistryDeviceCapabilities];
  objc_initWeak(&location, self);
  pairedDeviceDidChangeCapabilities = [MEMORY[0x277D37B40] pairedDeviceDidChangeCapabilities];
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__CLKDevice_customCompanionSetup__block_invoke;
  v8[3] = &unk_278A1F218;
  objc_copyWeak(&v9, &location);
  notify_register_dispatch(pairedDeviceDidChangeCapabilities, &self->_pairedDeviceCapabilitiesChangeNotificationToken, v6, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_queryAndCacheNanoRegistryDeviceCapabilities
{
  v51 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_cachedCapabilitiesLock);
  supportsCompanionSync = self->_supportsCompanionSync;
  v4 = [(CLKDevice *)self supportsPDRCapability:1179807559];
  self->_supportsCompanionSync = v4;
  isExplorer = self->_isExplorer;
  if (CLKInternalBuild() && (keyExistsAndHasValidFormat = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"Explorer", @"com.apple.ClockKit", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat) && AppBooleanValue)
  {
    v7 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23702D000, v7, OS_LOG_TYPE_DEFAULT, "OVERRIDE explorer", buf, 2u);
    }

    v8 = 1;
  }

  else
  {
    v8 = [(CLKDevice *)self supportsPDRCapability:1252261691];
  }

  v9 = v8;
  self->_isExplorer = v8;
  hasRichMediaComplications = self->_hasRichMediaComplications;
  v11 = [(CLKDevice *)self supportsPDRCapability:2268473290];
  v12 = supportsCompanionSync == v4 && v9 == isExplorer;
  self->_hasRichMediaComplications = v11;
  v14 = !v12 || v11 != hasRichMediaComplications;
  supportsUrsa = self->_supportsUrsa;
  if (CLKInternalBuild() && (keyExistsAndHasValidFormat = 0, v16 = CFPreferencesGetAppBooleanValue(@"Ursa", @"com.apple.ClockKit", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat) && v16)
  {
    v17 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23702D000, v17, OS_LOG_TYPE_DEFAULT, "OVERRIDE ursa", buf, 2u);
    }
  }

  else
  {
    pdrDevice = [(CLKDevice *)self pdrDevice];

    if (pdrDevice)
    {
      v19 = [(CLKDevice *)self supportsPDRCapability:2876656872];
      goto LABEL_26;
    }
  }

  v19 = 1;
LABEL_26:
  self->_supportsUrsa = v19;
  if (v19 != supportsUrsa)
  {
    v14 = 1;
  }

  supportsPolaris = self->_supportsPolaris;
  if (CLKInternalBuild() && (keyExistsAndHasValidFormat = 0, v21 = CFPreferencesGetAppBooleanValue(@"AbsoluteAltitudeEnabled", @"com.apple.locationd", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat) && v21)
  {
    v22 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23702D000, v22, OS_LOG_TYPE_DEFAULT, "OVERRIDE polaris", buf, 2u);
    }
  }

  else
  {
    pdrDevice2 = [(CLKDevice *)self pdrDevice];

    if (pdrDevice2)
    {
      v24 = [(CLKDevice *)self supportsPDRCapability:4273717761];
      goto LABEL_37;
    }
  }

  v24 = 1;
LABEL_37:
  self->_supportsPolaris = v24;
  if (v24 != supportsPolaris)
  {
    v14 = 1;
  }

  supportsCharon = self->_supportsCharon;
  CLKInternalBuild();
  pdrDevice3 = [(CLKDevice *)self pdrDevice];

  if (pdrDevice3)
  {
    v27 = [(CLKDevice *)self supportsPDRCapability:3847477697];
  }

  else
  {
    v27 = 1;
  }

  self->_supportsCharon = v27;
  if (v27 == supportsCharon)
  {
    v28 = v14;
  }

  else
  {
    v28 = 1;
  }

  runningGraceOrLater = self->_runningGraceOrLater;
  pdrDevice4 = [(CLKDevice *)self pdrDevice];
  if (pdrDevice4)
  {
    v31 = [(CLKDevice *)self supportsPDRCapability:2289945074];
  }

  else
  {
    v31 = 1;
  }

  self->_runningGraceOrLater = v31;

  if (v28)
  {
    [(CLKDevice *)self _checkUpdateFlushCapabilitiesCache_locked];
LABEL_50:
    ++self->_version;
    v32 = 1;
    goto LABEL_54;
  }

  v33 = self->_runningGraceOrLater;
  if ([(CLKDevice *)self _checkUpdateFlushCapabilitiesCache_locked]|| v33 != runningGraceOrLater)
  {
    goto LABEL_50;
  }

  v32 = 0;
LABEL_54:
  os_unfair_lock_unlock(&self->_cachedCapabilitiesLock);
  v34 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = self->_isExplorer;
    *buf = 67109120;
    v50 = v35;
    _os_log_impl(&dword_23702D000, v34, OS_LOG_TYPE_DEFAULT, "CLKDevice isExplorer: %u", buf, 8u);
  }

  v36 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = self->_hasRichMediaComplications;
    *buf = 67109120;
    v50 = v37;
    _os_log_impl(&dword_23702D000, v36, OS_LOG_TYPE_DEFAULT, "CLKDevice hasRichMediaComplications: %u", buf, 8u);
  }

  v38 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = self->_runningGraceOrLater;
    *buf = 67109120;
    v50 = v39;
    _os_log_impl(&dword_23702D000, v38, OS_LOG_TYPE_DEFAULT, "CLKDevice runningGraceOrLater: %u", buf, 8u);
  }

  v40 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = self->_supportsUrsa;
    *buf = 67109120;
    v50 = v41;
    _os_log_impl(&dword_23702D000, v40, OS_LOG_TYPE_DEFAULT, "CLKDevice supportsUrsa: %u", buf, 8u);
  }

  v42 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = self->_supportsPolaris;
    *buf = 67109120;
    v50 = v43;
    _os_log_impl(&dword_23702D000, v42, OS_LOG_TYPE_DEFAULT, "CLKDevice supportsPolaris: %u", buf, 8u);
  }

  v44 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = self->_supportsCharon;
    *buf = 67109120;
    v50 = v45;
    _os_log_impl(&dword_23702D000, v44, OS_LOG_TYPE_DEFAULT, "CLKDevice supportsCharon: %u", buf, 8u);
  }

  v46 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v50 = v32;
    _os_log_impl(&dword_23702D000, v46, OS_LOG_TYPE_DEFAULT, "CLKDevice capabilityChanged: %u", buf, 8u);
  }

  return v32;
}

- (BOOL)_checkUpdateFlushCapabilitiesCache_locked
{
  v28 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_supportedCapabilitiesCache allKeys];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v20;
    *&v5 = 138543618;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_supportedCapabilitiesCache objectForKeyedSubscript:v10, v18];
        bOOLValue = [v11 BOOLValue];

        v13 = -[CLKDevice _supportsCapabilityUncached:](self, "_supportsCapabilityUncached:", [v10 unsignedIntValue]);
        if (bOOLValue != v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
          [(NSMutableDictionary *)self->_supportedCapabilitiesCache setObject:v15 forKeyedSubscript:v10];

          v16 = CLKLoggingObjectForDomain(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v10;
            v25 = 1024;
            v26 = v14;
            _os_log_impl(&dword_23702D000, v16, OS_LOG_TYPE_DEFAULT, "CLKDevice _checkUpdateFlushCapabilitiesCache_locked: [%{public}@] changed to [%d]", buf, 0x12u);
          }

          v7 = 1;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (unint64_t)version
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  version = self->_version;
  os_unfair_lock_unlock(&self->_capabilitiesLock);
  return version;
}

- (CLKDevice)initWithPDRDevice:(id)device
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = CLKDevice;
  v6 = [(CLKDevice *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_protectedLock._os_unfair_lock_opaque = 0;
    v8 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [CLKDevice CLKDeviceUUIDForPDRDevice:deviceCopy];
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_23702D000, v8, OS_LOG_TYPE_DEFAULT, "Creating a CLKDevice. pdrDevice: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v7->_pdrDevice, device);
    [(CLKDevice *)v7 _loadDeviceInfo];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_handleDeviceDidPairNotification name:*MEMORY[0x277D37C18] object:0];

    [(CLKDevice *)v7 customCompanionSetup];
  }

  return v7;
}

+ (id)deviceForDescriptor:(id)descriptor
{
  pairingID = [descriptor pairingID];
  v5 = [self deviceForPairingID:pairingID];

  return v5;
}

- (CLKDeviceDescriptor)descriptor
{
  v3 = [CLKDeviceDescriptor alloc];
  pairingID = [(CLKDevice *)self pairingID];
  v5 = [(CLKDeviceDescriptor *)v3 initWithPairingID:pairingID];

  return v5;
}

+ (id)_createCurrentDeviceWithPDRDevice:(id)device
{
  deviceCopy = device;
  if (!deviceCopy)
  {
    v5 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CLKDevice _createCurrentDeviceWithPDRDevice:v5];
    }
  }

  v6 = [self deviceForPDRDevice:deviceCopy forced:1];

  return v6;
}

+ (void)setCurrentDevice:(id)device
{
  v11 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v4 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [deviceCopy pairingID];
    v7 = 138543618;
    v8 = deviceCopy;
    v9 = 2114;
    v10 = pairingID;
    _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "Setting new current device. %{public}@, %{public}@", &v7, 0x16u);
  }

  os_unfair_lock_lock(&__deviceLock);
  v6 = __currentDevice;
  __currentDevice = deviceCopy;

  os_unfair_lock_unlock(&__deviceLock);
}

+ (void)resetCurrentDevice
{
  v14 = *MEMORY[0x277D85DE8];
  if (_CLKDeviceHasNanoRegistryEntitlement_onceToken != -1)
  {
    +[CLKDevice currentDevice];
  }

  v3 = _CLKDeviceHasNanoRegistryEntitlement_hasEntitlement;
  if (_CLKDeviceHasNanoRegistryEntitlement_hasEntitlement == 1)
  {
    v4 = +[CLKDevice activePDRDevice];
  }

  else
  {
    v4 = 0;
  }

  v5 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [CLKDevice CLKDeviceUUIDForPDRDevice:v4];
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v4 == 0;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "Resetting current device with pdrDevice %{public}@ - isNil:%lu hasEntitlement:%lu", &v8, 0x20u);
  }

  v7 = [self _createCurrentDeviceWithPDRDevice:v4];
  [self setCurrentDevice:v7];
}

+ (void)enumerateSizeClasses:(id)classes
{
  v14 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v12 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [&unk_284A35140 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(&unk_284A35140);
      }

      if (v12)
      {
        break;
      }

      classesCopy[2](classesCopy, [*(*(&v8 + 1) + 8 * v7++) integerValue], &v12);
      if (v5 == v7)
      {
        v5 = [&unk_284A35140 countByEnumeratingWithState:&v8 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __33__CLKDevice_customCompanionSetup__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_23702D000, v2, OS_LOG_TYPE_DEFAULT, "Got +[PDRDarwinNotifications pairedDeviceDidChangeCapabilities] refresh CLKDevice: %@", &v5, 0xCu);
    }

    if ([WeakRetained _queryAndCacheNanoRegistryDeviceCapabilities])
    {
      v3 = CLKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = WeakRetained;
        _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "+[PDRDarwinNotifications pairedDeviceDidChangeCapabilities] capabilities changed sending CLKActiveDeviceChangedNotification for CLKDevice: %@", &v5, 0xCu);
      }

      v4 = [MEMORY[0x277CCAB98] defaultCenter];
      [v4 postNotificationName:@"CLKActiveDeviceChangedNotification" object:WeakRetained];
    }
  }
}

- (void)handleDeviceDidPairNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [(CLKDevice *)self pairingID];
    *buf = 138412290;
    v7 = pairingID;
    _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "Received device paired notification: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CLKDevice_handleDeviceDidPairNotification__block_invoke;
  block[3] = &unk_278A1F1B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __44__CLKDevice_handleDeviceDidPairNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingID];

  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [*(a1 + 32) pdrDevice];
    [v3 _handlePDRDeviceChanged:v4];
  }

  else
  {
    v5 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__CLKDevice_handleDeviceDidPairNotification__block_invoke_cold_1(v5);
    }
  }

  return [*(a1 + 32) updateTinkerState];
}

+ (void)_deviceDidBecomeActive:(id)active
{
  v10 = *MEMORY[0x277D85DE8];
  userInfo = [active userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D37C28]];

  v6 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [CLKDevice CLKDeviceUUIDForPDRDevice:v5];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_23702D000, v6, OS_LOG_TYPE_DEFAULT, "new PDRDevice became active - %{public}@", &v8, 0xCu);
  }

  [self _handlePDRDeviceChanged:v5];
}

+ (void)_handlePDRDeviceChanged:(id)changed
{
  v4 = [self _createCurrentDeviceWithPDRDevice:changed];
  [self setCurrentDevice:v4];

  v5 = MEMORY[0x277D85CD0];

  dispatch_async(v5, &__block_literal_global_6);
}

void __37__CLKDevice__handlePDRDeviceChanged___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"CLKActiveDeviceChangedNotification" object:0];
}

- (void)dealloc
{
  notify_cancel(self->_pairedDeviceCapabilitiesChangeNotificationToken);
  v3.receiver = self;
  v3.super_class = CLKDevice;
  [(CLKDevice *)&v3 dealloc];
}

- (BOOL)isTinker
{
  os_unfair_lock_lock(&self->_protectedLock);
  isTinker = self->_isTinker;
  os_unfair_lock_unlock(&self->_protectedLock);
  return isTinker;
}

void __30__CLKDevice_updateTinkerState__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"CLKActiveDeviceChangedTinkerState" object:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pdrDevice = [equalCopy pdrDevice];
    if (pdrDevice)
    {
    }

    else
    {
      pdrDevice2 = [(CLKDevice *)self pdrDevice];

      if (!pdrDevice2)
      {
        v6 = 1;
        goto LABEL_7;
      }
    }

    pdrDevice3 = [equalCopy pdrDevice];
    pdrDevice4 = [(CLKDevice *)self pdrDevice];
    v6 = [pdrDevice3 isEqual:pdrDevice4];
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (int64_t)productTypeFromProductTypeString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    if (productTypeFromProductTypeString__onceToken != -1)
    {
      [CLKDevice productTypeFromProductTypeString:];
    }

    v4 = [productTypeFromProductTypeString__mapping objectForKeyedSubscript:stringCopy];
    v5 = v4;
    if (v4)
    {
      integerValue = [v4 integerValue];
    }

    else
    {
      integerValue = -1;
    }
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

void __46__CLKDevice_productTypeFromProductTypeString___block_invoke()
{
  v0 = productTypeFromProductTypeString__mapping;
  productTypeFromProductTypeString__mapping = &unk_284A350F0;
}

- (int64_t)productFamilyType
{
  productType = self->_productType;
  if (productType > 0x3B)
  {
    return -1;
  }

  else
  {
    return qword_2370A47F0[productType];
  }
}

- (BOOL)isRunningGraceOrLater
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  runningGraceOrLater = self->_runningGraceOrLater;
  os_unfair_lock_unlock(&self->_capabilitiesLock);
  return runningGraceOrLater;
}

- (BOOL)isExplorer
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  isExplorer = self->_isExplorer;
  os_unfair_lock_unlock(&self->_capabilitiesLock);
  return isExplorer;
}

- (BOOL)hasRichMediaComplications
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  hasRichMediaComplications = self->_hasRichMediaComplications;
  os_unfair_lock_unlock(&self->_capabilitiesLock);
  return hasRichMediaComplications;
}

- (BOOL)supportsUrsa
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  supportsUrsa = self->_supportsUrsa;
  os_unfair_lock_unlock(&self->_capabilitiesLock);
  return supportsUrsa;
}

- (BOOL)supportsPolaris
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  supportsPolaris = self->_supportsPolaris;
  os_unfair_lock_unlock(&self->_capabilitiesLock);
  return supportsPolaris;
}

- (BOOL)supportsCharon
{
  os_unfair_lock_lock(&self->_capabilitiesLock);
  supportsCharon = self->_supportsCharon;
  os_unfair_lock_unlock(&self->_capabilitiesLock);
  return supportsCharon;
}

+ (unsigned)_uint32FromHexString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v6 = 0;
  v3 = [MEMORY[0x277CCAC80] scannerWithString:?];
  [v3 scanHexInt:&v6];
  if ([v3 isAtEnd])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unsigned)_pdrCapabilityFromNRDeviceCapability:(id)capability
{
  v19 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  if (capabilityCopy)
  {
    if (_pdrCapabilityFromNRDeviceCapability__onceToken != -1)
    {
      +[CLKDevice _pdrCapabilityFromNRDeviceCapability:];
    }

    os_unfair_lock_lock(&_pdrCapabilityFromNRDeviceCapability____lock);
    v5 = [_pdrCapabilityFromNRDeviceCapability____lookup objectForKey:capabilityCopy];
    v6 = v5;
    if (v5)
    {
      LODWORD(v7) = [v5 unsignedIntValue];
    }

    else
    {
      uUIDString = [capabilityCopy UUIDString];
      v9 = [uUIDString componentsSeparatedByString:@"-"];
      firstObject = [v9 firstObject];

      v7 = [self _uint32FromHexString:firstObject];
      v11 = _pdrCapabilityFromNRDeviceCapability____lookup;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
      [v11 setObject:v12 forKey:capabilityCopy];
    }

    os_unfair_lock_unlock(&_pdrCapabilityFromNRDeviceCapability____lock);
    v13 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = capabilityCopy;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_23702D000, v13, OS_LOG_TYPE_DEFAULT, "NR Capability: %@ - %08x", &v15, 0x12u);
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  return v7;
}

uint64_t __50__CLKDevice__pdrCapabilityFromNRDeviceCapability___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = _pdrCapabilityFromNRDeviceCapability____lookup;
  _pdrCapabilityFromNRDeviceCapability____lookup = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)supportsPDRCapability:(unsigned int)capability
{
  v3 = *&capability;
  os_unfair_lock_lock(&self->_capabilitiesLock);
  supportedCapabilitiesCache = self->_supportedCapabilitiesCache;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v7 = [(NSMutableDictionary *)supportedCapabilitiesCache objectForKey:v6];

  os_unfair_lock_unlock(&self->_capabilitiesLock);
  if (v7)
  {
    LOBYTE(v8) = [v7 BOOLValue];
  }

  else
  {
    v8 = [(CLKDevice *)self _supportsCapabilityUncached:v3];
    os_unfair_lock_lock(&self->_capabilitiesLock);
    v9 = self->_supportedCapabilitiesCache;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v11];

    os_unfair_lock_unlock(&self->_capabilitiesLock);
  }

  return v8;
}

- (BOOL)supportsCapability:(id)capability
{
  v4 = [CLKDevice _pdrCapabilityFromNRDeviceCapability:capability];

  return [(CLKDevice *)self supportsPDRCapability:v4];
}

- (BOOL)_supportsCapabilityUncached:(unsigned int)uncached
{
  pdrDevice = self->_pdrDevice;
  if (pdrDevice)
  {
    return [(PDRDevice *)pdrDevice supportsCapability:*&uncached];
  }

  else
  {
    return 1;
  }
}

+ (id)activePDRDevice
{
  if (_CLKDeviceHasNanoRegistryEntitlement_onceToken != -1)
  {
    +[CLKDevice currentDevice];
  }

  if (_CLKDeviceHasNanoRegistryEntitlement_hasEntitlement == 1)
  {
    mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
    getActivePairedDeviceIncludingAltAccount = [mEMORY[0x277D37B50] getActivePairedDeviceIncludingAltAccount];
  }

  else
  {
    v4 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[(CLKDevice *)v4];
    }

    getActivePairedDeviceIncludingAltAccount = 0;
  }

  return getActivePairedDeviceIncludingAltAccount;
}

+ (id)pdrDeviceForPairingID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
    v4 = [mEMORY[0x277D37B50] deviceForPairingID:dCopy];
  }

  return v4;
}

+ (id)deviceForPDRDevice:(id)device forced:(BOOL)forced
{
  forcedCopy = forced;
  pairingID = [device pairingID];
  v7 = [self deviceForPairingID:pairingID forced:forcedCopy];

  return v7;
}

+ (id)deviceForPairingID:(id)d forced:(BOOL)forced
{
  dCopy = d;
  v9 = dCopy;
  if (forced)
  {
    if (dCopy)
    {
      [self _removeCachedDeviceForUUID:dCopy];
LABEL_12:
      selfCopy2 = self;
      v17 = v9;
LABEL_15:
      currentDevice4 = [selfCopy2 _cachedDeviceForUUID:v17];
      goto LABEL_16;
    }

LABEL_14:
    selfCopy2 = self;
    v17 = 0;
    goto LABEL_15;
  }

  currentDevice = [self currentDevice];
  if (!currentDevice)
  {
    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v11 = currentDevice;
  if (!v9)
  {
    currentDevice2 = [self currentDevice];
    pairingID = [currentDevice2 pairingID];
    if (!pairingID)
    {

      goto LABEL_20;
    }

    v5 = pairingID;
  }

  currentDevice3 = [self currentDevice];
  pairingID2 = [currentDevice3 pairingID];
  v15 = [v9 isEqual:pairingID2];

  if (v9)
  {

    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else
  {

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  currentDevice4 = [self currentDevice];
LABEL_16:
  v19 = currentDevice4;

  return v19;
}

- (BOOL)isLocked
{
  if (_RegisterForLockedStatusChangeIfNecessary_onceToken != -1)
  {
    [CLKDevice isLocked];
  }

  v3 = MKBGetDeviceLockState();
  [(CLKDevice *)self updateKeybagLockStateCacheWithState:v3];
  if (v3)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (BOOL)unlockedSinceBoot
{
  if (_RegisterForLockedStatusChangeIfNecessary_onceToken != -1)
  {
    [CLKDevice isLocked];
  }

  v3 = MKBGetDeviceLockState();
  [(CLKDevice *)self updateKeybagLockStateCacheWithState:v3];
  return v3 == 3 || MKBDeviceUnlockedSinceBoot() == 1;
}

- (void)updateKeybagLockStateCacheWithState:(int)state
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__CLKDevice_updateKeybagLockStateCacheWithState___block_invoke;
  v3[3] = &unk_278A1F240;
  stateCopy = state;
  v3[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __49__CLKDevice_updateKeybagLockStateCacheWithState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) cachedKeybagLockState])
  {
    [*(a1 + 32) setCachedKeybagLockState:*(a1 + 40)];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"CLKDeviceLockStateChangedNotification" object:0];
  }
}

+ (id)_cachedDeviceForUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&lock);
  if (cachedDevices)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = objc_opt_new();
    v9 = cachedDevices;
    cachedDevices = v8;

    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  dCopy = [MEMORY[0x277CBEB68] null];
LABEL_3:
  v5 = [cachedDevices objectForKeyedSubscript:dCopy];
  if (!v5)
  {
    v6 = [self pdrDeviceForPairingID:dCopy];
    v5 = [[CLKDevice alloc] initWithPDRDevice:v6];
    [cachedDevices setObject:v5 forKeyedSubscript:dCopy];
  }

  os_unfair_lock_unlock(&lock);

  return v5;
}

+ (void)_removeCachedDeviceForUUID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    os_unfair_lock_lock(&lock);
    if (cachedDevices)
    {
      [cachedDevices removeObjectForKey:dCopy];
      v4 = CLKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [dCopy UUIDString];
        v6 = 138412290;
        v7 = uUIDString;
        _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "Purged CLKDevice with UUID %@", &v6, 0xCu);
      }
    }

    os_unfair_lock_unlock(&lock);
  }
}

+ (id)deviceForNRDevice:(id)device forced:(BOOL)forced
{
  forcedCopy = forced;
  v6 = [device valueForProperty:*MEMORY[0x277D2BBB8]];
  v7 = [self deviceForPairingID:v6 forced:forcedCopy];

  return v7;
}

- (id)description
{
  os_unfair_lock_lock(&description___description_lock);
  __24__CLKDevice_description__block_invoke(v3, self);
  v4 = description___cachedDescription;
  os_unfair_lock_unlock(&description___description_lock);

  return v4;
}

uint64_t __24__CLKDevice_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&cachedDevices_block_invoke_lock);
  if (cachedDevices_block_invoke___cachedDevice)
  {
    v3 = cachedDevices_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == cachedDevices_block_invoke___previousCLKDeviceVersion))
  {
    v5 = cachedDevices_block_invoke_value;
  }

  else
  {
    cachedDevices_block_invoke___cachedDevice = v2;
    cachedDevices_block_invoke___previousCLKDeviceVersion = [v2 version];
    __24__CLKDevice_description__block_invoke_3(cachedDevices_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    cachedDevices_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&cachedDevices_block_invoke_lock);

  return v5;
}

void __24__CLKDevice_description__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = objc_opt_class();
  v8 = NSStringFromClass(v4);
  v5 = [v3 pairingID];
  v6 = [v2 stringWithFormat:@"<%@:%p %@>", v8, v3, v5];

  v7 = description___cachedDescription;
  description___cachedDescription = v6;
}

+ (CGRect)screenBoundsForSizeClass:(unint64_t)class
{
  if (class > 4)
  {
    if (class <= 6)
    {
      v3 = *MEMORY[0x277CBF348];
      if (class == 5)
      {
        v4 = 242.0;
        v6 = 198.0;
      }

      else
      {
        v4 = 251.0;
        v6 = 205.0;
      }

      goto LABEL_23;
    }

    if (class == 7)
    {
      v3 = *MEMORY[0x277CBF348];
      v4 = 223.0;
      v6 = 187.0;
      goto LABEL_23;
    }

    if (class != 8)
    {
      if (class == 9)
      {
        v3 = *MEMORY[0x277CBF348];
        v4 = 257.0;
        v6 = 211.0;
      }

      goto LABEL_23;
    }

    v3 = *MEMORY[0x277CBF348];
    v4 = 248.0;
    v5 = 0x406A000000000000;
LABEL_22:
    v6 = *&v5;
    goto LABEL_23;
  }

  if (class <= 1)
  {
    if (class)
    {
      if (class == 1)
      {
        v3 = *MEMORY[0x277CBF348];
        v4 = 195.0;
        v6 = 156.0;
      }

      goto LABEL_23;
    }

    v3 = *MEMORY[0x277CBF348];
    v4 = 170.0;
    v5 = 0x4061000000000000;
    goto LABEL_22;
  }

  if (class != 2)
  {
    v3 = *MEMORY[0x277CBF348];
    if (class == 3)
    {
      v4 = 224.0;
      v5 = 0x4067000000000000;
    }

    else
    {
      v4 = 215.0;
      v5 = 0x4066000000000000;
    }

    goto LABEL_22;
  }

  v3 = *MEMORY[0x277CBF348];
  v4 = 197.0;
  v6 = 162.0;
LABEL_23:
  v7 = *(&v3 + 1);
  result.origin.x = *&v3;
  result.size.height = v4;
  result.size.width = v6;
  result.origin.y = v7;
  return result;
}

+ (double)screenCornerRadiusForSizeClass:(unint64_t)class
{
  result = 28.0;
  if (class <= 9)
  {
    return dbl_2370A49D0[class];
  }

  return result;
}

- (CGRect)screenBounds
{
  x = self->_screenBounds.origin.x;
  y = self->_screenBounds.origin.y;
  width = self->_screenBounds.size.width;
  height = self->_screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CLKDevice)initWithSizeClass:(unint64_t)class
{
  result = [(CLKDevice *)self initWithPDRDevice:0];
  if (result)
  {
    result->_sizeClass = class;
  }

  return result;
}

+ (void)_createCurrentDeviceWithPDRDevice:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_23702D000, log, OS_LOG_TYPE_ERROR, "Creating a CLKDevice without an PDRDevice: %@", &v1, 0xCu);
}

+ (void)activePDRDevice
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[CLKDevice activePDRDevice]";
  _os_log_fault_impl(&dword_23702D000, log, OS_LOG_TYPE_FAULT, "Calls to %s require NanoRegistry entitlement!", &v1, 0xCu);
}

@end