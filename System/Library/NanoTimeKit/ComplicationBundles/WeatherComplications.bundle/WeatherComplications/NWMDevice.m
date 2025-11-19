@interface NWMDevice
+ (BOOL)deviceSupportsWidgets:(id)a3;
@end

@implementation NWMDevice

+ (BOOL)deviceSupportsWidgets:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"BC465234-0FF9-46F6-9ACD-0394027F67A8"];
  v6 = [v4 supportsCapability:v5];

  return v6;
}

@end