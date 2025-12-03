@interface _BKSHIDEventAuthenticationKey
+ (void)eventAuthenticationKey;
- (uint64_t)_context;
@end

@implementation _BKSHIDEventAuthenticationKey

- (uint64_t)_context
{
  v21 = *MEMORY[0x1E69E9840];
  if (atomic_exchange((self + 400), 1u))
  {
    v2 = self + 16;
  }

  else
  {
    if (![*(self + 8) length])
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"truncated data"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel__context);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138544642;
        v10 = v6;
        v11 = 2114;
        v12 = v8;
        v13 = 2048;
        selfCopy = self;
        v15 = 2114;
        v16 = @"_BKSHIDEventAuthenticationKey.m";
        v17 = 1024;
        v18 = 49;
        v19 = 2114;
        v20 = v5;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
      }

      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18634E1F4);
    }

    v2 = self + 16;
    CCHmacInit((self + 16), 2u, [*(self + 8) bytes], objc_msgSend(*(self + 8), "length"));
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (void)eventAuthenticationKey
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  CCRandomGenerateBytes(bytes, 0x20uLL);
  v0 = [_BKSHIDEventAuthenticationKey alloc];
  if (v0)
  {
    v6.receiver = v0;
    v6.super_class = _BKSHIDEventAuthenticationKey;
    v1 = objc_msgSendSuper2(&v6, sel_init);
    if (v1)
    {
      v2 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:32];
      v3 = v1[1];
      v1[1] = v2;
    }
  }

  else
  {
    v1 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v1;
}

@end