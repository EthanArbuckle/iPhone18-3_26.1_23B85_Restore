@interface BSContinuousMachTimer
- (BSContinuousMachTimer)initWithIdentifier:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)identifier;
- (void)dealloc;
- (void)scheduleRepeatingWithFireInterval:(double)a3 repeatInterval:(double)a4 leewayInterval:(double)a5 queue:(id)a6 handler:(id)a7;
- (void)scheduleWithFireInterval:(double)a3 leewayInterval:(double)a4 queue:(id)a5 handler:(id)a6;
@end

@implementation BSContinuousMachTimer

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  [(BSDispatchTimer *)self->_timer cancel];
  if (([(BSDispatchTimer *)self->_timer hasBeenInvalidated]& 1) == 0)
  {
    v4 = MEMORY[0x1E696AEC0];
    timer = self->_timer;
    if (timer)
    {
      timer = timer->_identifier;
    }

    v6 = timer;
    v7 = [v4 stringWithFormat:@"must invalidate timer %@ before dealloc", v6];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BSContinuousMachTimer.m";
      v21 = 1024;
      v22 = 31;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF1618CLL);
  }

  v12.receiver = self;
  v12.super_class = BSContinuousMachTimer;
  [(BSContinuousMachTimer *)&v12 dealloc];
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSDispatchTimer *)self->_timer appendDescriptionToBuilder:v3 forDebugging:0];
  v4 = [v3 build];

  return v4;
}

- (BSContinuousMachTimer)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BSContinuousMachTimer;
  v5 = [(BSContinuousMachTimer *)&v9 init];
  if (v5)
  {
    v6 = [BSDispatchTimer timerWithIdentifier:v4];
    timer = v5->_timer;
    v5->_timer = v6;
  }

  return v5;
}

- (NSString)identifier
{
  timer = self->_timer;
  if (timer)
  {
    return timer->_identifier;
  }

  else
  {
    return 0;
  }
}

- (NSString)debugDescription
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSDispatchTimer *)self->_timer appendDescriptionToBuilder:v3 forDebugging:1];
  v4 = [v3 build];

  return v4;
}

- (void)scheduleWithFireInterval:(double)a3 leewayInterval:(double)a4 queue:(id)a5 handler:(id)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v42 = a5;
  v11 = a6;
  v12 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v13 = a3 < 0.0 && ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v12 = 0;
  }

  v14 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v12;
  if ((v14 | v13) == 1)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid fireInterval %f", *&a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v44 = v23;
      v45 = 2114;
      v46 = v25;
      v47 = 2048;
      v48 = self;
      v49 = 2114;
      v50 = @"BSContinuousMachTimer.m";
      v51 = 1024;
      v52 = 62;
      v53 = 2114;
      v54 = v22;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    qword_1EAD33B00 = [v22 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8CECCLL);
  }

  v15 = (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v16 = a4 < 0.0 && ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a4 >= 0.0)
  {
    v15 = 0;
  }

  v17 = (*&a4 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
  if ((v17 | v16) == 1)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid leeway %f", *&a4];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v44 = v28;
      v45 = 2114;
      v46 = v30;
      v47 = 2048;
      v48 = self;
      v49 = 2114;
      v50 = @"BSContinuousMachTimer.m";
      v51 = 1024;
      v52 = 63;
      v53 = 2114;
      v54 = v27;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    qword_1EAD33B00 = [v27 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8CFCCLL);
  }

  if (!v42)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v44 = v33;
      v45 = 2114;
      v46 = v35;
      v47 = 2048;
      v48 = self;
      v49 = 2114;
      v50 = @"BSContinuousMachTimer.m";
      v51 = 1024;
      v52 = 64;
      v53 = 2114;
      v54 = v32;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    qword_1EAD33B00 = [v32 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8D0D4);
  }

  if (!v11)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v44 = v38;
      v45 = 2114;
      v46 = v40;
      v47 = 2048;
      v48 = self;
      v49 = 2114;
      v50 = @"BSContinuousMachTimer.m";
      v51 = 1024;
      v52 = 65;
      v53 = 2114;
      v54 = v37;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    qword_1EAD33B00 = [v37 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8D1DCLL);
  }

  timer = self->_timer;
  if (a3 >= 9223372040.0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = (a3 * 1000000000.0);
  }

  v20 = dispatch_time(0x8000000000000000, v19);
  if (a4 >= 9223372040.0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = (a4 * 1000000000.0);
  }

  [(BSDispatchTimer *)timer scheduleWithFireTime:v20 repeatNanoseconds:-1 leewayNanoseconds:v21 queue:v42 weakContext:self handler:v11];
}

- (void)scheduleRepeatingWithFireInterval:(double)a3 repeatInterval:(double)a4 leewayInterval:(double)a5 queue:(id)a6 handler:(id)a7
{
  v67 = *MEMORY[0x1E69E9840];
  v54 = a6;
  v13 = a7;
  v14 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v15 = a3 < 0.0 && ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v14 = 0;
  }

  v16 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v14;
  if ((v16 | v15) == 1)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid fireInterval %f", *&a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v56 = v30;
      v57 = 2114;
      v58 = v32;
      v59 = 2048;
      v60 = self;
      v61 = 2114;
      v62 = @"BSContinuousMachTimer.m";
      v63 = 1024;
      v64 = 79;
      v65 = 2114;
      v66 = v29;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    qword_1EAD33B00 = [v29 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8D5C8);
  }

  v17 = (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v18 = a4 < 0.0 && ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a4 >= 0.0)
  {
    v17 = 0;
  }

  v19 = (*&a4 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v17;
  if ((v19 | v18) == 1)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid repeatInterval %f", *&a4];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v56 = v35;
      v57 = 2114;
      v58 = v37;
      v59 = 2048;
      v60 = self;
      v61 = 2114;
      v62 = @"BSContinuousMachTimer.m";
      v63 = 1024;
      v64 = 80;
      v65 = 2114;
      v66 = v34;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v34;
    qword_1EAD33B00 = [v34 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8D6C8);
  }

  v20 = (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v21 = a5 < 0.0 && ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a5 >= 0.0)
  {
    v20 = 0;
  }

  v22 = (*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v20;
  if ((v22 | v21) == 1)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid leeway %f", *&a5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v56 = v40;
      v57 = 2114;
      v58 = v42;
      v59 = 2048;
      v60 = self;
      v61 = 2114;
      v62 = @"BSContinuousMachTimer.m";
      v63 = 1024;
      v64 = 81;
      v65 = 2114;
      v66 = v39;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v43 = v39;
    qword_1EAD33B00 = [v39 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8D7C8);
  }

  if (!v54)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v56 = v45;
      v57 = 2114;
      v58 = v47;
      v59 = 2048;
      v60 = self;
      v61 = 2114;
      v62 = @"BSContinuousMachTimer.m";
      v63 = 1024;
      v64 = 82;
      v65 = 2114;
      v66 = v44;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v48 = v44;
    qword_1EAD33B00 = [v44 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8D8D0);
  }

  if (!v13)
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v56 = v50;
      v57 = 2114;
      v58 = v52;
      v59 = 2048;
      v60 = self;
      v61 = 2114;
      v62 = @"BSContinuousMachTimer.m";
      v63 = 1024;
      v64 = 83;
      v65 = 2114;
      v66 = v49;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v53 = v49;
    qword_1EAD33B00 = [v49 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8D9D8);
  }

  timer = self->_timer;
  if (a3 >= 9223372040.0)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = (a3 * 1000000000.0);
  }

  v25 = dispatch_time(0x8000000000000000, v24);
  v26 = (a4 * 1000000000.0);
  if (v26 <= 1)
  {
    v26 = 1;
  }

  if (a5 >= 9223372040.0)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = (a5 * 1000000000.0);
  }

  if (a4 >= 9223372040.0)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v28 = v26;
  }

  [(BSDispatchTimer *)timer scheduleWithFireTime:v25 repeatNanoseconds:v28 leewayNanoseconds:v27 queue:v54 weakContext:self handler:v13];
}

@end