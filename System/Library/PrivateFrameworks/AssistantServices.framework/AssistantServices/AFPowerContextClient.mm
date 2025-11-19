@interface AFPowerContextClient
- (AFPowerContextClient)init;
- (BOOL)updateCurrentPowerPolicy:(id)a3 withError:(id *)a4;
- (id)currentPowerPolicyWithError:(id *)a3;
- (unint64_t)currentEncodedPowerPolicyWithError:(id *)a3;
- (void)_registerForDarwinNotificationIfNeeded;
@end

@implementation AFPowerContextClient

- (void)_registerForDarwinNotificationIfNeeded
{
  if (![(AFPowerContextClient *)self _isNotificationTokenRegistered])
  {
    self->_registrationStatus = notify_register_check("com.apple.siri.power.PowerContextPolicy.updated", &self->_notificationToken);
  }
}

- (id)currentPowerPolicyWithError:(id *)a3
{
  v3 = [[AFPowerContextPolicy alloc] initWithEncodedPolicy:[(AFPowerContextClient *)self currentEncodedPowerPolicyWithError:a3]];

  return v3;
}

- (unint64_t)currentEncodedPowerPolicyWithError:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  [(AFPowerContextClient *)self _registerForDarwinNotificationIfNeeded];
  if (![(AFPowerContextClient *)self _isNotificationTokenRegistered])
  {
    v10 = AFSiriLogContextPower;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[AFPowerContextClient currentEncodedPowerPolicyWithError:]";
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error retrieving current power policy - unregistered token", buf, 0xCu);
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else if (!a3)
    {
      goto LABEL_16;
    }

    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = 7100;
    goto LABEL_9;
  }

  state64 = 0;
  state = notify_get_state(self->_notificationToken, &state64);
  v6 = AFSiriLogContextPower;
  if (state)
  {
    v7 = state;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[AFPowerContextClient currentEncodedPowerPolicyWithError:]";
      v18 = 1024;
      LODWORD(v19) = v7;
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error retrieving current power policy - failed to get state with status code: %u", buf, 0x12u);
      if (a3)
      {
        goto LABEL_5;
      }
    }

    else if (a3)
    {
LABEL_5:
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = 7101;
LABEL_9:
      v11 = [v8 initWithDomain:@"kAFAssistantErrorDomain" code:v9 userInfo:0];
      v12 = v11;
      result = 0;
      *a3 = v11;
      goto LABEL_17;
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v17 = "[AFPowerContextClient currentEncodedPowerPolicyWithError:]";
    v18 = 2048;
    v19 = state64;
    v20 = 2048;
    v21 = state64;
    _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s PowerContextClient: Retrieved current power policy: %llu -> 0x%llx", buf, 0x20u);
  }

  result = state64;
LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (AFPowerContextClient)init
{
  v5.receiver = self;
  v5.super_class = AFPowerContextClient;
  v2 = [(AFPowerContextClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_registrationStatus = -1;
    [(AFPowerContextClient *)v2 _registerForDarwinNotificationIfNeeded];
  }

  return v3;
}

- (BOOL)updateCurrentPowerPolicy:(id)a3 withError:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(AFPowerContextClient *)self _registerForDarwinNotificationIfNeeded];
  if (![(AFPowerContextClient *)self _isNotificationTokenRegistered])
  {
    v13 = AFSiriLogContextPower;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[AFPowerContextClient(PolicyProvider) updateCurrentPowerPolicy:withError:]";
      _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error updating current power policy - unregistered token", &v17, 0xCu);
      if (!a4)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
    {
      goto LABEL_16;
    }

    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = 7100;
    goto LABEL_9;
  }

  v7 = [v6 encodePolicy];
  v8 = notify_set_state(self->_notificationToken, v7);
  v9 = AFSiriLogContextPower;
  if (v8)
  {
    v10 = v8;
    if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[AFPowerContextClient(PolicyProvider) updateCurrentPowerPolicy:withError:]";
      v19 = 1024;
      LODWORD(v20) = v10;
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s PowerContextClient: Error updating current power policy - failed to set state with status code: %u", &v17, 0x12u);
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else if (a4)
    {
LABEL_5:
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = 7102;
LABEL_9:
      v14 = 0;
      *a4 = [v11 initWithDomain:@"kAFAssistantErrorDomain" code:v12 userInfo:0];
      goto LABEL_17;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(AFSiriLogContextPower, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[AFPowerContextClient(PolicyProvider) updateCurrentPowerPolicy:withError:]";
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v7;
    _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s PowerContextClient: Updated current power policy: %llu -> 0x%llx", &v17, 0x20u);
  }

  notify_post("com.apple.siri.power.PowerContextPolicy.updated");
  v14 = 1;
LABEL_17:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end