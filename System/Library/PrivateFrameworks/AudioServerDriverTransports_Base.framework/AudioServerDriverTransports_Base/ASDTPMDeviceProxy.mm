@interface ASDTPMDeviceProxy
+ (id)forPMDevice:(id)device;
- (ASDTPMProtocol)proxiedDevice;
- (BOOL)pmNoStateChangeOnFailure;
- (NSString)name;
- (id)initForPMDevice:(id)device;
- (int)performPowerStateOn;
- (int)performPowerStateSleep;
- (int)powerState;
- (unsigned)pmOrderPowerDown;
- (unsigned)pmOrderPowerUp;
@end

@implementation ASDTPMDeviceProxy

+ (id)forPMDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initForPMDevice:deviceCopy];

  return v5;
}

- (id)initForPMDevice:(id)device
{
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = ASDTPMDeviceProxy;
  v5 = [(ASDTPMDeviceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASDTPMDeviceProxy *)v5 setProxiedDevice:deviceCopy];
  }

  return v6;
}

- (NSString)name
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  name = [proxiedDevice name];

  return name;
}

- (unsigned)pmOrderPowerUp
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  pmOrderPowerUp = [proxiedDevice pmOrderPowerUp];

  return pmOrderPowerUp;
}

- (unsigned)pmOrderPowerDown
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  pmOrderPowerDown = [proxiedDevice pmOrderPowerDown];

  return pmOrderPowerDown;
}

- (BOOL)pmNoStateChangeOnFailure
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  pmNoStateChangeOnFailure = [proxiedDevice pmNoStateChangeOnFailure];

  return pmNoStateChangeOnFailure;
}

- (int)powerState
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  powerState = [proxiedDevice powerState];

  return powerState;
}

- (int)performPowerStateSleep
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  performPowerStateSleep = [proxiedDevice performPowerStateSleep];

  return performPowerStateSleep;
}

- (int)performPowerStateOn
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  performPowerStateOn = [proxiedDevice performPowerStateOn];

  return performPowerStateOn;
}

- (ASDTPMProtocol)proxiedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_proxiedDevice);

  return WeakRetained;
}

@end