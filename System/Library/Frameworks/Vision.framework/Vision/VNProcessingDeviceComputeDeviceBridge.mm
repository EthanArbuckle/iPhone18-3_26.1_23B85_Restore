@interface VNProcessingDeviceComputeDeviceBridge
- (NSString)description;
- (VNProcessingDeviceComputeDeviceBridge)initWithProcessingDevice:(id)device;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation VNProcessingDeviceComputeDeviceBridge

- (id)forwardingTargetForSelector:(SEL)selector
{
  computeDevice = [(VNProcessingDevice *)self->_processingDevice computeDevice];
  if (objc_opt_respondsToSelector())
  {
    v6 = computeDevice;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VNProcessingDeviceComputeDeviceBridge;
    v6 = [(VNProcessingDeviceComputeDeviceBridge *)&v9 forwardingTargetForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  processingDevice = [(VNProcessingDeviceComputeDeviceBridge *)self processingDevice];
  computeDevice = [(VNProcessingDeviceComputeDeviceBridge *)self computeDevice];
  v8 = [v3 initWithFormat:@"%@ [ %@ --> %@ ]", v5, processingDevice, computeDevice];

  return v8;
}

- (VNProcessingDeviceComputeDeviceBridge)initWithProcessingDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = VNProcessingDeviceComputeDeviceBridge;
  v6 = [(VNProcessingDeviceComputeDeviceBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingDevice, device);
  }

  return v7;
}

@end