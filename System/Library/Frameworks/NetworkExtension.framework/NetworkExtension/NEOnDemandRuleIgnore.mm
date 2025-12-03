@interface NEOnDemandRuleIgnore
- (NEOnDemandRuleIgnore)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NEOnDemandRuleIgnore

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NEOnDemandRuleIgnore;
  return [(NEOnDemandRule *)&v4 copyWithZone:zone];
}

- (NEOnDemandRuleIgnore)init
{
  v3.receiver = self;
  v3.super_class = NEOnDemandRuleIgnore;
  return [(NEOnDemandRule *)&v3 initWithAction:4];
}

@end