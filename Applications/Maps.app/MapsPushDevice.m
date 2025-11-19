@interface MapsPushDevice
- (MapsPushDevice)initWithIDSDevice:(id)a3;
@end

@implementation MapsPushDevice

- (MapsPushDevice)initWithIDSDevice:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MapsPushDevice;
  v6 = [(MapsPushDevice *)&v10 init];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = v7;
  }

  return v8;
}

@end