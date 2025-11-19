@interface AFDeviceContext
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation AFDeviceContext

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [AFMutableDeviceContext allocWithZone:a3];
  v5 = [(AFDeviceContext *)self serializedBackingStore];
  v6 = [(AFDeviceContext *)self fromLocalDevice];
  v7 = [(AFDeviceContext *)self contextCollectorSource];
  v8 = [(AFMutableDeviceContext *)v4 initWithSerializedBackingStore:v5 fromLocalDevice:v6 contextCollectorSource:v7];

  return v8;
}

@end