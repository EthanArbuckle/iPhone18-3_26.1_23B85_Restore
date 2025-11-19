@interface NSMutableURLRequest(NEHotspotHelper)
- (uint64_t)bindToHotspotHelperCommand:()NEHotspotHelper;
@end

@implementation NSMutableURLRequest(NEHotspotHelper)

- (uint64_t)bindToHotspotHelperCommand:()NEHotspotHelper
{
  v4 = [(NEHotspotHelperCommand *)a3 interfaceName];
  if (v4)
  {
    [a1 setBoundInterfaceIdentifier:v4];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end