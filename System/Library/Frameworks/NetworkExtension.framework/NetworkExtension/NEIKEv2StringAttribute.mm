@interface NEIKEv2StringAttribute
- (NEIKEv2StringAttribute)initWithStringValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initCustomWithAttributeType:(unint64_t)type attributeName:(id)name stringValue:(id)value;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2StringAttribute

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  attributeType = [(NEIKEv2StringAttribute *)self attributeType];
  attributeName = [(NEIKEv2ConfigurationAttribute *)self attributeName];
  stringValue = [(NEIKEv2StringAttribute *)self stringValue];
  v8 = [stringValue copy];
  v9 = [v4 initCustomWithAttributeType:attributeType attributeName:attributeName stringValue:v8];

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

- (id)initCustomWithAttributeType:(unint64_t)type attributeName:(id)name stringValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = NEIKEv2StringAttribute;
  v10 = [(NEIKEv2StringAttribute *)&v17 init];
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

- (NEIKEv2StringAttribute)initWithStringValue:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = NEIKEv2StringAttribute;
  v6 = [(NEIKEv2StringAttribute *)&v13 init];
  v8 = v6;
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, @"AssignedString", 8);
    objc_storeStrong(&v8->_stringValue, value);
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