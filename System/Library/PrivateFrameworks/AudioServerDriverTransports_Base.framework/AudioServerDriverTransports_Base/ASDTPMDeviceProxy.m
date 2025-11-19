@interface ASDTPMDeviceProxy
+ (id)forPMDevice:(id)a3;
- (ASDTPMProtocol)proxiedDevice;
- (BOOL)pmNoStateChangeOnFailure;
- (NSString)name;
- (id)initForPMDevice:(id)a3;
- (int)performPowerStateOn;
- (int)performPowerStateSleep;
- (int)powerState;
- (unsigned)pmOrderPowerDown;
- (unsigned)pmOrderPowerUp;
@end

@implementation ASDTPMDeviceProxy

+ (id)forPMDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForPMDevice:v4];

  return v5;
}

- (id)initForPMDevice:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASDTPMDeviceProxy;
  v5 = [(ASDTPMDeviceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASDTPMDeviceProxy *)v5 setProxiedDevice:v4];
  }

  return v6;
}

- (NSString)name
{
  v2 = [(ASDTPMDeviceProxy *)self proxiedDevice];
  v3 = [v2 name];

  return v3;
}

- (unsigned)pmOrderPowerUp
{
  v2 = [(ASDTPMDeviceProxy *)self proxiedDevice];
  v3 = [v2 pmOrderPowerUp];

  return v3;
}

- (unsigned)pmOrderPowerDown
{
  v2 = [(ASDTPMDeviceProxy *)self proxiedDevice];
  v3 = [v2 pmOrderPowerDown];

  return v3;
}

- (BOOL)pmNoStateChangeOnFailure
{
  v2 = [(ASDTPMDeviceProxy *)self proxiedDevice];
  v3 = [v2 pmNoStateChangeOnFailure];

  return v3;
}

- (int)powerState
{
  v2 = [(ASDTPMDeviceProxy *)self proxiedDevice];
  v3 = [v2 powerState];

  return v3;
}

- (int)performPowerStateSleep
{
  v2 = [(ASDTPMDeviceProxy *)self proxiedDevice];
  v3 = [v2 performPowerStateSleep];

  return v3;
}

- (int)performPowerStateOn
{
  v2 = [(ASDTPMDeviceProxy *)self proxiedDevice];
  v3 = [v2 performPowerStateOn];

  return v3;
}

- (ASDTPMProtocol)proxiedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_proxiedDevice);

  return WeakRetained;
}

@end