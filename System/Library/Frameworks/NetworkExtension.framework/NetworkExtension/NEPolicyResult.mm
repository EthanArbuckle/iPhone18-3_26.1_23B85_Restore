@interface NEPolicyResult
+ (id)allowUnentitled;
+ (id)divertSocketToControlUnit:(unsigned int)unit;
+ (id)drop;
+ (id)dropWithFlags:(unsigned int)flags;
+ (id)filterWithControlUnit:(unsigned int)unit;
+ (id)netAgentUUID:(id)d;
+ (id)pass;
+ (id)passWithFlags:(unsigned int)flags;
+ (id)prohibitFilters;
+ (id)removeNetworkAgentDomain:(id)domain agentType:(id)type;
+ (id)removeNetworkAgentUUID:(id)d;
+ (id)routeRules:(id)rules;
+ (id)scopeSocketToInterfaceName:(id)name;
+ (id)scopeToDirectInterface;
+ (id)scopedNetworkAgent:(id)agent;
+ (id)skipWithOrder:(unsigned int)order;
+ (id)tunnelIPToInterfaceName:(id)name secondaryResultType:(int64_t)type;
- (NEPolicyResult)init;
@end

@implementation NEPolicyResult

- (NEPolicyResult)init
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Calling init on NEPolicyResult is not valid", v5, 2u);
  }

  return 0;
}

+ (id)allowUnentitled
{
  v2 = [NEPolicyResult alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyResult;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setResultType:13];

  return v3;
}

+ (id)scopedNetworkAgent:(id)agent
{
  agentCopy = agent;
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setResultType:11];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, agentCopy, 56);
    }
  }

  else
  {
    [0 setResultType:11];
    v5 = 0;
  }

  return v5;
}

+ (id)routeRules:(id)rules
{
  rulesCopy = rules;
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setResultType:9];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, rulesCopy, 80);
    }
  }

  else
  {
    [0 setResultType:9];
    v5 = 0;
  }

  return v5;
}

+ (id)removeNetworkAgentDomain:(id)domain agentType:(id)type
{
  domainCopy = domain;
  typeCopy = type;
  v7 = [NEPolicyResult alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyResult;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setResultType:16];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, domainCopy, 64);
      objc_setProperty_atomic_copy(v8, v10, typeCopy, 72);
    }
  }

  else
  {
    [0 setResultType:16];
    v8 = 0;
  }

  return v8;
}

+ (id)removeNetworkAgentUUID:(id)d
{
  dCopy = d;
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setResultType:15];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, dCopy, 56);
    }
  }

  else
  {
    [0 setResultType:15];
    v5 = 0;
  }

  return v5;
}

+ (id)netAgentUUID:(id)d
{
  dCopy = d;
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setResultType:8];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, dCopy, 56);
    }
  }

  else
  {
    [0 setResultType:8];
    v5 = 0;
  }

  return v5;
}

+ (id)prohibitFilters
{
  v2 = [NEPolicyResult alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyResult;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setResultType:14];

  return v3;
}

+ (id)filterWithControlUnit:(unsigned int)unit
{
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setResultType:7];
    if (v5)
    {
      v5[5] = unit;
    }
  }

  else
  {
    [0 setResultType:7];
    v5 = 0;
  }

  return v5;
}

+ (id)tunnelIPToInterfaceName:(id)name secondaryResultType:(int64_t)type
{
  nameCopy = name;
  v6 = [NEPolicyResult alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyResult;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setResultType:6];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, nameCopy, 48);
      v7[5] = type;
    }
  }

  else
  {
    [0 setResultType:6];
    v7 = 0;
  }

  return v7;
}

+ (id)scopeToDirectInterface
{
  v2 = [NEPolicyResult alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyResult;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setResultType:12];

  return v3;
}

+ (id)scopeSocketToInterfaceName:(id)name
{
  nameCopy = name;
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setResultType:5];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, nameCopy, 48);
    }
  }

  else
  {
    [0 setResultType:5];
    v5 = 0;
  }

  return v5;
}

+ (id)divertSocketToControlUnit:(unsigned int)unit
{
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setResultType:4];
    if (v5)
    {
      v5[5] = unit;
    }
  }

  else
  {
    [0 setResultType:4];
    v5 = 0;
  }

  return v5;
}

+ (id)dropWithFlags:(unsigned int)flags
{
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setResultType:3];
    if (v5)
    {
      v5[4] = flags;
    }
  }

  else
  {
    [0 setResultType:3];
    v5 = 0;
  }

  return v5;
}

+ (id)drop
{
  v2 = [NEPolicyResult alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyResult;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setResultType:3];

  return v3;
}

+ (id)skipWithOrder:(unsigned int)order
{
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setResultType:2];
    if (v5)
    {
      v5[2] = order;
    }
  }

  else
  {
    [0 setResultType:2];
    v5 = 0;
  }

  return v5;
}

+ (id)passWithFlags:(unsigned int)flags
{
  v4 = [NEPolicyResult alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyResult;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setResultType:1];
    if (v5)
    {
      v5[3] = flags;
    }
  }

  else
  {
    [0 setResultType:1];
    v5 = 0;
  }

  return v5;
}

+ (id)pass
{
  v2 = [NEPolicyResult alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyResult;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setResultType:1];

  return v3;
}

@end