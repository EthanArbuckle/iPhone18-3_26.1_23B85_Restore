@interface _LSApplicationProxiesOfTypeQuery
+ (id)queryWithType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (_LSApplicationProxiesOfTypeQuery)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSApplicationProxiesOfTypeQuery

+ (id)queryWithType:(unint64_t)a3
{
  v4 = [[a1 alloc] _init];
  if (v4)
  {
    v4[2] = a3;
  }

  return v4;
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = [(_LSApplicationProxiesOfTypeQuery *)self type];
  if (v6 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *off_1E6A1AE40[v6];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70___LSApplicationProxiesOfTypeQuery__enumerateWithXPCConnection_block___block_invoke;
  v9[3] = &unk_1E6A1ADD8;
  v10 = v7;
  v8 = v7;
  yieldAppsMatchingSearch(v5, v9);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _LSApplicationProxiesOfTypeQuery;
  if ([(_LSQuery *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 type];
    if (v6 == [(_LSApplicationProxiesOfTypeQuery *)self type])
    {
      v7 = [v5 isLegacy];
      v8 = v7 ^ [(_LSQuery *)self isLegacy]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_LSApplicationProxiesOfTypeQuery *)self type];
  v5.receiver = self;
  v5.super_class = _LSApplicationProxiesOfTypeQuery;
  return [(_LSQuery *)&v5 hash]| (v3 << 16);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _LSApplicationProxiesOfTypeQuery;
  [(_LSQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[_LSApplicationProxiesOfTypeQuery type](self forKey:{"type"), @"type"}];
}

- (_LSApplicationProxiesOfTypeQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _LSApplicationProxiesOfTypeQuery;
  v5 = [(_LSQuery *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end