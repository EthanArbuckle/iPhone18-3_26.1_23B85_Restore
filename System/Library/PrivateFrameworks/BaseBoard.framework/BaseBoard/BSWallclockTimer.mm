@interface BSWallclockTimer
- (BSWallclockTimer)initWithIdentifier:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)identifier;
- (void)dealloc;
- (void)scheduleForDate:(id)a3 leewayInterval:(double)a4 queue:(id)a5 handler:(id)a6;
@end

@implementation BSWallclockTimer

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
      v20 = @"BSWallclockTimer.m";
      v21 = 1024;
      v22 = 29;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF16B54);
  }

  v12.receiver = self;
  v12.super_class = BSWallclockTimer;
  [(BSWallclockTimer *)&v12 dealloc];
}

- (BSWallclockTimer)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BSWallclockTimer;
  v5 = [(BSWallclockTimer *)&v9 init];
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

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSDispatchTimer *)self->_timer appendDescriptionToBuilder:v3 forDebugging:0];
  v4 = [v3 build];

  return v4;
}

- (NSString)debugDescription
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSDispatchTimer *)self->_timer appendDescriptionToBuilder:v3 forDebugging:1];
  v4 = [v3 build];

  return v4;
}

- (void)scheduleForDate:(id)a3 leewayInterval:(double)a4 queue:(id)a5 handler:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v16 = a4 < 0.0 && ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a4 >= 0.0)
  {
    v15 = 0;
  }

  v17 = (*&a4 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
  if ((v17 | v16) == 1)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid leeway %f", *&a4];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *when = 138544642;
      *&when[4] = v24;
      *&when[12] = 2114;
      *&when[14] = v26;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"BSWallclockTimer.m";
      v44 = 1024;
      v45 = 60;
      v46 = 2114;
      v47 = v23;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", when, 0x3Au);
    }

    v27 = v23;
    qword_1EAD33B00 = [v23 UTF8String];
    __break(0);
    JUMPOUT(0x18FF4429CLL);
  }

  if (!v12)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *when = 138544642;
      *&when[4] = v29;
      *&when[12] = 2114;
      *&when[14] = v31;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"BSWallclockTimer.m";
      v44 = 1024;
      v45 = 61;
      v46 = 2114;
      v47 = v28;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", when, 0x3Au);
    }

    v32 = v28;
    qword_1EAD33B00 = [v28 UTF8String];
    __break(0);
    JUMPOUT(0x18FF443A4);
  }

  if (!v13)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *when = 138544642;
      *&when[4] = v34;
      *&when[12] = 2114;
      *&when[14] = v36;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"BSWallclockTimer.m";
      v44 = 1024;
      v45 = 62;
      v46 = 2114;
      v47 = v33;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", when, 0x3Au);
    }

    v37 = v33;
    qword_1EAD33B00 = [v33 UTF8String];
    __break(0);
    JUMPOUT(0x18FF444ACLL);
  }

  __y = 0.0;
  [v11 timeIntervalSince1970];
  v19 = modf(v18, &__y);
  v20.f64[0] = __y;
  v20.f64[1] = v19 * 1000000000.0;
  *when = vcvtq_s64_f64(vminnmq_f64(vmaxnmq_f64(v20, vdupq_n_s64(0xC3E0000000000000)), vdupq_n_s64(0x43E0000000000000uLL)));
  v21 = dispatch_walltime(when, 0);
  if (a4 >= 9223372040.0)
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = (a4 * 1000000000.0);
  }

  [(BSDispatchTimer *)self->_timer scheduleWithFireTime:v21 repeatNanoseconds:-1 leewayNanoseconds:v22 queue:v12 weakContext:self handler:v14];
}

@end