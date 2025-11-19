@interface _NSActivityAssertion
+ (id)_expirationHandlerExecutionQueue;
+ (id)_expiringActivities;
+ (id)_expiringTaskExecutionQueue;
+ (void)_expireAllActivities;
+ (void)_performActivityWithOptions:(unint64_t)a3 reason:(id)a4 usingBlock:(id)a5;
+ (void)_performExpiringActivityWithReason:(id)a3 usingBlock:(id)a4;
- (id)_initWithActivityOptions:(unint64_t)a3 reason:(id)a4 expirationHandler:(id)a5;
- (id)debugDescription;
- (void)_endFromDealloc:(BOOL)a3;
- (void)_fireExpirationHandler;
- (void)_reactivate;
- (void)_releaseProcessAssertion;
- (void)dealloc;
@end

@implementation _NSActivityAssertion

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (!self->_ended)
  {
    [(_NSActivityAssertion *)self _endFromDealloc:1];
  }

  v3.receiver = self;
  v3.super_class = _NSActivityAssertion;
  [(_NSActivityAssertion *)&v3 dealloc];
}

- (void)_reactivate
{
  if ((self->_options & 0x40000000000) != 0)
  {
    if (self->_voucher)
    {
      v3 = voucher_adopt();
      self->_adoptPreviousVoucher = 1;
      self->_voucher = 0;
      self->_previousVoucher = v3;
    }
  }
}

+ (id)_expiringTaskExecutionQueue
{
  if (qword_1ED43F6F8 != -1)
  {
    dispatch_once(&qword_1ED43F6F8, &__block_literal_global_20);
  }

  return qword_1ED43F700;
}

+ (id)_expirationHandlerExecutionQueue
{
  if (qword_1ED43F708 != -1)
  {
    dispatch_once(&qword_1ED43F708, &__block_literal_global_3);
  }

  return qword_1ED43F710;
}

+ (id)_expiringActivities
{
  if (qword_1ED43F718 != -1)
  {
    dispatch_once(&qword_1ED43F718, &__block_literal_global_6);
  }

  return qword_1ED43F720;
}

+ (void)_expireAllActivities
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_MergedGlobals_104);
  v2 = [+[_NSActivityAssertion _expiringActivities](_NSActivityAssertion "_expiringActivities")];
  os_unfair_lock_unlock(&_MergedGlobals_104);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) _fireExpirationHandler];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (id)_initWithActivityOptions:(unint64_t)a3 reason:(id)a4 expirationHandler:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = _NSActivityAssertion;
  v33.receiver = [(_NSActivityAssertion *)&v34 init];
  v33.super_class = _NSActivityAssertion;
  v10 = [(_NSActivityAssertion *)&v33 init];
  if (!v10)
  {
    return v10;
  }

  v11 = a3 | 0x100000000000;
  if (!a5)
  {
    v11 = a3;
  }

  v10->_options = v11;
  p_options = &v10->_options;
  atomic_store(0, &v10->_ended);
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = @"No Reason Specified (via NSActivityOptions)";
  }

  v14 = [(__CFString *)v13 copy];
  v10->_reason = v14;
  atomic_store(0, &v10->_signpostID);
  options = *p_options;
  if ((*p_options & 0x100000) == 0)
  {
LABEL_10:
    if ((options & 0x20000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v14, &v10->_systemSleepAssertionID);
  if (v16)
  {
    v17 = _NSMethodExceptionProem(v10, a2);
    NSLog(@"%@: Warning: Could not create system idle sleep assertion (%d)", v17, v16);
    options = v10->_options & 0xFFFFFFFFFFEFFFFFLL;
    v10->_options = options;
    goto LABEL_10;
  }

  options = v10->_options;
  if ((options & 0x20000000000) != 0)
  {
LABEL_11:
    [+[NSString stringWithFormat:](NSString UTF8String:@"NSActivityAssertion: %@"];
    v10->_transaction = os_transaction_create();
    options = v10->_options;
  }

LABEL_12:
  if ((options & 0x40000000000) != 0)
  {
    v10->_voucher = voucher_copy();
    options = v10->_options;
  }

  if ((options & 0x80000000000) != 0)
  {
    v10->_xpcBoost = +[NSXPCConnection _currentBoost];
    options = v10->_options;
  }

  if ((options & 0x100000000000) != 0)
  {
    if (!a5)
    {
      v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: called with a nil expiration block", _NSMethodExceptionProem(v10, a2)), 0}];
      objc_exception_throw(v29);
    }

    if (qword_1ED43F738 != -1)
    {
      dispatch_once(&qword_1ED43F738, &__block_literal_global_43);
    }

    v10->_expirationHandler = [a5 copy];
    v10->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&_MergedGlobals_104);
    [+[_NSActivityAssertion _expiringActivities](_NSActivityAssertion "_expiringActivities")];
    os_unfair_lock_unlock(&_MergedGlobals_104);
    inited = objc_initWeak(location, v10);
    v19 = objc_alloc(getBKSProcessAssertionClass(inited));
    v20 = getpid();
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __74___NSActivityAssertion__initWithActivityOptions_reason_expirationHandler___block_invoke_3;
    v31[3] = &unk_1E69F49B8;
    objc_copyWeak(&v32, location);
    v10->_processAssertion = [v19 initWithPID:v20 flags:1 reason:4 name:a4 withHandler:v31];
    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
    options = v10->_options;
  }

  if ((options & 0x600000000000) != 0)
  {
    if (qword_1ED43F740 != -1)
    {
      dispatch_once(&qword_1ED43F740, &__block_literal_global_107);
    }

    v21 = os_signpost_id_make_with_pointer(qword_1ED43F748, v10);
    if (v21)
    {
      v22 = v21;
      if (v21 == -1)
      {
        v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unable to create a valid signpost ID", _NSMethodExceptionProem(v10, sel__emitSignpostBegin)), 0}];
        objc_exception_throw(v30);
      }

      if ((v10->_options & 0x200000000000) != 0)
      {
        if (qword_1ED43F740 != -1)
        {
          dispatch_once(&qword_1ED43F740, &__block_literal_global_107);
        }

        v23 = qword_1ED43F748;
        if (!os_signpost_enabled(qword_1ED43F748))
        {
          goto LABEL_49;
        }

        reason = v10->_reason;
        if (qword_1ED43F730 != -1)
        {
          dispatch_once(&qword_1ED43F730, &__block_literal_global_9);
        }

        *location = 138543618;
        *&location[4] = reason;
        v36 = 2114;
        v37 = qword_1ED43F728;
        v25 = " reason=%{signpost.telemetry:string1,public}@ version=%{signpost.telemetry:string2,public}@  enableTelemetry=YES  isAnimation=YES";
      }

      else if (os_variant_has_internal_diagnostics())
      {
        if (qword_1ED43F740 != -1)
        {
          dispatch_once(&qword_1ED43F740, &__block_literal_global_107);
        }

        v23 = qword_1ED43F748;
        if (!os_signpost_enabled(qword_1ED43F748))
        {
          goto LABEL_49;
        }

        v24 = v10->_reason;
        if (qword_1ED43F730 != -1)
        {
          dispatch_once(&qword_1ED43F730, &__block_literal_global_9);
        }

        *location = 138543618;
        *&location[4] = v24;
        v36 = 2114;
        v37 = qword_1ED43F728;
        v25 = " reason=%{signpost.telemetry:string1,public}@ version=%{signpost.telemetry:string2,public}@  enableTelemetry=YES ";
      }

      else
      {
        if (qword_1ED43F740 != -1)
        {
          dispatch_once(&qword_1ED43F740, &__block_literal_global_107);
        }

        v23 = qword_1ED43F748;
        if (!os_signpost_enabled(qword_1ED43F748))
        {
          goto LABEL_49;
        }

        v27 = v10->_reason;
        if (qword_1ED43F730 != -1)
        {
          dispatch_once(&qword_1ED43F730, &__block_literal_global_9);
        }

        *location = 138543618;
        *&location[4] = v27;
        v36 = 2114;
        v37 = qword_1ED43F728;
        v25 = " reason=%{signpost.telemetry:string1,public}@ version=%{signpost.telemetry:string2,public}@ ";
      }

      _os_signpost_emit_with_name_impl(&dword_18075C000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v22, "interaction_tracking", v25, location, 0x16u);
LABEL_49:
      atomic_store(v22, &v10->_signpostID);
    }
  }

  return v10;
}

- (id)debugDescription
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSActivityAssertion;
  return [NSString stringWithFormat:@"%@ 0x%16llx %@ %@", [(_NSActivityAssertion *)&v3 debugDescription], self->_options, self->_reason, self->_processAssertion];
}

- (void)_endFromDealloc:(BOOL)a3
{
  v4 = 0;
  v14 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong(&self->_ended, &v4, 1u);
  if (v4)
  {
    NSLog(@"Warning: NSActivity %@ was ended multiple times", a2, a3, self);
  }

  else
  {
    v5 = a3;
    options = self->_options;
    if ((options & 0x100000) != 0)
    {
      IOPMAssertionRelease(self->_systemSleepAssertionID);
      options = self->_options;
    }

    if ((options & 0x600000000000) != 0)
    {
      v7 = atomic_load(&self->_signpostID);
      if (v7)
      {
        if (qword_1ED43F740 != -1)
        {
          dispatch_once(&qword_1ED43F740, &__block_literal_global_107);
        }

        if (v7 != -1)
        {
          v8 = qword_1ED43F748;
          if (os_signpost_enabled(qword_1ED43F748))
          {
            *buf = 67240192;
            v13 = v5;
            _os_signpost_emit_with_name_impl(&dword_18075C000, v8, OS_SIGNPOST_INTERVAL_END, v7, "interaction_tracking", " abandoned=%{signpost.telemetry:number1,public}d ", buf, 8u);
          }
        }

        atomic_store(0, &self->_signpostID);
      }

      options = self->_options;
    }

    if ((options & 0x20000000000) != 0)
    {

      self->_transaction = 0;
      options = self->_options;
    }

    if ((options & 0x40000000000) != 0)
    {
      if (self->_adoptPreviousVoucher)
      {

        self->_previousVoucher = 0;
      }

      voucher = self->_voucher;
      if (voucher)
      {

        self->_voucher = 0;
      }
    }

    v10 = self->_options;
    if ((v10 & 0x80000000000) != 0)
    {

      self->_xpcBoost = 0;
      v10 = self->_options;
    }

    if ((v10 & 0x100000000000) != 0)
    {
      [(_NSActivityAssertion *)self _releaseProcessAssertion];
    }

    os_unfair_lock_lock(&self->_lock);
    expirationHandler = self->_expirationHandler;
    self->_expirationHandler = 0;
    os_unfair_lock_unlock(&self->_lock);
    if (expirationHandler)
    {

      _Block_release(expirationHandler);
    }
  }
}

- (void)_releaseProcessAssertion
{
  os_unfair_lock_lock(&_MergedGlobals_104);
  [+[_NSActivityAssertion _expiringActivities](_NSActivityAssertion "_expiringActivities")];
  os_unfair_lock_unlock(&_MergedGlobals_104);
  os_unfair_lock_lock(&self->_lock);
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    [processAssertion invalidate];

    self->_processAssertion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_fireExpirationHandler
{
  block[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  expirationHandler = self->_expirationHandler;
  self->_expirationHandler = 0;
  os_unfair_lock_unlock(&self->_lock);
  v4 = +[_NSActivityAssertion _expirationHandlerExecutionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___NSActivityAssertion__fireExpirationHandler__block_invoke;
  block[3] = &unk_1E69F3910;
  block[4] = self;
  block[5] = expirationHandler;
  dispatch_async(v4, block);
}

+ (void)_performActivityWithOptions:(unint64_t)a3 reason:(id)a4 usingBlock:(id)a5
{
  if (!a4 || !_NSIsNSString() || ![a4 length])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot begin activity without reason string or empty reason string" userInfo:0]);
  }

  v8 = [[_NSActivityAssertion alloc] _initWithActivityOptions:a3 reason:a4 expirationHandler:0];
  _CFSetTSD();
  (*(a5 + 2))(a5);
  _CFSetTSD();
  [v8 _endFromDealloc:0];
}

+ (void)_performExpiringActivityWithReason:(id)a3 usingBlock:(id)a4
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (!a3 || !_NSIsNSString() || ![a3 length])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot begin activity without reason string or empty reason string" userInfo:0]);
  }

  v6 = [_NSActivityAssertion alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___NSActivityAssertion__performExpiringActivityWithReason_usingBlock___block_invoke;
  v10[3] = &unk_1E69F40C0;
  v10[4] = a4;
  v7 = [(_NSActivityAssertion *)v6 _initWithActivityOptions:0x1000000000FFLL reason:a3 expirationHandler:v10];
  v8 = +[_NSActivityAssertion _expiringTaskExecutionQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70___NSActivityAssertion__performExpiringActivityWithReason_usingBlock___block_invoke_2;
  v9[3] = &unk_1E69F3910;
  v9[4] = v7;
  v9[5] = a4;
  dispatch_async(v8, v9);
}

@end