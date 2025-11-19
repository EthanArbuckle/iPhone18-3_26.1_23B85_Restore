@interface BLSHGlobalCacheFlipbookOnDisplayWakeAttributeHandler
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)a3 provider:(id)a4;
- (id)initForService:(id)a3 provider:(id)a4;
@end

@implementation BLSHGlobalCacheFlipbookOnDisplayWakeAttributeHandler

+ (id)registerHandlerForService:(id)a3 provider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BLSHGlobalCacheFlipbookOnDisplayWakeAttributeHandler alloc] initForService:v6 provider:v5];

  [v7 setupService];

  return v7;
}

- (id)initForService:(id)a3 provider:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BLSHGlobalCacheFlipbookOnDisplayWakeAttributeHandler;
  v8 = [(BLSHLocalCountingAssertionAttributeHandler *)&v11 initForService:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 6, a4);
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