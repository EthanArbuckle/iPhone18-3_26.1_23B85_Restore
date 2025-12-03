@interface NSMutableDictionary(BaseBoard)
- (id)bs_takeObjectForKey:()BaseBoard;
- (void)bs_addObject:()BaseBoard toCollectionClass:forKey:;
- (void)bs_removeObject:()BaseBoard fromCollectionForKey:;
- (void)bs_setSafeObject:()BaseBoard forKey:;
@end

@implementation NSMutableDictionary(BaseBoard)

- (void)bs_setSafeObject:()BaseBoard forKey:
{
  if (a3)
  {
    if (a4)
    {
      return [self setObject:? forKey:?];
    }
  }

  return self;
}

- (id)bs_takeObjectForKey:()BaseBoard
{
  v5 = [self objectForKey:?];
  if (v5)
  {
    [self removeObjectForKey:a3];
    v6 = v5;
  }

  return v5;
}

- (void)bs_addObject:()BaseBoard toCollectionClass:forKey:
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != a4 && objc_opt_class() != a4 && objc_opt_class() != a4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' must be NSMutableSet, NSMutableOrderedSet, or NSMutableArray, not (%@)", a5, a4];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = @"NSDictionary+BaseBoard.m";
      v24 = 1024;
      v25 = 107;
      v26 = 2114;
      v27 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF33C48);
  }

  v15 = [self objectForKey:a5];
  if (!v15)
  {
    v15 = objc_alloc_init(a4);
    [self setObject:v15 forKey:a5];
  }

  [v15 addObject:a3];
}

- (void)bs_removeObject:()BaseBoard fromCollectionForKey:
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = [self objectForKey:a4];
  if (v13)
  {
    if ((_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0 && (_NSIsNSArray() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' must be NSMutableSet, NSMutableOrderedSet, or NSMutableArray, not (%@)", a4, objc_opt_class()];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"NSDictionary+BaseBoard.m";
        v22 = 1024;
        v23 = 120;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      qword_1EAD33B00 = [v8 UTF8String];
      __break(0);
      JUMPOUT(0x18FF33E68);
    }

    [v13 removeObject:a3];
    if (![v13 count])
    {
      [self removeObjectForKey:a4];
    }
  }
}

@end