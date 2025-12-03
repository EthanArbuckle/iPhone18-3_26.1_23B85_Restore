@interface NEOnDemandRuleConnect
- (NEOnDemandRuleConnect)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NEOnDemandRuleConnect

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NEOnDemandRuleConnect;
  return [(NEOnDemandRule *)&v4 copyWithZone:zone];
}

- (NEOnDemandRuleConnect)init
{
  v3.receiver = self;
  v3.super_class = NEOnDemandRuleConnect;
  return [(NEOnDemandRule *)&v3 initWithAction:1];
}

@end