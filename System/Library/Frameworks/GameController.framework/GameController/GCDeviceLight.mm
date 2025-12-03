@interface GCDeviceLight
- (GCDeviceLight)initWithCoder:(id)coder;
- (GCDeviceLight)initWithColor:(id)color;
@end

@implementation GCDeviceLight

- (GCDeviceLight)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = GCDeviceLight;
  v6 = [(GCDeviceLight *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (GCDeviceLight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GCDeviceLight;
  v5 = [(GCDeviceLight *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v5->_color;
    v5->_color = v6;
  }

  return v5;
}

@end