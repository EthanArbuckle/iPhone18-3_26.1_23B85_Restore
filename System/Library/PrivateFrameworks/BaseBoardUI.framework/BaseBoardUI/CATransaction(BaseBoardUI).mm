@interface CATransaction(BaseBoardUI)
+ (void)bs_performAfterCommit:()BaseBoardUI;
+ (void)bs_performAfterSynchronizedCommit:()BaseBoardUI;
@end

@implementation CATransaction(BaseBoardUI)

+ (void)bs_performAfterSynchronizedCommit:()BaseBoardUI
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v26 = v9;
      v27 = 2114;
      v28 = v11;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"CATransaction+BaseBoardUI.m";
      v33 = 1024;
      v34 = 19;
      v35 = 2114;
      v36 = v8;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D4C038);
  }

  BSDispatchQueueAssertMain();
  [MEMORY[0x1E6979518] activate];
  v6 = MEMORY[0x1E6979518];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __64__CATransaction_BaseBoardUI__bs_performAfterSynchronizedCommit___block_invoke;
  v23 = &unk_1E76B7AE0;
  v7 = v5;
  v24 = v7;
  if (([v6 addCommitHandler:&v20 forPhase:5] & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    currentPhase = [MEMORY[0x1E6979518] currentPhase];
    v15 = [v13 stringWithFormat:@"failed to register commit handler for phase = kCATransactionPhasePostSynchronize (current is %i)", currentPhase, v20, v21, v22, v23];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v26 = v16;
      v27 = 2114;
      v28 = v18;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"CATransaction+BaseBoardUI.m";
      v33 = 1024;
      v34 = 25;
      v35 = 2114;
      v36 = v15;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D4C140);
  }
}

+ (void)bs_performAfterCommit:()BaseBoardUI
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v26 = v9;
      v27 = 2114;
      v28 = v11;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"CATransaction+BaseBoardUI.m";
      v33 = 1024;
      v34 = 29;
      v35 = 2114;
      v36 = v8;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D4C3C8);
  }

  BSDispatchQueueAssertMain();
  [MEMORY[0x1E6979518] activate];
  v6 = MEMORY[0x1E6979518];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __52__CATransaction_BaseBoardUI__bs_performAfterCommit___block_invoke;
  v23 = &unk_1E76B7AE0;
  v7 = v5;
  v24 = v7;
  if (([v6 addCommitHandler:&v20 forPhase:2] & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    currentPhase = [MEMORY[0x1E6979518] currentPhase];
    v15 = [v13 stringWithFormat:@"failed to register commit handler for phase = kCATransactionPhasePostCommit (current is %i)", currentPhase, v20, v21, v22, v23];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v26 = v16;
      v27 = 2114;
      v28 = v18;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"CATransaction+BaseBoardUI.m";
      v33 = 1024;
      v34 = 35;
      v35 = 2114;
      v36 = v15;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D4C4D0);
  }
}

@end