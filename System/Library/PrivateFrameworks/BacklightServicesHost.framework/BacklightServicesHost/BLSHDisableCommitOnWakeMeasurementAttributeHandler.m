@interface BLSHDisableCommitOnWakeMeasurementAttributeHandler
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)a3 provider:(id)a4;
- (id)initForService:(void *)a3 provider:;
@end

@implementation BLSHDisableCommitOnWakeMeasurementAttributeHandler

+ (id)registerHandlerForService:(id)a3 provider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BLSHDisableCommitOnWakeMeasurementAttributeHandler alloc] initForService:v6 provider:v5];

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

- (id)initForService:(void *)a3 provider:
{
  v6 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = BLSHDisableCommitOnWakeMeasurementAttributeHandler;
    v7 = objc_msgSendSuper2(&v10, sel_initForService_, a2);
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 6, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end