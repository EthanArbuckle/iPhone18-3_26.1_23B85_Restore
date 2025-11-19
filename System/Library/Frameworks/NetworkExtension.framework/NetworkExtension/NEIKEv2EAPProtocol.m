@interface NEIKEv2EAPProtocol
- (BOOL)isEqual:(id)a3;
- (NEIKEv2EAPProtocol)initWithMethod:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NEIKEv2EAPProtocol

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEIKEv2EAPProtocol allocWithZone:?], "initWithMethod:", [(NEIKEv2EAPProtocol *)self method]];
  v5 = [(NEIKEv2EAPProtocol *)self properties];
  v6 = [v5 copy];
  [(NEIKEv2EAPProtocol *)v4 setProperties:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2EAPProtocol *)self method];
    v7 = [v5 method];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [(NEIKEv2EAPProtocol *)self method];
  if (v3 >= 8)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%llu]", -[NEIKEv2EAPProtocol method](self, "method")];
  }

  else
  {
    v4 = off_1E7F07D08[v3];
  }

  return v4;
}

- (NEIKEv2EAPProtocol)initWithMethod:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEIKEv2EAPProtocol;
  v4 = [(NEIKEv2EAPProtocol *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_method = a3;
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
    }
  }

  return v5;
}

@end