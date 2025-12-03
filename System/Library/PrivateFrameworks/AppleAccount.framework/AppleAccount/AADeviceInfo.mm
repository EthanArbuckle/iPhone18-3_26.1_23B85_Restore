@interface AADeviceInfo
+ (AADeviceInfo)currentInfo;
+ (BOOL)isInternalBuild;
+ (BOOL)isMultiUserMode;
+ (BOOL)locationServicesRestricted;
+ (id)apnsToken;
+ (id)appleIDClientIdentifier;
+ (id)clientInfoHeader;
+ (id)infoDictionary;
+ (id)osVersion;
+ (id)productVersion;
+ (id)serialNumber;
+ (id)udid;
+ (id)userAgentHeader;
- (BOOL)hasCellularCapability;
- (id)apnsToken;
- (id)appleIDClientIdentifier;
- (id)bluetoothMacAddress;
- (id)buildVersion;
- (id)chipIdentifier;
- (id)clientInfoHeader;
- (id)deviceBackingColor;
- (id)deviceClass;
- (id)deviceColor;
- (id)deviceCoverGlassColor;
- (id)deviceEnclosureColor;
- (id)deviceHousingColor;
- (id)deviceInfoDictionary;
- (id)deviceName;
- (id)internationalMobileEquipmentIdentity;
- (id)mobileEquipmentIdentifier;
- (id)modelNumber;
- (id)osName;
- (id)osVersion;
- (id)productType;
- (id)productVersion;
- (id)qualifiedBuildVersion;
- (id)regionCode;
- (id)serialNumber;
- (id)storageCapacity;
- (id)udid;
- (id)uniqueChipIdentifier;
- (id)userAgentHeader;
- (id)wifiMacAddress;
@end

@implementation AADeviceInfo

+ (AADeviceInfo)currentInfo
{
  if (currentInfo_onceToken != -1)
  {
    +[AADeviceInfo currentInfo];
  }

  v3 = currentInfo_currentInfo;

  return v3;
}

uint64_t __27__AADeviceInfo_currentInfo__block_invoke()
{
  currentInfo_currentInfo = objc_alloc_init(AADeviceInfo);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)locationServicesRestricted
{
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v3 = [v2 containsObject:@"location"];

  return v3;
}

- (id)deviceInfoDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  udid = [(AADeviceInfo *)self udid];
  if (udid)
  {
    [dictionary setObject:udid forKey:@"udid"];
  }

  serialNumber = [(AADeviceInfo *)self serialNumber];
  if (serialNumber)
  {
    [dictionary setObject:serialNumber forKey:@"serialNumber"];
  }

  regionCode = [(AADeviceInfo *)self regionCode];
  if (regionCode)
  {
    [dictionary setObject:regionCode forKey:@"regionCode"];
  }

  return dictionary;
}

- (id)osVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)udid
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)wifiMacAddress
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)bluetoothMacAddress
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)productVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)productType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceEnclosureColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceCoverGlassColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceHousingColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceBackingColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)hasCellularCapability
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return MGGetBoolAnswer();
}

- (id)mobileEquipmentIdentifier
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)internationalMobileEquipmentIdentity
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)storageCapacity
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:*MEMORY[0x1E69E5128]];

  return v3;
}

- (id)osName
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKey:*MEMORY[0x1E695E1F0]];
  v4 = [v3 copy];

  return v4;
}

- (id)buildVersion
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKey:*MEMORY[0x1E695E1E8]];
  v4 = [v3 copy];

  return v4;
}

- (id)qualifiedBuildVersion
{
  buildVersion = [(AADeviceInfo *)self buildVersion];
  if (buildVersion)
  {
    osName = [(AADeviceInfo *)self osName];
    if (osName)
    {
      v5 = osName;
    }

    else
    {
      v5 = @"UNKNOWN OS";
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", buildVersion, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)regionCode
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)apnsToken
{
  v2 = objc_alloc(MEMORY[0x1E698CF30]);
  v3 = [v2 initWithEnvironmentName:*MEMORY[0x1E698CF20]];
  publicToken = [v3 publicToken];

  return publicToken;
}

- (id)deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)modelNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)chipIdentifier
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)uniqueChipIdentifier
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)appleIDClientIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], @"AppleIDClientIdentifier");
  v3 = *MEMORY[0x1E697B318];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  result = 0;
  v4 = SecItemCopyMatching(Mutable, &result);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = result == 0;
  }

  if (v5)
  {
    v6 = v4;
    v7 = _AALogSystem();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 67109120;
        v19 = v6;
        _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching result: %d", buf, 8u);
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v11 = [uUIDString dataUsingEncoding:4];

      uUIDString2 = [uUID UUIDString];
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE8]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v11);
      CFDictionaryRemoveValue(Mutable, v3);
      if (SecItemAdd(Mutable, 0))
      {
        v12 = _AALogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "There was an error saving the AppleIDClientIdentifier to the keychain", buf, 2u);
        }
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching succeeded with empty results", buf, 2u);
      }

      uUIDString2 = 0;
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    uUIDString2 = [v13 initWithData:result encoding:4];
    CFRelease(result);
  }

  CFRelease(Mutable);
  v15 = *MEMORY[0x1E69E9840];

  return uUIDString2;
}

- (id)clientInfoHeader
{
  v3 = MEMORY[0x1E696AEC0];
  productType = [(AADeviceInfo *)self productType];
  v5 = [v3 stringWithFormat:@"%@", productType];

  v6 = MEMORY[0x1E696AEC0];
  osName = [(AADeviceInfo *)self osName];
  osVersion = [(AADeviceInfo *)self osVersion];
  buildVersion = [(AADeviceInfo *)self buildVersion];
  v10 = [v6 stringWithFormat:@"%@%@;%@", osName, osVersion, buildVersion];;

  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  infoDictionary = [v11 infoDictionary];
  v13 = *MEMORY[0x1E695E500];
  v14 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary2 = [mainBundle infoDictionary];
  v17 = [infoDictionary2 objectForKey:v13];

  v18 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [v11 bundleIdentifier];
  bundleIdentifier2 = [mainBundle bundleIdentifier];
  v21 = [v18 stringWithFormat:@"%@/%@ (%@/%@)", bundleIdentifier, v14, bundleIdentifier2, v17];

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@> <%@> <%@>", v5, v10, v21];

  return v22;
}

- (id)userAgentHeader
{
  productVersion = [(AADeviceInfo *)self productVersion];
  buildVersion = [(AADeviceInfo *)self buildVersion];
  deviceClass = [(AADeviceInfo *)self deviceClass];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"iOS %@ %@ %@ Setup Assistant", productVersion, buildVersion, deviceClass];

  return v6;
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[AADeviceInfo isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

uint64_t __31__AADeviceInfo_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalBuild_isInternalBuild = result;
  return result;
}

+ (BOOL)isMultiUserMode
{
  if (isMultiUserMode_onceToken != -1)
  {
    +[AADeviceInfo isMultiUserMode];
  }

  return isMultiUserMode_isMultiUserMode;
}

void __31__AADeviceInfo_isMultiUserMode__block_invoke()
{
  v1 = MKBUserTypeDeviceMode();
  v0 = [v1 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
  if ([v0 isEqualToString:*MEMORY[0x1E69B1A18]])
  {
    isMultiUserMode_isMultiUserMode = 1;
  }
}

+ (id)infoDictionary
{
  v2 = objc_alloc_init(self);
  deviceInfoDictionary = [v2 deviceInfoDictionary];

  return deviceInfoDictionary;
}

+ (id)udid
{
  v2 = objc_alloc_init(self);
  udid = [v2 udid];

  return udid;
}

+ (id)osVersion
{
  v2 = objc_alloc_init(self);
  osVersion = [v2 osVersion];

  return osVersion;
}

+ (id)serialNumber
{
  v2 = objc_alloc_init(self);
  serialNumber = [v2 serialNumber];

  return serialNumber;
}

+ (id)apnsToken
{
  v2 = objc_alloc_init(self);
  apnsToken = [v2 apnsToken];

  return apnsToken;
}

+ (id)appleIDClientIdentifier
{
  v2 = objc_alloc_init(self);
  appleIDClientIdentifier = [v2 appleIDClientIdentifier];

  return appleIDClientIdentifier;
}

+ (id)clientInfoHeader
{
  v2 = objc_alloc_init(self);
  clientInfoHeader = [v2 clientInfoHeader];

  return clientInfoHeader;
}

+ (id)userAgentHeader
{
  v2 = objc_alloc_init(self);
  userAgentHeader = [v2 userAgentHeader];

  return userAgentHeader;
}

+ (id)productVersion
{
  v2 = objc_alloc_init(self);
  productVersion = [v2 productVersion];

  return productVersion;
}

@end