@interface VNProcessingDeviceComputeDeviceBridge
- (NSString)description;
- (VNProcessingDeviceComputeDeviceBridge)initWithProcessingDevice:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation VNProcessingDeviceComputeDeviceBridge

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = [(VNProcessingDevice *)self->_processingDevice computeDevice];
  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = VNProcessingDeviceComputeDeviceBridge;
    v6 = [(VNProcessingDeviceComputeDeviceBridge *)&v9 forwardingTargetForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VNProcessingDeviceComputeDeviceBridge *)self processingDevice];
  v7 = [(VNProcessingDeviceComputeDeviceBridge *)self computeDevice];
  v8 = [v3 initWithFormat:@"%@ [ %@ --> %@ ]", v5, v6, v7];

  return v8;
}

- (VNProcessingDeviceComputeDeviceBridge)initWithProcessingDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VNProcessingDeviceComputeDeviceBridge;
  v6 = [(VNProcessingDeviceComputeDeviceBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingDevice, a3);
  }

  return v7;
}

@end