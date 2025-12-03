@interface HKActiveWatchRemoteFeatureAvailabilityDataSource
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_operatingSystemVersionForOSVersion:(SEL)version;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)iOSVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchAtrialFibrillationDetectionVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchOSVersion;
- (HKActiveWatchRemoteFeatureAvailabilityDataSource)init;
- (id)_activeWatch;
- (id)currentDeviceClass;
- (id)iOSBuildVersion;
- (id)watchBuildType;
- (id)watchModelNumber;
- (id)watchOSBuildVersion;
- (id)watchProductType;
- (id)watchRegion;
- (id)watchRegionInfo;
- (void)iOSVersion;
- (void)watchAtrialFibrillationDetectionVersion;
- (void)watchBuildType;
- (void)watchModelNumber;
- (void)watchOSVersion;
- (void)watchProductType;
- (void)watchRegion;
- (void)watchRegionInfo;
@end

@implementation HKActiveWatchRemoteFeatureAvailabilityDataSource

- (HKActiveWatchRemoteFeatureAvailabilityDataSource)init
{
  v8.receiver = self;
  v8.super_class = HKActiveWatchRemoteFeatureAvailabilityDataSource;
  v2 = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getNRPairedDeviceRegistryClass_softClass_2;
    v13 = getNRPairedDeviceRegistryClass_softClass_2;
    if (!getNRPairedDeviceRegistryClass_softClass_2)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getNRPairedDeviceRegistryClass_block_invoke_2;
      v9[3] = &unk_1E7378388;
      v9[4] = &v10;
      __getNRPairedDeviceRegistryClass_block_invoke_2(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    sharedInstance = [v3 sharedInstance];
    pairedDeviceRegistry = v2->_pairedDeviceRegistry;
    v2->_pairedDeviceRegistry = sharedInstance;
  }

  return v2;
}

- (id)_activeWatch
{
  pairedDeviceRegistry = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self pairedDeviceRegistry];
  getActivePairedDevice = [pairedDeviceRegistry getActivePairedDevice];

  return getActivePairedDevice;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)iOSVersion
{
  v5 = +[_HKBehavior sharedBehavior];
  isCompanionCapable = [v5 isCompanionCapable];

  if (isCompanionCapable)
  {

    return +[_HKBehavior currentOSVersionStruct];
  }

  else
  {
    v8 = +[_HKBehavior sharedBehavior];
    isAppleWatch = [v8 isAppleWatch];

    if (isAppleWatch && ([(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v12 = getNRDevicePropertySystemVersionSymbolLoc_ptr_0;
      v22 = getNRDevicePropertySystemVersionSymbolLoc_ptr_0;
      if (!getNRDevicePropertySystemVersionSymbolLoc_ptr_0)
      {
        v13 = NanoRegistryLibrary_2();
        v20[3] = dlsym(v13, "NRDevicePropertySystemVersion");
        getNRDevicePropertySystemVersionSymbolLoc_ptr_0 = v20[3];
        v12 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (!v12)
      {
        [HKActiveWatchRemoteFeatureAvailabilityDataSource iOSVersion];
      }

      v14 = *v12;
      v15 = [_activeWatch valueForProperty:v14];
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v16 = getNRRawVersionFromStringSymbolLoc_ptr_0;
      v22 = getNRRawVersionFromStringSymbolLoc_ptr_0;
      if (!getNRRawVersionFromStringSymbolLoc_ptr_0)
      {
        v17 = NanoRegistryLibrary_2();
        v20[3] = dlsym(v17, "NRRawVersionFromString");
        getNRRawVersionFromStringSymbolLoc_ptr_0 = v20[3];
        v16 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (!v16)
      {
        [HKActiveWatchRemoteFeatureAvailabilityDataSource iOSVersion];
      }

      v18 = v16(v15);

      return [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _operatingSystemVersionForOSVersion:v18];
    }

    else
    {
      *&retstr->var0 = HKNSOperatingSystemVersionUnknown;
      retstr->var2 = 0;
    }
  }

  return result;
}

- (id)iOSBuildVersion
{
  v3 = +[_HKBehavior sharedBehavior];
  isCompanionCapable = [v3 isCompanionCapable];

  if (isCompanionCapable)
  {
    v5 = +[_HKBehavior currentOSBuild];
  }

  else
  {
    v6 = +[_HKBehavior sharedBehavior];
    isAppleWatch = [v6 isAppleWatch];

    if (isAppleWatch && ([(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
      v10 = getNRDevicePropertySystemBuildVersion();
      v5 = [_activeWatch valueForProperty:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchOSVersion
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  v6 = _activeWatch;
  if (_activeWatch)
  {
    v7 = _activeWatch;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v8 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
    v15 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
    if (!getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr)
    {
      v9 = NanoRegistryLibrary_2();
      v13[3] = dlsym(v9, "NRWatchOSVersionForRemoteDevice");
      getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = v13[3];
      v8 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v8)
    {
      [HKActiveWatchRemoteFeatureAvailabilityDataSource watchOSVersion];
    }

    v10 = v8(v7);

    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _operatingSystemVersionForOSVersion:v10];
  }

  else
  {
    *&retstr->var0 = HKNSOperatingSystemVersionUnknown;
    retstr->var2 = 0;
  }

  return result;
}

- (id)watchRegion
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  if (_activeWatch)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v3 = getNRDevicePropertyRegionCodeSymbolLoc_ptr;
    v10 = getNRDevicePropertyRegionCodeSymbolLoc_ptr;
    if (!getNRDevicePropertyRegionCodeSymbolLoc_ptr)
    {
      v4 = NanoRegistryLibrary_2();
      v8[3] = dlsym(v4, "NRDevicePropertyRegionCode");
      getNRDevicePropertyRegionCodeSymbolLoc_ptr = v8[3];
      v3 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      [HKActiveWatchRemoteFeatureAvailabilityDataSource watchRegion];
    }

    v5 = [_activeWatch valueForProperty:*v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)watchRegionInfo
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  if (_activeWatch)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v3 = getNRDevicePropertyRegionInfoSymbolLoc_ptr_0;
    v10 = getNRDevicePropertyRegionInfoSymbolLoc_ptr_0;
    if (!getNRDevicePropertyRegionInfoSymbolLoc_ptr_0)
    {
      v4 = NanoRegistryLibrary_2();
      v8[3] = dlsym(v4, "NRDevicePropertyRegionInfo");
      getNRDevicePropertyRegionInfoSymbolLoc_ptr_0 = v8[3];
      v3 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      [HKActiveWatchRemoteFeatureAvailabilityDataSource watchRegionInfo];
    }

    v5 = [_activeWatch valueForProperty:*v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)watchModelNumber
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getNRDevicePropertyModelNumberSymbolLoc_ptr_0;
  v10 = getNRDevicePropertyModelNumberSymbolLoc_ptr_0;
  if (!getNRDevicePropertyModelNumberSymbolLoc_ptr_0)
  {
    v4 = NanoRegistryLibrary_2();
    v8[3] = dlsym(v4, "NRDevicePropertyModelNumber");
    getNRDevicePropertyModelNumberSymbolLoc_ptr_0 = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [HKActiveWatchRemoteFeatureAvailabilityDataSource watchModelNumber];
  }

  v5 = [_activeWatch valueForProperty:*v3];

  return v5;
}

- (id)watchBuildType
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getNRDevicePropertyBuildTypeSymbolLoc_ptr;
  v10 = getNRDevicePropertyBuildTypeSymbolLoc_ptr;
  if (!getNRDevicePropertyBuildTypeSymbolLoc_ptr)
  {
    v4 = NanoRegistryLibrary_2();
    v8[3] = dlsym(v4, "NRDevicePropertyBuildType");
    getNRDevicePropertyBuildTypeSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [HKActiveWatchRemoteFeatureAvailabilityDataSource watchBuildType];
  }

  v5 = [_activeWatch valueForProperty:*v3];

  return v5;
}

- (id)watchProductType
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getNRDevicePropertyProductTypeSymbolLoc_ptr_0;
  v10 = getNRDevicePropertyProductTypeSymbolLoc_ptr_0;
  if (!getNRDevicePropertyProductTypeSymbolLoc_ptr_0)
  {
    v4 = NanoRegistryLibrary_2();
    v8[3] = dlsym(v4, "NRDevicePropertyProductType");
    getNRDevicePropertyProductTypeSymbolLoc_ptr_0 = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [HKActiveWatchRemoteFeatureAvailabilityDataSource watchProductType];
  }

  v5 = [_activeWatch valueForProperty:*v3];

  return v5;
}

- (id)watchOSBuildVersion
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  v3 = getNRDevicePropertySystemBuildVersion();
  v4 = [_activeWatch valueForProperty:v3];

  return v4;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchAtrialFibrillationDetectionVersion
{
  _activeWatch = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
  if (_activeWatch)
  {
    _activeWatch2 = [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self _activeWatch];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v7 = getNRDevicePropertyBackgroundAtrialFibrillationVersionSymbolLoc_ptr;
    v14 = getNRDevicePropertyBackgroundAtrialFibrillationVersionSymbolLoc_ptr;
    if (!getNRDevicePropertyBackgroundAtrialFibrillationVersionSymbolLoc_ptr)
    {
      v8 = NanoRegistryLibrary_2();
      v12[3] = dlsym(v8, "NRDevicePropertyBackgroundAtrialFibrillationVersion");
      getNRDevicePropertyBackgroundAtrialFibrillationVersionSymbolLoc_ptr = v12[3];
      v7 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v7)
    {
      [HKActiveWatchRemoteFeatureAvailabilityDataSource watchAtrialFibrillationDetectionVersion];
    }

    v9 = [_activeWatch2 valueForProperty:*v7];

    HKSemanticVersionFromString(retstr, v9);
  }

  else
  {
    *&retstr->var0 = HKSemanticVersionUnknown;
    retstr->var2 = 0;
  }

  return result;
}

- (id)currentDeviceClass
{
  v2 = +[_HKBehavior sharedBehavior];
  currentDeviceClass = [v2 currentDeviceClass];

  return currentDeviceClass;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_operatingSystemVersionForOSVersion:(SEL)version
{
  retstr->var0 = HIWORD(a4);
  retstr->var1 = BYTE1(a4);
  retstr->var2 = a4;
  return self;
}

- (void)iOSVersion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySystemVersion(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchOSVersion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getNRWatchOSVersionForRemoteDevice(NRDevice *__strong)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchRegion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyRegionCode(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchRegionInfo
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyRegionInfo(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchModelNumber
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyModelNumber(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchBuildType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyBuildType(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchProductType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyProductType(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)watchAtrialFibrillationDetectionVersion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyBackgroundAtrialFibrillationVersion(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

@end