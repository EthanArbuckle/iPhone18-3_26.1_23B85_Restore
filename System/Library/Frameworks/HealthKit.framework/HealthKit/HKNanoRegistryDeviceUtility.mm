@interface HKNanoRegistryDeviceUtility
+ (BOOL)isDeviceSeries4:(id)series4;
+ (NSString)activePairedDeviceHousingColor;
+ (NSString)activePairedDeviceModelNumber;
+ (NSString)activePairedDeviceRegionInfo;
+ (id)activeNonFamilySetupDevice;
+ (id)activePairedDeviceProductType;
+ (id)activePairedDeviceSystemBuildVersion;
+ (id)deviceHousingColor:(id)color;
+ (id)electrocardiogramV2AvailableRegionsForDevice:(id)device;
+ (id)modelNumberForDevice:(id)device;
+ (id)productTypeForDevice:(id)device;
+ (id)regionInfoForDevice:(id)device;
+ (id)systemBuildVersionForDevice:(id)device;
+ (unsigned)systemVersionForDevice:(id)device;
@end

@implementation HKNanoRegistryDeviceUtility

+ (unsigned)systemVersionForDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v4 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
  v15 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
  if (!getNRDevicePropertySystemVersionSymbolLoc_ptr)
  {
    v5 = NanoRegistryLibrary_1();
    v13[3] = dlsym(v5, "NRDevicePropertySystemVersion");
    getNRDevicePropertySystemVersionSymbolLoc_ptr = v13[3];
    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v4)
  {
    +[HKNanoRegistryDeviceUtility systemVersionForDevice:];
  }

  v6 = *v4;
  v7 = [deviceCopy valueForProperty:v6];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getNRRawVersionFromStringSymbolLoc_ptr;
  v15 = getNRRawVersionFromStringSymbolLoc_ptr;
  if (!getNRRawVersionFromStringSymbolLoc_ptr)
  {
    v9 = NanoRegistryLibrary_1();
    v13[3] = dlsym(v9, "NRRawVersionFromString");
    getNRRawVersionFromStringSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
    +[HKNanoRegistryDeviceUtility systemVersionForDevice:];
  }

  v10 = v8(v7);

  return v10;
}

+ (id)modelNumberForDevice:(id)device
{
  deviceCopy = device;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getNRDevicePropertyModelNumberSymbolLoc_ptr;
  v11 = getNRDevicePropertyModelNumberSymbolLoc_ptr;
  if (!getNRDevicePropertyModelNumberSymbolLoc_ptr)
  {
    v5 = NanoRegistryLibrary_1();
    v9[3] = dlsym(v5, "NRDevicePropertyModelNumber");
    getNRDevicePropertyModelNumberSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    +[HKNanoRegistryDeviceUtility modelNumberForDevice:];
  }

  v6 = [deviceCopy valueForProperty:*v4];

  return v6;
}

+ (id)productTypeForDevice:(id)device
{
  deviceCopy = device;
  v4 = getNRDevicePropertyProductType();
  v5 = [deviceCopy valueForProperty:v4];

  return v5;
}

+ (id)regionInfoForDevice:(id)device
{
  deviceCopy = device;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getNRDevicePropertyRegionInfoSymbolLoc_ptr;
  v11 = getNRDevicePropertyRegionInfoSymbolLoc_ptr;
  if (!getNRDevicePropertyRegionInfoSymbolLoc_ptr)
  {
    v5 = NanoRegistryLibrary_1();
    v9[3] = dlsym(v5, "NRDevicePropertyRegionInfo");
    getNRDevicePropertyRegionInfoSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    +[HKNanoRegistryDeviceUtility regionInfoForDevice:];
  }

  v6 = [deviceCopy valueForProperty:*v4];

  return v6;
}

+ (id)systemBuildVersionForDevice:(id)device
{
  deviceCopy = device;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getNRDevicePropertySystemBuildVersionSymbolLoc_ptr;
  v11 = getNRDevicePropertySystemBuildVersionSymbolLoc_ptr;
  if (!getNRDevicePropertySystemBuildVersionSymbolLoc_ptr)
  {
    v5 = NanoRegistryLibrary_1();
    v9[3] = dlsym(v5, "NRDevicePropertySystemBuildVersion");
    getNRDevicePropertySystemBuildVersionSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    +[HKNanoRegistryDeviceUtility systemBuildVersionForDevice:];
  }

  v6 = [deviceCopy valueForProperty:*v4];

  return v6;
}

+ (id)deviceHousingColor:(id)color
{
  colorCopy = color;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getNRDevicePropertyDeviceHousingColorSymbolLoc_ptr;
  v11 = getNRDevicePropertyDeviceHousingColorSymbolLoc_ptr;
  if (!getNRDevicePropertyDeviceHousingColorSymbolLoc_ptr)
  {
    v5 = NanoRegistryLibrary_1();
    v9[3] = dlsym(v5, "NRDevicePropertyDeviceHousingColor");
    getNRDevicePropertyDeviceHousingColorSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    +[HKNanoRegistryDeviceUtility deviceHousingColor:];
  }

  v6 = [colorCopy valueForProperty:*v4];

  return v6;
}

+ (NSString)activePairedDeviceModelNumber
{
  activeNonFamilySetupDevice = [self activeNonFamilySetupDevice];
  v4 = [self modelNumberForDevice:activeNonFamilySetupDevice];

  return v4;
}

+ (id)activePairedDeviceSystemBuildVersion
{
  activeNonFamilySetupDevice = [self activeNonFamilySetupDevice];
  v4 = [self systemBuildVersionForDevice:activeNonFamilySetupDevice];

  return v4;
}

+ (id)activePairedDeviceProductType
{
  activeNonFamilySetupDevice = [self activeNonFamilySetupDevice];
  v4 = [self productTypeForDevice:activeNonFamilySetupDevice];

  return v4;
}

+ (NSString)activePairedDeviceRegionInfo
{
  activeNonFamilySetupDevice = [self activeNonFamilySetupDevice];
  v4 = [self regionInfoForDevice:activeNonFamilySetupDevice];

  return v4;
}

+ (NSString)activePairedDeviceHousingColor
{
  activeNonFamilySetupDevice = [self activeNonFamilySetupDevice];
  v4 = [self deviceHousingColor:activeNonFamilySetupDevice];

  return v4;
}

+ (id)electrocardiogramV2AvailableRegionsForDevice:(id)device
{
  deviceCopy = device;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getNRDevicePropertyElectrocardiogramV2AvailableRegionsSymbolLoc_ptr;
  v11 = getNRDevicePropertyElectrocardiogramV2AvailableRegionsSymbolLoc_ptr;
  if (!getNRDevicePropertyElectrocardiogramV2AvailableRegionsSymbolLoc_ptr)
  {
    v5 = NanoRegistryLibrary_1();
    v9[3] = dlsym(v5, "NRDevicePropertyElectrocardiogramV2AvailableRegions");
    getNRDevicePropertyElectrocardiogramV2AvailableRegionsSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    +[HKNanoRegistryDeviceUtility electrocardiogramV2AvailableRegionsForDevice:];
  }

  v6 = [deviceCopy valueForProperty:*v4];

  return v6;
}

+ (BOOL)isDeviceSeries4:(id)series4
{
  series4Copy = series4;
  v4 = getNRDevicePropertyProductType();
  v5 = [series4Copy valueForProperty:v4];

  LOBYTE(series4Copy) = [v5 hasPrefix:{@"Watch4, "}];
  return series4Copy;
}

+ (id)activeNonFamilySetupDevice
{
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  activeDeviceSelectorBlock = [getNRPairedDeviceRegistryClass() activeDeviceSelectorBlock];
  v4 = [sharedInstance getDevicesMatching:activeDeviceSelectorBlock];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (void)systemVersionForDevice:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getNRRawVersionFromString(NSString *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)systemVersionForDevice:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySystemVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)modelNumberForDevice:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyModelNumber(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)regionInfoForDevice:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyRegionInfo(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)systemBuildVersionForDevice:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySystemBuildVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)deviceHousingColor:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyDeviceHousingColor(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)electrocardiogramV2AvailableRegionsForDevice:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyElectrocardiogramV2AvailableRegions(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

@end