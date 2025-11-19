@interface NEPolicyCondition
+ (id)accountIdentifier:(id)a3;
+ (id)allInterfaces;
+ (id)clientFlags:(unsigned int)a3;
+ (id)customEntitlement:(id)a3;
+ (id)delegateIsPlatformBinary;
+ (id)domain:(id)a3;
+ (id)domainFilter:(unint64_t)a3;
+ (id)effectiveApplication:(id)a3;
+ (id)effectivePID:(int)a3;
+ (id)effectivePID:(int)a3 version:(int)a4;
+ (id)entitlement;
+ (id)flowIPProtocol:(unsigned __int16)a3;
+ (id)flowLocalAddress:(id)a3 prefix:(unsigned __int8)a4;
+ (id)flowLocalAddressEmpty;
+ (id)flowLocalAddressStart:(id)a3 end:(id)a4;
+ (id)flowRemoteAddress:(id)a3 prefix:(unsigned __int8)a4;
+ (id)flowRemoteAddressEmpty;
+ (id)flowRemoteAddressStart:(id)a3 end:(id)a4;
+ (id)hasSignedResult;
+ (id)ipProtocol:(unsigned __int16)a3;
+ (id)isLoopback;
+ (id)localAddress:(id)a3 prefix:(unsigned __int8)a4;
+ (id)localAddressStart:(id)a3 end:(id)a4;
+ (id)localNetworks;
+ (id)localNetworksWithFlags:(unsigned __int8)a3;
+ (id)packetFilterTags:(unsigned __int16)a3;
+ (id)platformBinary;
+ (id)realApplication:(id)a3;
+ (id)realUID:(unsigned int)a3;
+ (id)remoteAddress:(id)a3 prefix:(unsigned __int8)a4;
+ (id)remoteAddressStart:(id)a3 end:(id)a4;
+ (id)requiredAgentDomain:(id)a3 agentType:(id)a4;
+ (id)schemeUsingPort:(unsigned __int16)a3;
+ (id)scopedInterface:(id)a3;
+ (id)scopedInterfaceFlags:(unsigned int)a3 eflags:(unsigned int)a4 xflags:(unsigned int)a5;
+ (id)sdkVersion:(unsigned int)a3 minSDKVersion:(unsigned int)a4 platform:(unsigned int)a5;
+ (id)signingIdentifier:(id)a3;
+ (id)trafficClassStart:(unsigned int)a3 end:(unsigned int)a4;
+ (id)uid:(unsigned int)a3;
+ (id)url:(id)a3;
+ (id)usesModernNetworkAPI;
- (NEPolicyCondition)init;
@end

@implementation NEPolicyCondition

- (NEPolicyCondition)init
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Calling init on NEPolicyCondition is not valid", v5, 2u);
  }

  return 0;
}

+ (id)hasSignedResult
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:39];

  return v3;
}

+ (id)delegateIsPlatformBinary
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:32];

  return v3;
}

+ (id)isLoopback
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:31];

  return v3;
}

+ (id)flowRemoteAddressEmpty
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:26];

  return v3;
}

+ (id)flowLocalAddressEmpty
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:25];

  return v3;
}

+ (id)usesModernNetworkAPI
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:17];

  return v3;
}

+ (id)signingIdentifier:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:29];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 160);
    }
  }

  else
  {
    [0 setConditionType:29];
    v5 = 0;
  }

  return v5;
}

+ (id)clientFlags:(unsigned int)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:24];
    if (v5)
    {
      v5[14] = a3;
    }
  }

  else
  {
    [0 setConditionType:24];
    v5 = 0;
  }

  return v5;
}

+ (id)packetFilterTags:(unsigned __int16)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:30];
    if (v5)
    {
      v5[7] = a3;
    }
  }

  else
  {
    [0 setConditionType:30];
    v5 = 0;
  }

  return v5;
}

+ (id)requiredAgentDomain:(id)a3 agentType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:16];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, v5, 144);
      objc_setProperty_atomic_copy(v8, v10, v6, 152);
    }
  }

  else
  {
    [0 setConditionType:16];
    v8 = 0;
  }

  return v8;
}

+ (id)sdkVersion:(unsigned int)a3 minSDKVersion:(unsigned int)a4 platform:(unsigned int)a5
{
  v8 = [NEPolicyCondition alloc];
  if (v8)
  {
    v11.receiver = v8;
    v11.super_class = NEPolicyCondition;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    [v9 setConditionType:28];
    if (v9)
    {
      v9[16] = a3;
      v9[17] = a4;
      v9[15] = a5;
    }
  }

  else
  {
    [0 setConditionType:28];
    v9 = 0;
  }

  return v9;
}

+ (id)platformBinary
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:27];

  return v3;
}

+ (id)customEntitlement:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:15];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 136);
    }
  }

  else
  {
    [0 setConditionType:15];
    v5 = 0;
  }

  return v5;
}

+ (id)entitlement
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:15];

  return v3;
}

+ (id)schemeUsingPort:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:37];
    if (v5)
    {
      v5[8] = __rev16(v3);
    }
  }

  else
  {
    [0 setConditionType:37];
    v5 = 0;
  }

  return v5;
}

+ (id)flowRemoteAddressStart:(id)a3 end:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:23];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, v5, 120);
      objc_setProperty_atomic_copy(v8, v10, v6, 128);
    }
  }

  else
  {
    [0 setConditionType:23];
    v8 = 0;
  }

  return v8;
}

+ (id)localNetworksWithFlags:(unsigned __int8)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:18];
    if (v5)
    {
      v5[11] = a3;
    }
  }

  else
  {
    [0 setConditionType:18];
    v5 = 0;
  }

  return v5;
}

+ (id)localNetworks
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:18];

  return v3;
}

+ (id)remoteAddressStart:(id)a3 end:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:14];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, v5, 120);
      objc_setProperty_atomic_copy(v8, v10, v6, 128);
    }
  }

  else
  {
    [0 setConditionType:14];
    v8 = 0;
  }

  return v8;
}

+ (id)flowLocalAddressStart:(id)a3 end:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:21];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, v5, 120);
      objc_setProperty_atomic_copy(v8, v10, v6, 128);
    }
  }

  else
  {
    [0 setConditionType:21];
    v8 = 0;
  }

  return v8;
}

+ (id)localAddressStart:(id)a3 end:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:12];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, v5, 120);
      objc_setProperty_atomic_copy(v8, v10, v6, 128);
    }
  }

  else
  {
    [0 setConditionType:12];
    v8 = 0;
  }

  return v8;
}

+ (id)flowRemoteAddress:(id)a3 prefix:(unsigned __int8)a4
{
  v5 = a3;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:22];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, v5, 120);
      v7[10] = a4;
    }
  }

  else
  {
    [0 setConditionType:22];
    v7 = 0;
  }

  return v7;
}

+ (id)remoteAddress:(id)a3 prefix:(unsigned __int8)a4
{
  v5 = a3;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:13];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, v5, 120);
      v7[10] = a4;
    }
  }

  else
  {
    [0 setConditionType:13];
    v7 = 0;
  }

  return v7;
}

+ (id)flowLocalAddress:(id)a3 prefix:(unsigned __int8)a4
{
  v5 = a3;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:20];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, v5, 120);
      v7[10] = a4;
    }
  }

  else
  {
    [0 setConditionType:20];
    v7 = 0;
  }

  return v7;
}

+ (id)localAddress:(id)a3 prefix:(unsigned __int8)a4
{
  v5 = a3;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:11];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, v5, 120);
      v7[10] = a4;
    }
  }

  else
  {
    [0 setConditionType:11];
    v7 = 0;
  }

  return v7;
}

+ (id)flowIPProtocol:(unsigned __int16)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:19];
    if (v5)
    {
      v5[6] = a3;
    }
  }

  else
  {
    [0 setConditionType:19];
    v5 = 0;
  }

  return v5;
}

+ (id)ipProtocol:(unsigned __int16)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:10];
    if (v5)
    {
      v5[6] = a3;
    }
  }

  else
  {
    [0 setConditionType:10];
    v5 = 0;
  }

  return v5;
}

+ (id)trafficClassStart:(unsigned int)a3 end:(unsigned int)a4
{
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v9.receiver = v6;
    v9.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    [v7 setConditionType:9];
    if (v7)
    {
      v7[12] = a3;
      v7[13] = a4;
    }
  }

  else
  {
    [0 setConditionType:9];
    v7 = 0;
  }

  return v7;
}

+ (id)scopedInterfaceFlags:(unsigned int)a3 eflags:(unsigned int)a4 xflags:(unsigned int)a5
{
  v8 = [NEPolicyCondition alloc];
  if (v8)
  {
    v11.receiver = v8;
    v11.super_class = NEPolicyCondition;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    [v9 setConditionType:43];
    if (v9)
    {
      v9[9] = a3;
      v9[10] = a4;
      v9[11] = a5;
    }
  }

  else
  {
    [0 setConditionType:43];
    v9 = 0;
  }

  return v9;
}

+ (id)scopedInterface:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:8];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 112);
    }
  }

  else
  {
    [0 setConditionType:8];
    v5 = 0;
  }

  return v5;
}

+ (id)allInterfaces
{
  v2 = [NEPolicyCondition alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = NEPolicyCondition;
    v3 = objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    v3 = 0;
  }

  [v3 setConditionType:7];

  return v3;
}

+ (id)url:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:42];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 104);
    }
  }

  else
  {
    [0 setConditionType:42];
    v5 = 0;
  }

  return v5;
}

+ (id)domainFilter:(unint64_t)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:38];
    if (v5)
    {
      v5[8] = v3;
    }
  }

  else
  {
    [0 setConditionType:38];
    v5 = 0;
  }

  return v5;
}

+ (id)domain:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:6];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 96);
    }
  }

  else
  {
    [0 setConditionType:6];
    v5 = 0;
  }

  return v5;
}

+ (id)accountIdentifier:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:5];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 88);
    }
  }

  else
  {
    [0 setConditionType:5];
    v5 = 0;
  }

  return v5;
}

+ (id)realUID:(unsigned int)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:40];
    if (v5)
    {
      v5[7] = a3;
    }
  }

  else
  {
    [0 setConditionType:40];
    v5 = 0;
  }

  return v5;
}

+ (id)uid:(unsigned int)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:4];
    if (v5)
    {
      v5[7] = a3;
    }
  }

  else
  {
    [0 setConditionType:4];
    v5 = 0;
  }

  return v5;
}

+ (id)effectivePID:(int)a3 version:(int)a4
{
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v9.receiver = v6;
    v9.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    [v7 setConditionType:3];
    if (v7)
    {
      v7[5] = a3;
      v7[6] = a4;
    }
  }

  else
  {
    [0 setConditionType:3];
    v7 = 0;
  }

  return v7;
}

+ (id)effectivePID:(int)a3
{
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:3];
    if (v5)
    {
      v5[5] = a3;
      v5[6] = 0;
    }
  }

  else
  {
    [0 setConditionType:3];
    v5 = 0;
  }

  return v5;
}

+ (id)realApplication:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:2];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 80);
    }
  }

  else
  {
    [0 setConditionType:2];
    v5 = 0;
  }

  return v5;
}

+ (id)effectiveApplication:(id)a3
{
  v3 = a3;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:1];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, v3, 80);
    }
  }

  else
  {
    [0 setConditionType:1];
    v5 = 0;
  }

  return v5;
}

@end