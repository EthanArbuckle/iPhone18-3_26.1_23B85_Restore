@interface BNSuspensionController
+ (void)initialize;
- (BOOL)isSuspended;
- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4;
- (NSSet)activeSuspensionReasons;
@end

@implementation BNSuspensionController

- (BOOL)isSuspended
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_suspensionReasons count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BNRegisterBannerKitLogging();
  }
}

- (NSSet)activeSuspensionReasons
{
  v2 = self;
  objc_sync_enter(v2);
  suspensionReasons = v2->_suspensionReasons;
  if (suspensionReasons)
  {
    v4 = suspensionReasons;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v5 = v4;
  objc_sync_exit(v2);

  return v5;
}

- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    [BNSuspensionController setSuspended:a2 forReason:self];
    v27 = 0;
    goto LABEL_17;
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(BNSuspensionController *)v8 isSuspended];
  if (v4)
  {
    suspensionReasons = v8->_suspensionReasons;
    if (!suspensionReasons)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v12 = v8->_suspensionReasons;
      v8->_suspensionReasons = v11;

      suspensionReasons = v8->_suspensionReasons;
    }

    [(NSMutableSet *)suspensionReasons addObject:v7];
    v13 = BNLogSuspending;
    if (os_log_type_enabled(BNLogSuspending, OS_LOG_TYPE_DEFAULT))
    {
      identifier = v8->_identifier;
      *v29 = 138543618;
      *&v29[4] = identifier;
      *&v29[12] = 2114;
      *&v29[14] = v7;
      _os_log_impl(&dword_1C42DC000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Suspension requested with reason: %{public}@", v29, 0x16u);
    }
  }

  else
  {
    v15 = BNLogSuspending;
    if (os_log_type_enabled(BNLogSuspending, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v8->_identifier;
      *v29 = 138543618;
      *&v29[4] = v16;
      *&v29[12] = 2114;
      *&v29[14] = v7;
      _os_log_impl(&dword_1C42DC000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) Resumption requested with reason: %{public}@", v29, 0x16u);
    }

    [(NSMutableSet *)v8->_suspensionReasons removeObject:v7];
  }

  v17 = [(BNSuspensionController *)v8 isSuspended];
  v18 = BNLogSuspending;
  v19 = os_log_type_enabled(BNLogSuspending, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v21 = v8->_suspensionReasons;
      v20 = v8->_identifier;
      *v29 = 138543618;
      *&v29[4] = v20;
      *&v29[12] = 2114;
      *&v29[14] = v21;
      v22 = "(%{public}@) Suspended: %{public}@";
      v23 = v18;
      v24 = 22;
LABEL_15:
      _os_log_impl(&dword_1C42DC000, v23, OS_LOG_TYPE_DEFAULT, v22, v29, v24);
    }
  }

  else if (v19)
  {
    v25 = v8->_identifier;
    *v29 = 138543362;
    *&v29[4] = v25;
    v22 = "(%{public}@) Resumed";
    v23 = v18;
    v24 = 12;
    goto LABEL_15;
  }

  v26 = [(BNSuspensionController *)v8 isSuspended:*v29];
  objc_sync_exit(v8);

  v27 = v9 ^ v26;
LABEL_17:

  return v27;
}

- (void)setSuspended:(uint64_t)a1 forReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNSuspensionController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end