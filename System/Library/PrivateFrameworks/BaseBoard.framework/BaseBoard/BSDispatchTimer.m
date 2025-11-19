@interface BSDispatchTimer
+ (void)timerWithIdentifier:(uint64_t)a1;
- (BOOL)isScheduled;
- (BSDispatchTimer)init;
- (double)timeRemaining;
- (uint64_t)hasBeenInvalidated;
- (void)_lock_cancel;
- (void)appendDescriptionToBuilder:(int)a3 forDebugging:;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleWithFireTime:(uint64_t)a3 repeatNanoseconds:(uint64_t)a4 leewayNanoseconds:(void *)a5 queue:(void *)a6 weakContext:(void *)a7 handler:;
@end

@implementation BSDispatchTimer

- (void)invalidate
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    if ((*(a1 + 92) & 1) == 0)
    {
      *(a1 + 92) = 1;
      [(BSDispatchTimer *)a1 _lock_cancel];
    }

    os_unfair_lock_unlock((a1 + 16));
  }
}

- (void)cancel
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 4);
    [(BSDispatchTimer *)a1 _lock_cancel];

    os_unfair_lock_unlock(a1 + 4);
  }
}

- (uint64_t)hasBeenInvalidated
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v2 = *(a1 + 92);
    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_lock_cancel
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;

    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(a1 + 32);
      *(a1 + 32) = 0;
    }

    objc_storeWeak((a1 + 40), 0);
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;

    ++*(a1 + 88);
  }
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate timer %@ before dealloc", self->_identifier];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      v15 = self;
      v16 = 2114;
      v17 = @"BSDispatchTimer.m";
      v18 = 1024;
      v19 = 59;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    qword_1EAD33B00 = [v4 UTF8String];
    __break(0);
    JUMPOUT(0x18FF11548);
  }

  v9.receiver = self;
  v9.super_class = BSDispatchTimer;
  [(BSDispatchTimer *)&v9 dealloc];
}

- (BSDispatchTimer)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is unavailable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSDispatchTimer.m";
    v18 = 1024;
    v19 = 41;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  result = [v4 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

+ (void)timerWithIdentifier:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [BSDispatchTimer alloc];
  v4 = v2;
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel__initWithIdentifier_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *v15 = 138544642;
        *&v15[4] = v11;
        *&v15[12] = 2114;
        *&v15[14] = v13;
        v16 = 2048;
        v17 = v3;
        v18 = 2114;
        v19 = @"BSDispatchTimer.m";
        v20 = 1024;
        v21 = 46;
        v22 = 2114;
        v23 = v10;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15, 0x3Au);
      }

      v14 = v10;
      qword_1EAD33B00 = [v10 UTF8String];
      __break(0);
      JUMPOUT(0x18FF67F1CLL);
    }

    *v15 = v3;
    *&v15[8] = BSDispatchTimer;
    v6 = objc_msgSendSuper2(v15, sel_init);
    if (v6)
    {
      v7 = [v5 copy];
      v8 = v6[1];
      v6[1] = v7;

      *(v6 + 4) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isScheduled
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 32) != 0;
  os_unfair_lock_unlock((a1 + 16));
  return v2;
}

- (double)timeRemaining
{
  if (!a1)
  {
    return 0.0;
  }

  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 32);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 80);
  os_unfair_lock_unlock((a1 + 16));
  if (!v2)
  {
    return NAN;
  }

  return BSDispatchTimerTimeRemainingForFireTimeWithRepeat(v4, v5, v3);
}

- (void)scheduleWithFireTime:(uint64_t)a3 repeatNanoseconds:(uint64_t)a4 leewayNanoseconds:(void *)a5 queue:(void *)a6 weakContext:(void *)a7 handler:
{
  v62 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (a1)
  {
    if (!v15)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"context"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel_scheduleWithFireTime_repeatNanoseconds_leewayNanoseconds_queue_weakContext_handler_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v51 = v29;
        v52 = 2114;
        v53 = v31;
        v54 = 2048;
        v55 = a1;
        v56 = 2114;
        v57 = @"BSDispatchTimer.m";
        v58 = 1024;
        v59 = 168;
        v60 = 2114;
        v61 = v28;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      qword_1EAD33B00 = [v28 UTF8String];
      __break(0);
      JUMPOUT(0x18FF68600);
    }

    if (!v14)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(sel_scheduleWithFireTime_repeatNanoseconds_leewayNanoseconds_queue_weakContext_handler_);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        v51 = v34;
        v52 = 2114;
        v53 = v36;
        v54 = 2048;
        v55 = a1;
        v56 = 2114;
        v57 = @"BSDispatchTimer.m";
        v58 = 1024;
        v59 = 169;
        v60 = 2114;
        v61 = v33;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v37 = v33;
      qword_1EAD33B00 = [v33 UTF8String];
      __break(0);
      JUMPOUT(0x18FF68708);
    }

    if (!v16)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(sel_scheduleWithFireTime_repeatNanoseconds_leewayNanoseconds_queue_weakContext_handler_);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v51 = v39;
        v52 = 2114;
        v53 = v41;
        v54 = 2048;
        v55 = a1;
        v56 = 2114;
        v57 = @"BSDispatchTimer.m";
        v58 = 1024;
        v59 = 170;
        v60 = 2114;
        v61 = v38;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v42 = v38;
      qword_1EAD33B00 = [v38 UTF8String];
      __break(0);
      JUMPOUT(0x18FF68810);
    }

    v18 = dispatch_time(a2, 0);
    os_unfair_lock_lock((a1 + 16));
    if (*(a1 + 92) == 1)
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot schedule after invalidating"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = NSStringFromSelector(sel_scheduleWithFireTime_repeatNanoseconds_leewayNanoseconds_queue_weakContext_handler_);
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138544642;
        v51 = v44;
        v52 = 2114;
        v53 = v46;
        v54 = 2048;
        v55 = a1;
        v56 = 2114;
        v57 = @"BSDispatchTimer.m";
        v58 = 1024;
        v59 = 176;
        v60 = 2114;
        v61 = v43;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v47 = v43;
      qword_1EAD33B00 = [v43 UTF8String];
      __break(0);
      JUMPOUT(0x18FF6890CLL);
    }

    if (*(a1 + 32) && *(a1 + 24) != v14)
    {
      [(BSDispatchTimer *)a1 _lock_cancel];
    }

    v19 = *(a1 + 88) + 1;
    *(a1 + 88) = v19;
    *(a1 + 56) = v18;
    *(a1 + 64) = a3;
    *(a1 + 72) = a4 & ~(a4 >> 63);
    objc_storeWeak((a1 + 40), v15);
    objc_storeStrong((a1 + 24), a5);
    v20 = MEMORY[0x193AE5AC0](v17);
    v21 = *(a1 + 48);
    *(a1 + 48) = v20;

    *(a1 + 80) = 0;
    v22 = *(a1 + 32);
    if (v22)
    {
      dispatch_suspend(v22);
    }

    else
    {
      v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14);
      v24 = *(a1 + 32);
      *(a1 + 32) = v23;
    }

    v25 = *(a1 + 32);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __102__BSDispatchTimer_scheduleWithFireTime_repeatNanoseconds_leewayNanoseconds_queue_weakContext_handler___block_invoke;
    handler[3] = &unk_1E72CB978;
    handler[4] = a1;
    v49 = v19;
    v26 = a1;
    dispatch_source_set_event_handler(v25, handler);
    if (*(a1 + 64) <= 0)
    {
      v27 = -1;
    }

    else
    {
      v27 = *(a1 + 64);
    }

    dispatch_source_set_timer(*(a1 + 32), *(a1 + 56), v27, *(a1 + 72));
    dispatch_resume(*(a1 + 32));
    os_unfair_lock_unlock((a1 + 16));
  }
}

void __102__BSDispatchTimer_scheduleWithFireTime_repeatNanoseconds_leewayNanoseconds_queue_weakContext_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    os_unfair_lock_lock((v1 + 16));
    if (*(v1 + 88) == v2)
    {
      WeakRetained = objc_loadWeakRetained((v1 + 40));
      v3 = MEMORY[0x193AE5AC0](*(v1 + 48));
      ++*(v1 + 80);
      if (!WeakRetained || *(v1 + 64) <= 0)
      {
        [(BSDispatchTimer *)v1 _lock_cancel];
      }
    }

    else
    {
      v3 = 0;
      WeakRetained = 0;
    }

    os_unfair_lock_unlock((v1 + 16));
    if (WeakRetained && v3)
    {
      (v3)[2](v3, WeakRetained);
    }
  }
}

- (void)appendDescriptionToBuilder:(int)a3 forDebugging:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    [v5 appendString:*(a1 + 8) withName:@"identifier"];
    os_unfair_lock_lock((a1 + 16));
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v11 = *(a1 + 72);
    v10 = *(a1 + 80);
    v12 = *(a1 + 92);
    os_unfair_lock_unlock((a1 + 16));
    v13 = [v6 appendBool:v7 != 0 withName:@"isScheduled"];
    if (v7)
    {
      v14 = [v6 appendTimeInterval:@"timeRemaining" withName:1 decomposeUnits:{BSDispatchTimerTimeRemainingForFireTimeWithRepeat(v8, v10, v9)}];
      if (a3)
      {
        if (v9 != -1)
        {
          v17 = -1;
          dispatch_time_to_nsec();
        }

        v15 = [v6 appendTimeInterval:@"leeway" withName:0 decomposeUnits:{(v11 % 0x3B9ACA00) / 1000000000.0 + (v11 / 0x3B9ACA00), v17}];
      }
    }

    v16 = [v6 appendBool:v12 withName:@"isInvalidated"];
  }
}

@end