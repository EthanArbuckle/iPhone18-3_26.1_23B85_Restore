@interface BKSTouchHitTestFilterParameters
+ (id)build:(id)a3;
+ (id)new;
- (BKSTouchHitTestFilterParameters)init;
- (BKSTouchHitTestFilterParameters)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)a1;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSTouchHitTestFilterParameters

- (void)_initWithCopyOf:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [(BKSTouchHitTestFilterParameters *)a1 _init];
    if (a1)
    {
      v4 = [v3[1] copy];
      v5 = a1[1];
      a1[1] = v4;

      v6 = [v3[2] copy];
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

- (id)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSTouchHitTestFilterParameters cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v6 = NSStringFromSelector(sel__init);
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          *buf = 138544642;
          v11 = v6;
          v12 = 2114;
          v13 = v8;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BKSTouchHitTestFilterParameters.m";
          v18 = 1024;
          v19 = 42;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18636FA30);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSTouchHitTestFilterParameters;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendDescriptionToStream:(id)a3
{
  v6 = a3;
  v4 = [v6 appendObject:self->_senderDescriptors withName:@"senderDescriptors"];
  v5 = [v6 appendObject:self->_contextIDs withName:@"contextIDs"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableTouchHitTestFilterParameters alloc];

  return [(BKSTouchHitTestFilterParameters *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    senderDescriptors = self->_senderDescriptors;
    if (BSEqualObjects())
    {
      v8 = v5[2];
      contextIDs = self->_contextIDs;
      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  [(NSArray *)self->_senderDescriptors hash];
  [(NSArray *)self->_contextIDs hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  senderDescriptors = self->_senderDescriptors;
  v7 = v4;
  if (senderDescriptors)
  {
    [v4 encodeObject:senderDescriptors forKey:@"senderDescriptors"];
    v4 = v7;
  }

  contextIDs = self->_contextIDs;
  if (contextIDs)
  {
    [v7 encodeObject:contextIDs forKey:@"contextIDs"];
    v4 = v7;
  }
}

- (BKSTouchHitTestFilterParameters)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = BKSTouchHitTestFilterParameters;
  v3 = a3;
  v4 = [(BKSTouchHitTestFilterParameters *)&v10 init];
  v5 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:{@"senderDescriptors", v10.receiver, v10.super_class}];
  senderDescriptors = v4->_senderDescriptors;
  v4->_senderDescriptors = v5;

  v7 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"contextIDs"];

  contextIDs = v4->_contextIDs;
  v4->_contextIDs = v7;

  return v4;
}

- (BKSTouchHitTestFilterParameters)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSTouchHitTestFilterParameters"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSTouchHitTestFilterParameters init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSTouchHitTestFilterParameters.m";
    v9 = 1024;
    v10 = 31;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __49__BKSTouchHitTestFilterParameters_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addRepeatingField:"_senderDescriptors" containsClass:objc_opt_class()];
  [v2 addRepeatingField:"_contextIDs" containsClass:objc_opt_class()];
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSTouchHitTestFilterParameters"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSTouchHitTestFilterParameters new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSTouchHitTestFilterParameters.m";
    v9 = 1024;
    v10 = 36;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSTouchHitTestFilterParameters *)[BKSMutableTouchHitTestFilterParameters alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end