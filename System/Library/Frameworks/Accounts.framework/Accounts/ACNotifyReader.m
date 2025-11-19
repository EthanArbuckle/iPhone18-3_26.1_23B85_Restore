@interface ACNotifyReader
- (ACNotifyReader)initWithKey:(id)a3 updateQueue:(id)a4 updateBlock:(id)a5;
- (unint64_t)currentValue;
- (void)currentValue;
- (void)dealloc;
@end

@implementation ACNotifyReader

- (unint64_t)currentValue
{
  v19 = *MEMORY[0x1E69E9840];
  notifierToken = self->_notifierToken;
  if (notifierToken != -1)
  {
    check = 0;
    v4 = notify_check(notifierToken, &check);
    if (v4)
    {
      v5 = v4;
      v6 = _ACLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(ACNotifyReader *)self key];
        *buf = 138412546;
        v16 = v7;
        v17 = 1024;
        v18 = v5;
        _os_log_impl(&dword_1AC3CD000, v6, OS_LOG_TYPE_DEFAULT, "Failed to check for %@ change: notify_check failed: %u", buf, 0x12u);
      }
    }

    else if (check != 1)
    {
LABEL_14:
      result = self->_cachedValue;
      goto LABEL_15;
    }

    state = notify_get_state(self->_notifierToken, &self->_cachedValue);
    if (state)
    {
      v11 = state;
      v12 = _ACLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ACNotifyReader *)self currentValue];
      }

      self->_cachedValue = 0;
    }

    goto LABEL_14;
  }

  v8 = _ACLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ACNotifyReader *)self currentValue];
  }

  result = 0;
LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  notifierToken = self->_notifierToken;
  if (notifierToken != -1)
  {
    notify_cancel(notifierToken);
  }

  dispatchToken = self->_dispatchToken;
  if (dispatchToken != -1)
  {
    notify_cancel(dispatchToken);
  }

  v5.receiver = self;
  v5.super_class = ACNotifyReader;
  [(ACNotifyReader *)&v5 dealloc];
}

- (ACNotifyReader)initWithKey:(id)a3 updateQueue:(id)a4 updateBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ACNotifyReader;
  v11 = [(ACNotifyReader *)&v18 init];
  v12 = v11;
  if (v11)
  {
    [(ACNotifyReader *)v11 setCachedValue:0];
    v12->_notifierToken = -1;
    [(ACNotifyReader *)v12 setKey:v8];
    if (notify_register_check([v8 UTF8String], &v12->_notifierToken))
    {
      v13 = _ACLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACNotifyReader initWithKey:updateQueue:updateBlock:];
      }
    }

    v12->_dispatchToken = -1;
    if (v9 && v10)
    {
      v14 = [v8 UTF8String];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __54__ACNotifyReader_initWithKey_updateQueue_updateBlock___block_invoke;
      handler[3] = &unk_1E79771A8;
      v17 = v10;
      notify_register_dispatch(v14, &v12->_dispatchToken, v9, handler);
    }
  }

  return v12;
}

- (void)initWithKey:updateQueue:updateBlock:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  v4 = v0;
  _os_log_error_impl(&dword_1AC3CD000, v1, OS_LOG_TYPE_ERROR, "Failed to register for %@ notifications: notify_register_check failed: %u", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)currentValue
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 key];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "Failed to get %@ number: libnotify registration failed", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end