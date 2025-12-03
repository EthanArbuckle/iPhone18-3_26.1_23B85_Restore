@interface BLSHDisableFlipbookAttributeHandler
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)service provider:(id)provider;
- (id)initForService:(void *)service provider:;
@end

@implementation BLSHDisableFlipbookAttributeHandler

+ (id)registerHandlerForService:(id)service provider:(id)provider
{
  providerCopy = provider;
  serviceCopy = service;
  v7 = [[BLSHDisableFlipbookAttributeHandler alloc] initForService:serviceCopy provider:providerCopy];

  [v7 setupService];

  return v7;
}

+ (id)attributeClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)initForService:(void *)service provider:
{
  serviceCopy = service;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = BLSHDisableFlipbookAttributeHandler;
    v7 = objc_msgSendSuper2(&v10, sel_initForService_, a2);
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 6, service);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end