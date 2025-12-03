@interface NSMutableURLRequest(NEHotspotHelper)
- (uint64_t)bindToHotspotHelperCommand:()NEHotspotHelper;
@end

@implementation NSMutableURLRequest(NEHotspotHelper)

- (uint64_t)bindToHotspotHelperCommand:()NEHotspotHelper
{
  interfaceName = [(NEHotspotHelperCommand *)a3 interfaceName];
  if (interfaceName)
  {
    [self setBoundInterfaceIdentifier:interfaceName];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end