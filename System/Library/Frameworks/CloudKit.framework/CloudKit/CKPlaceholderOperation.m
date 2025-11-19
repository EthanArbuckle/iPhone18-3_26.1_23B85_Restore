@interface CKPlaceholderOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5;
- (void)main;
- (void)start;
@end

@implementation CKPlaceholderOperation

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  LOBYTE(self) = self->_executionState == 1;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return self;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  LOBYTE(self) = self->_executionState == 2;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return self;
}

- (void)start
{
  v24 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v13 = v3;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v17 = sub_18843BD9C(self, v16);
    *buf = 138543874;
    v19 = v15;
    v20 = 2048;
    v21 = self;
    v22 = 2114;
    v23 = v17;
    _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Placeholder op <%{public}@: %p; %{public}@> starting", buf, 0x20u);
  }

  if ((objc_msgSend_isExecuting(self, v4, v5) & 1) != 0 || objc_msgSend_isFinished(self, v6, v7))
  {
    v8 = *MEMORY[0x1E695D940];
    if (self)
    {
      objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v6, v8, @"You can't restart an executing or finished CKPlaceholderOperation: %@", self->_operationID);
    }

    else
    {
      objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v6, v8, @"You can't restart an executing or finished CKPlaceholderOperation: %@", 0);
    }
  }

  if (self)
  {
    CKOperationExecutionStateTransitionToExecuting(self, &self->_executionState);
  }

  v9 = objc_autoreleasePoolPush();
  objc_msgSend_main(self, v10, v11);
  objc_autoreleasePoolPop(v9);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)main
{
  (*(self->_daemonInvokeBlock + 2))();
  daemonInvokeBlock = self->_daemonInvokeBlock;
  self->_daemonInvokeBlock = 0;

  group = self->_group;
  v7 = objc_msgSend_qualityOfService(self, v5, v6);
  v8 = CKGetGlobalQueue(v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188435320;
  block[3] = &unk_1E70BC388;
  block[4] = self;
  dispatch_group_notify(group, v8, block);
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5
{
  v5 = a3;
  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = objc_msgSend_initWithCapacity_(v7, v8, 3);
  v11 = v9;
  if (v5)
  {
    if (self)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v10, @"operationID", self->_operationID);
    }

    else
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v10, @"operationID", 0);
    }

    v14 = MEMORY[0x1E696AD98];
    if (self)
    {
      objc_msgSend_timeIntervalSinceNow(self->_startDate, v12, v13);
    }

    else
    {
      objc_msgSend_timeIntervalSinceNow(0, v12, v13);
    }

    v18 = objc_msgSend_numberWithDouble_(v14, v15, v16, -v17);
    v20 = objc_msgSend_CKRoundedToMaximumDecimalPlaces_(v18, v19, 3);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v21, @"runningFor", v20);

    v23 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v22, 2);
    if (objc_msgSend_isExecuting(self, v24, v25))
    {
      objc_msgSend_addObject_(v23, v26, @"executing");
    }

    if (objc_msgSend_isFinished(self, v26, v27))
    {
      objc_msgSend_addObject_(v23, v28, @"finished");
    }

    if (objc_msgSend_count(v23, v28, v29))
    {
      v31 = objc_msgSend_componentsJoinedByString_(v23, v30, @"|");
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v32, @"stateFlags", v31);
    }
  }

  return v11;
}

@end