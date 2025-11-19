@interface GCDeviceLight
- (GCDeviceLight)initWithCoder:(id)a3;
- (GCDeviceLight)initWithColor:(id)a3;
@end

@implementation GCDeviceLight

- (GCDeviceLight)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GCDeviceLight;
  v6 = [(GCDeviceLight *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (GCDeviceLight)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCDeviceLight;
  v5 = [(GCDeviceLight *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v5->_color;
    v5->_color = v6;
  }

  return v5;
}

@end