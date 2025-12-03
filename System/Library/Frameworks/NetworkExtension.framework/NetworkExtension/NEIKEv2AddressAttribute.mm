@interface NEIKEv2AddressAttribute
- (NEIKEv2AddressAttribute)initWithAddress:(id)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initCustomWithAttributeType:(unint64_t)type attributeName:(id)name addressValue:(id)value;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2AddressAttribute

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  attributeType = [(NEIKEv2AddressAttribute *)self attributeType];
  attributeName = [(NEIKEv2ConfigurationAttribute *)self attributeName];
  address = [(NEIKEv2AddressAttribute *)self address];
  v8 = [address copy];
  v9 = [v4 initCustomWithAttributeType:attributeType attributeName:attributeName addressValue:v8];

  return v9;
}

- (unint64_t)attributeType
{
  if (self)
  {
    return *(self + 24);
  }

  return self;
}

- (id)initCustomWithAttributeType:(unint64_t)type attributeName:(id)name addressValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = NEIKEv2AddressAttribute;
  v10 = [(NEIKEv2AddressAttribute *)&v17 init];
  p_isa = &v10->super.super.isa;
  if (v10)
  {
    v10->_customType = type;
    objc_setProperty_atomic(v10, v11, nameCopy, 8);
    objc_storeStrong(p_isa + 2, value);
    v13 = p_isa;
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "[super init] failed", v16, 2u);
    }
  }

  return p_isa;
}

- (NEIKEv2AddressAttribute)initWithAddress:(id)address
{
  addressCopy = address;
  v13.receiver = self;
  v13.super_class = NEIKEv2AddressAttribute;
  v6 = [(NEIKEv2AddressAttribute *)&v13 init];
  v8 = v6;
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, @"AssignedAddress", 8);
    objc_storeStrong(&v8->_address, address);
    v9 = v8;
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "[super init] failed", v12, 2u);
    }
  }

  return v8;
}

@end