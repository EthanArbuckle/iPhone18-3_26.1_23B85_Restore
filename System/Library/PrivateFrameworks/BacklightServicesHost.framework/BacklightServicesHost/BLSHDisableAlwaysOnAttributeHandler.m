@interface BLSHDisableAlwaysOnAttributeHandler
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)a3 provider:(id)a4;
- (id)initForService:(id)a3 provider:(id)a4;
@end

@implementation BLSHDisableAlwaysOnAttributeHandler

+ (id)registerHandlerForService:(id)a3 provider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initForService:v7 provider:v6];

  [v8 setupService];

  return v8;
}

- (id)initForService:(id)a3 provider:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BLSHDisableAlwaysOnAttributeHandler;
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