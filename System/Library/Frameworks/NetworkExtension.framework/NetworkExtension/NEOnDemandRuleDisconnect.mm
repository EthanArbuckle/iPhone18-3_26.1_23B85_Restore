@interface NEOnDemandRuleDisconnect
- (NEOnDemandRuleDisconnect)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NEOnDemandRuleDisconnect

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NEOnDemandRuleDisconnect;
  return [(NEOnDemandRule *)&v4 copyWithZone:zone];
}

- (NEOnDemandRuleDisconnect)init
{
  v3.receiver = self;
  v3.super_class = NEOnDemandRuleDisconnect;
  return [(NEOnDemandRule *)&v3 initWithAction:2];
}

@end