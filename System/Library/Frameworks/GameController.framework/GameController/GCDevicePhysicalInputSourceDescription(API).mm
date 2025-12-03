@interface GCDevicePhysicalInputSourceDescription(API)
- (id)sfSymbolsName;
@end

@implementation GCDevicePhysicalInputSourceDescription(API)

- (id)sfSymbolsName
{
  symbol = [self symbol];
  sfSymbolsName = [symbol sfSymbolsName];

  return sfSymbolsName;
}

@end