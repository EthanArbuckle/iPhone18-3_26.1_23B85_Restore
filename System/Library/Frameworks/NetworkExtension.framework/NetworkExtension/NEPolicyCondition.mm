@interface NEPolicyCondition
+ (id)accountIdentifier:(id)identifier;
+ (id)allInterfaces;
+ (id)clientFlags:(unsigned int)flags;
+ (id)customEntitlement:(id)entitlement;
+ (id)delegateIsPlatformBinary;
+ (id)domain:(id)domain;
+ (id)domainFilter:(unint64_t)filter;
+ (id)effectiveApplication:(id)application;
+ (id)effectivePID:(int)d;
+ (id)effectivePID:(int)d version:(int)version;
+ (id)entitlement;
+ (id)flowIPProtocol:(unsigned __int16)protocol;
+ (id)flowLocalAddress:(id)address prefix:(unsigned __int8)prefix;
+ (id)flowLocalAddressEmpty;
+ (id)flowLocalAddressStart:(id)start end:(id)end;
+ (id)flowRemoteAddress:(id)address prefix:(unsigned __int8)prefix;
+ (id)flowRemoteAddressEmpty;
+ (id)flowRemoteAddressStart:(id)start end:(id)end;
+ (id)hasSignedResult;
+ (id)ipProtocol:(unsigned __int16)protocol;
+ (id)isLoopback;
+ (id)localAddress:(id)address prefix:(unsigned __int8)prefix;
+ (id)localAddressStart:(id)start end:(id)end;
+ (id)localNetworks;
+ (id)localNetworksWithFlags:(unsigned __int8)flags;
+ (id)packetFilterTags:(unsigned __int16)tags;
+ (id)platformBinary;
+ (id)realApplication:(id)application;
+ (id)realUID:(unsigned int)d;
+ (id)remoteAddress:(id)address prefix:(unsigned __int8)prefix;
+ (id)remoteAddressStart:(id)start end:(id)end;
+ (id)requiredAgentDomain:(id)domain agentType:(id)type;
+ (id)schemeUsingPort:(unsigned __int16)port;
+ (id)scopedInterface:(id)interface;
+ (id)scopedInterfaceFlags:(unsigned int)flags eflags:(unsigned int)eflags xflags:(unsigned int)xflags;
+ (id)sdkVersion:(unsigned int)version minSDKVersion:(unsigned int)kVersion platform:(unsigned int)platform;
+ (id)signingIdentifier:(id)identifier;
+ (id)trafficClassStart:(unsigned int)start end:(unsigned int)end;
+ (id)uid:(unsigned int)uid;
+ (id)url:(id)url;
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

+ (id)signingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:29];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, identifierCopy, 160);
    }
  }

  else
  {
    [0 setConditionType:29];
    v5 = 0;
  }

  return v5;
}

+ (id)clientFlags:(unsigned int)flags
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
      v5[14] = flags;
    }
  }

  else
  {
    [0 setConditionType:24];
    v5 = 0;
  }

  return v5;
}

+ (id)packetFilterTags:(unsigned __int16)tags
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
      v5[7] = tags;
    }
  }

  else
  {
    [0 setConditionType:30];
    v5 = 0;
  }

  return v5;
}

+ (id)requiredAgentDomain:(id)domain agentType:(id)type
{
  domainCopy = domain;
  typeCopy = type;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:16];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, domainCopy, 144);
      objc_setProperty_atomic_copy(v8, v10, typeCopy, 152);
    }
  }

  else
  {
    [0 setConditionType:16];
    v8 = 0;
  }

  return v8;
}

+ (id)sdkVersion:(unsigned int)version minSDKVersion:(unsigned int)kVersion platform:(unsigned int)platform
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
      v9[16] = version;
      v9[17] = kVersion;
      v9[15] = platform;
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

+ (id)customEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:15];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, entitlementCopy, 136);
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

+ (id)schemeUsingPort:(unsigned __int16)port
{
  portCopy = port;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:37];
    if (v5)
    {
      v5[8] = __rev16(portCopy);
    }
  }

  else
  {
    [0 setConditionType:37];
    v5 = 0;
  }

  return v5;
}

+ (id)flowRemoteAddressStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:23];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, startCopy, 120);
      objc_setProperty_atomic_copy(v8, v10, endCopy, 128);
    }
  }

  else
  {
    [0 setConditionType:23];
    v8 = 0;
  }

  return v8;
}

+ (id)localNetworksWithFlags:(unsigned __int8)flags
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
      v5[11] = flags;
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

+ (id)remoteAddressStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:14];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, startCopy, 120);
      objc_setProperty_atomic_copy(v8, v10, endCopy, 128);
    }
  }

  else
  {
    [0 setConditionType:14];
    v8 = 0;
  }

  return v8;
}

+ (id)flowLocalAddressStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:21];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, startCopy, 120);
      objc_setProperty_atomic_copy(v8, v10, endCopy, 128);
    }
  }

  else
  {
    [0 setConditionType:21];
    v8 = 0;
  }

  return v8;
}

+ (id)localAddressStart:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  v7 = [NEPolicyCondition alloc];
  if (v7)
  {
    v12.receiver = v7;
    v12.super_class = NEPolicyCondition;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    [v8 setConditionType:12];
    if (v8)
    {
      objc_setProperty_atomic_copy(v8, v9, startCopy, 120);
      objc_setProperty_atomic_copy(v8, v10, endCopy, 128);
    }
  }

  else
  {
    [0 setConditionType:12];
    v8 = 0;
  }

  return v8;
}

+ (id)flowRemoteAddress:(id)address prefix:(unsigned __int8)prefix
{
  addressCopy = address;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:22];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, addressCopy, 120);
      v7[10] = prefix;
    }
  }

  else
  {
    [0 setConditionType:22];
    v7 = 0;
  }

  return v7;
}

+ (id)remoteAddress:(id)address prefix:(unsigned __int8)prefix
{
  addressCopy = address;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:13];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, addressCopy, 120);
      v7[10] = prefix;
    }
  }

  else
  {
    [0 setConditionType:13];
    v7 = 0;
  }

  return v7;
}

+ (id)flowLocalAddress:(id)address prefix:(unsigned __int8)prefix
{
  addressCopy = address;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:20];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, addressCopy, 120);
      v7[10] = prefix;
    }
  }

  else
  {
    [0 setConditionType:20];
    v7 = 0;
  }

  return v7;
}

+ (id)localAddress:(id)address prefix:(unsigned __int8)prefix
{
  addressCopy = address;
  v6 = [NEPolicyCondition alloc];
  if (v6)
  {
    v10.receiver = v6;
    v10.super_class = NEPolicyCondition;
    v7 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setConditionType:11];
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v8, addressCopy, 120);
      v7[10] = prefix;
    }
  }

  else
  {
    [0 setConditionType:11];
    v7 = 0;
  }

  return v7;
}

+ (id)flowIPProtocol:(unsigned __int16)protocol
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
      v5[6] = protocol;
    }
  }

  else
  {
    [0 setConditionType:19];
    v5 = 0;
  }

  return v5;
}

+ (id)ipProtocol:(unsigned __int16)protocol
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
      v5[6] = protocol;
    }
  }

  else
  {
    [0 setConditionType:10];
    v5 = 0;
  }

  return v5;
}

+ (id)trafficClassStart:(unsigned int)start end:(unsigned int)end
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
      v7[12] = start;
      v7[13] = end;
    }
  }

  else
  {
    [0 setConditionType:9];
    v7 = 0;
  }

  return v7;
}

+ (id)scopedInterfaceFlags:(unsigned int)flags eflags:(unsigned int)eflags xflags:(unsigned int)xflags
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
      v9[9] = flags;
      v9[10] = eflags;
      v9[11] = xflags;
    }
  }

  else
  {
    [0 setConditionType:43];
    v9 = 0;
  }

  return v9;
}

+ (id)scopedInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:8];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, interfaceCopy, 112);
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

+ (id)url:(id)url
{
  urlCopy = url;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:42];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, urlCopy, 104);
    }
  }

  else
  {
    [0 setConditionType:42];
    v5 = 0;
  }

  return v5;
}

+ (id)domainFilter:(unint64_t)filter
{
  filterCopy = filter;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    [v5 setConditionType:38];
    if (v5)
    {
      v5[8] = filterCopy;
    }
  }

  else
  {
    [0 setConditionType:38];
    v5 = 0;
  }

  return v5;
}

+ (id)domain:(id)domain
{
  domainCopy = domain;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:6];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, domainCopy, 96);
    }
  }

  else
  {
    [0 setConditionType:6];
    v5 = 0;
  }

  return v5;
}

+ (id)accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:5];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, identifierCopy, 88);
    }
  }

  else
  {
    [0 setConditionType:5];
    v5 = 0;
  }

  return v5;
}

+ (id)realUID:(unsigned int)d
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
      v5[7] = d;
    }
  }

  else
  {
    [0 setConditionType:40];
    v5 = 0;
  }

  return v5;
}

+ (id)uid:(unsigned int)uid
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
      v5[7] = uid;
    }
  }

  else
  {
    [0 setConditionType:4];
    v5 = 0;
  }

  return v5;
}

+ (id)effectivePID:(int)d version:(int)version
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
      v7[5] = d;
      v7[6] = version;
    }
  }

  else
  {
    [0 setConditionType:3];
    v7 = 0;
  }

  return v7;
}

+ (id)effectivePID:(int)d
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
      v5[5] = d;
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

+ (id)realApplication:(id)application
{
  applicationCopy = application;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:2];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, applicationCopy, 80);
    }
  }

  else
  {
    [0 setConditionType:2];
    v5 = 0;
  }

  return v5;
}

+ (id)effectiveApplication:(id)application
{
  applicationCopy = application;
  v4 = [NEPolicyCondition alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NEPolicyCondition;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    [v5 setConditionType:1];
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v6, applicationCopy, 80);
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