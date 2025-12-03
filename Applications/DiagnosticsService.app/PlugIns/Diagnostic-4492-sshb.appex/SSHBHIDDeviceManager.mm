@interface SSHBHIDDeviceManager
- (SSHBHIDDeviceManager)init;
- (id)devicesFromUsage:(id)usage;
- (id)subscribersFromDevice:(__IOHIDDevice *)device;
- (id)subscribersFromUsage:(id)usage;
- (id)usageFromDevice:(__IOHIDDevice *)device;
- (void)addDevice:(__IOHIDDevice *)device forUsage:(id)usage;
- (void)addSubscriber:(id)subscriber forUsage:(id)usage;
- (void)removeDevice:(__IOHIDDevice *)device;
- (void)removeSubscriber:(id)subscriber forUsage:(id)usage;
@end

@implementation SSHBHIDDeviceManager

- (SSHBHIDDeviceManager)init
{
  v10.receiver = self;
  v10.super_class = SSHBHIDDeviceManager;
  v2 = [(SSHBHIDDeviceManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    usageSubscribers = v2->_usageSubscribers;
    v2->_usageSubscribers = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    usageDeviceMap = v2->_usageDeviceMap;
    v2->_usageDeviceMap = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    deviceUsageMap = v2->_deviceUsageMap;
    v2->_deviceUsageMap = v7;
  }

  return v2;
}

- (void)addSubscriber:(id)subscriber forUsage:(id)usage
{
  usageCopy = usage;
  subscriberCopy = subscriber;
  usageSubscribers = [(SSHBHIDDeviceManager *)self usageSubscribers];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [usageCopy hash]);
  v9 = [usageSubscribers objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(NSMutableSet);
    usageSubscribers2 = [(SSHBHIDDeviceManager *)self usageSubscribers];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [usageCopy hash]);
    [usageSubscribers2 setObject:v10 forKeyedSubscript:v12];
  }

  usageSubscribers3 = [(SSHBHIDDeviceManager *)self usageSubscribers];
  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [usageCopy hash]);
  v15 = [usageSubscribers3 objectForKeyedSubscript:v14];
  [v15 addObject:subscriberCopy];
}

- (void)removeSubscriber:(id)subscriber forUsage:(id)usage
{
  usageCopy = usage;
  subscriberCopy = subscriber;
  usageSubscribers = [(SSHBHIDDeviceManager *)self usageSubscribers];
  v8 = [usageCopy hash];

  v9 = [NSNumber numberWithUnsignedInteger:v8];
  v10 = [usageSubscribers objectForKeyedSubscript:v9];
  [v10 removeObject:subscriberCopy];
}

- (void)addDevice:(__IOHIDDevice *)device forUsage:(id)usage
{
  usageCopy = usage;
  usageDeviceMap = [(SSHBHIDDeviceManager *)self usageDeviceMap];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [usageCopy hash]);
  v8 = [usageDeviceMap objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableSet);
    usageDeviceMap2 = [(SSHBHIDDeviceManager *)self usageDeviceMap];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [usageCopy hash]);
    [usageDeviceMap2 setObject:v9 forKeyedSubscript:v11];
  }

  usageDeviceMap3 = [(SSHBHIDDeviceManager *)self usageDeviceMap];
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [usageCopy hash]);
  v14 = [usageDeviceMap3 objectForKeyedSubscript:v13];
  [v14 addObject:device];

  v15 = [NSValue valueWithNonretainedObject:device];
  deviceUsageMap = [(SSHBHIDDeviceManager *)self deviceUsageMap];
  [deviceUsageMap setObject:usageCopy forKeyedSubscript:v15];
}

- (void)removeDevice:(__IOHIDDevice *)device
{
  v13 = [NSValue valueWithNonretainedObject:?];
  deviceUsageMap = [(SSHBHIDDeviceManager *)self deviceUsageMap];
  v6 = [deviceUsageMap objectForKeyedSubscript:v13];

  if (v6)
  {
    deviceUsageMap2 = [(SSHBHIDDeviceManager *)self deviceUsageMap];
    v8 = [deviceUsageMap2 objectForKeyedSubscript:v13];

    deviceUsageMap3 = [(SSHBHIDDeviceManager *)self deviceUsageMap];
    [deviceUsageMap3 removeObjectForKey:v13];

    if (v8)
    {
      deviceUsageMap4 = [(SSHBHIDDeviceManager *)self deviceUsageMap];
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 hash]);
      v12 = [deviceUsageMap4 objectForKeyedSubscript:v11];
      [v12 removeObject:device];
    }
  }
}

- (id)subscribersFromUsage:(id)usage
{
  usageCopy = usage;
  usageSubscribers = [(SSHBHIDDeviceManager *)self usageSubscribers];
  v6 = [usageCopy hash];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [usageSubscribers objectForKeyedSubscript:v7];

  return v8;
}

- (id)subscribersFromDevice:(__IOHIDDevice *)device
{
  v4 = [(SSHBHIDDeviceManager *)self usageFromDevice:device];
  usageSubscribers = [(SSHBHIDDeviceManager *)self usageSubscribers];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 hash]);
  v7 = [usageSubscribers objectForKeyedSubscript:v6];

  return v7;
}

- (id)usageFromDevice:(__IOHIDDevice *)device
{
  v4 = [NSValue valueWithNonretainedObject:device];
  deviceUsageMap = [(SSHBHIDDeviceManager *)self deviceUsageMap];
  v6 = [deviceUsageMap objectForKeyedSubscript:v4];

  return v6;
}

- (id)devicesFromUsage:(id)usage
{
  usageCopy = usage;
  usageDeviceMap = [(SSHBHIDDeviceManager *)self usageDeviceMap];
  v6 = [usageCopy hash];

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  v8 = [usageDeviceMap objectForKeyedSubscript:v7];

  return v8;
}

@end