@interface APKOutputDeviceDiscoverySession
- (APKOutputDeviceDiscoverySession)init;
- (NSArray)availableOutputDevices;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
@end

@implementation APKOutputDeviceDiscoverySession

- (APKOutputDeviceDiscoverySession)init
{
  v6.receiver = self;
  v6.super_class = APKOutputDeviceDiscoverySession;
  v2 = [(APKOutputDeviceDiscoverySession *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CB86B0]) initWithDeviceFeatures:8];
    session = v2->_session;
    v2->_session = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(APKOutputDeviceDiscoverySession *)self deactivate];
  v3.receiver = self;
  v3.super_class = APKOutputDeviceDiscoverySession;
  [(APKOutputDeviceDiscoverySession *)&v3 dealloc];
}

- (NSArray)availableOutputDevices
{
  v2 = [(APKOutputDeviceDiscoverySession *)self session];
  v3 = [v2 availableOutputDevices];

  return v3;
}

- (void)activate
{
  v2 = [(APKOutputDeviceDiscoverySession *)self session];
  [v2 setDiscoveryMode:2];
}

- (void)deactivate
{
  v2 = [(APKOutputDeviceDiscoverySession *)self session];
  [v2 setDiscoveryMode:0];
}

@end