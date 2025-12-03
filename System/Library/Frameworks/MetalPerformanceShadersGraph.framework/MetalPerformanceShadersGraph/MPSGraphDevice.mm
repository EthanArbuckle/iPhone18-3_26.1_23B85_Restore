@interface MPSGraphDevice
+ (MPSGraphDevice)deviceWithMTLDevice:(id)metalDevice;
+ (id)ANEDevice;
+ (id)CPUDevice;
+ (void)initialize;
- (MPSGraphDevice)initWithDeviceDescriptor:(id)descriptor;
- (MPSGraphDevice)initWithDeviceType:(unsigned int)type metalDevice:(id)device;
@end

@implementation MPSGraphDevice

+ (void)initialize
{
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  v3 = _MergedGlobals_1;
  _MergedGlobals_1 = v2;

  qword_1ECE73D98 = dispatch_queue_create("MPSGraphDevice queue", 0);

  MEMORY[0x1EEE66BB8]();
}

- (MPSGraphDevice)initWithDeviceType:(unsigned int)type metalDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = MPSGraphDevice;
  v8 = [(MPSGraphDevice *)&v15 init];
  objc_storeStrong(&v8->_metalDevice, device);
  if (!v8->_metalDevice)
  {
    v9 = MTLCreateSystemDefaultDevice();
    if ([v9 supportsFamily:1001])
    {
      objc_storeStrong(&v8->_metalDevice, v9);
    }
  }

  v8->_type = type;
  name = [deviceCopy name];
  metalDeviceName = v8->_metalDeviceName;
  v8->_metalDeviceName = name;

  v12 = [[MPSGraphDeviceDescriptor alloc] initWithMPSGraphDevice:v8];
  deviceDescriptor = v8->_deviceDescriptor;
  v8->_deviceDescriptor = v12;

  return v8;
}

+ (MPSGraphDevice)deviceWithMTLDevice:(id)metalDevice
{
  v3 = metalDevice;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v4 = qword_1ECE73D98;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__MPSGraphDevice_deviceWithMTLDevice___block_invoke;
  v8[3] = &unk_1E86D4C40;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __38__MPSGraphDevice_deviceWithMTLDevice___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = _MergedGlobals_1;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        if (![v6 type])
        {
          v7 = [v6 metalDevice];
          v8 = v7 == *(a1 + 32);

          if (v8)
          {
            v9 = *(*(a1 + 40) + 8);
            v10 = *(v9 + 40);
            *(v9 + 40) = v6;

            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = [[MPSGraphDevice alloc] initWithDeviceType:0 metalDevice:*(a1 + 32)];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [_MergedGlobals_1 addObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (MPSGraphDevice)initWithDeviceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = MPSGraphDevice;
  v6 = [(MPSGraphDevice *)&v11 init];
  if (v6)
  {
    v6->_type = [descriptorCopy type];
    metalDeviceName = v6->_metalDeviceName;
    v6->_metalDeviceName = 0;

    metalDevice = v6->_metalDevice;
    v6->_metalDevice = 0;

    objc_storeStrong(&v6->_deviceDescriptor, descriptor);
    v9 = v6;
  }

  return v6;
}

+ (id)ANEDevice
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__MPSGraphDevice_ANEDevice__block_invoke;
  block[3] = &unk_1E86D4C68;
  block[4] = &v5;
  dispatch_sync(qword_1ECE73D98, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __27__MPSGraphDevice_ANEDevice__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = _MergedGlobals_1;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        if ([v6 type] == 2)
        {
          v7 = *(*(a1 + 32) + 8);
          v8 = *(v7 + 40);
          *(v7 + 40) = v6;

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    if ([MEMORY[0x1E698CD58] hasANE])
    {
      v9 = [[MPSGraphDevice alloc] initWithDeviceType:2 metalDevice:0];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [_MergedGlobals_1 addObject:*(*(*(a1 + 32) + 8) + 40)];
    }
  }
}

+ (id)CPUDevice
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__MPSGraphDevice_CPUDevice__block_invoke;
  block[3] = &unk_1E86D4C68;
  block[4] = &v5;
  dispatch_sync(qword_1ECE73D98, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __27__MPSGraphDevice_CPUDevice__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = _MergedGlobals_1;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        if ([v6 type] == 1)
        {
          v7 = *(*(a1 + 32) + 8);
          v8 = *(v7 + 40);
          *(v7 + 40) = v6;

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v9 = [[MPSGraphDevice alloc] initWithDeviceType:1 metalDevice:0];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [_MergedGlobals_1 addObject:*(*(*(a1 + 32) + 8) + 40)];
  }
}

@end