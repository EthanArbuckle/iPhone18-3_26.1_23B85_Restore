@interface Geometry
- (Geometry)initWithDevice:(id)a3;
@end

@implementation Geometry

- (Geometry)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Geometry;
  v6 = [(Geometry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

@end