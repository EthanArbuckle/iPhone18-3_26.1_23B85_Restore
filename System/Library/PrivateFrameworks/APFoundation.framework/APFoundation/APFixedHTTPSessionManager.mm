@interface APFixedHTTPSessionManager
- (APFixedHTTPSessionManager)init;
- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler;
- (id)sessionForService:(id)service;
@end

@implementation APFixedHTTPSessionManager

- (APFixedHTTPSessionManager)init
{
  v14.receiver = self;
  v14.super_class = APFixedHTTPSessionManager;
  v5 = [(APFixedHTTPSessionManager *)&v14 init];
  if (v5)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4);
    sessions = v5->_sessions;
    v5->_sessions = v6;

    v8 = [APUnfairLock alloc];
    v11 = objc_msgSend_initWithOptions_(v8, v9, 1, v10);
    lock = v5->_lock;
    v5->_lock = v11;
  }

  return v5;
}

- (id)sessionForService:(id)service
{
  serviceCopy = service;
  v8 = objc_msgSend_lock(self, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11);
  v15 = objc_msgSend_sessions(self, v12, v13, v14);
  v18 = objc_msgSend_objectForKey_(v15, v16, serviceCopy, v17);

  if (!v18)
  {
    v18 = objc_msgSend_createSessionBlock(self, v19, v20, v21);

    if (v18)
    {
      v23 = objc_msgSend_createSessionBlock(self, v19, v20, v21);
      v18 = (v23)[2](v23, serviceCopy, -1);

      if (v18)
      {
        v24 = objc_msgSend_sessions(self, v19, v20, v21);
        objc_msgSend_setObject_forKey_(v24, v25, v18, serviceCopy);
      }
    }
  }

  objc_msgSend_unlock(v8, v19, v20, v21);

  return v18;
}

- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  handlerCopy = handler;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v18 = objc_msgSend_sessions(self, v15, v16, v17);
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