@interface CBAttribute
- (CBAttribute)initWithUUID:(id)d;
@end

@implementation CBAttribute

- (CBAttribute)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CBAttribute;
  v6 = [(CBAttribute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
  }

  return v7;
}

@end