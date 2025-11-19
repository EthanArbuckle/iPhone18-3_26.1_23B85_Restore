@interface BELayerHierarchy
+ (id)layerHierarchyWithError:(id *)a3;
+ (id)layerHierarchyWithOptions:(id)a3 error:(id *)a4;
- (BELayerHierarchy)init;
- (BELayerHierarchy)initWithContext:(id)a3;
- (CALayer)layer;
- (uint64_t)_context;
- (void)dealloc;
- (void)invalidate;
- (void)setLayer:(id)a3;
@end

@implementation BELayerHierarchy

- (BELayerHierarchy)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BELayerHierarchy"];
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
    v16 = @"BELayerHierarchy.m";
    v17 = 1024;
    v18 = 29;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ must be invalidated before dealloc", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a1;
    v14 = 2114;
    v15 = @"BELayerHierarchy.m";
    v16 = 1024;
    v17 = 35;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BELayerHierarchy)initWithContext:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(BELayerHierarchy *)a2 initWithContext:?];
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(BELayerHierarchy *)v7 initWithContext:a2, self];
  }

  BSDispatchQueueAssertMain();
  v17.receiver = self;
  v17.super_class = BELayerHierarchy;
  v8 = [(BELayerHierarchy *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
    v10 = objc_opt_new();
    invalidationSignal = v9->_invalidationSignal;
    v9->_invalidationSignal = v10;

    v12 = [BELayerHierarchyHandle alloc];
    v13 = [(CAContext *)v9->_context hostingToken];
    v14 = [(BELayerHierarchyHandle *)&v12->super.isa _initWithToken:v13];
    handle = v9->_handle;
    v9->_handle = v14;
  }

  return v9;
}

+ (id)layerHierarchyWithOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v6 = [MEMORY[0x1E6979320] remoteContextWithOptions:v5];

  if (v6)
  {
    v7 = [[BELayerHierarchy alloc] initWithContext:v6];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)layerHierarchyWithError:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69796C0];
  v9[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [BELayerHierarchy layerHierarchyWithOptions:v4 error:a3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (CALayer)layer
{
  BSDispatchQueueAssertMain();
  context = self->_context;

  return [(CAContext *)context layer];
}

- (void)setLayer:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(CAContext *)self->_context setLayer:v4];
}

- (void)invalidate
{
  BSDispatchQueueAssertMain();
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    context = self->_context;

    [(CAContext *)context invalidate];
  }
}

- (uint64_t)_context
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)initWithContext:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
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
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"context", v7, v9];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"BELayerHierarchy.m";
    v22 = 1024;
    v23 = 41;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContext:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"context", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = a2;
    v17 = 2114;
    v18 = @"BELayerHierarchy.m";
    v19 = 1024;
    v20 = 41;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end