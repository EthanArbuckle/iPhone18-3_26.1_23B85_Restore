@interface BNSuspensionController
+ (void)initialize;
- (BOOL)isSuspended;
- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason;
- (NSSet)activeSuspensionReasons;
@end

@implementation BNSuspensionController

- (BOOL)isSuspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_suspensionReasons count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BNRegisterBannerKitLogging();
  }
}

- (NSSet)activeSuspensionReasons
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspensionReasons = selfCopy->_suspensionReasons;
  if (suspensionReasons)
  {
    v4 = suspensionReasons;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v5 = v4;
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason
{
  suspendedCopy = suspended;
  v30 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [BNSuspensionController setSuspended:a2 forReason:self];
    v27 = 0;
    goto LABEL_17;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  isSuspended = [(BNSuspensionController *)selfCopy isSuspended];
  if (suspendedCopy)
  {
    suspensionReasons = selfCopy->_suspensionReasons;
    if (!suspensionReasons)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v12 = selfCopy->_suspensionReasons;
      selfCopy->_suspensionReasons = v11;

      suspensionReasons = selfCopy->_suspensionReasons;
    }

    [(NSMutableSet *)suspensionReasons addObject:reasonCopy];
    v13 = BNLogSuspending;
    if (os_log_type_enabled(BNLogSuspending, OS_LOG_TYPE_DEFAULT))
    {
      identifier = selfCopy->_identifier;
      *v29 = 138543618;
      *&v29[4] = identifier;
      *&v29[12] = 2114;
      *&v29[14] = reasonCopy;
      _os_log_impl(&dword_1C42DC000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Suspension requested with reason: %{public}@", v29, 0x16u);
    }
  }

  else
  {
    v15 = BNLogSuspending;
    if (os_log_type_enabled(BNLogSuspending, OS_LOG_TYPE_DEFAULT))
    {
      v16 = selfCopy->_identifier;
      *v29 = 138543618;
      *&v29[4] = v16;
      *&v29[12] = 2114;
      *&v29[14] = reasonCopy;
      _os_log_impl(&dword_1C42DC000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) Resumption requested with reason: %{public}@", v29, 0x16u);
    }

    [(NSMutableSet *)selfCopy->_suspensionReasons removeObject:reasonCopy];
  }

  isSuspended2 = [(BNSuspensionController *)selfCopy isSuspended];
  v18 = BNLogSuspending;
  v19 = os_log_type_enabled(BNLogSuspending, OS_LOG_TYPE_DEFAULT);
  if (isSuspended2)
  {
    if (v19)
    {
      v21 = selfCopy->_suspensionReasons;
      v20 = selfCopy->_identifier;
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
    v25 = selfCopy->_identifier;
    *v29 = 138543362;
    *&v29[4] = v25;
    v22 = "(%{public}@) Resumed";
    v23 = v18;
    v24 = 12;
    goto LABEL_15;
  }

  v26 = [(BNSuspensionController *)selfCopy isSuspended:*v29];
  objc_sync_exit(selfCopy);

  v27 = isSuspended ^ v26;
LABEL_17:

  return v27;
}

- (void)setSuspended:(uint64_t)a1 forReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNSuspensionController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end