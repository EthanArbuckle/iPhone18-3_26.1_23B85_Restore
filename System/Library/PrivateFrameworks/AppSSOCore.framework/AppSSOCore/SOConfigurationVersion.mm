@interface SOConfigurationVersion
+ (void)reset;
- (SOConfigurationVersion)initWithMode:(int64_t)mode;
- (int64_t)checkVersion;
- (unint64_t)_state;
- (void)_setStateAndNotify:(unint64_t)notify;
- (void)_state;
- (void)dealloc;
- (void)increaseVersionWithMessage:(id)message;
- (void)setAppSSOUnavailable;
@end

@implementation SOConfigurationVersion

- (int64_t)checkVersion
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _state = [(SOConfigurationVersion *)selfCopy _state];
  v4 = _state;
  if (_state == -1)
  {
    selfCopy->_version = -1;
    v5 = 2;
    goto LABEL_10;
  }

  if (!_state)
  {
LABEL_9:
    v5 = 1;
    goto LABEL_10;
  }

  if (_state != selfCopy->_version)
  {
    v6 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      version = selfCopy->_version;
      v10 = 136315906;
      v11 = "[SOConfigurationVersion checkVersion]";
      v12 = 2048;
      v13 = version;
      v14 = 2048;
      v15 = v4;
      v16 = 2112;
      v17 = selfCopy;
      _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "%s config version changed from from 0x%016llX to 0x%016llX on %@", &v10, 0x2Au);
    }

    selfCopy->_version = v4;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)_state
{
  state64 = -1;
  token = self->_token;
  if (token == -1)
  {
    v3 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _state];
    }

    goto LABEL_7;
  }

  if (notify_get_state(token, &state64))
  {
    v3 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _state];
    }

LABEL_7:
  }

  return state64;
}

- (SOConfigurationVersion)initWithMode:(int64_t)mode
{
  v5 = SO_LOG_SOConfigurationVersion();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SOConfigurationVersion *)mode initWithMode:v5];
  }

  v10.receiver = self;
  v10.super_class = SOConfigurationVersion;
  v6 = [(SOConfigurationVersion *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_token = -1;
    v6->_mode = mode;
    v6->_version = 0;
    if (notify_register_check("/com.apple.AppSSO.version", &v6->_token))
    {
      v8 = SO_LOG_SOConfigurationVersion();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationVersion initWithMode:];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)increaseVersionWithMessage:(id)message
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (self->_mode)
  {
    selfCopy = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion increaseVersionWithMessage:];
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    selfCopy->_version = (v7 * 1000.0);

    v8 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _state = [(SOConfigurationVersion *)selfCopy _state];
      version = selfCopy->_version;
      v12 = 136316162;
      v13 = "[SOConfigurationVersion increaseVersionWithMessage:]";
      v14 = 2048;
      v15 = _state;
      v16 = 2048;
      v17 = version;
      v18 = 2114;
      v19 = messageCopy;
      v20 = 2112;
      v21 = selfCopy;
      _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s config version increased from 0x%016llX to 0x%016llX (%{public}@) on %@", &v12, 0x34u);
    }

    [(SOConfigurationVersion *)selfCopy _setStateAndNotify:selfCopy->_version];
    objc_sync_exit(selfCopy);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setAppSSOUnavailable
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationVersion();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOConfigurationVersion setAppSSOUnavailable]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  if (self->_mode)
  {
    selfCopy2 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion setAppSSOUnavailable];
    }
  }

  else
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    selfCopy2->_version = -1;
    v5 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "set config version to AppSSO unavailable", &v7, 2u);
    }

    [(SOConfigurationVersion *)selfCopy2 _setStateAndNotify:selfCopy2->_version];
    objc_sync_exit(selfCopy2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)reset
{
  out_token = 0;
  v2 = notify_register_check("/com.apple.AppSSO.version", &out_token);
  if (v2)
  {
    NSLog(&cfstr_NotifyRegister.isa, v2);
  }

  else
  {
    v3 = notify_set_state(out_token, 0);
    if (v3)
    {
      NSLog(&cfstr_NotifySetState.isa, v3);
      notify_cancel(out_token);
    }

    else
    {
      v4 = notify_cancel(out_token);
      if (v4)
      {
        NSLog(&cfstr_NotifyCancelFa.isa, v4);
      }
    }
  }
}

- (void)_setStateAndNotify:(unint64_t)notify
{
  if (notify_set_state(self->_token, notify))
  {
    v3 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _setStateAndNotify:];
    }
  }

  if (notify_post("/com.apple.AppSSO.version"))
  {
    v4 = SO_LOG_SOConfigurationVersion();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationVersion _setStateAndNotify:];
    }
  }
}

- (void)initWithMode:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = "NO";
  v6 = "[SOConfigurationVersion initWithMode:]";
  v5 = 136315650;
  if (!a1)
  {
    v3 = "YES";
  }

  v7 = 2080;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1CA238000, log, OS_LOG_TYPE_DEBUG, "%s host = %s on %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithMode:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_state
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setStateAndNotify:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setStateAndNotify:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end