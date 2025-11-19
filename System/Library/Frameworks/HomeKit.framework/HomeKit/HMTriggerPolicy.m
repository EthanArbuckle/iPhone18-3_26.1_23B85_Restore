@interface HMTriggerPolicy
- (HMTriggerPolicy)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3;
@end

@implementation HMTriggerPolicy

- (HMTriggerPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMT.triggerPolicyUUIDCodingKey"];

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v7 = [(HMTriggerPolicy *)self _initWithIdentifier:v6];

  return v7;
}

- (id)_initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMTriggerPolicy;
  v6 = [(HMTriggerPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end