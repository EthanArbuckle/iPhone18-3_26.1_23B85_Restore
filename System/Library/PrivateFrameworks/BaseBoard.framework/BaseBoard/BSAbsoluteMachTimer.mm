@interface BSAbsoluteMachTimer
- (BSAbsoluteMachTimer)initWithIdentifier:(id)identifier;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)identifier;
- (void)dealloc;
- (void)scheduleRepeatingWithFireInterval:(double)interval repeatInterval:(double)repeatInterval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler;
- (void)scheduleWithFireInterval:(double)interval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler;
@end

@implementation BSAbsoluteMachTimer

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
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSAbsoluteMachTimer.m";
      v21 = 1024;
      v22 = 30;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0EEC4);
  }

  v12.receiver = self;
  v12.super_class = BSAbsoluteMachTimer;
  [(BSAbsoluteMachTimer *)&v12 dealloc];
}

- (BSAbsoluteMachTimer)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BSAbsoluteMachTimer;
  v5 = [(BSAbsoluteMachTimer *)&v9 init];
  if (v5)
  {
    v6 = [BSDispatchTimer timerWithIdentifier:identifierCopy];
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

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSDispatchTimer *)self->_timer appendDescriptionToBuilder:v3 forDebugging:0];
  build = [v3 build];

  return build;
}

- (NSString)debugDescription
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSDispatchTimer *)self->_timer appendDescriptionToBuilder:v3 forDebugging:1];
  build = [v3 build];

  return build;
}

- (void)scheduleWithFireInterval:(double)interval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler
{
  v55 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  v12 = (*&interval & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v13 = interval < 0.0 && ((*&interval & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (interval >= 0.0)
  {
    v12 = 0;
  }

  v14 = (*&interval & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v12;
  if ((v14 | v13) == 1)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid fireInterval %f", *&interval];
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
      selfCopy4 = self;
      v49 = 2114;
      v50 = @"BSAbsoluteMachTimer.m";
      v51 = 1024;
      v52 = 61;
      v53 = 2114;
      v54 = v22;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    qword_1EAD33B00 = [v22 UTF8String];
    __break(0);
    JUMPOUT(0x18FF35EE8);
  }

  v15 = (*&leewayInterval & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v16 = leewayInterval < 0.0 && ((*&leewayInterval & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (leewayInterval >= 0.0)
  {
    v15 = 0;
  }

  v17 = (*&leewayInterval & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
  if ((v17 | v16) == 1)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid leeway %f", *&leewayInterval];
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
      selfCopy4 = self;
      v49 = 2114;
      v50 = @"BSAbsoluteMachTimer.m";
      v51 = 1024;
      v52 = 62;
      v53 = 2114;
      v54 = v27;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    qword_1EAD33B00 = [v27 UTF8String];
    __break(0);
    JUMPOUT(0x18FF35FE8);
  }

  if (!queueCopy)
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
      selfCopy4 = self;
      v49 = 2114;
      v50 = @"BSAbsoluteMachTimer.m";
      v51 = 1024;
      v52 = 63;
      v53 = 2114;
      v54 = v32;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    qword_1EAD33B00 = [v32 UTF8String];
    __break(0);
    JUMPOUT(0x18FF360F0);
  }

  if (!handlerCopy)
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
      selfCopy4 = self;
      v49 = 2114;
      v50 = @"BSAbsoluteMachTimer.m";
      v51 = 1024;
      v52 = 64;
      v53 = 2114;
      v54 = v37;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    qword_1EAD33B00 = [v37 UTF8String];
    __break(0);
    JUMPOUT(0x18FF361F8);
  }

  timer = self->_timer;
  if (interval >= 9223372040.0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = (interval * 1000000000.0);
  }

  v20 = dispatch_time(0, v19);
  if (leewayInterval >= 9223372040.0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = (leewayInterval * 1000000000.0);
  }

  [(BSDispatchTimer *)timer scheduleWithFireTime:v20 repeatNanoseconds:-1 leewayNanoseconds:v21 queue:queueCopy weakContext:self handler:handlerCopy];
}

- (void)scheduleRepeatingWithFireInterval:(double)interval repeatInterval:(double)repeatInterval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler
{
  v67 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  v14 = (*&interval & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v15 = interval < 0.0 && ((*&interval & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (interval >= 0.0)
  {
    v14 = 0;
  }

  v16 = (*&interval & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v14;
  if ((v16 | v15) == 1)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid fireInterval %f", *&interval];
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
      selfCopy5 = self;
      v61 = 2114;
      v62 = @"BSAbsoluteMachTimer.m";
      v63 = 1024;
      v64 = 78;
      v65 = 2114;
      v66 = v29;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    qword_1EAD33B00 = [v29 UTF8String];
    __break(0);
    JUMPOUT(0x18FF365E4);
  }

  v17 = (*&repeatInterval & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v18 = repeatInterval < 0.0 && ((*&repeatInterval & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (repeatInterval >= 0.0)
  {
    v17 = 0;
  }

  v19 = (*&repeatInterval & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v17;
  if ((v19 | v18) == 1)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid repeatInterval %f", *&repeatInterval];
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
      selfCopy5 = self;
      v61 = 2114;
      v62 = @"BSAbsoluteMachTimer.m";
      v63 = 1024;
      v64 = 79;
      v65 = 2114;
      v66 = v34;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v34;
    qword_1EAD33B00 = [v34 UTF8String];
    __break(0);
    JUMPOUT(0x18FF366E4);
  }

  v20 = (*&leewayInterval & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v21 = leewayInterval < 0.0 && ((*&leewayInterval & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (leewayInterval >= 0.0)
  {
    v20 = 0;
  }

  v22 = (*&leewayInterval & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v20;
  if ((v22 | v21) == 1)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid leeway %f", *&leewayInterval];
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
      selfCopy5 = self;
      v61 = 2114;
      v62 = @"BSAbsoluteMachTimer.m";
      v63 = 1024;
      v64 = 80;
      v65 = 2114;
      v66 = v39;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v43 = v39;
    qword_1EAD33B00 = [v39 UTF8String];
    __break(0);
    JUMPOUT(0x18FF367E4);
  }

  if (!queueCopy)
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
      selfCopy5 = self;
      v61 = 2114;
      v62 = @"BSAbsoluteMachTimer.m";
      v63 = 1024;
      v64 = 81;
      v65 = 2114;
      v66 = v44;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v48 = v44;
    qword_1EAD33B00 = [v44 UTF8String];
    __break(0);
    JUMPOUT(0x18FF368ECLL);
  }

  if (!handlerCopy)
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
      selfCopy5 = self;
      v61 = 2114;
      v62 = @"BSAbsoluteMachTimer.m";
      v63 = 1024;
      v64 = 82;
      v65 = 2114;
      v66 = v49;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v53 = v49;
    qword_1EAD33B00 = [v49 UTF8String];
    __break(0);
    JUMPOUT(0x18FF369F4);
  }

  timer = self->_timer;
  if (interval >= 9223372040.0)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = (interval * 1000000000.0);
  }

  v25 = dispatch_time(0, v24);
  v26 = (repeatInterval * 1000000000.0);
  if (v26 <= 1)
  {
    v26 = 1;
  }

  if (leewayInterval >= 9223372040.0)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = (leewayInterval * 1000000000.0);
  }

  if (repeatInterval >= 9223372040.0)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v28 = v26;
  }

  [(BSDispatchTimer *)timer scheduleWithFireTime:v25 repeatNanoseconds:v28 leewayNanoseconds:v27 queue:queueCopy weakContext:self handler:handlerCopy];
}

@end