@interface NEIKEv2IKESPI
- (BOOL)isEqual:(id)equal;
- (NEIKEv2IKESPI)init;
- (NEIKEv2IKESPI)initWithValue:(unint64_t)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NEIKEv2IKESPI

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEIKEv2IKESPI allocWithZone:zone];
  value = [(NEIKEv2IKESPI *)self value];

  return [(NEIKEv2IKESPI *)v4 initWithValue:value];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    value = [(NEIKEv2IKESPI *)self value];
    value2 = [v5 value];

    v8 = value == value2;
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

- (NEIKEv2IKESPI)initWithValue:(unint64_t)value
{
  v10.receiver = self;
  v10.super_class = NEIKEv2IKESPI;
  v4 = [(NEIKEv2SPI *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = value;
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