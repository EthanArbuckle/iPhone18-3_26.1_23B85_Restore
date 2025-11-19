@interface NEOnDemandRuleDisconnect
- (NEOnDemandRuleDisconnect)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NEOnDemandRuleDisconnect

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = NEOnDemandRuleDisconnect;
  return [(NEOnDemandRule *)&v4 copyWithZone:a3];
}

- (NEOnDemandRuleDisconnect)init
{
  v3.receiver = self;
  v3.super_class = NEOnDemandRuleDisconnect;
  return [(NEOnDemandRule *)&v3 initWithAction:2];
}

@end