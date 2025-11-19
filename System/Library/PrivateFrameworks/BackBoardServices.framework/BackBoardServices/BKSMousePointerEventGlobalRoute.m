@interface BKSMousePointerEventGlobalRoute
+ (id)build:(id)a3;
+ (id)new;
- (BKSMousePointerEventGlobalRoute)init;
- (BKSMousePointerEventGlobalRoute)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)_initWithCopyOf:(id *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSMousePointerEventGlobalRoute

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [v6 appendUInt64:self->_contextID withName:@"contextID" format:1];
  v5 = [v6 appendObject:self->_options withName:@"options"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableMousePointerEventGlobalRoute alloc];

  return [(BKSMousePointerEventGlobalRoute *)&v4->super.super.isa _initWithCopyOf:?];
}

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSMousePointerEventGlobalRoute *)a1 _init];
    a1 = v4;
    if (v4)
    {
      *(v4 + 2) = *(v3 + 2);
      objc_storeStrong(v4 + 2, *(v3 + 2));
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
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMousePointerEventGlobalRoute cannot be subclassed"];
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
          v17 = @"BKSMousePointerEventGlobalRoute.m";
          v18 = 1024;
          v19 = 42;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18639388CLL);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSMousePointerEventGlobalRoute;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSMousePointerEventGlobalRoute alloc];

  return [(BKSMousePointerEventGlobalRoute *)&v4->super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(v4 + 2) == self->_contextID)
  {
    v5 = v4[2];
    options = self->_options;
    v7 = BSEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(BKSMousePointerGlobalContextOptions *)self->_options hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_contextID];
  v5 = [v4 hash] ^ v3;

  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  return v6 ^ (v6 >> 31);
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt32:self->_contextID forKey:@"contextID"];
  options = self->_options;
  if (options)
  {
    [v5 encodeObject:options forKey:@"options"];
  }
}

- (BKSMousePointerEventGlobalRoute)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = BKSMousePointerEventGlobalRoute;
  v3 = a3;
  v4 = [(BKSMousePointerEventGlobalRoute *)&v8 init];
  v4->_contextID = [v3 decodeInt32ForKey:{@"contextID", v8.receiver, v8.super_class}];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"options"];

  options = v4->_options;
  v4->_options = v5;

  return v4;
}

- (BKSMousePointerEventGlobalRoute)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSMousePointerEventGlobalRoute"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSMousePointerEventGlobalRoute init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSMousePointerEventGlobalRoute.m";
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

+ (id)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSMousePointerEventGlobalRoute"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSMousePointerEventGlobalRoute new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSMousePointerEventGlobalRoute.m";
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
  v4 = [(BKSMousePointerEventGlobalRoute *)[BKSMutableMousePointerEventGlobalRoute alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end