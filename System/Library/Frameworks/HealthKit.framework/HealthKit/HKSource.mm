@interface HKSource
+ (HKSource)defaultSource;
+ (id)_blePeripheralSource;
+ (id)_connectedGymSource;
+ (id)_currentSourceProductType:(BOOL)type;
+ (id)_generateIdentifierForAppleDevice;
+ (id)_generateIdentifierForAppleDeviceWithUUID:(id)d;
+ (id)_hrCoordinatorSource;
+ (id)_localDeviceSource;
+ (id)_privateSourceForClinicalAccountIdentifier:(id)identifier name:(id)name;
+ (id)_publicSourceForClinicalExternalIdentifier:(id)identifier name:(id)name;
+ (id)_researchStudiesDirectoryURL;
+ (id)_sourceBundleIdentifierWithEntitlements:(id)entitlements processBundleIdentifier:(id)identifier isExtension:(BOOL)extension;
+ (id)_sourceWithBundleIdentifier:(id)identifier defaultBundleIdentifier:(id)bundleIdentifier appEntitlements:(id)entitlements name:(id)name;
+ (id)_sourceWithBundleIdentifier:(id)identifier name:(id)name productType:(id)type options:(unint64_t)options;
+ (id)_uncachedDefaultSource;
+ (id)_uncachedDefaultSourceWithEntitlements:(id)entitlements;
+ (unint64_t)_sourceOptionsForAppEntitlements:(id)entitlements;
+ (void)_uncachedDefaultSource;
- (BOOL)_isAppleDevice;
- (BOOL)_isAppleWatch;
- (BOOL)_isBTLEServer;
- (BOOL)_isFitnessApp;
- (BOOL)_isHeartRateCoordinator;
- (BOOL)_isHidden;
- (BOOL)_isSiri;
- (BOOL)isEqual:(id)equal;
- (HKSource)init;
- (HKSource)initWithCoder:(id)coder;
- (id)_deducedClinicalAccountIdentifier;
- (id)_fetchBundleWithError:(id *)error;
- (id)_init;
- (id)asJSONObject;
- (void)_setBundleIdentifier:(id)identifier;
- (void)_setModificationDate:(id)date;
- (void)_setName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSource

+ (id)_localDeviceSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__HKSource__localDeviceSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_localDeviceSource_onceToken != -1)
  {
    dispatch_once(&_localDeviceSource_onceToken, block);
  }

  v2 = _localDeviceSource__localDeviceSource;

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKSource;
  return [(HKSource *)&v3 init];
}

uint64_t __30__HKSource__localDeviceSource__block_invoke(uint64_t a1)
{
  v2 = [[HKSource alloc] _init];
  v3 = _localDeviceSource__localDeviceSource;
  _localDeviceSource__localDeviceSource = v2;

  [_localDeviceSource__localDeviceSource _setBundleIdentifier:@"com.apple.private.health.localdevice"];
  v4 = _localDeviceSource__localDeviceSource;
  v5 = [*(a1 + 32) _currentSourceProductType:1];
  [v4 _setProductType:v5];

  v6 = _localDeviceSource__localDeviceSource;
  v7 = [*(a1 + 32) _sourceNameWithRepresentsCurrentDevice:1 defaultSource:0];
  [v6 _setName:v7];

  [_localDeviceSource__localDeviceSource _setLocalDevice:1];
  v8 = _localDeviceSource__localDeviceSource;

  return [v8 _setOptions:2];
}

- (BOOL)_isAppleWatch
{
  _productType = [(HKSource *)self _productType];
  if (+[_HKBehavior isAppleInternalInstall](_HKBehavior, "isAppleInternalInstall") && (([_productType isEqualToString:{@"iPod6, 3"}] & 1) != 0 || (objc_msgSend(_productType, "isEqualToString:", @"iPod6,4") & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    v3 = [_productType hasPrefix:@"Watch"];
  }

  return v3;
}

+ (HKSource)defaultSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__HKSource_defaultSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultSource_onceToken != -1)
  {
    dispatch_once(&defaultSource_onceToken, block);
  }

  v2 = defaultSource_defaultSource;

  return v2;
}

uint64_t __25__HKSource_defaultSource__block_invoke(uint64_t a1)
{
  defaultSource_defaultSource = [*(a1 + 32) _uncachedDefaultSource];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_uncachedDefaultSource
{
  v8 = 0;
  v3 = [_HKEntitlements entitlementsForCurrentTaskWithError:&v8];
  v4 = v8;
  if (!v3)
  {
    _HKInitializeLogging();
    v5 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[(HKSource *)v4];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Unable to create default source, failed to retrieve entitlements: %@", v4}];
  }

  v6 = [self _uncachedDefaultSourceWithEntitlements:v3];

  return v6;
}

+ (id)_uncachedDefaultSourceWithEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [self _sourceBundleIdentifierWithEntitlements:entitlementsCopy processBundleIdentifier:bundleIdentifier isExtension:_HKCurrentTaskIsAppExtension()];

  if (!v7)
  {
    _HKInitializeLogging();
    v8 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [HKSource _uncachedDefaultSourceWithEntitlements:v8];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Unable to create default source. The bundle identifier of the client is nil"];
  }

  v9 = [self _representsCurrentDeviceWithBundleIdentifier:v7];
  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = [self _sourceOptionsForAppEntitlements:entitlementsCopy];
  }

  v11 = [self _currentSourceProductType:v9];
  v12 = [self _sourceNameWithRepresentsCurrentDevice:v9 defaultSource:1];
  _init = [[HKSource alloc] _init];
  [_init _setBundleIdentifier:v7];
  [_init _setProductType:v11];
  [_init _setName:v12];
  [_init _setLocalDevice:v9];
  [_init _setOptions:v10];

  return _init;
}

+ (id)_connectedGymSource
{
  if (_connectedGymSource_onceToken != -1)
  {
    +[HKSource _connectedGymSource];
  }

  v3 = _connectedGymSource__connectedGymSource;

  return v3;
}

uint64_t __31__HKSource__connectedGymSource__block_invoke()
{
  v0 = [[HKSource alloc] _init];
  v1 = _connectedGymSource__connectedGymSource;
  _connectedGymSource__connectedGymSource = v0;

  [_connectedGymSource__connectedGymSource _setBundleIdentifier:@"com.apple.health.GymKit"];
  v2 = _connectedGymSource__connectedGymSource;
  v3 = HKConnectedGymSourceName();
  [v2 _setName:v3];

  v4 = _connectedGymSource__connectedGymSource;

  return [v4 _setOptions:274];
}

+ (id)_blePeripheralSource
{
  if (_blePeripheralSource_onceToken != -1)
  {
    +[HKSource _blePeripheralSource];
  }

  v3 = _blePeripheralSource__blePeripheralSource;

  return v3;
}

uint64_t __32__HKSource__blePeripheralSource__block_invoke()
{
  v0 = [[HKSource alloc] _init];
  v1 = _blePeripheralSource__blePeripheralSource;
  _blePeripheralSource__blePeripheralSource = v0;

  [_blePeripheralSource__blePeripheralSource _setBundleIdentifier:@"com.apple.BTLEServer"];
  v2 = _blePeripheralSource__blePeripheralSource;
  v3 = HKBLEPeripheralSourceName();
  [v2 _setName:v3];

  v4 = _blePeripheralSource__blePeripheralSource;

  return [v4 _setOptions:386];
}

+ (id)_hrCoordinatorSource
{
  if (_hrCoordinatorSource_onceToken != -1)
  {
    +[HKSource _hrCoordinatorSource];
  }

  v3 = _hrCoordinatorSource__hrCoordinatorSource;

  return v3;
}

uint64_t __32__HKSource__hrCoordinatorSource__block_invoke()
{
  v0 = [[HKSource alloc] _init];
  v1 = _hrCoordinatorSource__hrCoordinatorSource;
  _hrCoordinatorSource__hrCoordinatorSource = v0;

  [_hrCoordinatorSource__hrCoordinatorSource _setBundleIdentifier:@"com.apple.heartratecoordinatord"];
  v2 = _hrCoordinatorSource__hrCoordinatorSource;
  v3 = HKHRCoordinatorSourceName();
  [v2 _setName:v3];

  v4 = _hrCoordinatorSource__hrCoordinatorSource;

  return [v4 _setOptions:386];
}

+ (id)_sourceBundleIdentifierWithEntitlements:(id)entitlements processBundleIdentifier:(id)identifier isExtension:(BOOL)extension
{
  entitlementsCopy = entitlements;
  if ([entitlementsCopy hasEntitlement:@"com.apple.private.healthkit.health-app-source"])
  {
    v6 = &kHKHealthAppBundleIdentifier;
LABEL_5:
    applicationIdentifier = *v6;
    goto LABEL_6;
  }

  if ([entitlementsCopy hasEntitlement:@"com.apple.private.healthkit.local-device-source"])
  {
    v6 = &kHKLocalDeviceBundleIdentifier;
    goto LABEL_5;
  }

  applicationIdentifier = [entitlementsCopy stringForEntitlement:@"com.apple.private.healthkit.source.default"];
  if (!applicationIdentifier)
  {
    applicationIdentifier = [entitlementsCopy stringForEntitlement:@"com.apple.private.healthkit.source_override"];
    if (!applicationIdentifier)
    {
      applicationIdentifier = [entitlementsCopy applicationIdentifier];
    }
  }

LABEL_6:
  v8 = applicationIdentifier;

  return v8;
}

+ (id)_currentSourceProductType:(BOOL)type
{
  if (type)
  {
    v4 = +[_HKBehavior currentDeviceProductType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_generateIdentifierForAppleDevice
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self _generateIdentifierForAppleDeviceWithUUID:uUID];

  return v4;
}

+ (id)_generateIdentifierForAppleDeviceWithUUID:(id)d
{
  v3 = MEMORY[0x1E696AEC0];
  uUIDString = [d UUIDString];
  v5 = [v3 stringWithFormat:@"%@%@", @"com.apple.health.", uUIDString];

  return v5;
}

+ (id)_researchStudiesDirectoryURL
{
  v2 = HKSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Research/Studies/"];

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (id)_sourceWithBundleIdentifier:(id)identifier name:(id)name productType:(id)type options:(unint64_t)options
{
  if (identifier)
  {
    optionsCopy = options;
    typeCopy = type;
    nameCopy = name;
    identifierCopy = identifier;
    _init = [[self alloc] _init];
    v14 = [identifierCopy copy];

    v15 = _init[2];
    _init[2] = v14;

    v16 = [nameCopy copy];
    v17 = _init[1];
    _init[1] = v16;

    v18 = [typeCopy copy];
    v19 = _init[7];
    _init[7] = v18;

    _init[8] = optionsCopy & 0x1FF;
  }

  else
  {
    _init = 0;
  }

  return _init;
}

+ (id)_privateSourceForClinicalAccountIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (!identifierCopy)
  {
    [HKSource _privateSourceForClinicalAccountIdentifier:a2 name:self];
  }

  v9 = MEMORY[0x1E696AEC0];
  uUIDString = [identifierCopy UUIDString];
  v11 = [v9 stringWithFormat:@"%@.%@", @"com.apple.private.health.clinical", uUIDString];

  _init = [[self alloc] _init];
  v13 = *(_init + 16);
  *(_init + 16) = v11;
  v14 = v11;

  if (nameCopy)
  {
    v15 = nameCopy;
  }

  else
  {
    v15 = @"com.apple.private.health.clinical";
  }

  objc_storeStrong((_init + 8), v15);
  v16 = *(_init + 56);
  *(_init + 56) = 0;

  *(_init + 64) = 8;

  return _init;
}

+ (id)_publicSourceForClinicalExternalIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (!identifierCopy)
  {
    [HKSource _publicSourceForClinicalExternalIdentifier:a2 name:self];
  }

  hk_MD5HashAsUUID = [identifierCopy hk_MD5HashAsUUID];
  v10 = MEMORY[0x1E696AEC0];
  uUIDString = [hk_MD5HashAsUUID UUIDString];
  v12 = [v10 stringWithFormat:@"%@.%@", @"com.apple.public.health.clinical", uUIDString];

  _init = [[self alloc] _init];
  v14 = *(_init + 16);
  *(_init + 16) = v12;
  v15 = v12;

  if (nameCopy)
  {
    v16 = nameCopy;
  }

  else
  {
    v16 = @"com.apple.public.health.clinical";
  }

  objc_storeStrong((_init + 8), v16);
  v17 = *(_init + 56);
  *(_init + 56) = 0;

  *(_init + 64) = 8;

  return _init;
}

+ (id)_sourceWithBundleIdentifier:(id)identifier defaultBundleIdentifier:(id)bundleIdentifier appEntitlements:(id)entitlements name:(id)name
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  entitlementsCopy = entitlements;
  nameCopy = name;
  if ([identifierCopy isEqualToString:@"com.apple.Health"])
  {
    v14 = HKHealthKitFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"HEALTH_APP" value:&stru_1F05FF230 table:@"Localizable"];
    v16 = [HKSource _sourceWithBundleIdentifier:@"com.apple.Health" name:v15 productType:0 options:3];

    goto LABEL_10;
  }

  if ([self _representsCurrentDeviceWithBundleIdentifier:identifierCopy])
  {
    v17 = +[_HKBehavior sharedBehavior];
    currentDeviceDisplayName = [v17 currentDeviceDisplayName];
    currentDeviceProductType = [v17 currentDeviceProductType];
    v16 = [HKSource _sourceWithBundleIdentifier:@"com.apple.private.health.localdevice" name:currentDeviceDisplayName productType:currentDeviceProductType options:2];

    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"com.apple.BTLEServer"])
  {
    v20 = +[HKSource _blePeripheralSource];
LABEL_9:
    v16 = v20;
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"com.apple.heartratecoordinatord"])
  {
    v20 = +[HKSource _hrCoordinatorSource];
    goto LABEL_9;
  }

  v16 = +[HKSource _sourceWithBundleIdentifier:name:productType:options:](HKSource, "_sourceWithBundleIdentifier:name:productType:options:", identifierCopy, nameCopy, 0, [self _sourceOptionsForAppEntitlements:entitlementsCopy]);
  if ([entitlementsCopy hasEntitlement:@"com.apple.private.healthkit.source.research-study"])
  {
    v22 = [bundleIdentifierCopy copy];
    v23 = v16[5];
    v16[5] = v22;
  }

LABEL_10:

  return v16;
}

+ (unint64_t)_sourceOptionsForAppEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v4 = [entitlementsCopy hasEntitlement:@"com.apple.private.healthkit.preferred_source"];
  v5 = [entitlementsCopy hasEntitlement:@"com.apple.private.healthkit.authorization_bypass"];
  hasBackgroundDeliveryAPIAccess = [entitlementsCopy hasBackgroundDeliveryAPIAccess];
  if ([entitlementsCopy hasEntitlement:@"com.apple.private.healthkit.source.research-study"])
  {
    v7 = 32;
  }

  else
  {
    v7 = [entitlementsCopy arrayEntitlement:@"com.apple.private.healthkit.source.identities" containsString:@"com.apple.health.[any-device-uuid]"] ^ 1;
  }

  v8 = 2;
  if (!v4)
  {
    v8 = 0;
  }

  if (!v5)
  {
    v8 |= 4uLL;
  }

  if (hasBackgroundDeliveryAPIAccess)
  {
    v9 = v8 | 0x40;
  }

  else
  {
    v9 = v8;
  }

  return v9 | v7;
}

- (BOOL)_isHidden
{
  if (![(HKSource *)self _isApplication])
  {
    return 0;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (!bundleIdentifier)
  {
    return 0;
  }

  hk_MD5Hash = [(NSString *)bundleIdentifier hk_MD5Hash];
  v5 = hk_MD5Hash;
  if (hk_MD5Hash)
  {
    v6 = [hk_MD5Hash isEqualToString:@"9a954967ccb5d9e033a8732bf9396b91"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSiri
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier == @"com.apple.siri")
  {
    return 1;
  }

  if (@"com.apple.siri")
  {
    return [(__CFString *)bundleIdentifier isEqualToString:?];
  }

  return 0;
}

- (BOOL)_isBTLEServer
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier == @"com.apple.BTLEServer")
  {
    return 1;
  }

  if (@"com.apple.BTLEServer")
  {
    return [(__CFString *)bundleIdentifier isEqualToString:?];
  }

  return 0;
}

- (BOOL)_isFitnessApp
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier == @"com.apple.Fitness")
  {
    return 1;
  }

  if (@"com.apple.Fitness")
  {
    return [(__CFString *)bundleIdentifier isEqualToString:?];
  }

  return 0;
}

- (BOOL)_isHeartRateCoordinator
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier == @"com.apple.heartratecoordinatord")
  {
    return 1;
  }

  if (@"com.apple.heartratecoordinatord")
  {
    return [(__CFString *)bundleIdentifier isEqualToString:?];
  }

  return 0;
}

- (id)_deducedClinicalAccountIdentifier
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.", @"com.apple.private.health.clinical"];
  if ([(NSString *)self->_bundleIdentifier hasPrefix:v3])
  {
    v4 = -[NSString substringFromIndex:](self->_bundleIdentifier, "substringFromIndex:", [v3 length]);
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchBundleWithError:(id *)error
{
  bundleIdentifier = [(HKSource *)self bundleIdentifier];
  _owningAppBundleIdentifier = [(HKSource *)self _owningAppBundleIdentifier];
  v7 = _owningAppBundleIdentifier;
  if (_owningAppBundleIdentifier)
  {
    v8 = _owningAppBundleIdentifier;
  }

  else
  {
    v8 = bundleIdentifier;
  }

  v9 = v8;

  v10 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v9];
  bundleURL = [v10 bundleURL];

  if (bundleURL || ([MEMORY[0x1E69635E0] applicationProxyForCompanionIdentifier:v9], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "bundleURL"), bundleURL = objc_claimAutoreleasedReturnValue(), v12, bundleURL))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:bundleURL];
    if (v13)
    {
      if ([bundleIdentifier isEqualToString:v9])
      {
        v14 = v13;
      }

      else
      {
        _researchStudiesDirectoryURL = [objc_opt_class() _researchStudiesDirectoryURL];
        v16 = [MEMORY[0x1E696AAE8] hk_findContainedBundleWithIdentifier:bundleIdentifier directoryURL:_researchStudiesDirectoryURL];
        if (v16 || ([v13 hk_findContainedBundleWithIdentifier:bundleIdentifier], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v14 = v16;
        }

        else
        {
          v18 = MEMORY[0x1E696ABC0];
          path = [_researchStudiesDirectoryURL path];
          [v18 hk_assignError:error code:100 format:{@"Failed to find bundle with identifier %@ in directory %@ or in application bundle %@", bundleIdentifier, path, v13}];

          v14 = 0;
        }
      }
    }

    else
    {
      [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"Unable to instantiate app bundle at URL %@ for source %@", bundleURL, self}];
      v14 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"Application proxy missing bundle URL for source %@ with identifier %@", self, v9}];
    v14 = 0;
  }

  return v14;
}

- (HKSource)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v7 = 1;
    }

    else
    {
      bundleIdentifier = [(HKSource *)equalCopy bundleIdentifier];
      bundleIdentifier2 = [(HKSource *)self bundleIdentifier];
      v7 = [bundleIdentifier isEqualToString:bundleIdentifier2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HKSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKSource;
  v5 = [(HKSource *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_localDevice = [coderCopy decodeBoolForKey:@"localDevice"];
    v5->_options = [coderCopy decodeInt64ForKey:@"sourceOptions"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owningApp"];
    owningAppBundleIdentifier = v5->_owningAppBundleIdentifier;
    v5->_owningAppBundleIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeBool:self->_localDevice forKey:@"localDevice"];
  [coderCopy encodeInt64:self->_options forKey:@"sourceOptions"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
  [coderCopy encodeObject:self->_owningAppBundleIdentifier forKey:@"owningApp"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"modificationDate"];
}

- (void)_setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_isAppleDevice
{
  if ([(NSString *)self->_bundleIdentifier hasPrefix:@"com.apple.health."])
  {
    return 1;
  }

  bundleIdentifier = self->_bundleIdentifier;

  return [(NSString *)bundleIdentifier isEqualToString:@"com.apple.private.health.localdevice"];
}

- (void)_setModificationDate:(id)date
{
  v4 = [date copy];
  modificationDate = self->_modificationDate;
  self->_modificationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)asJSONObject
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  name = [(HKSource *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  bundleIdentifier = [(HKSource *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  return v3;
}

+ (void)_uncachedDefaultSource
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "unable to create default source, cannot retrieve entitlements for the current task: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_privateSourceForClinicalAccountIdentifier:(uint64_t)a1 name:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSource.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

+ (void)_publicSourceForClinicalExternalIdentifier:(uint64_t)a1 name:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSource.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end