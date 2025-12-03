@interface AXMDeviceInfo
+ (id)sharedInstance;
- (NSDictionary)displayZoomSizes;
- (NSNumber)hasAmbientLightSensor;
- (NSNumber)hasDualLensCamera;
- (NSNumber)mainScreenOrientation;
- (NSNumber)mainScreenScale;
- (NSNumber)physicalMemory;
- (NSNumber)processorCount;
- (NSNumber)supports1080pPlayback;
- (NSNumber)supports720pPlayback;
- (NSNumber)supportsARM64;
- (NSNumber)supportsARMv6;
- (NSNumber)supportsARMv7;
- (NSNumber)supportsARMv7s;
- (NSString)buildVersion;
- (NSString)computerName;
- (NSString)cpuArchitecture;
- (NSString)deviceClass;
- (NSString)deviceModelNumber;
- (NSString)deviceName;
- (NSString)deviceNameClassic;
- (NSString)deviceNameGS;
- (NSString)deviceNameLocalized;
- (NSString)deviceVariant;
- (NSString)hardwareModel;
- (NSString)marketingName;
- (NSString)marketingProductName;
- (NSString)marketingVersion;
- (NSString)productName;
- (NSString)productType;
- (NSString)productVersion;
- (NSValue)mainScreenSizeHeight;
- (NSValue)mainScreenSizeWidth;
- (id)_init;
- (id)_jetsamInfo;
- (id)privilegedSystemReport;
- (id)systemReport;
@end

@implementation AXMDeviceInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[AXMDeviceInfo sharedInstance];
  }

  v3 = sharedInstance_Info;

  return v3;
}

void __31__AXMDeviceInfo_sharedInstance__block_invoke()
{
  v0 = [[AXMDeviceInfo alloc] _init];
  v1 = sharedInstance_Info;
  sharedInstance_Info = v0;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = AXMDeviceInfo;
  v2 = [(AXMDeviceInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__AXMDeviceInfo__init__block_invoke;
    block[3] = &unk_1E7A1CCB8;
    v6 = v2;
    if (_init__AXIsInternalInstallOnceToken != -1)
    {
      dispatch_once(&_init__AXIsInternalInstallOnceToken, block);
    }
  }

  return v3;
}

void __22__AXMDeviceInfo__init__block_invoke(uint64_t a1)
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFBooleanGetTypeID())
    {
      *(*(a1 + 32) + 8) = CFBooleanGetValue(v3) != 0;
    }

    CFRelease(v3);
  }
}

- (NSNumber)supportsARM64
{
  if (!self->_supportsARM64)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    supportsARM64 = self->_supportsARM64;
    self->_supportsARM64 = v3;
  }

  v5 = self->_supportsARM64;

  return v5;
}

- (NSNumber)supportsARMv6
{
  if (!self->_supportsARMv6)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    supportsARMv6 = self->_supportsARMv6;
    self->_supportsARMv6 = v3;
  }

  v5 = self->_supportsARMv6;

  return v5;
}

- (NSNumber)supportsARMv7
{
  if (!self->_supportsARMv7)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    supportsARMv7 = self->_supportsARMv7;
    self->_supportsARMv7 = v3;
  }

  v5 = self->_supportsARMv7;

  return v5;
}

- (NSNumber)supportsARMv7s
{
  if (!self->_supportsARMv7s)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    supportsARMv7s = self->_supportsARMv7s;
    self->_supportsARMv7s = v3;
  }

  v5 = self->_supportsARMv7s;

  return v5;
}

- (NSString)cpuArchitecture
{
  if (!self->_cpuArchitecture)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    cpuArchitecture = self->_cpuArchitecture;
    self->_cpuArchitecture = &v3->isa;
  }

  v5 = self->_cpuArchitecture;

  return v5;
}

- (NSNumber)processorCount
{
  processorCount = self->_processorCount;
  if (!processorCount)
  {
    if (self->_isInternalInstall)
    {
      v4 = MEMORY[0x1E696AD98];
      processorCount = [MEMORY[0x1E696AE30] processInfo];
      v5 = [v4 numberWithUnsignedInteger:{objc_msgSend(processorCount, "processorCount")}];
      v6 = self->_processorCount;
      self->_processorCount = v5;
    }

    else
    {
      self->_processorCount = &unk_1F240B0F8;
    }
  }

  v7 = self->_processorCount;

  return v7;
}

- (NSNumber)physicalMemory
{
  physicalMemory = self->_physicalMemory;
  if (!physicalMemory)
  {
    if (self->_isInternalInstall)
    {
      v4 = MEMORY[0x1E696AD98];
      physicalMemory = [MEMORY[0x1E696AE30] processInfo];
      v5 = [v4 numberWithUnsignedLongLong:{objc_msgSend(physicalMemory, "physicalMemory")}];
      v6 = self->_physicalMemory;
      self->_physicalMemory = v5;
    }

    else
    {
      self->_physicalMemory = &unk_1F240B0F8;
    }
  }

  v7 = self->_physicalMemory;

  return v7;
}

- (NSNumber)supports720pPlayback
{
  if (!self->_supports720pPlayback)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    supports720pPlayback = self->_supports720pPlayback;
    self->_supports720pPlayback = v3;
  }

  v5 = self->_supports720pPlayback;

  return v5;
}

- (NSNumber)supports1080pPlayback
{
  if (!self->_supports1080pPlayback)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    supports1080pPlayback = self->_supports1080pPlayback;
    self->_supports1080pPlayback = v3;
  }

  v5 = self->_supports1080pPlayback;

  return v5;
}

- (NSNumber)hasAmbientLightSensor
{
  if (!self->_hasAmbientLightSensor)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    hasAmbientLightSensor = self->_hasAmbientLightSensor;
    self->_hasAmbientLightSensor = v3;
  }

  v5 = self->_hasAmbientLightSensor;

  return v5;
}

- (NSNumber)hasDualLensCamera
{
  if (!self->_hasDualLensCamera)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    hasDualLensCamera = self->_hasDualLensCamera;
    self->_hasDualLensCamera = v3;
  }

  v5 = self->_hasDualLensCamera;

  return v5;
}

- (NSDictionary)displayZoomSizes
{
  if (!self->_displayZoomSizes)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGCopyAnswer();
    }

    else
    {
      v3 = MEMORY[0x1E695E0F8];
    }

    displayZoomSizes = self->_displayZoomSizes;
    self->_displayZoomSizes = v3;
  }

  v5 = self->_displayZoomSizes;

  return v5;
}

- (NSString)buildVersion
{
  if (!self->_buildVersion)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    buildVersion = self->_buildVersion;
    self->_buildVersion = &v3->isa;
  }

  v5 = self->_buildVersion;

  return v5;
}

- (NSString)computerName
{
  if (!self->_computerName)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    computerName = self->_computerName;
    self->_computerName = &v3->isa;
  }

  v5 = self->_computerName;

  return v5;
}

- (NSString)deviceName
{
  if (!self->_deviceName)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    deviceName = self->_deviceName;
    self->_deviceName = &v3->isa;
  }

  v5 = self->_deviceName;

  return v5;
}

- (NSString)deviceNameClassic
{
  if (!self->_deviceNameClassic)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    deviceNameClassic = self->_deviceNameClassic;
    self->_deviceNameClassic = &v3->isa;
  }

  v5 = self->_deviceNameClassic;

  return v5;
}

- (NSString)deviceNameGS
{
  if (!self->_deviceNameGS)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    deviceNameGS = self->_deviceNameGS;
    self->_deviceNameGS = &v3->isa;
  }

  v5 = self->_deviceNameGS;

  return v5;
}

- (NSString)deviceNameLocalized
{
  if (!self->_deviceNameLocalized)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    deviceNameLocalized = self->_deviceNameLocalized;
    self->_deviceNameLocalized = &v3->isa;
  }

  v5 = self->_deviceNameLocalized;

  return v5;
}

- (NSString)deviceClass
{
  if (!self->_deviceClass)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    deviceClass = self->_deviceClass;
    self->_deviceClass = &v3->isa;
  }

  v5 = self->_deviceClass;

  return v5;
}

- (NSString)deviceVariant
{
  if (!self->_deviceVariant)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    deviceVariant = self->_deviceVariant;
    self->_deviceVariant = &v3->isa;
  }

  v5 = self->_deviceVariant;

  return v5;
}

- (NSString)hardwareModel
{
  if (!self->_hardwareModel)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    hardwareModel = self->_hardwareModel;
    self->_hardwareModel = &v3->isa;
  }

  v5 = self->_hardwareModel;

  return v5;
}

- (NSString)deviceModelNumber
{
  if (!self->_deviceModelNumber)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    deviceModelNumber = self->_deviceModelNumber;
    self->_deviceModelNumber = &v3->isa;
  }

  v5 = self->_deviceModelNumber;

  return v5;
}

- (NSString)marketingName
{
  if (!self->_marketingName)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    marketingName = self->_marketingName;
    self->_marketingName = &v3->isa;
  }

  v5 = self->_marketingName;

  return v5;
}

- (NSString)marketingProductName
{
  if (!self->_marketingProductName)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    marketingProductName = self->_marketingProductName;
    self->_marketingProductName = &v3->isa;
  }

  v5 = self->_marketingProductName;

  return v5;
}

- (NSString)marketingVersion
{
  if (!self->_marketingVersion)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    marketingVersion = self->_marketingVersion;
    self->_marketingVersion = &v3->isa;
  }

  v5 = self->_marketingVersion;

  return v5;
}

- (NSString)productName
{
  if (!self->_productName)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    productName = self->_productName;
    self->_productName = &v3->isa;
  }

  v5 = self->_productName;

  return v5;
}

- (NSString)productType
{
  if (!self->_productType)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    productType = self->_productType;
    self->_productType = &v3->isa;
  }

  v5 = self->_productType;

  return v5;
}

- (NSString)productVersion
{
  if (!self->_productVersion)
  {
    if (self->_isInternalInstall)
    {
      v3 = MGGetStringAnswer();
    }

    else
    {
      v3 = &stru_1F23EA908;
    }

    productVersion = self->_productVersion;
    self->_productVersion = &v3->isa;
  }

  v5 = self->_productVersion;

  return v5;
}

- (NSValue)mainScreenSizeWidth
{
  if (!self->_mainScreenSizeWidth)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInt:MGGetSInt32Answer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    mainScreenSizeWidth = self->_mainScreenSizeWidth;
    self->_mainScreenSizeWidth = v3;
  }

  v5 = self->_mainScreenSizeWidth;

  return v5;
}

- (NSValue)mainScreenSizeHeight
{
  if (!self->_mainScreenSizeHeight)
  {
    if (self->_isInternalInstall)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithInt:MGGetSInt32Answer()];
    }

    else
    {
      v3 = &unk_1F240B0F8;
    }

    mainScreenSizeHeight = self->_mainScreenSizeHeight;
    self->_mainScreenSizeHeight = v3;
  }

  v5 = self->_mainScreenSizeHeight;

  return v5;
}

- (NSNumber)mainScreenScale
{
  if (!self->_mainScreenScale)
  {
    if (self->_isInternalInstall)
    {
      v3 = MEMORY[0x1E696AD98];
      MGGetFloat32Answer();
      v4 = [v3 numberWithFloat:?];
    }

    else
    {
      v4 = &unk_1F240B0F8;
    }

    mainScreenScale = self->_mainScreenScale;
    self->_mainScreenScale = v4;
  }

  v6 = self->_mainScreenScale;

  return v6;
}

- (NSNumber)mainScreenOrientation
{
  if (!self->_mainScreenOrientation)
  {
    if (self->_isInternalInstall)
    {
      v3 = MEMORY[0x1E696AD98];
      MGGetFloat32Answer();
      v4 = [v3 numberWithFloat:?];
    }

    else
    {
      v4 = &unk_1F240B0F8;
    }

    mainScreenOrientation = self->_mainScreenOrientation;
    self->_mainScreenOrientation = v4;
  }

  v6 = self->_mainScreenOrientation;

  return v6;
}

- (id)_jetsamInfo
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/LaunchDaemons"];
  v26 = 0;
  v4 = [defaultManager contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v26];
  v5 = v26;
  if (!v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v7;
    v18 = v4;
    v19 = v3;
    v20 = defaultManager;
    v9 = *v23;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        pathExtension = [v11 pathExtension];
        if ([pathExtension isEqualToString:@"plist"])
        {
          path = [v11 path];
          v14 = [path containsString:@"com.apple.jetsamproperties"];

          if (!v14)
          {
            continue;
          }

          v15 = objc_alloc(MEMORY[0x1E695DF20]);
          path2 = [v11 path];
          pathExtension = [v15 initWithContentsOfFile:path2];

          if (pathExtension)
          {
            [dictionary setObject:pathExtension forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (!v8)
      {
        v3 = v19;
        defaultManager = v20;
        v4 = v18;
        v5 = 0;
        goto LABEL_17;
      }
    }
  }

  v6 = AXMediaLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AXMModelDetectorNode evaluate:v5 metrics:v6];
  }

LABEL_17:

  return dictionary;
}

- (id)systemReport
{
  if (self->_isInternalInstall)
  {
    v22 = MEMORY[0x1E696AD60];
    deviceName = [(AXMDeviceInfo *)self deviceName];
    deviceNameClassic = [(AXMDeviceInfo *)self deviceNameClassic];
    deviceNameGS = [(AXMDeviceInfo *)self deviceNameGS];
    deviceNameLocalized = [(AXMDeviceInfo *)self deviceNameLocalized];
    computerName = [(AXMDeviceInfo *)self computerName];
    hardwareModel = [(AXMDeviceInfo *)self hardwareModel];
    deviceClass = [(AXMDeviceInfo *)self deviceClass];
    deviceModelNumber = [(AXMDeviceInfo *)self deviceModelNumber];
    deviceVariant = [(AXMDeviceInfo *)self deviceVariant];
    cpuArchitecture = [(AXMDeviceInfo *)self cpuArchitecture];
    processorCount = [(AXMDeviceInfo *)self processorCount];
    physicalMemory = [(AXMDeviceInfo *)self physicalMemory];
    physicalMemory2 = [(AXMDeviceInfo *)self physicalMemory];
    [physicalMemory2 doubleValue];
    v4 = v3 / 1000000.0;
    physicalMemory3 = [(AXMDeviceInfo *)self physicalMemory];
    [physicalMemory3 doubleValue];
    v6 = v5 / 1000000000.0;
    mainScreenSizeWidth = [(AXMDeviceInfo *)self mainScreenSizeWidth];
    mainScreenSizeHeight = [(AXMDeviceInfo *)self mainScreenSizeHeight];
    mainScreenScale = [(AXMDeviceInfo *)self mainScreenScale];
    mainScreenOrientation = [(AXMDeviceInfo *)self mainScreenOrientation];
    hasAmbientLightSensor = [(AXMDeviceInfo *)self hasAmbientLightSensor];
    hasDualLensCamera = [(AXMDeviceInfo *)self hasDualLensCamera];
    marketingName = [(AXMDeviceInfo *)self marketingName];
    marketingProductName = [(AXMDeviceInfo *)self marketingProductName];
    marketingVersion = [(AXMDeviceInfo *)self marketingVersion];
    productName = [(AXMDeviceInfo *)self productName];
    productType = [(AXMDeviceInfo *)self productType];
    productVersion = [(AXMDeviceInfo *)self productVersion];
    buildVersion = [(AXMDeviceInfo *)self buildVersion];
    v14 = [v22 stringWithFormat:@"----------------------------------\nAXMedia Utilities System Report:\n----------------------------------\n  Device:\n    Name: '%@' (classic:'%@') (GS:'%@') (Loc:'%@') (Computer:'%@')\n    Hardware Model: %@\n    Class: %@\n    Model Number: %@\n    Variant: %@\n  CPU:\n    Architecture: %@\n    # of Cores: %@\n  Memory:\n    Physical Memory: %@ (%.2f MB) (%.2f GB)\n  Display:\n    Size: %@ x %@\n    Scale: %@\n    Orientation: %@\n  Capabilities:\n    Has Ambient Light Sensor: %@\n    Has Dual Lens Camera: %@\n  Marketing:\n    Name: %@\n    Product Name: %@\n    Version: %@\n  Product:\n    Name: %@\n    Type: %@\n    Version: %@\n  Build:\n    Version: %@\n----------------------------------\n", deviceName, deviceNameClassic, deviceNameGS, deviceNameLocalized, computerName, hardwareModel, deviceClass, deviceModelNumber, deviceVariant, cpuArchitecture, processorCount, physicalMemory, *&v4, *&v6, mainScreenSizeWidth, mainScreenSizeHeight, mainScreenScale, mainScreenOrientation, hasAmbientLightSensor, hasDualLensCamera, marketingName, marketingProductName, marketingVersion, productName, productType, productVersion, buildVersion];
  }

  else
  {
    v14 = @"AXMedia Utilities System Report: <Redacted>";
  }

  return v14;
}

- (id)privilegedSystemReport
{
  systemReport = [(AXMDeviceInfo *)self systemReport];
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"  Jetsam Info:\n"];
  _jetsamInfo = [(AXMDeviceInfo *)self _jetsamInfo];
  allKeys = [_jetsamInfo allKeys];
  v7 = [allKeys count];

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__AXMDeviceInfo_privilegedSystemReport__block_invoke;
    v10[3] = &unk_1E7A1EB38;
    v11 = v4;
    [_jetsamInfo enumerateKeysAndObjectsUsingBlock:v10];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@----------------------------------\n", systemReport, v4];

  return v8;
}

void __39__AXMDeviceInfo_privilegedSystemReport__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 URLByDeletingPathExtension];
  v8 = [v7 path];
  [v5 appendFormat:@"    %@:\n", v8];

  v9 = [v6 objectForKey:@"Version4"];

  v10 = [v9 objectForKey:@"SystemXPCService"];
  v11 = [v10 objectForKey:@"Override"];

  v12 = [v11 objectForKey:@"com.apple.accessibility.AccessibilityUIServer"];
  if (v12)
  {
    [*(a1 + 32) appendString:@"      com.apple.accessibility.AccessibilityUIServer:\n"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __39__AXMDeviceInfo_privilegedSystemReport__block_invoke_2;
    v16[3] = &unk_1E7A1EB10;
    v17 = *(a1 + 32);
    [v12 enumerateKeysAndObjectsUsingBlock:v16];
  }

  v13 = [v11 objectForKey:@"com.apple.AXMediaUtilitiesService"];
  if (v13)
  {
    [*(a1 + 32) appendString:@"      com.apple.AXMediaUtilitiesService:\n"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__AXMDeviceInfo_privilegedSystemReport__block_invoke_3;
    v14[3] = &unk_1E7A1EB10;
    v15 = *(a1 + 32);
    [v13 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

@end