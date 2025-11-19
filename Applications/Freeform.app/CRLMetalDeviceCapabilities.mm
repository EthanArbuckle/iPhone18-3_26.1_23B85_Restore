@interface CRLMetalDeviceCapabilities
- (BOOL)supportsGPUFamily:(int64_t)a3;
- (CRLMetalDeviceCapabilities)initWithDevice:(id)a3;
- (MTLDevice)device;
- (int64_t)p_deviceGPUFamily;
- (void)p_assignFeatureSet;
@end

@implementation CRLMetalDeviceCapabilities

- (CRLMetalDeviceCapabilities)initWithDevice:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLMetalDeviceCapabilities;
  v5 = [(CRLMetalDeviceCapabilities *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101387450();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101387478();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101387528();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLMetalDeviceCapabilities initWithDevice:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMetalDeviceCapabilities.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:20 isFatal:0 description:"invalid nil value for '%{public}s'", "device"];
    }

    objc_storeWeak(&v5->_device, v4);
    v5->_deviceGPUFamily = [(CRLMetalDeviceCapabilities *)v5 p_deviceGPUFamily];
    [(CRLMetalDeviceCapabilities *)v5 p_assignFeatureSet];
  }

  return v5;
}

- (int64_t)p_deviceGPUFamily
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v4 = [WeakRetained supportsFamily:1005];

  if (v4)
  {
    return 5;
  }

  v6 = objc_loadWeakRetained(&self->_device);
  v7 = [v6 supportsFamily:1004];

  if (v7)
  {
    return 4;
  }

  v8 = objc_loadWeakRetained(&self->_device);
  v9 = [v8 supportsFamily:1003];

  if (v9)
  {
    return 3;
  }

  v10 = objc_loadWeakRetained(&self->_device);
  v11 = [v10 supportsFamily:1002];

  if (v11)
  {
    return 2;
  }

  v12 = objc_loadWeakRetained(&self->_device);
  v13 = [v12 supportsFamily:1001];

  return v13;
}

- (BOOL)supportsGPUFamily:(int64_t)a3
{
  if ((a3 - 6) > 0xFFFFFFFFFFFFFFFALL)
  {
    return self->_deviceGPUFamily >= a3;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101387550();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101387564();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101387604();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLMetalDeviceCapabilities supportsGPUFamily:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMetalDeviceCapabilities.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:62 isFatal:0 description:"Can't compare iOS to macOS GPUs."];

  return 0;
}

- (void)p_assignFeatureSet
{
  self->_supportsFunctionBufferReadWrite = 0;
  self->_maximumTotalThreadgroupMemory = 16352.0;
  if ([(CRLMetalDeviceCapabilities *)self supportsGPUFamily:5])
  {
    self->_supportsFunctionBufferReadWrite = 1;
    v3 = 65536.0;
LABEL_5:
    self->_maximumTotalThreadgroupMemory = v3;
    goto LABEL_6;
  }

  if ([(CRLMetalDeviceCapabilities *)self supportsGPUFamily:4])
  {
    self->_supportsFunctionBufferReadWrite = 1;
    v3 = 32768.0;
    goto LABEL_5;
  }

  if ([(CRLMetalDeviceCapabilities *)self supportsGPUFamily:3])
  {
    self->_maximumTotalThreadgroupMemory = 16384.0;
    self->_supportsFunctionBufferReadWrite = 1;
  }

LABEL_6:
  self->_isCoreImageMetalCapable = [(CRLMetalDeviceCapabilities *)self supportsGPUFamily:1];
}

- (MTLDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end