@interface VSDeveloperService
- (VSDeveloperService)init;
@end

@implementation VSDeveloperService

- (VSDeveloperService)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = VSDeveloperService;
  v2 = [(VSServiceListener *)&v7 init];
  if (v2)
  {
    v8[0] = @"com.apple.VideoSubscriberAccount.DeveloperService";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(VSServiceListener *)v2 setEntitlementNames:v3];

    v4 = VSDeveloperServiceInterface();
    [(VSServiceListener *)v2 setExportedInterface:v4];

    v5 = objc_alloc_init(VSDeveloperModeStore);
    [(VSServiceListener *)v2 setExportedObject:v5];
  }

  return v2;
}

@end