@interface NEFilterControlVerdict
+ (NEFilterControlVerdict)allowVerdictWithUpdateRules:(BOOL)updateRules;
+ (NEFilterControlVerdict)dropVerdictWithUpdateRules:(BOOL)updateRules;
+ (NEFilterControlVerdict)updateRules;
- (NEFilterControlVerdict)init;
- (NEFilterControlVerdict)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NEFilterControlVerdict;
  result = [(NEFilterNewFlowVerdict *)&v7 copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NEFilterControlVerdict;
  coderCopy = coder;
  [(NEFilterNewFlowVerdict *)&v6 encodeWithCoder:coderCopy];
  if (self)
  {
    [coderCopy encodeBool:self->_updateRules forKey:{@"UpdateRules", v6.receiver, v6.super_class}];
    handledByDataProvider = self->_handledByDataProvider;
  }

  else
  {
    [coderCopy encodeBool:0 forKey:{@"UpdateRules", v6.receiver, v6.super_class}];
    handledByDataProvider = 0;
  }

  [coderCopy encodeBool:handledByDataProvider forKey:@"HandleByDataProvider"];
}

- (NEFilterControlVerdict)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NEFilterControlVerdict;
  v5 = [(NEFilterNewFlowVerdict *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_updateRules = [coderCopy decodeBoolForKey:@"UpdateRules"];
    v5->_handledByDataProvider = [coderCopy decodeBoolForKey:@"HandleByDataProvider"];
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