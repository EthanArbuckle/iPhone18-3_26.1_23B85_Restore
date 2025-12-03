@interface Geometry
- (Geometry)initWithDevice:(id)device;
@end

@implementation Geometry

- (Geometry)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = Geometry;
  v6 = [(Geometry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

@end