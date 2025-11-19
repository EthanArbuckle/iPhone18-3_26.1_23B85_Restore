@interface HIDDevice
- (id)description;
- (void)dealloc;
@end

@implementation HIDDevice

- (void)dealloc
{
  _IOHIDDeviceReleasePrivate(self);
  v3.receiver = self;
  v3.super_class = HIDDevice;
  [(HIDDevice *)&v3 dealloc];
}

- (id)description
{
  v2 = IOHIDDeviceCopyDescription(self);

  return v2;
}

@end