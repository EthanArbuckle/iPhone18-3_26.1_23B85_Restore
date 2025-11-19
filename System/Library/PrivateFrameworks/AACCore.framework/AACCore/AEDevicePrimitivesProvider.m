@interface AEDevicePrimitivesProvider
- (id)makePrimitives;
@end

@implementation AEDevicePrimitivesProvider

- (id)makePrimitives
{
  v2 = objc_opt_new();

  return v2;
}

@end