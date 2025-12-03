@interface BLSHGlobal1HzFlipbookAttributeHandler
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)service provider:(id)provider;
- (id)initForService:(id)service provider:(id)provider;
@end

@implementation BLSHGlobal1HzFlipbookAttributeHandler

+ (id)registerHandlerForService:(id)service provider:(id)provider
{
  providerCopy = provider;
  serviceCopy = service;
  v7 = [[BLSHGlobal1HzFlipbookAttributeHandler alloc] initForService:serviceCopy provider:providerCopy];

  [v7 setupService];

  return v7;
}

- (id)initForService:(id)service provider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = BLSHGlobal1HzFlipbookAttributeHandler;
  v8 = [(BLSHLocalCountingAssertionAttributeHandler *)&v11 initForService:service];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 6, provider);
  }

  return v9;
}

+ (id)attributeClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end