@interface ASDTPListProperty
- (ASDTPListProperty)initWithConfig:(id)a3;
@end

@implementation ASDTPListProperty

- (ASDTPListProperty)initWithConfig:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDTPListProperty;
  v5 = [(ASDTCustomProperty *)&v9 initWithConfig:v4 propertyDataType:1886155636 qualifierDataType:0];
  v6 = v5;
  if (v5)
  {
    [(ASDTCustomProperty *)v5 setCacheMode:2];
    [(ASDTCustomProperty *)v6 setPlistDeepCopyOnSet:1];
    v7 = [v4 asdtPropertyValue];
    [(ASDTCustomProperty *)v6 storePropertyValue:v7];
  }

  return v6;
}

@end