@interface AAHIDDevice
- (AAHIDDevice)initWithHIDDeviceAndSensorInfo:(id)a3 sensorInfo:(id)a4;
@end

@implementation AAHIDDevice

- (AAHIDDevice)initWithHIDDeviceAndSensorInfo:(id)a3 sensorInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  hidDevice = self->_hidDevice;
  self->_hidDevice = v6;
  v9 = v6;

  sensorInfo = self->_sensorInfo;
  self->_sensorInfo = v7;

  return self;
}

@end