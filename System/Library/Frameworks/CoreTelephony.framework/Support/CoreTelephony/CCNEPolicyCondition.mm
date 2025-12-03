@interface CCNEPolicyCondition
+ (id)accountIdentifier:(id)identifier;
+ (id)allInterfaces;
+ (id)clientProhibitsConstrained;
+ (id)delegateIsPlatformBinary;
+ (id)domain:(id)domain;
+ (id)effectiveApplication:(id)application;
+ (id)effectivePID:(int)d;
+ (id)flowRemoteAddress:(id)address prefix:(unsigned __int8)prefix;
+ (id)flowRemoteAddressStart:(id)start end:(id)end;
+ (id)ipProtocol:(unsigned __int16)protocol;
+ (id)platformBinary;
+ (id)requiredAgentDomain:(id)domain agentType:(id)type;
+ (id)scopedInterface:(id)interface;
+ (id)trafficClassStart:(unsigned int)start end:(unsigned int)end;
+ (id)usesModernNetworkAPI;
- (CCNEPolicyCondition)init;
- (void)setNegative:(BOOL)negative;
@end

@implementation CCNEPolicyCondition

- (CCNEPolicyCondition)init
{
  v3.receiver = self;
  v3.super_class = CCNEPolicyCondition;
  return [(CCNEPolicyCondition *)&v3 init];
}

+ (id)accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(CCNEPolicyCondition);
  v5 = [NEPolicyCondition accountIdentifier:identifierCopy];
  condition = v4->condition;
  v4->condition = v5;

  return v4;
}

+ (id)effectiveApplication:(id)application
{
  applicationCopy = application;
  v4 = objc_alloc_init(CCNEPolicyCondition);
  v5 = [NEPolicyCondition effectiveApplication:applicationCopy];
  condition = v4->condition;
  v4->condition = v5;

  return v4;
}

+ (id)effectivePID:(int)d
{
  v3 = *&d;
  v4 = objc_alloc_init(CCNEPolicyCondition);
  v5 = [NEPolicyCondition effectivePID:v3];
  condition = v4->condition;
  v4->condition = v5;

  return v4;
}

+ (id)trafficClassStart:(unsigned int)start end:(unsigned int)end
{
  v4 = *&end;
  v5 = *&start;
  v6 = objc_alloc_init(CCNEPolicyCondition);
  v7 = [NEPolicyCondition trafficClassStart:v5 end:v4];
  condition = v6->condition;
  v6->condition = v7;

  return v6;
}

+ (id)domain:(id)domain
{
  domainCopy = domain;
  v4 = objc_alloc_init(CCNEPolicyCondition);
  v5 = [NEPolicyCondition domain:domainCopy];
  condition = v4->condition;
  v4->condition = v5;

  return v4;
}

+ (id)flowRemoteAddress:(id)address prefix:(unsigned __int8)prefix
{
  prefixCopy = prefix;
  addressCopy = address;
  v6 = objc_alloc_init(CCNEPolicyCondition);
  v7 = [NEPolicyCondition flowRemoteAddress:addressCopy prefix:prefixCopy];
  condition = v6->condition;
  v6->condition = v7;

  return v6;
}

+ (id)flowRemoteAddressStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v7 = objc_alloc_init(CCNEPolicyCondition);
  v8 = [NEPolicyCondition flowRemoteAddressStart:startCopy end:endCopy];
  condition = v7->condition;
  v7->condition = v8;

  return v7;
}

+ (id)ipProtocol:(unsigned __int16)protocol
{
  protocolCopy = protocol;
  v4 = objc_alloc_init(CCNEPolicyCondition);
  v5 = [NEPolicyCondition ipProtocol:protocolCopy];
  condition = v4->condition;
  v4->condition = v5;

  return v4;
}

+ (id)allInterfaces
{
  v2 = objc_alloc_init(CCNEPolicyCondition);
  v3 = +[NEPolicyCondition allInterfaces];
  condition = v2->condition;
  v2->condition = v3;

  return v2;
}

+ (id)scopedInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = objc_alloc_init(CCNEPolicyCondition);
  v5 = [NEPolicyCondition scopedInterface:interfaceCopy];
  condition = v4->condition;
  v4->condition = v5;

  return v4;
}

+ (id)platformBinary
{
  v2 = objc_alloc_init(CCNEPolicyCondition);
  v3 = +[NEPolicyCondition platformBinary];
  condition = v2->condition;
  v2->condition = v3;

  return v2;
}

+ (id)delegateIsPlatformBinary
{
  v2 = objc_alloc_init(CCNEPolicyCondition);
  v3 = +[NEPolicyCondition delegateIsPlatformBinary];
  condition = v2->condition;
  v2->condition = v3;

  return v2;
}

+ (id)requiredAgentDomain:(id)domain agentType:(id)type
{
  domainCopy = domain;
  typeCopy = type;
  v7 = objc_alloc_init(CCNEPolicyCondition);
  v8 = [NEPolicyCondition requiredAgentDomain:domainCopy agentType:typeCopy];
  condition = v7->condition;
  v7->condition = v8;

  return v7;
}

+ (id)clientProhibitsConstrained
{
  v2 = objc_alloc_init(CCNEPolicyCondition);
  v3 = [NEPolicyCondition clientFlags:4096];
  condition = v2->condition;
  v2->condition = v3;

  return v2;
}

+ (id)usesModernNetworkAPI
{
  v2 = objc_alloc_init(CCNEPolicyCondition);
  v3 = +[NEPolicyCondition usesModernNetworkAPI];
  condition = v2->condition;
  v2->condition = v3;

  return v2;
}

- (void)setNegative:(BOOL)negative
{
  condition = self->condition;
  if (condition)
  {
    [(NEPolicyCondition *)condition setNegative:negative];
  }
}

@end