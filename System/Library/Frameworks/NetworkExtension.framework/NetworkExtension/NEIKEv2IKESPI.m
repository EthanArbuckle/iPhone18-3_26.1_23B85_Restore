@interface NEIKEv2IKESPI
- (BOOL)isEqual:(id)a3;
- (NEIKEv2IKESPI)init;
- (NEIKEv2IKESPI)initWithValue:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NEIKEv2IKESPI

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEIKEv2IKESPI allocWithZone:a3];
  v5 = [(NEIKEv2IKESPI *)self value];

  return [(NEIKEv2IKESPI *)v4 initWithValue:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2IKESPI *)self value];
    v7 = [v5 value];

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
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%016llX", bswap64(-[NEIKEv2IKESPI value](self, "value"))];

  return v2;
}

- (NEIKEv2IKESPI)init
{
  __buf = 0;
  do
  {
    arc4random_buf(&__buf, 8uLL);
  }

  while (!__buf);
  return [(NEIKEv2IKESPI *)self initWithValue:?];
}

- (NEIKEv2IKESPI)initWithValue:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEIKEv2IKESPI;
  v4 = [(NEIKEv2SPI *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = a3;
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