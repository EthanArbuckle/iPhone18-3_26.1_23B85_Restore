@interface NEOnDemandRuleConnect
- (NEOnDemandRuleConnect)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NEOnDemandRuleConnect

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = NEOnDemandRuleConnect;
  return [(NEOnDemandRule *)&v4 copyWithZone:a3];
}

- (NEOnDemandRuleConnect)init
{
  v3.receiver = self;
  v3.super_class = NEOnDemandRuleConnect;
  return [(NEOnDemandRule *)&v3 initWithAction:1];
}

@end