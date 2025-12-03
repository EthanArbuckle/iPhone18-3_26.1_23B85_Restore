@interface ASDTPListProperty
- (ASDTPListProperty)initWithConfig:(id)config;
@end

@implementation ASDTPListProperty

- (ASDTPListProperty)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = ASDTPListProperty;
  v5 = [(ASDTCustomProperty *)&v9 initWithConfig:configCopy propertyDataType:1886155636 qualifierDataType:0];
  v6 = v5;
  if (v5)
  {
    [(ASDTCustomProperty *)v5 setCacheMode:2];
    [(ASDTCustomProperty *)v6 setPlistDeepCopyOnSet:1];
    asdtPropertyValue = [configCopy asdtPropertyValue];
    [(ASDTCustomProperty *)v6 storePropertyValue:asdtPropertyValue];
  }

  return v6;
}

@end