@interface BSOrderedDictionaryKeyStrategy
+ (id)new;
+ (id)sortByInsertionOrder;
+ (id)sortByInsertionOrderWithEntryLimit:(int64_t)a3;
+ (id)sortUsingComparator:(id)a3;
- (BSOrderedDictionaryKeyStrategy)init;
- (id)_init;
@end

@implementation BSOrderedDictionaryKeyStrategy

+ (id)sortByInsertionOrder
{
  if (_MergedGlobals_37 != -1)
  {
    dispatch_once(&_MergedGlobals_37, &__block_literal_global_41);
  }

  v3 = qword_1ED4500B8;

  return v3;
}

+ (id)new
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"use one of the class methods"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = a1;
    v16 = 2114;
    v17 = @"BSOrderedDictionary.m";
    v18 = 1024;
    v19 = 37;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  result = [v4 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

- (BSOrderedDictionaryKeyStrategy)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"use one of the class methods"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSOrderedDictionary.m";
    v18 = 1024;
    v19 = 42;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  result = [v4 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

void __54__BSOrderedDictionaryKeyStrategy_sortByInsertionOrder__block_invoke()
{
  v0 = [[BSOrderedDictionaryKeyStrategy alloc] _init];
  v1 = qword_1ED4500B8;
  qword_1ED4500B8 = v0;
}

- (id)_init
{
  v24 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = BSOrderedDictionaryKeyStrategy;
  v3 = [(BSOrderedDictionaryKeyStrategy *)&v11 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"subclassing not permitted"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v13 = v7;
        v14 = 2114;
        v15 = v9;
        v16 = 2048;
        v17 = v3;
        v18 = 2114;
        v19 = @"BSOrderedDictionary.m";
        v20 = 1024;
        v21 = 60;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      qword_1EAD33B00 = [v6 UTF8String];
      __break(0);
      JUMPOUT(0x18FF90F2CLL);
    }
  }

  return v3;
}

+ (id)sortByInsertionOrderWithEntryLimit:(int64_t)a3
{
  v4 = [[BSOrderedDictionaryKeyStrategy alloc] _init];
  [v4 setLimitCount:a3];

  return v4;
}

+ (id)sortUsingComparator:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"comparator != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      v18 = a1;
      v19 = 2114;
      v20 = @"BSOrderedDictionary.m";
      v21 = 1024;
      v22 = 72;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    JUMPOUT(0x18FF91164);
  }

  v4 = [[BSOrderedDictionaryKeyStrategy alloc] _init];
  [v4 setKeyComparator:a3];

  return v4;
}

@end