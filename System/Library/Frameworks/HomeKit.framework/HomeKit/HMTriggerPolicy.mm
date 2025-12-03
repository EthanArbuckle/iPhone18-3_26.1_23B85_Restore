@interface HMTriggerPolicy
- (HMTriggerPolicy)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier;
@end

@implementation HMTriggerPolicy

- (HMTriggerPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMT.triggerPolicyUUIDCodingKey"];

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v7 = [(HMTriggerPolicy *)self _initWithIdentifier:v6];

  return v7;
}

- (id)_initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMTriggerPolicy;
  v6 = [(HMTriggerPolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

@end