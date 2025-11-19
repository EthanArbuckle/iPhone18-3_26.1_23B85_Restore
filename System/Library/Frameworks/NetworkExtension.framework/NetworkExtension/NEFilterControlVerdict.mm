@interface NEFilterControlVerdict
+ (NEFilterControlVerdict)allowVerdictWithUpdateRules:(BOOL)updateRules;
+ (NEFilterControlVerdict)dropVerdictWithUpdateRules:(BOOL)updateRules;
+ (NEFilterControlVerdict)updateRules;
- (NEFilterControlVerdict)init;
- (NEFilterControlVerdict)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEFilterControlVerdict

- (NEFilterControlVerdict)init
{
  v3.receiver = self;
  v3.super_class = NEFilterControlVerdict;
  result = [(NEFilterControlVerdict *)&v3 init];
  if (result)
  {
    result->_updateRules = 0;
    result->_handledByDataProvider = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NEFilterControlVerdict;
  result = [(NEFilterNewFlowVerdict *)&v7 copyWithZone:a3];
  if (self)
  {
    updateRules = self->_updateRules;
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  updateRules = 0;
  if (result)
  {
LABEL_3:
    *(result + 72) = updateRules;
  }

LABEL_4:
  if (self)
  {
    handledByDataProvider = self->_handledByDataProvider;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    handledByDataProvider = 0;
    if (!result)
    {
      return result;
    }
  }

  *(result + 73) = handledByDataProvider;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NEFilterControlVerdict;
  v4 = a3;
  [(NEFilterNewFlowVerdict *)&v6 encodeWithCoder:v4];
  if (self)
  {
    [v4 encodeBool:self->_updateRules forKey:{@"UpdateRules", v6.receiver, v6.super_class}];
    handledByDataProvider = self->_handledByDataProvider;
  }

  else
  {
    [v4 encodeBool:0 forKey:{@"UpdateRules", v6.receiver, v6.super_class}];
    handledByDataProvider = 0;
  }

  [v4 encodeBool:handledByDataProvider forKey:@"HandleByDataProvider"];
}

- (NEFilterControlVerdict)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NEFilterControlVerdict;
  v5 = [(NEFilterNewFlowVerdict *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_updateRules = [v4 decodeBoolForKey:@"UpdateRules"];
    v5->_handledByDataProvider = [v4 decodeBoolForKey:@"HandleByDataProvider"];
  }

  return v5;
}

+ (NEFilterControlVerdict)updateRules
{
  v2 = objc_alloc_init(NEFilterControlVerdict);
  if (v2)
  {
    v2->_updateRules = 1;
  }

  return v2;
}

+ (NEFilterControlVerdict)dropVerdictWithUpdateRules:(BOOL)updateRules
{
  v4 = [(NEFilterVerdict *)[NEFilterControlVerdict alloc] initWithDrop:1 remediate:0];
  if (v4)
  {
    v4->_updateRules = updateRules;
    v4->_handledByDataProvider = 0;
  }

  return v4;
}

+ (NEFilterControlVerdict)allowVerdictWithUpdateRules:(BOOL)updateRules
{
  v4 = [(NEFilterVerdict *)[NEFilterControlVerdict alloc] initWithDrop:0 remediate:0];
  [(NEFilterNewFlowVerdict *)v4 setFilterInbound:0];
  [(NEFilterNewFlowVerdict *)v4 setFilterOutbound:0];
  if (v4)
  {
    v4->_updateRules = updateRules;
    v4->_handledByDataProvider = 0;
  }

  return v4;
}

@end