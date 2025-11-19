@interface AAMessagingDevice
- (AAMessagingDevice)initWithDevice:(id)a3;
@end

@implementation AAMessagingDevice

- (AAMessagingDevice)initWithDevice:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = AAMessagingDevice;
  v6 = [(AAMessagingDevice *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [v5 productBuildVersion];
    v9 = [v8 copy];
    productBuildVersion = v7->_productBuildVersion;
    v7->_productBuildVersion = v9;

    v11 = [v5 modelIdentifier];
    v12 = [v11 copy];
    modelIdentifier = v7->_modelIdentifier;
    v7->_modelIdentifier = v12;
  }

  return v7;
}

@end