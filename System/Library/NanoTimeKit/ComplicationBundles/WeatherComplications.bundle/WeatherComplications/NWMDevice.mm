@interface NWMDevice
+ (BOOL)deviceSupportsWidgets:(id)widgets;
@end

@implementation NWMDevice

+ (BOOL)deviceSupportsWidgets:(id)widgets
{
  v3 = MEMORY[0x277CCAD78];
  widgetsCopy = widgets;
  v5 = [[v3 alloc] initWithUUIDString:@"BC465234-0FF9-46F6-9ACD-0394027F67A8"];
  v6 = [widgetsCopy supportsCapability:v5];

  return v6;
}

@end