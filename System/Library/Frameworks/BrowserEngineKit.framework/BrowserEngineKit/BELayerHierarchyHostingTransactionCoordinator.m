@interface BELayerHierarchyHostingTransactionCoordinator
+ (id)coordinatorWithError:(id *)a3;
+ (id)coordinatorWithXPCRepresentation:(id)a3 error:(id *)a4;
- (BELayerHierarchyHostingTransactionCoordinator)init;
- (BELayerHierarchyHostingTransactionCoordinator)initWithCoder:(id)a3;
- (id)_initWithFence:(id)a3;
- (id)createXPCRepresentation;
- (void)_addContext:(uint64_t)a1;
- (void)_addContextForHostingView:(uint64_t)a1;
- (void)addLayerHierarchy:(id)a3;
- (void)addLayerHierarchyHostingView:(id)a3;
- (void)commit;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BELayerHierarchyHostingTransactionCoordinator

- (BELayerHierarchyHostingTransactionCoordinator)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BELayerHierarchyHostingTransactionCoordinator"];
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
    v16 = @"BELayerHierarchyHostingTransactionCoordinator.m";
    v17 = 1024;
    v18 = 38;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithFence:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BELayerHierarchyHostingTransactionCoordinator *)v6 _initWithFence:a2, self];
    }
  }

  v10.receiver = self;
  v10.super_class = BELayerHierarchyHostingTransactionCoordinator;
  v7 = [(BELayerHierarchyHostingTransactionCoordinator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_fence, a3);
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ must commit before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_2();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_0(&dword_19D4FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addContext:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 32));
    if (*(a1 + 36) == 1)
    {
      [(BELayerHierarchyHostingTransactionCoordinator *)a1 _addContext:?];
    }

    [(BELayerHierarchyHostingTransactionCoordinator *)a1 _addContext:v3];
  }
}

- (void)_addContextForHostingView:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 32));
    if (*(a1 + 36) == 1)
    {
      [(BELayerHierarchyHostingTransactionCoordinator *)a1 _addContextForHostingView:?];
    }

    [(BELayerHierarchyHostingTransactionCoordinator *)v3 _addContextForHostingView:a1];
  }
}

+ (id)coordinatorWithError:(id *)a3
{
  v4 = [MEMORY[0x1E6979370] newFenceFromDefaultServer];
  if (v4)
  {
    v5 = [[BELayerHierarchyHostingTransactionCoordinator alloc] _initWithFence:v4];
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:0];
    *a3 = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)coordinatorWithXPCRepresentation:(id)a3 error:(id *)a4
{
  v16 = 0;
  v5 = [MEMORY[0x1E6979370] handleFromXPCRepresentation:a3 error:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    v8 = [[BELayerHierarchyHostingTransactionCoordinator alloc] _initWithFence:v5];
    goto LABEL_3;
  }

  if (!a4)
  {
    v8 = 0;
    goto LABEL_3;
  }

  if (!v6)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v14 = 4866;
    goto LABEL_13;
  }

  v10 = [v6 domain];
  if ([v10 isEqual:*MEMORY[0x1E696A250]])
  {
    v11 = [v7 code];

    if (v11 == 4865)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A798];
      v14 = 60;
LABEL_13:
      [v12 errorWithDomain:v13 code:v14 userInfo:0];
      *a4 = v8 = 0;
      goto LABEL_3;
    }
  }

  else
  {
  }

  v15 = v7;
  v8 = 0;
  *a4 = v7;
LABEL_3:

  return v8;
}

- (id)createXPCRepresentation
{
  v2 = [(CAFenceHandle *)self->_fence createXPCRepresentation];

  return v2;
}

- (BELayerHierarchyHostingTransactionCoordinator)initWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BELayerHierarchyHostingTransactionCoordinator initWithCoder:a2];
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"fence"];
  v7 = v6;
  if (v6 && [v6 isUsable])
  {
    v8 = [(BELayerHierarchyHostingTransactionCoordinator *)self _initWithFence:v7];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = BELayerHierarchyHostingTransactionCoordinator;
    v9 = [(BELayerHierarchyHostingTransactionCoordinator *)&v11 init];
    if (v9)
    {
      v9->_commitLock_committed = 1;
    }

    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BELayerHierarchyHostingTransactionCoordinator encodeWithCoder:a2];
  }

  [v5 encodeObject:self->_fence forKey:@"fence"];
}

- (void)addLayerHierarchy:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_commitLock);
  v5 = [(BELayerHierarchy *)v4 _context];

  [(BELayerHierarchyHostingTransactionCoordinator *)self _addContext:v5];

  os_unfair_lock_unlock(&self->_commitLock);
}

- (void)addLayerHierarchyHostingView:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_commitLock);
  [(BELayerHierarchyHostingTransactionCoordinator *)self _addContextForHostingView:v4];
  commitLock_hostingViews = self->_commitLock_hostingViews;
  if (commitLock_hostingViews)
  {
    [(NSMutableSet *)commitLock_hostingViews addObject:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] setWithObject:v4];

    v4 = self->_commitLock_hostingViews;
    self->_commitLock_hostingViews = v6;
  }

  os_unfair_lock_unlock(&self->_commitLock);
}

- (void)commit
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be committed twice"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_2();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_0(&dword_19D4FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithFence:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
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
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"fence", v7, v9];

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
    v21 = @"BELayerHierarchyHostingTransactionCoordinator.m";
    v22 = 1024;
    v23 = 43;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addContext:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot add to coordinator after commit"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_2();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_0(&dword_19D4FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (uint64_t)_addContext:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    [v4 addObject:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] setWithObject:a2];
    v6 = *(a1 + 16);
    *(a1 + 16) = v5;
  }

  v7 = *(a1 + 8);

  return [a2 addFence:v7];
}

- (void)_addContextForHostingView:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot add hostingView after commit"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_2();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_0(&dword_19D4FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addContextForHostingView:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a1 window];
  v6 = [v5 _boundContext];

  if (v6)
  {
    [(BELayerHierarchyHostingTransactionCoordinator *)a2 _addContext:v6];
  }

  else
  {
    v7 = [a1 layer];
    v8 = [v7 context];

    if (v8)
    {
      [(BELayerHierarchyHostingTransactionCoordinator *)a2 _addContext:v8];
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)initWithCoder:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BELayerHierarchyHandle only supports NSXPCCoder"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    v7 = @"BELayerHierarchyHostingTransactionCoordinator.m";
    v8 = 1024;
    v9 = 160;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)encodeWithCoder:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BELayerHierarchyHandle only supports NSXPCCoder"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    v7 = @"BELayerHierarchyHostingTransactionCoordinator.m";
    v8 = 1024;
    v9 = 173;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_19D4FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end