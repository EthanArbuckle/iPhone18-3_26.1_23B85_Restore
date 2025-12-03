@interface APFlexibleHTTPSessionManager
- (APFlexibleHTTPSessionManager)initWithLookBackWindow:(double)window httpMaximumConnectionsPerHost:(int64_t)host httpMaximumConnectionsPerHostTempSession:(int64_t)session;
- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler;
- (id)_createNewSessionForService:(id)service temp:(BOOL)temp;
- (id)sessionForService:(id)service;
- (id)temporarySessionForService:(id)service;
- (void)_onTimer:(double)timer;
- (void)_setTimer;
- (void)_startTimer;
@end

@implementation APFlexibleHTTPSessionManager

- (APFlexibleHTTPSessionManager)initWithLookBackWindow:(double)window httpMaximumConnectionsPerHost:(int64_t)host httpMaximumConnectionsPerHostTempSession:(int64_t)session
{
  v24.receiver = self;
  v24.super_class = APFlexibleHTTPSessionManager;
  v8 = [(APFlexibleHTTPSessionManager *)&v24 init];
  if (v8)
  {
    v9 = [APUnfairLock alloc];
    v12 = objc_msgSend_initWithOptions_(v9, v10, 1, v11);
    lock = v8->_lock;
    v8->_lock = v12;

    v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v14, 3, v15);
    sessions = v8->_sessions;
    v8->_sessions = v16;

    v21 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x1E696AD18], v18, v19, v20);
    weakSessions = v8->_weakSessions;
    v8->_weakSessions = v21;

    v8->_lookBackWindow = window;
    v8->_httpMaximumConnectionsPerHost = host;
    v8->_httpMaximumConnectionsPerHostTempSession = session;
  }

  return v8;
}

- (id)sessionForService:(id)service
{
  serviceCopy = service;
  if (objc_msgSend_length(serviceCopy, v5, v6, v7))
  {
    v11 = objc_msgSend_lock(self, v8, v9, v10);
    objc_msgSend_lock(v11, v12, v13, v14);
    v18 = objc_msgSend_now(MEMORY[0x1E695DF00], v15, v16, v17);
    objc_msgSend_timeIntervalSince1970(v18, v19, v20, v21);
    v23 = objc_msgSend__sessionForService_now_temporarySession_(self, v22, serviceCopy, 0);

    objc_msgSend_unlock(v11, v24, v25, v26);
  }

  else
  {
    v27 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_impl(&dword_1BADC1000, v27, OS_LOG_TYPE_ERROR, "Service name is nil or empty.", v29, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)temporarySessionForService:(id)service
{
  serviceCopy = service;
  if (objc_msgSend_length(serviceCopy, v5, v6, v7))
  {
    v11 = objc_msgSend_lock(self, v8, v9, v10);
    objc_msgSend_lock(v11, v12, v13, v14);
    v18 = objc_msgSend_now(MEMORY[0x1E695DF00], v15, v16, v17);
    objc_msgSend_timeIntervalSince1970(v18, v19, v20, v21);
    v23 = objc_msgSend__sessionForService_now_temporarySession_(self, v22, serviceCopy, 1);

    objc_msgSend_unlock(v11, v24, v25, v26);
  }

  else
  {
    v27 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v29 = 0;
      _os_log_impl(&dword_1BADC1000, v27, OS_LOG_TYPE_ERROR, "Service name (temp) is nil or empty.", v29, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)_createNewSessionForService:(id)service temp:(BOOL)temp
{
  tempCopy = temp;
  serviceCopy = service;
  if (tempCopy)
  {
    v10 = objc_msgSend_httpMaximumConnectionsPerHostTempSession(self, v6, v7, v8);
  }

  else
  {
    v10 = objc_msgSend_httpMaximumConnectionsPerHost(self, v6, v7, v8);
  }

  v14 = v10;
  v18 = objc_msgSend_createSessionBlock(self, v11, v12, v13);
  if (v18)
  {
    v19 = objc_msgSend_createSessionBlock(self, v15, v16, v17);
    v20 = (v19)[2](v19, serviceCopy, v14);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_startTimer
{
  if ((objc_msgSend_timerSet(self, a2, v2, v3) & 1) == 0)
  {
    objc_msgSend_setTimerSet_(self, v5, 1, v6);

    MEMORY[0x1EEE66B58](self, sel__setTimer, v7, v8);
  }
}

- (void)_setTimer
{
  objc_initWeak(&location, self);
  objc_msgSend_lookBackWindow(self, v3, v4, v5);
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  v8 = dispatch_get_global_queue(21, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1BAF0EC84;
  v9[3] = &unk_1E7F1CF68;
  objc_copyWeak(&v10, &location);
  dispatch_after(v7, v8, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_onTimer:(double)timer
{
  v7 = objc_msgSend_lock(self, a2, v3, v4);
  objc_msgSend_lock(v7, v8, v9, v10);
  v14 = objc_msgSend_sessions(self, v11, v12, v13);
  v18 = objc_msgSend_count(v14, v15, v16, v17);

  if (v18 <= 1)
  {
    sub_1BAF8E130(self, v7, v20, v21);
  }

  else
  {
    v22 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v19, v20, v21);
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x3032000000;
    v71[3] = sub_1BAF0EF6C;
    v71[4] = sub_1BAF0EF7C;
    v72 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0x7FFFFFFFFFFFFFFFLL;
    objc_msgSend_lookBackWindow(self, v23, v24, v25);
    v27 = v26;
    v31 = objc_msgSend_sessions(self, v28, v29, v30);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = sub_1BAF8DF34;
    v61[3] = &unk_1E7F1CF90;
    timerCopy = timer;
    v66 = v27;
    v63 = v71;
    v64 = &v67;
    v32 = v22;
    v62 = v32;
    objc_msgSend_enumerateObjectsUsingBlock_(v31, v33, v61, v34);

    v37 = v68[3];
    if (v37 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_removeIndex_(v32, v35, v37, v36);
    }

    v38 = objc_msgSend_sessions(self, v35, v37, v36);
    objc_msgSend_removeObjectsAtIndexes_(v38, v39, v32, v40);

    v44 = objc_msgSend_sessions(self, v41, v42, v43);
    objc_msgSend_enumerateObjectsUsingBlock_(v44, v45, &unk_1F38F4880, v46);

    v50 = objc_msgSend_sessions(self, v47, v48, v49);
    v54 = objc_msgSend_count(v50, v51, v52, v53);

    objc_msgSend_unlock(v7, v55, v56, v57);
    if (v54 >= 2)
    {
      objc_msgSend__startTimer(self, v58, v59, v60);
    }

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(v71, 8);
  }
}

- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  handlerCopy = handler;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v18 = objc_msgSend_weakSessions(self, v15, v16, v17);
  v21 = objc_msgSend_objectForKey_(v18, v19, serviceCopy, v20);

  if (v21)
  {
    objc_msgSend_cancelTaskWithCompletionHandler_(v21, v22, handlerCopy, v23);
    v24 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v31 = 138543362;
      v32 = serviceCopy;
      _os_log_impl(&dword_1BADC1000, v24, OS_LOG_TYPE_INFO, "All pending tasks of %{public}@ are canceled.", &v31, 0xCu);
    }
  }

  else
  {
    v28 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = 138543362;
      v32 = serviceCopy;
      _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_ERROR, "Service %{public}@ is not found.", &v31, 0xCu);
    }

    handlerCopy[2](handlerCopy);
  }

  objc_msgSend_unlock(v11, v25, v26, v27);

  v29 = *MEMORY[0x1E69E9840];
  return v21 != 0;
}

@end