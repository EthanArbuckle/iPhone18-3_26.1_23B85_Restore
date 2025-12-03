@interface _LSApplicationProxiesOfTypeQuery
+ (id)queryWithType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (_LSApplicationProxiesOfTypeQuery)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSApplicationProxiesOfTypeQuery

+ (id)queryWithType:(unint64_t)type
{
  _init = [[self alloc] _init];
  if (_init)
  {
    _init[2] = type;
  }

  return _init;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  blockCopy = block;
  type = [(_LSApplicationProxiesOfTypeQuery *)self type];
  if (type >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *off_1E6A1AE40[type];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70___LSApplicationProxiesOfTypeQuery__enumerateWithXPCConnection_block___block_invoke;
  v9[3] = &unk_1E6A1ADD8;
  v10 = v7;
  v8 = v7;
  yieldAppsMatchingSearch(blockCopy, v9);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _LSApplicationProxiesOfTypeQuery;
  if ([(_LSQuery *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    type = [v5 type];
    if (type == [(_LSApplicationProxiesOfTypeQuery *)self type])
    {
      isLegacy = [v5 isLegacy];
      v8 = isLegacy ^ [(_LSQuery *)self isLegacy]^ 1;
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
  type = [(_LSApplicationProxiesOfTypeQuery *)self type];
  v5.receiver = self;
  v5.super_class = _LSApplicationProxiesOfTypeQuery;
  return [(_LSQuery *)&v5 hash]| (type << 16);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSApplicationProxiesOfTypeQuery;
  [(_LSQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[_LSApplicationProxiesOfTypeQuery type](self forKey:{"type"), @"type"}];
}

- (_LSApplicationProxiesOfTypeQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _LSApplicationProxiesOfTypeQuery;
  v5 = [(_LSQuery *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end