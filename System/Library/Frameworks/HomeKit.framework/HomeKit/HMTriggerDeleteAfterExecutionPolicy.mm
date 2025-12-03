@interface HMTriggerDeleteAfterExecutionPolicy
+ (id)deleteAfterExecutionPolicy;
- (HMTriggerDeleteAfterExecutionPolicy)initWithCoder:(id)coder;
- (HMTriggerDeleteAfterExecutionPolicy)initWithPayload:(id)payload payload:(id)a4;
- (id)_init;
@end

@implementation HMTriggerDeleteAfterExecutionPolicy

- (HMTriggerDeleteAfterExecutionPolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMTriggerDeleteAfterExecutionPolicy;
  return [(HMTriggerDeletePolicy *)&v4 initWithCoder:coder];
}

- (id)_init
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AABDED76-96F7-4033-83B3-3C7D512E5F9D"];
  v6.receiver = self;
  v6.super_class = HMTriggerDeleteAfterExecutionPolicy;
  v4 = [(HMTriggerDeletePolicy *)&v6 _initWithIdentifier:v3];

  return v4;
}

- (HMTriggerDeleteAfterExecutionPolicy)initWithPayload:(id)payload payload:(id)a4
{
  v5.receiver = self;
  v5.super_class = HMTriggerDeleteAfterExecutionPolicy;
  return [(HMTriggerDeletePolicy *)&v5 _initWithIdentifier:payload, a4];
}

+ (id)deleteAfterExecutionPolicy
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__HMTriggerDeleteAfterExecutionPolicy_deleteAfterExecutionPolicy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deleteAfterExecutionPolicy_onceToken != -1)
  {
    dispatch_once(&deleteAfterExecutionPolicy_onceToken, block);
  }

  v2 = deleteAfterExecutionPolicy_policyInstance;

  return v2;
}

uint64_t __65__HMTriggerDeleteAfterExecutionPolicy_deleteAfterExecutionPolicy__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(objc_opt_class()) _init];
  v3 = deleteAfterExecutionPolicy_policyInstance;
  deleteAfterExecutionPolicy_policyInstance = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end