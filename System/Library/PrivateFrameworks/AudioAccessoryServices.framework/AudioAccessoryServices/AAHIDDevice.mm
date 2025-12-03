@interface AAHIDDevice
- (AAHIDDevice)initWithHIDDeviceAndSensorInfo:(id)info sensorInfo:(id)sensorInfo;
@end

@implementation AAHIDDevice

- (AAHIDDevice)initWithHIDDeviceAndSensorInfo:(id)info sensorInfo:(id)sensorInfo
{
  infoCopy = info;
  sensorInfoCopy = sensorInfo;
  hidDevice = self->_hidDevice;
  self->_hidDevice = infoCopy;
  v9 = infoCopy;

  sensorInfo = self->_sensorInfo;
  self->_sensorInfo = sensorInfoCopy;

  return self;
}

@end