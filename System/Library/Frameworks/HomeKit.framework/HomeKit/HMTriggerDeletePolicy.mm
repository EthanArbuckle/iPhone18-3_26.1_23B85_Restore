@interface HMTriggerDeletePolicy
- (HMTriggerDeletePolicy)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier;
@end

@implementation HMTriggerDeletePolicy

- (HMTriggerDeletePolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMTriggerDeletePolicy;
  return [(HMTriggerPolicy *)&v4 initWithCoder:coder];
}

- (id)_initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = HMTriggerDeletePolicy;
  return [(HMTriggerPolicy *)&v4 _initWithIdentifier:identifier];
}

@end