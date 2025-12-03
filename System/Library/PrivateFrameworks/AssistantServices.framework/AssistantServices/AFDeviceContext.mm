@interface AFDeviceContext
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation AFDeviceContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AFMutableDeviceContext allocWithZone:zone];
  serializedBackingStore = [(AFDeviceContext *)self serializedBackingStore];
  fromLocalDevice = [(AFDeviceContext *)self fromLocalDevice];
  contextCollectorSource = [(AFDeviceContext *)self contextCollectorSource];
  v8 = [(AFMutableDeviceContext *)v4 initWithSerializedBackingStore:serializedBackingStore fromLocalDevice:fromLocalDevice contextCollectorSource:contextCollectorSource];

  return v8;
}

@end