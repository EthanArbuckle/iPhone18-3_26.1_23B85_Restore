@interface VNProcessingDevice
+ (id)allDevices;
+ (id)defaultANEDevice;
+ (id)defaultCPUDevice;
+ (id)defaultDevice;
+ (id)defaultMetalDevice;
+ (id)deviceForMetalDevice:(id)device;
+ (id)directANEDevice;
+ (void)_lockStaticObjectsAccessLock;
+ (void)forcedCleanup;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation VNProcessingDevice

+ (id)defaultCPUDevice
{
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  v2 = requestPerformingDevice_defaultCPUDevice;
  if (!requestPerformingDevice_defaultCPUDevice)
  {
    v3 = objc_alloc_init(VNCPUProcessingDevice);
    v4 = requestPerformingDevice_defaultCPUDevice;
    requestPerformingDevice_defaultCPUDevice = v3;

    v2 = requestPerformingDevice_defaultCPUDevice;
  }

  v5 = v2;
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];

  return v5;
}

+ (void)_lockStaticObjectsAccessLock
{
  if (_lockStaticObjectsAccessLock_onceToken_createOnceTokenLock != -1)
  {
    dispatch_once(&_lockStaticObjectsAccessLock_onceToken_createOnceTokenLock, &__block_literal_global_31954);
  }

  v3 = staticObjectsAccessLock;

  [v3 lock];
}

+ (id)defaultMetalDevice
{
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  v3 = requestPerformingDevice_defaultMetalDevice;
  if (!requestPerformingDevice_defaultMetalDevice)
  {
    v4 = VNCreateMetalDevice();
    if (v4)
    {
      v5 = [self deviceForMetalDevice:v4];
      v6 = requestPerformingDevice_defaultMetalDevice;
      requestPerformingDevice_defaultMetalDevice = v5;
    }

    v3 = requestPerformingDevice_defaultMetalDevice;
  }

  v7 = v3;
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];

  return v7;
}

+ (id)defaultANEDevice
{
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  if (!requestPerformingDevice_defaultANEDevice && VisionCoreHasANE())
  {
    v2 = objc_alloc_init(VNANERuntimeProcessingDevice);
    v3 = requestPerformingDevice_defaultANEDevice;
    requestPerformingDevice_defaultANEDevice = v2;
  }

  v4 = requestPerformingDevice_defaultANEDevice;
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return equal == self;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)forcedCleanup
{
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  v2 = allDevices;
  allDevices = 0;

  v3 = requestPerformingDevice_defaultDevice;
  requestPerformingDevice_defaultDevice = 0;

  v4 = requestPerformingDevice_defaultCPUDevice;
  requestPerformingDevice_defaultCPUDevice = 0;

  v5 = requestPerformingDevice_defaultMetalDevice;
  requestPerformingDevice_defaultMetalDevice = 0;

  v6 = requestPerformingDevice_defaultANEDevice;
  requestPerformingDevice_defaultANEDevice = 0;

  v7 = requestPerformingDevice_directANEDevice;
  requestPerformingDevice_directANEDevice = 0;

  [ourMetalToProcessingDeviceMap removeAllObjects];
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];
}

+ (id)directANEDevice
{
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  if (!requestPerformingDevice_directANEDevice && VisionCoreHasANE())
  {
    v2 = objc_alloc_init(VNANERuntimeDirectProcessingDevice);
    v3 = requestPerformingDevice_directANEDevice;
    requestPerformingDevice_directANEDevice = v2;
  }

  v4 = requestPerformingDevice_directANEDevice;
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];

  return v4;
}

+ (id)deviceForMetalDevice:(id)device
{
  deviceCopy = device;
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  if (ourMetalToProcessingDeviceMap)
  {
    v4 = [ourMetalToProcessingDeviceMap objectForKey:deviceCopy];
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v6 = ourMetalToProcessingDeviceMap;
    ourMetalToProcessingDeviceMap = strongToStrongObjectsMapTable;
  }

  v4 = [[VNMetalProcessingDevice alloc] initWithMetalDevice:deviceCopy];
  if (v4)
  {
    [ourMetalToProcessingDeviceMap setObject:v4 forKey:deviceCopy];
  }

LABEL_7:
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];

  return v4;
}

+ (id)defaultDevice
{
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  v3 = requestPerformingDevice_defaultDevice;
  if (!requestPerformingDevice_defaultDevice)
  {
    defaultANEDevice = [self defaultANEDevice];
    v5 = requestPerformingDevice_defaultDevice;
    requestPerformingDevice_defaultDevice = defaultANEDevice;

    v3 = requestPerformingDevice_defaultDevice;
    if (!requestPerformingDevice_defaultDevice)
    {
      defaultMetalDevice = [self defaultMetalDevice];
      v7 = requestPerformingDevice_defaultDevice;
      requestPerformingDevice_defaultDevice = defaultMetalDevice;

      v3 = requestPerformingDevice_defaultDevice;
      if (!requestPerformingDevice_defaultDevice)
      {
        defaultCPUDevice = [self defaultCPUDevice];
        v9 = requestPerformingDevice_defaultDevice;
        requestPerformingDevice_defaultDevice = defaultCPUDevice;

        v3 = requestPerformingDevice_defaultDevice;
      }
    }
  }

  v10 = v3;
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];

  return v10;
}

+ (id)allDevices
{
  +[VNProcessingDevice _lockStaticObjectsAccessLock];
  v3 = allDevices;
  if (!allDevices)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    defaultCPUDevice = [self defaultCPUDevice];
    [v4 addObject:defaultCPUDevice];

    v6 = +[VNMetalProcessingDevice allDevices];
    [v4 addObjectsFromArray:v6];

    defaultANEDevice = [self defaultANEDevice];
    if (defaultANEDevice)
    {
      [v4 addObject:defaultANEDevice];
    }

    v8 = [v4 copy];
    v9 = allDevices;
    allDevices = v8;

    v3 = allDevices;
  }

  v10 = v3;
  +[VNProcessingDevice _unlockStaticObjectsAccessLock];

  return v10;
}

uint64_t __50__VNProcessingDevice__lockStaticObjectsAccessLock__block_invoke()
{
  staticObjectsAccessLock = objc_alloc_init(MEMORY[0x1E696AE68]);

  return MEMORY[0x1EEE66BB8]();
}

@end