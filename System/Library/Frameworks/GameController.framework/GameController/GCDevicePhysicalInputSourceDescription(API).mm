@interface GCDevicePhysicalInputSourceDescription(API)
- (id)sfSymbolsName;
@end

@implementation GCDevicePhysicalInputSourceDescription(API)

- (id)sfSymbolsName
{
  v1 = [a1 symbol];
  v2 = [v1 sfSymbolsName];

  return v2;
}

@end