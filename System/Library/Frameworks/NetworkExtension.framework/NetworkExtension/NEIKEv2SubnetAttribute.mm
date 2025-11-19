@interface NEIKEv2SubnetAttribute
- (NEIKEv2SubnetAttribute)initWithAddress:(id)a3 prefix:(unsigned __int8)a4;
- (NWAddressEndpoint)subnetMaskAddress;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initCustomWithAttributeType:(unint64_t)a3 attributeName:(id)a4 addressValue:(id)a5 prefix:(unsigned __int8)a6;
- (unint64_t)attributeType;
- (unsigned)ipv4SubnetMask;
@end

@implementation NEIKEv2SubnetAttribute

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEIKEv2SubnetAttribute *)self attributeType];
  v6 = [(NEIKEv2ConfigurationAttribute *)self attributeName];
  v7 = [(NEIKEv2SubnetAttribute *)self address];
  v8 = [v7 copy];
  v9 = [v4 initCustomWithAttributeType:v5 attributeName:v6 addressValue:v8 prefix:{-[NEIKEv2SubnetAttribute prefix](self, "prefix")}];

  return v9;
}

- (NWAddressEndpoint)subnetMaskAddress
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NEIKEv2SubnetAttribute *)self address];
  v4 = [v3 addressFamily];

  v5 = [(NEIKEv2SubnetAttribute *)self prefix];
  if (v4 == 2)
  {
    if (v5 <= 0x20)
    {
      HIDWORD(v11) = 0;
      LODWORD(v11) = 528;
      *(&v11 + 4) = [(NEIKEv2SubnetAttribute *)self ipv4SubnetMask];
LABEL_8:
      v8 = [MEMORY[0x1E6977E08] endpointWithAddress:&v11];
      goto LABEL_9;
    }
  }

  else if (v5 <= 0x80)
  {
    v13 = 0;
    v12 = 0;
    v11 = 0x1E1CuLL;
    if (v5)
    {
      v6 = v5 >> 3;
      v7 = v5 & 7;
      __memset_chk();
      if (v7)
      {
        *(&v11 + v6 + 8) = -1 << (8 - v7);
      }
    }

    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unsigned)ipv4SubnetMask
{
  v2 = [(NEIKEv2SubnetAttribute *)self prefix];
  v3 = bswap32(-1 << (32 - v2));
  if (v2 <= 0x20)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)attributeType
{
  if (self)
  {
    return *(self + 32);
  }

  return self;
}

- (id)initCustomWithAttributeType:(unint64_t)a3 attributeName:(id)a4 addressValue:(id)a5 prefix:(unsigned __int8)a6
{
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = NEIKEv2SubnetAttribute;
  v12 = [(NEIKEv2SubnetAttribute *)&v19 init];
  v14 = v12;
  if (v12)
  {
    v12->_customType = a3;
    objc_setProperty_atomic(v12, v13, v10, 8);
    objc_storeStrong(&v14->_address, a5);
    v14->_prefix = a6;
    v15 = v14;
  }

  else
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18[0] = 0;
      _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "[super init] failed", v18, 2u);
    }
  }

  return v14;
}

- (NEIKEv2SubnetAttribute)initWithAddress:(id)a3 prefix:(unsigned __int8)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = NEIKEv2SubnetAttribute;
  v8 = [(NEIKEv2SubnetAttribute *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_address, a3);
    objc_setProperty_atomic(v9, v10, @"AssignedSubnet", 8);
    v9->_prefix = a4;
    v11 = v9;
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[super init] failed", v14, 2u);
    }
  }

  return v9;
}

@end