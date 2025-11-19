@interface HMTriggerDeletePolicy
- (HMTriggerDeletePolicy)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3;
@end

@implementation HMTriggerDeletePolicy

- (HMTriggerDeletePolicy)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMTriggerDeletePolicy;
  return [(HMTriggerPolicy *)&v4 initWithCoder:a3];
}

- (id)_initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMTriggerDeletePolicy;
  return [(HMTriggerPolicy *)&v4 _initWithIdentifier:a3];
}

@end