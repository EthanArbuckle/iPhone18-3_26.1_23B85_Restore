@interface CKBGSystemTask
- (BOOL)expiredWithRetryAfter:(double)a3 error:(id *)a4;
- (BOOL)isDataBudgeted;
- (BOOL)requiresInexpensiveNetworkConnectivity;
- (BOOL)requiresNetworkConnectivity;
- (BOOL)requiresSignificantUserInactivity;
- (CKBGSystemTask)initWithSystemTask:(id)a3;
- (double)interval;
- (int64_t)priority;
- (void)complete;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CKBGSystemTask

- (void)dealloc
{
  v4 = objc_msgSend_systemTask(self, a2, v2);
  v5 = NSStringFromSelector(sel_state);
  objc_msgSend_removeObserver_forKeyPath_context_(v4, v6, self, v5, qword_1EA9109A8);

  v7.receiver = self;
  v7.super_class = CKBGSystemTask;
  [(CKBackgroundTask *)&v7 dealloc];
}

- (BOOL)requiresSignificantUserInactivity
{
  v3 = objc_msgSend_systemTask(self, a2, v2);
  v6 = objc_msgSend_taskRequest(v3, v4, v5);
  v9 = objc_msgSend_requiresSignificantUserInactivity(v6, v7, v8);

  return v9;
}

- (int64_t)priority
{
  v3 = objc_msgSend_systemTask(self, a2, v2);
  v6 = objc_msgSend_taskRequest(v3, v4, v5);
  v9 = objc_msgSend_priority(v6, v7, v8);

  if ((v9 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (BOOL)isDataBudgeted
{
  v3 = objc_msgSend_systemTask(self, a2, v2);
  v6 = objc_msgSend_taskRequest(v3, v4, v5);
  v9 = objc_msgSend_dataBudgeted(v6, v7, v8);

  return v9;
}

- (BOOL)requiresInexpensiveNetworkConnectivity
{
  v3 = objc_msgSend_systemTask(self, a2, v2);
  v6 = objc_msgSend_taskRequest(v3, v4, v5);
  v9 = objc_msgSend_requiresInexpensiveNetworkConnectivity(v6, v7, v8);

  return v9;
}

- (BOOL)requiresNetworkConnectivity
{
  v3 = objc_msgSend_systemTask(self, a2, v2);
  v6 = objc_msgSend_taskRequest(v3, v4, v5);
  v9 = objc_msgSend_requiresNetworkConnectivity(v6, v7, v8);

  return v9;
}

- (double)interval
{
  v4 = objc_msgSend_systemTask(self, a2, v2);
  v7 = objc_msgSend_taskRequest(v4, v5, v6);
  sub_18843C288();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0.0;
  }

  v11 = objc_msgSend_systemTask(self, v9, v10);
  v14 = objc_msgSend_taskRequest(v11, v12, v13);
  objc_msgSend_interval(v14, v15, v16);
  v18 = v17;

  return v18;
}

- (CKBGSystemTask)initWithSystemTask:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_identifier(v5, v6, v7);
  v13.receiver = self;
  v13.super_class = CKBGSystemTask;
  v9 = [(CKBackgroundTask *)&v13 initWithIdentifier:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_systemTask, a3);
    v10 = NSStringFromSelector(sel_state);
    objc_msgSend_addObserver_forKeyPath_options_context_(v5, v11, v9, v10, 5, qword_1EA9109A8);
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (qword_1EA9109A8 == a6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v20 = v14;
      v23 = objc_msgSend_ckShortDescription(self, v21, v22);
      *buf = 138412290;
      v28 = v23;
      _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "[%@] Handling task state update", buf, 0xCu);
    }

    v17 = objc_msgSend_state(v11, v15, v16);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v26.receiver = self;
        v26.super_class = CKBGSystemTask;
        [(CKBackgroundTask *)&v26 expiredWithRetryAfter:0 error:0.0];
      }

      else if (v17 == 4)
      {
        v25.receiver = self;
        v25.super_class = CKBGSystemTask;
        [(CKBackgroundTask *)&v25 complete];
      }
    }

    else if (v17 == 1)
    {
      objc_msgSend_start(self, v18, v19);
    }

    else if (v17 == 2)
    {
      sub_188645E6C(self);
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = CKBGSystemTask;
    [(CKBGSystemTask *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)complete
{
  v5 = objc_msgSend_systemTask(self, a2, v2);
  objc_msgSend_setTaskCompleted(v5, v3, v4);
}

- (BOOL)expiredWithRetryAfter:(double)a3 error:(id *)a4
{
  v13.receiver = self;
  v13.super_class = CKBGSystemTask;
  if (![CKBackgroundTask expiredWithRetryAfter:sel_expiredWithRetryAfter_error_ error:?])
  {
    return 0;
  }

  v9 = objc_msgSend_systemTask(self, v7, v8);
  v11 = objc_msgSend_setTaskExpiredWithRetryAfter_error_(v9, v10, a4, a3);

  return v11;
}

@end