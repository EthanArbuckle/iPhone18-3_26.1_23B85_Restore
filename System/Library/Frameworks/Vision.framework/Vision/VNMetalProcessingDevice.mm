@interface VNMetalProcessingDevice
+ (id)allDevices;
- (BOOL)isEqual:(id)equal;
- (VNMetalProcessingDevice)initWithMetalDevice:(id)device;
- (id)computeDevice;
- (id)description;
- (unint64_t)hash;
@end

@implementation VNMetalProcessingDevice

- (id)computeDevice
{
  metalDevice = [(VNMetalProcessingDevice *)self metalDevice];
  v3 = [VNComputeDeviceUtilities computeDeviceForMetalDevice:metalDevice];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = VNMetalProcessingDevice;
  v3 = [(VNProcessingDevice *)&v7 description];
  metalDevice = [(VNMetalProcessingDevice *)self metalDevice];
  v5 = [v3 stringByAppendingFormat:@"_%llu", objc_msgSend(metalDevice, "registryID")];

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNMetalProcessingDevice;
  v3 = [(VNProcessingDevice *)&v7 hash];
  metalDevice = [(VNMetalProcessingDevice *)self metalDevice];
  v5 = [metalDevice hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = VNMetalProcessingDevice;
  if ([(VNProcessingDevice *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    metalDevice = [(VNMetalProcessingDevice *)self metalDevice];
    metalDevice2 = [v5 metalDevice];

    v8 = [metalDevice isEqual:metalDevice2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (VNMetalProcessingDevice)initWithMetalDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = VNMetalProcessingDevice;
  v6 = [(VNMetalProcessingDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalDevice, device);
  }

  return v7;
}

+ (id)allDevices
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = MTLCreateSystemDefaultDevice();
  v6 = [v4 initWithObjects:{v5, 0}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [[self alloc] initWithMetalDevice:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

@end