@interface AAMessagingDevice
- (AAMessagingDevice)initWithDevice:(id)device;
@end

@implementation AAMessagingDevice

- (AAMessagingDevice)initWithDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = AAMessagingDevice;
  v6 = [(AAMessagingDevice *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    productBuildVersion = [deviceCopy productBuildVersion];
    v9 = [productBuildVersion copy];
    productBuildVersion = v7->_productBuildVersion;
    v7->_productBuildVersion = v9;

    modelIdentifier = [deviceCopy modelIdentifier];
    v12 = [modelIdentifier copy];
    modelIdentifier = v7->_modelIdentifier;
    v7->_modelIdentifier = v12;
  }

  return v7;
}

@end