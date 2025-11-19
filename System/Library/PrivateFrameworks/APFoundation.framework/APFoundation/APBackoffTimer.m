@interface APBackoffTimer
- (APBackoffTimer)initWithSchedule:(id)a3 name:(id)a4;
- (APBackoffTimerDelegate)delegate;
- (BOOL)scheduleNextLevelWithQueue:(id)a3;
- (BOOL)scheduleTerminated;
- (BOOL)scheduled;
- (id)_getNextLevelTimeInterval;
- (id)_secondsToNextEvent;
- (void)_timerFired;
- (void)reset;
@end

@implementation APBackoffTimer

- (APBackoffTimer)initWithSchedule:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_init(self, v8, v9, v10);
  v12 = v11;
  if (v11)
  {
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = &unk_1F39091F0;
    }

    objc_storeStrong((v11 + 40), v13);
    objc_storeStrong((v12 + 48), a4);
    *(v12 + 32) = 0;
    v14 = [APUnfairLock alloc];
    v17 = objc_msgSend_initWithOptions_(v14, v15, 1, v16);
    v18 = *(v12 + 56);
    *(v12 + 56) = v17;
  }

  return v12;
}

- (id)_secondsToNextEvent
{
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  v15 = objc_msgSend_currentLevel(self, v9, v10, v11);
  if (v15)
  {
    v16 = objc_msgSend_schedule(self, v12, v13, v14);
    v20 = objc_msgSend_unsignedIntegerValue(v15, v17, v18, v19);
    v23 = objc_msgSend_objectAtIndexedSubscript_(v16, v21, v20, v22);
  }

  else
  {
    v23 = 0;
  }

  objc_msgSend_unlock(v5, v12, v13, v14);

  return v23;
}

- (void)_timerFired
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory(0x22uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v9 = objc_msgSend_name(self, v6, v7, v8);
    v20 = 138478083;
    v21 = v4;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_DEBUG, "[%{private}@]: Firing backoff %{public}@ timer.", &v20, 0x16u);
  }

  objc_msgSend_setHasFiredOnThisLevel_(self, v10, 1, v11);
  v15 = objc_msgSend_delegate(self, v12, v13, v14);
  objc_msgSend_backoffTimerFired(v15, v16, v17, v18);

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_getNextLevelTimeInterval
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  if (objc_msgSend_scheduled(self, v9, v10, v11))
  {
    objc_msgSend_unlock(v5, v12, v13, v14);
    v15 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v21 = objc_msgSend_name(self, v18, v19, v20);
      v103 = 138478083;
      v104 = v16;
      v105 = 2114;
      v106 = v21;
      _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "[%{private}@]: Trying to schedule backoff %{public}@ timer twice on the same level.", &v103, 0x16u);
    }

    v22 = 0;
  }

  else
  {
    v23 = objc_msgSend_currentLevel(self, v12, v13, v14);

    if (v23)
    {
      v27 = objc_msgSend_currentLevel(self, v24, v25, v26);
      v31 = objc_msgSend_unsignedIntegerValue(v27, v28, v29, v30);
      v35 = objc_msgSend_schedule(self, v32, v33, v34);
      v39 = objc_msgSend_count(v35, v36, v37, v38) - 1;

      v43 = MEMORY[0x1E696AD98];
      if (v31 >= v39)
      {
        v44 = objc_msgSend_schedule(self, v40, v41, v42);
        v49 = objc_msgSend_count(v44, v53, v54, v55) - 1;
      }

      else
      {
        v44 = objc_msgSend_currentLevel(self, v40, v41, v42);
        v49 = objc_msgSend_unsignedIntegerValue(v44, v45, v46, v47) + 1;
      }

      v56 = objc_msgSend_numberWithUnsignedInteger_(v43, v48, v49, v50);
      objc_msgSend_setCurrentLevel_(self, v57, v56, v58);
    }

    else
    {
      v44 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v24, 0, v26);
      objc_msgSend_setCurrentLevel_(self, v51, v44, v52);
    }

    objc_msgSend_nextBackoffDate(self, v59, v60, v61);
    if (v65 == 0.0)
    {
      v66 = objc_msgSend_now(MEMORY[0x1E695DF00], v62, v63, v64);
      objc_msgSend_timeIntervalSince1970(v66, v67, v68, v69);
      objc_msgSend_setNextBackoffDate_(self, v70, v71, v72);
    }

    v73 = objc_msgSend_schedule(self, v62, v63, v64);
    v77 = objc_msgSend_currentLevel(self, v74, v75, v76);
    v81 = objc_msgSend_unsignedIntegerValue(v77, v78, v79, v80);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v73, v82, v81, v83);

    objc_msgSend_doubleValue(v22, v84, v85, v86);
    v88 = v87;
    objc_msgSend_nextBackoffDate(self, v89, v90, v91);
    objc_msgSend_setNextBackoffDate_(self, v93, v94, v95, v88 + v92);
    objc_msgSend_setHasFiredOnThisLevel_(self, v96, 0, v97);
    objc_msgSend_unlock(v5, v98, v99, v100);
  }

  v101 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BOOL)scheduled
{
  objc_msgSend_nextBackoffDate(self, a2, v2, v3);
  if (v8 <= 0.0)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_hasFiredOnThisLevel(self, v5, v6, v7) ^ 1;
  }
}

- (void)reset
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory(0x22uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v9 = objc_msgSend_name(self, v6, v7, v8);
    v28 = 138478083;
    v29 = v4;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_DEBUG, "[%{private}@]: Reset backoff %{public}@ timer.", &v28, 0x16u);
  }

  v13 = objc_msgSend_lock(self, v10, v11, v12);
  objc_msgSend_lock(v13, v14, v15, v16);
  objc_msgSend_setCurrentLevel_(self, v17, 0, v18);
  objc_msgSend_setNextBackoffDate_(self, v19, v20, v21, 0.0);
  objc_msgSend_setHasFiredOnThisLevel_(self, v22, 0, v23);
  objc_msgSend_unlock(v13, v24, v25, v26);

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)scheduleNextLevelWithQueue:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend__getNextLevelTimeInterval(self, v5, v6, v7);
  if (v8)
  {
    v9 = v4;
    if (!v9)
    {
      v9 = dispatch_queue_create("com.apple.ap.backoff_timer.retry_queue", 0);
    }

    v10 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v16 = objc_msgSend_name(self, v13, v14, v15);
      v17 = MEMORY[0x1E695DF00];
      objc_msgSend_nextBackoffDate(self, v18, v19, v20);
      v24 = objc_msgSend_dateWithTimeIntervalSince1970_(v17, v21, v22, v23);
      objc_msgSend_doubleValue(v8, v25, v26, v27);
      *buf = 138478595;
      v39 = v11;
      v40 = 2114;
      v41 = v16;
      v42 = 2114;
      v43 = v24;
      v44 = 2048;
      v45 = v28;
      _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_DEBUG, "[%{private}@]: Scheduling backoff %{public}@ timer to %{public}@, adding %f seconds.", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    objc_msgSend_doubleValue(v8, v29, v30, v31);
    v33 = dispatch_time(0, (v32 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1BAF0FED8;
    block[3] = &unk_1E7F1CF68;
    objc_copyWeak(&v37, buf);
    dispatch_after(v33, v9, block);
    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }

  v34 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (BOOL)scheduleTerminated
{
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  v12 = objc_msgSend_currentLevel(self, v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    v17 = objc_msgSend_unsignedIntegerValue(v12, v13, v14, v15);
    v21 = objc_msgSend_schedule(self, v18, v19, v20);
    v25 = v17 >= objc_msgSend_count(v21, v22, v23, v24) - 1;

    objc_msgSend_unlock(v5, v26, v27, v28);
  }

  else
  {
    objc_msgSend_lock(v5, v13, v14, v15);
    v25 = 0;
  }

  return v25;
}

- (APBackoffTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end