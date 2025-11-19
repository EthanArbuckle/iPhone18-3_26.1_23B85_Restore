@interface CCNEPolicyResult
+ (id)drop;
+ (id)netAgentUUID:(id)a3;
+ (id)removeNetworkAgentUUID:(id)a3;
+ (id)scopeSocketToInterfaceName:(id)a3;
+ (id)scopedNetworkAgent:(id)a3;
+ (id)skipWithOrder:(unsigned int)a3;
- (CCNEPolicyResult)init;
@end

@implementation CCNEPolicyResult

- (CCNEPolicyResult)init
{
  v3.receiver = self;
  v3.super_class = CCNEPolicyResult;
  return [(CCNEPolicyResult *)&v3 init];
}

+ (id)skipWithOrder:(unsigned int)a3
{
  v3 = *&a3;
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

+ (id)netAgentUUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult netAgentUUID:v3];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

+ (id)removeNetworkAgentUUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult removeNetworkAgentUUID:v3];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

+ (id)scopedNetworkAgent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult scopedNetworkAgent:v3];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

+ (id)scopeSocketToInterfaceName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CCNEPolicyResult);
  v5 = [NEPolicyResult scopeSocketToInterfaceName:v3];
  v6 = v4->result;
  v4->result = v5;

  return v4;
}

@end