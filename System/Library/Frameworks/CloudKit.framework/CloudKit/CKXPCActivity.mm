@interface CKXPCActivity
- (BOOL)isDataBudgeted;
- (BOOL)requiresInexpensiveNetworkConnectivity;
- (BOOL)requiresNetworkConnectivity;
- (BOOL)requiresSignificantUserInactivity;
- (CKXPCActivity)initWithActivity:(id)activity;
- (double)interval;
- (int64_t)priority;
- (void)_handleActivityUpdate:(id)update;
- (void)dealloc;
@end

@implementation CKXPCActivity

- (CKXPCActivity)initWithActivity:(id)activity
{
  activityCopy = activity;
  if (!xpc_activity_get_state(activityCopy))
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKBackgroundTask.m", 452, @"Invalid activity state");
  }

  v8 = activityCopy;
  objc_opt_self();
  v9 = xpc_activity_copy_identifier();

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = strlen(v9);
  v13 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v10, v12, v9, v11, 4, 1);
  v26.receiver = self;
  v26.super_class = CKXPCActivity;
  v14 = [(CKBackgroundTask *)&v26 initWithIdentifier:v13];
  if (v14)
  {
    v15 = xpc_activity_copy_criteria(v8);
    criteria = v14->_criteria;
    v14->_criteria = v15;

    if (!v14->_criteria)
    {
      empty = xpc_dictionary_create_empty();
      v18 = v14->_criteria;
      v14->_criteria = empty;
    }

    objc_initWeak(&location, v14);
    v23 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v24, &location);
    v14->_handler = xpc_activity_add_eligibility_changed_handler();
    objc_msgSend__handleActivityUpdate_(v14, v19, v8, v23, 3221225472, sub_1886469AC, &unk_1E70BFDD0);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)dealloc
{
  handler = self->_handler;
  xpc_activity_remove_eligibility_changed_handler();
  v4.receiver = self;
  v4.super_class = CKXPCActivity;
  [(CKBackgroundTask *)&v4 dealloc];
}

- (void)_handleActivityUpdate:(id)update
{
  v21 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  state = xpc_activity_get_state(updateCopy);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    v10 = v6;
    v13 = objc_msgSend_ckShortDescription(self, v11, v12);
    v14 = CKStringForXPCActivityState(state);
    *buf = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "[%@] Handling activity state update: %@", buf, 0x16u);
  }

  if (state <= 3)
  {
    if (state != 2)
    {
      if (state == 3)
      {
        v16.receiver = self;
        v16.super_class = CKXPCActivity;
        [(CKBackgroundTask *)&v16 expiredWithRetryAfter:0 error:0.0];
      }

      goto LABEL_15;
    }

LABEL_11:
    if (xpc_activity_should_defer(updateCopy))
    {
      sub_188645E6C(self);
    }

    else
    {
      objc_msgSend_start(self, v7, v8);
    }

    goto LABEL_15;
  }

  if (state == 5)
  {
    v15.receiver = self;
    v15.super_class = CKXPCActivity;
    [(CKBackgroundTask *)&v15 complete];
    goto LABEL_15;
  }

  if (state == 4)
  {
    goto LABEL_11;
  }

LABEL_15:

  v9 = *MEMORY[0x1E69E9840];
}

- (int64_t)priority
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  string = xpc_dictionary_get_string(self, *MEMORY[0x1E69E9D68]);
  if (!string)
  {
    return 0;
  }

  v3 = string;
  if (!strcmp(string, *MEMORY[0x1E69E9D70]))
  {
    return 1;
  }

  if (strcmp(v3, *MEMORY[0x1E69E9D78]))
  {
    return 0;
  }

  return 2;
}

- (double)interval
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  v3 = *MEMORY[0x1E69E9CB0];

  return xpc_dictionary_get_double(self, v3);
}

- (BOOL)requiresNetworkConnectivity
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  v3 = *MEMORY[0x1E69E9DB8];

  return xpc_dictionary_get_BOOL(self, v3);
}

- (BOOL)isDataBudgeted
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  v3 = *MEMORY[0x1E69E9DE8];

  return xpc_dictionary_get_BOOL(self, v3);
}

- (BOOL)requiresInexpensiveNetworkConnectivity
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  v3 = *MEMORY[0x1E69E9DB0];

  return xpc_dictionary_get_BOOL(self, v3);
}

- (BOOL)requiresSignificantUserInactivity
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  v3 = *MEMORY[0x1E69E9DC8];

  return xpc_dictionary_get_BOOL(self, v3);
}

@end