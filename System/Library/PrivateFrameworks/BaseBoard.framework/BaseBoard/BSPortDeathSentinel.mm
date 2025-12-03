@interface BSPortDeathSentinel
+ (void)monitorSendRight:(id)right withHandler:(id)handler;
- (BOOL)isValid;
- (BSPortDeathSentinel)initWithSendRight:(id)right;
- (void)activateWithHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)setQueue:(id)queue;
@end

@implementation BSPortDeathSentinel

- (void)invalidate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__BSPortDeathSentinel_invalidate__block_invoke;
  v2[3] = &unk_1E72CADE8;
  v2[4] = self;
  __lockAndExecute(&self->_lock, v2);
}

void __33__BSPortDeathSentinel_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    *(v1 + 33) = 1;
    v2 = *(*(a1 + 32) + 24);
    if (v2)
    {
      dispatch_source_cancel(v2);
    }
  }
}

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
  }

  v4.receiver = self;
  v4.super_class = BSPortDeathSentinel;
  [(BSPortDeathSentinel *)&v4 dealloc];
}

- (BSPortDeathSentinel)initWithSendRight:(id)right
{
  v33 = *MEMORY[0x1E69E9840];
  rightCopy = right;
  NSClassFromString(&cfstr_Bsmachportsend.isa);
  if (!rightCopy)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2114;
      v28 = @"BSPortDeathSentinel.m";
      v29 = 1024;
      v30 = 43;
      v31 = 2114;
      v32 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF54AE8);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSMachPortSendRightClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v22 = v16;
      v23 = 2114;
      v24 = v18;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2114;
      v28 = @"BSPortDeathSentinel.m";
      v29 = 1024;
      v30 = 43;
      v31 = 2114;
      v32 = v15;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    qword_1EAD33B00 = [v15 UTF8String];
    __break(0);
    JUMPOUT(0x18FF54BF0);
  }

  v20.receiver = self;
  v20.super_class = BSPortDeathSentinel;
  v6 = [(BSPortDeathSentinel *)&v20 init];
  if (v6)
  {
    v7 = [rightCopy copy];
    sendRight = v6->_sendRight;
    v6->_sendRight = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

+ (void)monitorSendRight:(id)right withHandler:(id)handler
{
  if (!handler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSPortDeathSentinel.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];
  }

  v6 = [[BSPortDeathSentinel alloc] initWithSendRight:right];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__BSPortDeathSentinel_monitorSendRight_withHandler___block_invoke;
  v11[3] = &unk_1E72CB2B0;
  v12 = v6;
  handlerCopy = handler;
  v7 = v6;
  [(BSPortDeathSentinel *)v7 activateWithHandler:v11];
}

- (void)activateWithHandler:(id)handler
{
  if (!handler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSPortDeathSentinel.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__BSPortDeathSentinel_activateWithHandler___block_invoke;
  v7[3] = &unk_1E72CB880;
  v7[5] = handler;
  v7[6] = a2;
  v7[4] = self;
  __lockAndExecute(&self->_lock, v7);
}

void __43__BSPortDeathSentinel_activateWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"BSPortDeathSentinel.m" lineNumber:72 description:@"port right sentinel cannot be activated multiple times"];

    v2 = *(a1 + 32);
  }

  if (*(v2 + 33) == 1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"BSPortDeathSentinel.m" lineNumber:73 description:@"port right sentinel cannot be activated after invalidation"];

    v2 = *(a1 + 32);
  }

  *(v2 + 32) = 1;
  v3 = *(*(a1 + 32) + 40);
  if (!v3)
  {
    objc_opt_self();
    if (qword_1ED44FE88 != -1)
    {
      dispatch_once(&qword_1ED44FE88, &__block_literal_global_21);
    }

    v3 = _MergedGlobals_20;
  }

  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 rawPort];
  if (v6 - 1 > 0xFFFFFFFD)
  {
    dispatch_async(v4, *(a1 + 40));
  }

  else
  {
    v7 = *(a1 + 32) + 16;
    v8 = dispatch_source_create(MEMORY[0x1E69E96E0], v6, 1uLL, v4);
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = v8;

    v11 = v8;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __43__BSPortDeathSentinel_activateWithHandler___block_invoke_2;
    handler[3] = &unk_1E72CB880;
    v12 = *(a1 + 40);
    v18 = v11;
    v19 = v12;
    v20 = v7;
    v13 = v11;
    dispatch_source_set_event_handler(v13, handler);
    v16 = v5;
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(v13);
  }
}

void __43__BSPortDeathSentinel_activateWithHandler___block_invoke_2(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__BSPortDeathSentinel_activateWithHandler___block_invoke_3;
  v6[3] = &unk_1E72CB858;
  v7 = *(a1 + 32);
  v8 = &v9;
  __lockAndExecute(v2, v6);
  if (*(v10 + 24) == 1)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v4, v5);
  }

  _Block_object_dispose(&v9, 8);
}

void __43__BSPortDeathSentinel_activateWithHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!dispatch_source_testcancel(v2))
  {
    dispatch_source_cancel(v2);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)setQueue:(id)queue
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__BSPortDeathSentinel_setQueue___block_invoke;
  v3[3] = &unk_1E72CB8A8;
  v3[5] = queue;
  v3[6] = a2;
  v3[4] = self;
  __lockAndExecute(&self->_lock, v3);
}

void __32__BSPortDeathSentinel_setQueue___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 32) == 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"BSPortDeathSentinel.m" lineNumber:117 description:@"port right sentinel cannot be mutated after activation"];

    v2 = a1[4];
  }

  if (*(v2 + 33) == 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a1[6] object:a1[4] file:@"BSPortDeathSentinel.m" lineNumber:118 description:@"port right sentinel cannot be mutated after invalidation"];

    v2 = a1[4];
  }

  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  v5 = a1[5];
  if (v4 != v5)
  {

    objc_storeStrong(v3, v5);
  }
}

- (BOOL)isValid
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__BSPortDeathSentinel_isValid__block_invoke;
  v4[3] = &unk_1E72CB858;
  v4[4] = self;
  v4[5] = &v5;
  __lockAndExecute(&self->_lock, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __30__BSPortDeathSentinel_isValid__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 33))
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  else
  {
    v3 = *(v2 + 24);
    if (v3 && dispatch_source_testcancel(v3))
    {
      result = 0;
    }

    else
    {
      result = [*(v2 + 8) isUsable];
    }

    *(*(*(v1 + 40) + 8) + 24) = result;
  }

  return result;
}

void __36__BSPortDeathSentinel__callOutQueue__block_invoke()
{
  Serial = BSDispatchQueueCreateSerial(@"BSPortDeathSentinelCallOut");
  v1 = _MergedGlobals_20;
  _MergedGlobals_20 = Serial;
}

@end