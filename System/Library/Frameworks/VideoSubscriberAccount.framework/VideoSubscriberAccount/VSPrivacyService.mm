@interface VSPrivacyService
- (VSPrivacyService)init;
@end

@implementation VSPrivacyService

- (VSPrivacyService)init
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = VSPrivacyService;
  v2 = [(VSServiceListener *)&v8 init];
  if (v2)
  {
    v9[0] = @"com.apple.VideoSubscriberAccount.PrivacyService";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(VSServiceListener *)v2 setEntitlementNames:v3];

    v4 = VSPrivacyServiceInterface();
    [(VSServiceListener *)v2 setExportedInterface:v4];

    v5 = objc_alloc_init(VSPrivacyVoucherLockbox);
    v6 = [[VSPrivacyFacade alloc] initWithVoucherLockbox:v5];
    [(VSServiceListener *)v2 setExportedObject:v6];
  }

  return v2;
}

@end