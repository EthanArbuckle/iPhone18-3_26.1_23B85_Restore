@interface NEIKEv2StringAttribute
- (NEIKEv2StringAttribute)initWithStringValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initCustomWithAttributeType:(unint64_t)a3 attributeName:(id)a4 stringValue:(id)a5;
- (unint64_t)attributeType;
@end

@implementation NEIKEv2StringAttribute

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEIKEv2StringAttribute *)self attributeType];
  v6 = [(NEIKEv2ConfigurationAttribute *)self attributeName];
  v7 = [(NEIKEv2StringAttribute *)self stringValue];
  v8 = [v7 copy];
  v9 = [v4 initCustomWithAttributeType:v5 attributeName:v6 stringValue:v8];

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

- (id)initCustomWithAttributeType:(unint64_t)a3 attributeName:(id)a4 stringValue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = NEIKEv2StringAttribute;
  v10 = [(NEIKEv2StringAttribute *)&v17 init];
  p_isa = &v10->super.super.isa;
  if (v10)
  {
    v10->_customType = a3;
    objc_setProperty_atomic(v10, v11, v8, 8);
    objc_storeStrong(p_isa + 2, a5);
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

- (NEIKEv2StringAttribute)initWithStringValue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NEIKEv2StringAttribute;
  v6 = [(NEIKEv2StringAttribute *)&v13 init];
  v8 = v6;
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, @"AssignedString", 8);
    objc_storeStrong(&v8->_stringValue, a3);
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