@interface _NSXPCConnectionClassCache
- (_NSXPCConnectionClassCache)init;
- (uint64_t)containsClass:(uint64_t)result;
- (void)addClass:(uint64_t)class;
- (void)clear;
- (void)dealloc;
@end

@implementation _NSXPCConnectionClassCache

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSXPCConnectionClassCache;
  [(_NSXPCConnectionClassCache *)&v3 dealloc];
}

- (void)clear
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 8);
    if (!v2)
    {
      v2 = objc_opt_new();
      *(self + 8) = v2;
    }

    [v2 removeAllObjects];

    os_unfair_lock_unlock((self + 16));
  }
}

- (_NSXPCConnectionClassCache)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSXPCConnectionClassCache;
  result = [(_NSXPCConnectionClassCache *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (uint64_t)containsClass:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock_with_options();
    v4 = *(v3 + 8);
    if (!v4)
    {
      v4 = objc_opt_new();
      *(v3 + 8) = v4;
    }

    v5 = [v4 containsObject:a2];
    os_unfair_lock_unlock((v3 + 16));
    return v5;
  }

  return result;
}

- (void)addClass:(uint64_t)class
{
  if (class)
  {
    os_unfair_lock_lock_with_options();
    v4 = *(class + 8);
    if (!v4)
    {
      v4 = objc_opt_new();
      *(class + 8) = v4;
    }

    [v4 addObject:a2];

    os_unfair_lock_unlock((class + 16));
  }
}

@end