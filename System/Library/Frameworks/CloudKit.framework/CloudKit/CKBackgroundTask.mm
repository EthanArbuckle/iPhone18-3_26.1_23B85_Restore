@interface CKBackgroundTask
+ (CKBackgroundTask)allocWithZone:(_NSZone *)a3;
- (BOOL)_useExpiringActivity;
- (BOOL)expiredWithRetryAfter:(double)a3 error:(id *)a4;
- (CKBackgroundTask)initWithIdentifier:(id)a3;
- (id)expirationHandler;
- (int64_t)state;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)complete;
- (void)dealloc;
- (void)setExpirationHandler:(id)a3;
- (void)start;
@end

@implementation CKBackgroundTask

- (void)dealloc
{
  sub_18843B7F0(self, a2);
  v3.receiver = self;
  v3.super_class = CKBackgroundTask;
  [(CKBackgroundTask *)&v3 dealloc];
}

- (void)start
{
  v65[1] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_state);
  objc_msgSend_willChangeValueForKey_(self, v4, v3);

  os_unfair_lock_lock(&self->_lock);
  if (!self->_state)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v8 = v5;
      v11 = objc_msgSend_ckShortDescription(self, v9, v10);
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_INFO, "[%@] Started", buf, 0xCu);
    }

    if (!self->_activity)
    {
      if (objc_msgSend_priority(self, v6, v7) == 3)
      {
        v14 = 15728639;
      }

      else
      {
        v14 = 255;
      }

      if (objc_msgSend__useExpiringActivity(self, v12, v13))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v15 = ck_log_facility_scheduler;
        if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
        {
          v54 = v15;
          v57 = objc_msgSend_ckShortDescription(self, v55, v56);
          *buf = 138412546;
          *&buf[4] = v57;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_debug_impl(&dword_1883EA000, v54, OS_LOG_TYPE_DEBUG, "[%@] Starting expiring activity with options: 0x%08llX", buf, 0x16u);
        }

        objc_initWeak(&location, self);
        v18 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v16, v17);
        v21 = objc_msgSend_identifier(self, v19, v20);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_188645D4C;
        v64 = &unk_1E70BC680;
        objc_copyWeak(v65, &location);
        v23 = objc_msgSend_beginActivityWithOptions_reason_expirationHandler_(v18, v22, v14, v21, buf);
        activity = self->_activity;
        self->_activity = v23;

        objc_destroyWeak(v65);
        objc_destroyWeak(&location);
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v25 = ck_log_facility_scheduler;
        if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
        {
          v58 = v25;
          v61 = objc_msgSend_ckShortDescription(self, v59, v60);
          *buf = 138412546;
          *&buf[4] = v61;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_debug_impl(&dword_1883EA000, v58, OS_LOG_TYPE_DEBUG, "[%@] Starting activity with options: %llu", buf, 0x16u);
        }

        v28 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v26, v27);
        if (objc_msgSend_priority(self, v29, v30) == 3)
        {
          v33 = 15728639;
        }

        else
        {
          v33 = 255;
        }

        v34 = objc_msgSend_identifier(self, v31, v32);
        v36 = objc_msgSend_beginActivityWithOptions_reason_(v28, v35, v33, v34);
        v37 = self->_activity;
        self->_activity = v36;
      }
    }

    if (!self->_transaction)
    {
      v38 = MEMORY[0x1E696AEC0];
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v43 = objc_msgSend_identifier(self, v41, v42);
      v45 = objc_msgSend_stringWithFormat_(v38, v44, @"%@: %@", v40, v43);
      v46 = v45;
      objc_msgSend_UTF8String(v45, v47, v48);
      v49 = os_transaction_create();
      transaction = self->_transaction;
      self->_transaction = v49;
    }

    self->_state = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v51 = NSStringFromSelector(sel_state);
  objc_msgSend_didChangeValueForKey_(self, v52, v51);

  v53 = *MEMORY[0x1E69E9840];
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)complete
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_state);
  objc_msgSend_willChangeValueForKey_(self, v4, v3);

  os_unfair_lock_lock(&self->_lock);
  if (self->_state <= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v7 = v5;
      v10 = objc_msgSend_ckShortDescription(self, v8, v9);
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "[%@] Completed", &v14, 0xCu);
    }

    sub_18843B7F0(self, v6);
    self->_state = 4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = NSStringFromSelector(sel_state);
  objc_msgSend_didChangeValueForKey_(self, v12, v11);

  v13 = *MEMORY[0x1E69E9840];
}

+ (CKBackgroundTask)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return objc_msgSend_allocWithZone_(_CKBackgroundTask, v5, a3);
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKBackgroundTask;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (CKBackgroundTask)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKBackgroundTask;
  v7 = [(CKBackgroundTask *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    identifier = v7->_identifier;
    v7->_identifier = v8;
  }

  return v7;
}

- (id)expirationHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _Block_copy(self->_expirationHandler);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setExpirationHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_expirationHandler != v4 && (v5 = _Block_copy(v4), expirationHandler = self->_expirationHandler, self->_expirationHandler = v5, expirationHandler, v4) && self->_state == 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
      v12 = objc_msgSend_ckShortDescription(self, v10, v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "[%@] Invoking expiration handler due to cached state", &v13, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
    v4[2](v4);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_useExpiringActivity
{
  v3 = objc_msgSend_currentProcess(MEMORY[0x1E69C75D0], a2, v2);
  isManaged = objc_msgSend_isManaged(v3, v4, v5);

  return isManaged;
}

- (BOOL)expiredWithRetryAfter:(double)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = NSStringFromSelector(sel_state);
  objc_msgSend_willChangeValueForKey_(self, v7, v6);

  os_unfair_lock_lock(&self->_lock);
  if (self->_state <= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
      v13 = objc_msgSend_ckShortDescription(self, v11, v12);
      v18 = 138412546;
      v19 = v13;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "[%@] Expired with retry after: %g", &v18, 0x16u);
    }

    sub_18843B7F0(self, v9);
    self->_state = 3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = NSStringFromSelector(sel_state);
  objc_msgSend_didChangeValueForKey_(self, v15, v14);

  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v47 = a3;
  v6 = objc_msgSend_identifier(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(v47, v7, @"identifier", v6, 0);

  v10 = objc_msgSend_state(self, v8, v9);
  if (v10 > 4)
  {
    objc_msgSend_addProperty_value_shouldRedact_(v47, v11, @"state", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v47, v11, @"state", off_1E70BFDF0[v10], 0);
  }

  v14 = objc_msgSend_priority(self, v12, v13);
  if (v14 > 3)
  {
    objc_msgSend_addProperty_value_shouldRedact_(v47, v15, @"priority", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v47, v15, @"priority", off_1E70BFE18[v14], 0);
  }

  v18 = MEMORY[0x1E696AD98];
  isDataBudgeted = objc_msgSend_isDataBudgeted(self, v16, v17);
  v21 = objc_msgSend_numberWithBool_(v18, v20, isDataBudgeted);
  objc_msgSend_addProperty_value_shouldRedact_(v47, v22, @"dataBudgeted", v21, 0);

  v23 = MEMORY[0x1E696AD98];
  v26 = objc_msgSend_requiresInexpensiveNetworkConnectivity(self, v24, v25);
  v28 = objc_msgSend_numberWithBool_(v23, v27, v26);
  objc_msgSend_addProperty_value_shouldRedact_(v47, v29, @"requiresInexpensiveNetworkConnectivity", v28, 0);

  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    Property = objc_getProperty(self, v30, 48, 1);
    objc_msgSend_addProperty_value_shouldRedact_(v47, v32, @"activity", Property, 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v47, v30, @"activity", 0, 0);
  }

  os_unfair_lock_unlock(&self->_lock);
  v35 = objc_msgSend_currentProcess(MEMORY[0x1E69C75D0], v33, v34);
  v38 = objc_msgSend_activeLimitations(v35, v36, v37);
  objc_msgSend_runTime(v38, v39, v40);
  v42 = v41;

  if (v42 != *MEMORY[0x1E69C7698])
  {
    v45 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v43, v44, v42);
    objc_msgSend_addProperty_value_shouldRedact_(v47, v46, @"runTimeRemaining", v45, 0);
  }
}

@end