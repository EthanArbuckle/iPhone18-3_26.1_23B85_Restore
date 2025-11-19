@interface APConfigurationStorage
- (APConfigurationStorage)init;
- (BOOL)resetConfigurationSystem;
- (BOOL)updateConfigurationSystemWithData:(id)a3;
- (void)cancelConfigurationUpdate;
@end

@implementation APConfigurationStorage

- (APConfigurationStorage)init
{
  v8.receiver = self;
  v8.super_class = APConfigurationStorage;
  v2 = [(APConfigurationStorage *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69861D8]);
    v5 = objc_msgSend_initWithOptions_(v3, v4, 1);
    lock = v2->_lock;
    v2->_lock = v5;
  }

  return v2;
}

- (BOOL)resetConfigurationSystem
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CA1CE000, v3, OS_LOG_TYPE_DEFAULT, "Reset Configuration System: Process started.", buf, 2u);
  }

  v8 = objc_msgSend_configSystemDirectoryPath(APConfigurationMediator, v4, v5);
  if (v8)
  {
    v9 = objc_msgSend_lock(self, v6, v7);
    objc_msgSend_lock(v9, v10, v11);
    v14 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13);
    if (objc_msgSend_fileExistsAtPath_(v14, v15, v8) && (v27 = 0, objc_msgSend_removeItemAtPath_error_(v14, v16, v8, &v27), (v18 = v27) != 0))
    {
      v19 = v18;
      objc_msgSend_unlock(v9, v16, v17);
      v20 = APLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_msgSend_description(v19, v21, v22);
        *buf = 138543362;
        v29 = v23;
        _os_log_impl(&dword_1CA1CE000, v20, OS_LOG_TYPE_ERROR, "Reset Configuration System: Could not remove current configuration, error: %{public}@.", buf, 0xCu);
      }

      v24 = 0;
    }

    else
    {
      objc_msgSend_unlock(v9, v16, v17);
      v19 = APLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CA1CE000, v19, OS_LOG_TYPE_DEFAULT, "Reset Configuration System: Process completed.", buf, 2u);
      }

      v24 = 1;
    }
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CA1CE000, v9, OS_LOG_TYPE_ERROR, "Reset Configuration System: Error, path to config is nil.", buf, 2u);
    }

    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)updateConfigurationSystemWithData:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_lock(self, v5, v6);
  objc_msgSend_lock(v7, v8, v9);
  v10 = objc_alloc_init(APConfigurationResponseHandler);
  objc_msgSend_setResponseHandler_(self, v11, v10);

  v14 = objc_msgSend_responseHandler(self, v12, v13);
  v16 = objc_msgSend_processResponseWithData_(v14, v15, v4);

  objc_msgSend_setResponseHandler_(self, v17, 0);
  objc_msgSend_unlock(v7, v18, v19);

  return v16;
}

- (void)cancelConfigurationUpdate
{
  v3 = objc_msgSend_responseHandler(self, a2, v2);
  if (v3)
  {
    v6 = v3;
    objc_msgSend_cancelProcess(v3, v4, v5);
    v3 = v6;
  }
}

@end