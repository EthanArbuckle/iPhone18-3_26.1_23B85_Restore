@interface CKSQLiteDatabaseManagerTimer
- (CKSQLiteDatabaseManagerTimer)initWithDatabase:(id)a3;
- (id)nextActivityDate;
- (void)dealloc;
- (void)runActivities;
- (void)scheduleActivityDate:(id)a3;
@end

@implementation CKSQLiteDatabaseManagerTimer

- (CKSQLiteDatabaseManagerTimer)initWithDatabase:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKSQLiteDatabaseManagerTimer;
  v5 = [(CKSQLiteDatabaseManagerTimer *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_db, v4);
    v6->_timerLock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create("CKSQLiteDatabaseManager activityQueue", v8);
    activityQueue = v6->_activityQueue;
    v6->_activityQueue = v9;
  }

  return v6;
}

- (void)dealloc
{
  activityTimer = self->_activityTimer;
  if (activityTimer)
  {
    dispatch_source_cancel(activityTimer);
  }

  v4.receiver = self;
  v4.super_class = CKSQLiteDatabaseManagerTimer;
  [(CKSQLiteDatabaseManagerTimer *)&v4 dealloc];
}

- (void)runActivities
{
  dispatch_assert_queue_V2(self->_activityQueue);
  v3 = os_transaction_create();
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager activity trigger fired", buf, 2u);
  }

  os_unfair_lock_lock(&self->_timerLock);
  v7 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
  nextActivityDate = self->_nextActivityDate;
  self->_nextActivityDate = 0;

  activityTimer = self->_activityTimer;
  self->_activityTimer = 0;

  os_unfair_lock_unlock(&self->_timerLock);
  WeakRetained = objc_loadWeakRetained(&self->_db);
  if (WeakRetained)
  {
    v15 = 0;
    v12 = objc_msgSend_managerInDatabase_error_(CKSQLiteDatabaseManager, v10, WeakRetained, &v15);
    v14 = v15;
    if (v12)
    {
      objc_msgSend_runActivities_(v12, v13, v7);
    }
  }
}

- (void)scheduleActivityDate:(id)a3
{
  location[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_timerLock);
  if (v5)
  {
    nextActivityDate = self->_nextActivityDate;
    if (!nextActivityDate || objc_msgSend_compare_(v5, v6, nextActivityDate) == -1)
    {
      objc_storeStrong(&self->_nextActivityDate, a3);
      activityTimer = self->_activityTimer;
      if (!activityTimer)
      {
        v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_activityQueue);
        v12 = self->_activityTimer;
        self->_activityTimer = v11;

        objc_initWeak(location, self);
        v13 = self->_activityTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_188677E14;
        handler[3] = &unk_1E70BC680;
        objc_copyWeak(&v27, location);
        dispatch_source_set_event_handler(v13, handler);
        objc_destroyWeak(&v27);
        objc_destroyWeak(location);
      }

      objc_msgSend_timeIntervalSinceNow(self->_nextActivityDate, v8, v9);
      v15 = ((v14 * 1000000000.0) & ~((v14 * 1000000000.0) >> 63)) + 1000000;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v16 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        v24 = v16;
        v25 = CKDescriptionForTimeInterval(v15 / 1000000000.0);
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v25;
        _os_log_debug_impl(&dword_1883EA000, v24, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager activity will run in %{public}@", location, 0xCu);
      }

      v17 = self->_activityTimer;
      v18 = dispatch_time(0, v15);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
      if (!activityTimer)
      {
        dispatch_resume(self->_activityTimer);
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager activity timer cleared", location, 2u);
    }

    v20 = self->_activityTimer;
    if (v20)
    {
      dispatch_source_cancel(v20);
      v21 = self->_activityTimer;
      self->_activityTimer = 0;
    }

    v22 = self->_nextActivityDate;
    self->_nextActivityDate = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);

  v23 = *MEMORY[0x1E69E9840];
}

- (id)nextActivityDate
{
  if ((byte_1EA919CC8 & 1) == 0)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CKSQLiteDatabaseManager.m", 468, @"Only for unit tests");
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1883EE1EC;
  v15 = sub_1883EF79C;
  v16 = 0;
  activityQueue = self->_activityQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188677F98;
  v10[3] = &unk_1E70BF378;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(activityQueue, v10);
  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

@end