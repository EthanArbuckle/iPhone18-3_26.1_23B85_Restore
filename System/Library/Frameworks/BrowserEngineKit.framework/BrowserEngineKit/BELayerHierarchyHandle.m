@interface BELayerHierarchyHandle
+ (BELayerHierarchyHandle)handleWithXPCRepresentation:(id)a3 error:(id *)a4;
- (BELayerHierarchyHandle)init;
- (BELayerHierarchyHandle)initWithCoder:(id)a3;
- (id)_initWithToken:(id *)a1;
- (id)createXPCRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BELayerHierarchyHandle

- (BELayerHierarchyHandle)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BELayerHierarchyHandle"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BELayerHierarchyHandle.m";
    v17 = 1024;
    v18 = 26;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithToken:(id *)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = v4;
    if (!v6)
    {
      [(BELayerHierarchyHandle *)sel__initWithToken_ _initWithToken:a1];
    }

    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BELayerHierarchyHandle *)v7 _initWithToken:a1];
    }

    v10.receiver = a1;
    v10.super_class = BELayerHierarchyHandle;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
    }
  }

  return a1;
}

+ (BELayerHierarchyHandle)handleWithXPCRepresentation:(id)a3 error:(id *)a4
{
  v11 = 0;
  v5 = [MEMORY[0x1E6979388] tokenFromXPCRepresentation:a3 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [[BELayerHierarchyHandle alloc] _initWithToken:v5];
  }

  else if (a4)
  {
    if (v6)
    {
      v10 = v6;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
      *a4 = v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createXPCRepresentation
{
  v2 = [(CAHostingToken *)self->_token createXPCRepresentation];

  return v2;
}

- (BELayerHierarchyHandle)initWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BELayerHierarchyHandle initWithCoder:a2];
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  if (v6)
  {
    self = [(BELayerHierarchyHandle *)&self->super.isa _initWithToken:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BELayerHierarchyHandle encodeWithCoder:a2];
  }

  [v5 encodeObject:self->_token forKey:@"token"];
}

- (void)_initWithToken:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"token", v7, v9];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = 138544642;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    v20 = a3;
    v21 = 2114;
    v22 = @"BELayerHierarchyHandle.m";
    v23 = 1024;
    v24 = 33;
    v25 = 2114;
    v26 = v10;
    OUTLINED_FUNCTION_1(&dword_19D4FF000, MEMORY[0x1E69E9C10], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v15);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithToken:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"token", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = @"BELayerHierarchyHandle.m";
    v20 = 1024;
    v21 = 33;
    v22 = 2114;
    v23 = v7;
    OUTLINED_FUNCTION_1(&dword_19D4FF000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCoder:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BELayerHierarchyHandle only supports NSXPCCoder"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BELayerHierarchyHandle.m";
    v10 = 1024;
    v11 = 89;
    v12 = v6;
    v13 = v2;
    OUTLINED_FUNCTION_1(&dword_19D4FF000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)encodeWithCoder:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BELayerHierarchyHandle only supports NSXPCCoder"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BELayerHierarchyHandle.m";
    v10 = 1024;
    v11 = 99;
    v12 = v6;
    v13 = v2;
    OUTLINED_FUNCTION_1(&dword_19D4FF000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end