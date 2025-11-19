@interface APXPCActivity
+ (OS_dispatch_queue)activityQueue;
+ (id)_translateCriteria:(id)a3;
- (APXPCActivity)initWithDelegate:(id)a3;
- (BOOL)_continueActivity;
- (BOOL)deferActivity;
- (BOOL)finished;
- (BOOL)setActivityState:(int64_t)a3;
- (BOOL)shouldDefer;
- (void)_backgroundDeferralCheck;
- (void)_endDeferralCheck;
- (void)_registerActivityWithCriteria:(id)a3;
- (void)_startDeferralCheck;
- (void)cancel;
- (void)schedule;
- (void)scheduleWithDelay:(int64_t)a3;
@end

@implementation APXPCActivity

+ (OS_dispatch_queue)activityQueue
{
  if (qword_1EDBA4198 != -1)
  {
    sub_1BAF8E268();
  }

  v3 = qword_1EDBA41A0;

  return v3;
}

+ (id)_translateCriteria:(id)a3
{
  if (a3)
  {
    v4 = objc_msgSend_translateCriteria(a3, a2, a3, v3);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9C50];
  }

  return v4;
}

- (APXPCActivity)initWithDelegate:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = APXPCActivity;
  v6 = [(APXPCActivity *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v11 = objc_msgSend_taskID(v5, v8, v9, v10);
    taskID = v7->_taskID;
    v7->_taskID = v11;
  }

  return v7;
}

- (BOOL)_continueActivity
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v6 = objc_msgSend_activity(v2, v3, v4, v5);

  if (v6)
  {
    if (objc_msgSend_setActivityState_(v2, v7, 4, v8))
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v9 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v14 = objc_msgSend_taskID(v2, v11, v12, v13);
        v25 = 138478083;
        v26 = v10;
        v27 = 2114;
        v28 = v14;
        _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to continue task %{public}@ - terminating.", &v25, 0x16u);
      }

      objc_msgSend_finished(v2, v15, v16, v17);
      v6 = objc_msgSend_delegate(v2, v18, v19, v20);
      objc_msgSend_terminateActivity_(v6, v21, v2, v22);

      LOBYTE(v6) = 0;
    }
  }

  objc_sync_exit(v2);

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)schedule
{
  v5 = objc_msgSend_delegate(self, a2, v2, v3);
  v9 = objc_msgSend_criteria(v5, v6, v7, v8);
  v14 = objc_msgSend__translateCriteria_(APXPCActivity, v10, v9, v11);

  objc_msgSend__registerActivityWithCriteria_(self, v12, v14, v13);
}

- (void)scheduleWithDelay:(int64_t)a3
{
  v6 = objc_msgSend_delegate(self, a2, a3, v3);
  v10 = objc_msgSend_criteria(v6, v7, v8, v9);
  xdict = objc_msgSend__translateCriteria_(APXPCActivity, v11, v10, v12);

  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9C68], a3);
  objc_msgSend__registerActivityWithCriteria_(self, v13, xdict, v14);
}

- (void)_registerActivityWithCriteria:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v11 = objc_msgSend_taskID(v5, v8, v9, v10);
    *buf = 138478339;
    v26 = v7;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Scheduling XPC activity %{public}@ with criteria %{public}@", buf, 0x20u);
  }

  v15 = objc_msgSend_taskID(v5, v12, v13, v14);
  v16 = v15;
  v20 = objc_msgSend_UTF8String(v15, v17, v18, v19);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1BAF1C5D0;
  v23[3] = &unk_1E7F1D1C8;
  v23[4] = v5;
  v21 = v4;
  v24 = v21;
  xpc_activity_register(v20, v21, v23);

  objc_sync_exit(v5);
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)finished
{
  objc_msgSend__endDeferralCheck(self, a2, v2, v3);
  v10 = objc_msgSend_setActivityState_(self, v5, 5, v6);
  if (v10)
  {
    v11 = objc_msgSend_delegate(self, v7, v8, v9);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v16 = objc_msgSend_delegate(self, v13, v14, v15);
      objc_msgSend_activityHasFinished_(v16, v17, self, v18);
    }
  }

  return v10;
}

- (BOOL)setActivityState:(int64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v8 = objc_msgSend_activity(v4, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_activity(v4, v9, v10, v11);
    LOBYTE(v8) = xpc_activity_set_state(v12, a3);

    if (v8)
    {
      v13 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v18 = objc_msgSend_taskID(v4, v15, v16, v17);
        v21 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v19, a3, v20);
        v32 = 138478339;
        v33 = v14;
        v34 = 2114;
        v35 = v18;
        v36 = 2114;
        v37 = v21;
        _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_INFO, "[%{private}@]: Setting activity %{public}@ to the %{public}@ state.", &v32, 0x20u);
      }
    }

    else
    {
      v13 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v26 = objc_msgSend_taskID(v4, v23, v24, v25);
        v29 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v27, a3, v28);
        v32 = 138478339;
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        v36 = 2114;
        v37 = v29;
        _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed to set activity %{public}@ to state %{public}@.", &v32, 0x20u);
      }
    }
  }

  objc_sync_exit(v4);

  v30 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)shouldDefer
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v6 = objc_msgSend_activity(v2, v3, v4, v5);

  if (v6)
  {
    v10 = objc_msgSend_activity(v2, v7, v8, v9);
    LODWORD(v6) = xpc_activity_should_defer(v10);

    v11 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v16 = objc_msgSend_taskID(v2, v13, v14, v15);
      v17 = v16;
      v18 = @"is not";
      v21 = 138478339;
      v22 = v12;
      v23 = 2114;
      if (v6)
      {
        v18 = @"will be";
      }

      v24 = v16;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Activity %{public}@ %{public}@ deferred.", &v21, 0x20u);
    }
  }

  objc_sync_exit(v2);

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)deferActivity
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_setActivityState_(self, a2, 3, v2);
  if (v7)
  {
    objc_msgSend__endDeferralCheck(self, v4, v5, v6);
  }

  else
  {
    v8 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v14 = objc_msgSend_taskID(self, v11, v12, v13);
      v26 = 138478083;
      v27 = v9;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to defer activity %{public}@ - terminating.", &v26, 0x16u);
    }

    objc_msgSend_finished(self, v15, v16, v17);
    v21 = objc_msgSend_delegate(self, v18, v19, v20);
    objc_msgSend_terminateActivity_(v21, v22, self, v23);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)cancel
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_activity(self, a2, v2, v3);

  if (!v5)
  {
LABEL_10:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = objc_msgSend_activity(self, v6, v7, v8);
  state = xpc_activity_get_state(v9);

  if (state > 4 || ((1 << state) & 0x1A) == 0)
  {
    v19 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_msgSend_taskID(self, v20, v21, v22);
      *buf = 138543618;
      v27 = v23;
      v28 = 2048;
      v29 = state;
      _os_log_impl(&dword_1BADC1000, v19, OS_LOG_TYPE_ERROR, "Cannot cancel activity %{public}@ with state %ld", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v25 = objc_msgSend_taskID(self, v11, v12, v13);
  v17 = objc_msgSend_UTF8String(v25, v14, v15, v16);
  xpc_activity_unregister(v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_backgroundDeferralCheck
{
  v2 = self;
  objc_sync_enter(v2);
  v6 = objc_msgSend_deferralCheckActive(v2, v3, v4, v5);
  objc_sync_exit(v2);

  if (v6)
  {
    v7 = dispatch_time(0, 2000000000);
    v11 = objc_msgSend_activityQueue(APXPCActivity, v8, v9, v10);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1BAF1D24C;
    block[3] = &unk_1E7F1CE98;
    block[4] = v2;
    dispatch_after(v7, v11, block);
  }
}

- (void)_startDeferralCheck
{
  v2 = self;
  objc_sync_enter(v2);
  objc_msgSend_setDeferralCheckActive_(v2, v3, 1, v4);
  objc_sync_exit(v2);

  MEMORY[0x1EEE66B58](v2, sel__backgroundDeferralCheck, v5, v6);
}

- (void)_endDeferralCheck
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_setDeferralCheckActive_(obj, v2, 0, v3);
  objc_sync_exit(obj);
}

@end