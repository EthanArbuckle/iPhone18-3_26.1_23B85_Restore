@interface AEConcreteDevicePrimitives
- (AEConcreteDevicePrimitives)init;
- (int64_t)deviceType;
@end

@implementation AEConcreteDevicePrimitives

- (AEConcreteDevicePrimitives)init
{
  v6.receiver = self;
  v6.super_class = AEConcreteDevicePrimitives;
  v2 = [(AEConcreteDevicePrimitives *)&v6 init];
  if (v2)
  {
    v3 = MGGetSInt32Answer() - 1;
    if (v3 > 0xA)
    {
      v4 = 0;
    }

    else
    {
      v4 = qword_23C1BBD40[v3];
    }

    v2->_deviceTypeInternal = v4;
  }

  return v2;
}

- (int64_t)deviceType
{
  if (self)
  {
    return *(self + 8);
  }

  return self;
}

@end