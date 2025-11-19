@interface MLCDevice
+ (MLCDevice)deviceWithGPUDevices:(NSArray *)gpus;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (MLCDevice)initWithGPUs:(id)a3;
- (MLCDevice)initWithType:(int)a3 engine:(id)a4;
- (MLCDeviceType)actualDeviceType;
- (NSArray)gpuDevices;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)switchToCPUDevice;
@end

@implementation MLCDevice

+ (MLCDevice)deviceWithGPUDevices:(NSArray *)gpus
{
  v5 = gpus;
  if ([(NSArray *)v5 count])
  {
    v6 = [[a1 alloc] initWithGPUs:v5];
  }

  else
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MLCDevice *)a2 deviceWithGPUDevices:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (MLCDevice)initWithGPUs:(id)a3
{
  v4 = a3;
  v5 = [[MLCDeviceGPU alloc] initWithDeviceList:v4];

  if (v5 && (v6 = v5, -[MLCDeviceGPU deviceList](v6, "deviceList"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
  {
    self = [(MLCDevice *)self initWithType:1 engine:v6];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MLCDevice)initWithType:(int)a3 engine:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MLCDevice;
  v8 = [(MLCDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_engine, a4);
    objc_storeStrong(&v9->_computeEngine, a4);
  }

  return v9;
}

- (void)switchToCPUDevice
{
  [(MLCDevice *)self setType:0];
  v4 = [[MLCDeviceCPU alloc] initWithType:0];
  v3 = objc_autoreleasePoolPush();
  [(MLCDevice *)self setEngine:v4];
  [(MLCDevice *)self setComputeEngine:v4];
  objc_autoreleasePoolPop(v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCDevice *)self type];
  v7 = [(MLCDevice *)self computeEngine];
  v8 = [v3 stringWithFormat:@"%@: { deviceType=%d : computeEngine=%@ }", v5, v6, v7];

  return v8;
}

- (NSArray)gpuDevices
{
  v3 = [(MLCDevice *)self engine];
  v4 = [v3 deviceList];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 conformsToProtocol:&unk_284BC4800];

  if (v6)
  {
    v7 = [(MLCDevice *)self engine];
    v8 = [v7 deviceList];
    v9 = [v8 copy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEBF8] copy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCDevice *)self type];
  v6 = [(MLCDevice *)self computeEngine];
  v7 = [v4 initWithType:v5 engine:v6];

  return v7;
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[MLCDevice type](self, "type"), v5 == [v4 type]))
  {
    v6 = [(MLCDevice *)self computeEngine];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(MLCDevice *)self computeEngine];
      v9 = [v4 computeEngine];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MLCDevice *)self isEqualToDevice:v5];
  }

  return v6;
}

- (MLCDeviceType)actualDeviceType
{
  result = [(MLCDevice *)self type];
  if (result == MLCDeviceTypeAny)
  {
    v4 = [(MLCDevice *)self engine];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    return isKindOfClass & 1;
  }

  return result;
}

+ (void)deviceWithGPUDevices:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: No GPUs specified", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end