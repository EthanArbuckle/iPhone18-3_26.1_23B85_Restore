@interface NEFilterRemediationVerdict
+ (NEFilterRemediationVerdict)allowVerdict;
+ (NEFilterRemediationVerdict)dropVerdict;
+ (NEFilterRemediationVerdict)needRulesVerdict;
- (int64_t)filterAction;
@end

@implementation NEFilterRemediationVerdict

- (int64_t)filterAction
{
  v4.receiver = self;
  v4.super_class = NEFilterRemediationVerdict;
  result = [(NEFilterVerdict *)&v4 filterAction];
  if (!result)
  {
    if ([(NEFilterVerdict *)self drop]|| self && self->super._remediate)
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

+ (NEFilterRemediationVerdict)needRulesVerdict
{
  v2 = +[NEFilterRemediationVerdict allowVerdict];
  [v2 setNeedRules:1];

  return v2;
}

+ (NEFilterRemediationVerdict)dropVerdict
{
  v2 = [(NEFilterVerdict *)[NEFilterRemediationVerdict alloc] initWithDrop:1 remediate:0];

  return v2;
}

+ (NEFilterRemediationVerdict)allowVerdict
{
  v2 = [(NEFilterVerdict *)[NEFilterRemediationVerdict alloc] initWithDrop:0 remediate:0];

  return v2;
}

@end