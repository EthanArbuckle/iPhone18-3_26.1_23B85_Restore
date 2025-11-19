@interface XDCDeviceManager
- (XDCDeviceManager)init;
@end

@implementation XDCDeviceManager

- (XDCDeviceManager)init
{
  v9.receiver = self;
  v9.super_class = XDCDeviceManager;
  v2 = [(XDCDeviceManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.XDCDeviceManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    devices = v2->_devices;
    v2->_devices = v6;
  }

  return v2;
}

@end