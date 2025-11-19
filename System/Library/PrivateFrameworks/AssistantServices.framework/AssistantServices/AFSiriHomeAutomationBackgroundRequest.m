@interface AFSiriHomeAutomationBackgroundRequest
- (AFSiriHomeAutomationBackgroundRequest)initWithRequestInfo:(id)a3;
- (AFSiriHomeAutomationBackgroundRequest)initWithRequestInfo:(id)a3 instanceContext:(id)a4;
- (void)performRequestWithCompletion:(id)a3;
@end

@implementation AFSiriHomeAutomationBackgroundRequest

- (void)performRequestWithCompletion:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    requestInfo = self->_requestInfo;
    *buf = 136315394;
    v30 = "[AFSiriHomeAutomationBackgroundRequest performRequestWithCompletion:]";
    v31 = 2112;
    v32 = requestInfo;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s Performing request for HomeAutomationBackgroundRequest: %@", buf, 0x16u);
  }

  v6 = self->_requestInfo;
  if (v6)
  {
    v26 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v26];
    v8 = v26;
    if (v8 || !v7)
    {
      v16 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v20 = self->_requestInfo;
        *buf = 136315650;
        v30 = "[AFSiriHomeAutomationBackgroundRequest performRequestWithCompletion:]";
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v8;
        _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, "%s Failed to serialize asyncMessage %@: %@", buf, 0x20u);
      }

      v4[2](v4, 0);
      v11 = 0;
      goto LABEL_22;
    }

    v9 = v7;
    v10 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    *keys = xmmword_1E73486A8;
    values[0] = xpc_int64_create(8);
    v11 = v10;
    values[1] = v11;
    v12 = xpc_dictionary_create(keys, values, 2uLL);
    v13 = _ExternalRequestConnectionWithContext(self->_instanceContext);
    v14 = v13;
    v15 = AFSiriLogContextConnection;
    if (v12 && v13)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v22 = self->_requestInfo;
        *buf = 136315394;
        v30 = "[AFSiriHomeAutomationBackgroundRequest performRequestWithCompletion:]";
        v31 = 2112;
        v32 = v22;
        _os_log_debug_impl(&dword_1912FE000, v15, OS_LOG_TYPE_DEBUG, "%s Sending xpc message with requestInfo: %@", buf, 0x16u);
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __70__AFSiriHomeAutomationBackgroundRequest_performRequestWithCompletion___block_invoke;
      handler[3] = &unk_1E7348638;
      v25 = v4;
      v24 = v14;
      xpc_connection_send_message_with_reply(v24, v12, 0, handler);

LABEL_20:
      for (i = 1; i != -1; --i)
      {
      }

LABEL_22:

      goto LABEL_23;
    }

    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_requestInfo;
      *buf = 136315394;
      v30 = "[AFSiriHomeAutomationBackgroundRequest performRequestWithCompletion:]";
      v31 = 2112;
      v32 = v21;
      _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s Unable to send xpc message for %@", buf, 0x16u);
      if (!v4)
      {
LABEL_18:
        if (v14)
        {
          xpc_connection_cancel(v14);
        }

        goto LABEL_20;
      }
    }

    else if (!v4)
    {
      goto LABEL_18;
    }

    v4[2](v4, 0);
    goto LABEL_18;
  }

  v4[2](v4, 0);
LABEL_23:

  v18 = *MEMORY[0x1E69E9840];
}

void __70__AFSiriHomeAutomationBackgroundRequest_performRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, "result");
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  xpc_connection_cancel(*(a1 + 32));
}

- (AFSiriHomeAutomationBackgroundRequest)initWithRequestInfo:(id)a3 instanceContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v16 = "[AFSiriHomeAutomationBackgroundRequest initWithRequestInfo:instanceContext:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s Initializing HomeAutomationBackgroundRequest with requestInfo: %@ and AFInstanceContext: %@", buf, 0x20u);
  }

  v14.receiver = self;
  v14.super_class = AFSiriHomeAutomationBackgroundRequest;
  v9 = [(AFSiriHomeAutomationBackgroundRequest *)&v14 init];
  if (v9)
  {
    v10 = [v6 copy];
    requestInfo = v9->_requestInfo;
    v9->_requestInfo = v10;

    objc_storeStrong(&v9->_instanceContext, a4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AFSiriHomeAutomationBackgroundRequest)initWithRequestInfo:(id)a3
{
  v4 = a3;
  v5 = +[AFInstanceContext defaultContext];
  v6 = [(AFSiriHomeAutomationBackgroundRequest *)self initWithRequestInfo:v4 instanceContext:v5];

  return v6;
}

@end