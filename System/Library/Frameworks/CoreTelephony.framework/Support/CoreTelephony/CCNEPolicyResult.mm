@interface CCNEPolicyResult
+ (id)drop;
+ (id)netAgentUUID:(id)d;
+ (id)removeNetworkAgentUUID:(id)d;
+ (id)scopeSocketToInterfaceName:(id)name;
+ (id)scopedNetworkAgent:(id)agent;
+ (id)skipWithOrder:(unsigned int)order;
- (CCNEPolicyResult)init;
@end

@implementation CCNEPolicyResult

- (CCNEPolicyResult)init
{
  v3.receiver = self;
  v3.super_class = CCNEPolicyResult;
  return [(CCNEPolicyResult *)&v3 init];
}

+ (id)skipWithOrder:(unsigned int)order
{
  v3 = *&order;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult skipWithOrder:v3];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

+ (id)drop
{
  v2 = objc_alloc_init(CCNEPolicyResult);
  v3 = +[NEPolicyResult drop];
  v4 = v2->result;
  v2->result = v3;

  return v2;
}

+ (id)netAgentUUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult netAgentUUID:dCopy];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

+ (id)removeNetworkAgentUUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult removeNetworkAgentUUID:dCopy];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

+ (id)scopedNetworkAgent:(id)agent
{
  agentCopy = agent;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult scopedNetworkAgent:agentCopy];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

+ (id)scopeSocketToInterfaceName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult scopeSocketToInterfaceName:nameCopy];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

@end