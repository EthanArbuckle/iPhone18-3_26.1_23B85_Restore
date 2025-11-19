@interface NEIKEv2KEMProtocol
- (BOOL)isEqual:(id)a3;
- (NEIKEv2KEMProtocol)initWithMethod:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NEIKEv2KEMProtocol

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEIKEv2KEMProtocol allocWithZone:a3];
  v5 = [(NEIKEv2KEMProtocol *)self method];

  return [(NEIKEv2KEMProtocol *)v4 initWithMethod:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2KEMProtocol *)self method];
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
  v3 = [(NEIKEv2KEMProtocol *)self method];
  if (v3 < 0x26 && ((0x31803FC027uLL >> v3) & 1) != 0)
  {
    v4 = off_1E7F07F58[v3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%llu]", -[NEIKEv2KEMProtocol method](self, "method")];
  }

  return v4;
}

- (NEIKEv2KEMProtocol)initWithMethod:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEIKEv2KEMProtocol;
  v4 = [(NEIKEv2KEMProtocol *)&v10 init];
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