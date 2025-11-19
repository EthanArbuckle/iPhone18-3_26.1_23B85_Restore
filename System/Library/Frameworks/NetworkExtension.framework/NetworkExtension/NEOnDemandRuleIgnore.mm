@interface NEOnDemandRuleIgnore
- (NEOnDemandRuleIgnore)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NEOnDemandRuleIgnore

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = NEOnDemandRuleIgnore;
  return [(NEOnDemandRule *)&v4 copyWithZone:a3];
}

- (NEOnDemandRuleIgnore)init
{
  v3.receiver = self;
  v3.super_class = NEOnDemandRuleIgnore;
  return [(NEOnDemandRule *)&v3 initWithAction:4];
}

@end