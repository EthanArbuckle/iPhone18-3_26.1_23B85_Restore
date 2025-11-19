@interface NEIKEv2IntegrityProtocol
- (BOOL)isEqual:(id)a3;
- (NEIKEv2IntegrityProtocol)initWithType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)keyLength;
- (void)macLength;
@end

@implementation NEIKEv2IntegrityProtocol

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEIKEv2IntegrityProtocol allocWithZone:a3];
  v5 = [(NEIKEv2IntegrityProtocol *)self type];

  return [(NEIKEv2IntegrityProtocol *)v4 initWithType:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2IntegrityProtocol *)self type];
    v7 = [v5 type];

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
  v3 = [(NEIKEv2IntegrityProtocol *)self type];
  if (v3 >= 0xF)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%llu]", -[NEIKEv2IntegrityProtocol type](self, "type")];
  }

  else
  {
    v4 = off_1E7F07EE0[v3];
  }

  return v4;
}

- (NEIKEv2IntegrityProtocol)initWithType:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEIKEv2IntegrityProtocol;
  v4 = [(NEIKEv2IntegrityProtocol *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
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

- (void)macLength
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [result type] - 1;
    if (v2 < 0xE && ((0x3863u >> v2) & 1) != 0)
    {
      result = dword_1BAA4F598[v2];
    }

    else
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v5[0] = 67109120;
        v5[1] = [v1 type];
        _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "Unknown Integrity type %u", v5, 8u);
      }

      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)keyLength
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [result type] - 1;
    if (v2 < 0xE && ((0x3863u >> v2) & 1) != 0)
    {
      result = dword_1BAA4F5D0[v2];
    }

    else
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v5[0] = 67109120;
        v5[1] = [v1 type];
        _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "Unknown Integrity type %u", v5, 8u);
      }

      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end