@interface _GCGenericPhysicalDevicePending(GameController)
- (_GCDefaultPhysicalDevice)_onqueue_createDeviceWithModel:()GameController service:;
@end

@implementation _GCGenericPhysicalDevicePending(GameController)

- (_GCDefaultPhysicalDevice)_onqueue_createDeviceWithModel:()GameController service:
{
  v6 = a4;
  v7 = a3;
  v8 = [_GCDefaultPhysicalDevice alloc];
  manager = [self manager];
  v10 = [(_GCDefaultPhysicalDevice *)v8 initWithHIDDevice:v6 manager:manager];

  [(_GCDefaultPhysicalDevice *)v10 setDelegate:v7];
  objc_setAssociatedObject(v10, "Model", v7, 0x301);

  return v10;
}

@end