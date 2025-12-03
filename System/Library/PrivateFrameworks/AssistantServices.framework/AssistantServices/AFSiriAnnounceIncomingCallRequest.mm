@interface AFSiriAnnounceIncomingCallRequest
- (AFSiriAnnounceIncomingCallRequest)initWithIncomingCall:(id)call;
- (void)performRequestWithCompletion:(id)completion;
@end

@implementation AFSiriAnnounceIncomingCallRequest

- (void)performRequestWithCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    call = self->_call;
    *buf = 136315394;
    v31 = "[AFSiriAnnounceIncomingCallRequest performRequestWithCompletion:]";
    v32 = 2112;
    v33 = call;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_24;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_24;
  }

  if (+[AFFeatureFlags isAnnounceTelephonyEnabled])
  {
    v6 = self->_call;
    v27 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v27];
    v8 = v27;
    if (v8 || !v7)
    {
      v17 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v21 = self->_call;
        *buf = 136315650;
        v31 = "[AFSiriAnnounceIncomingCallRequest performRequestWithCompletion:]";
        v32 = 2112;
        v33 = v21;
        v34 = 2112;
        v35 = v8;
        _os_log_error_impl(&dword_1912FE000, v17, OS_LOG_TYPE_ERROR, "%s Failed to serialize call %@: %@", buf, 0x20u);
      }

      completionCopy[2](completionCopy, 0);
      v11 = 0;
    }

    else
    {
      v9 = v7;
      v10 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
      keys[0] = "type";
      keys[1] = "incoming_call";
      values[0] = xpc_int64_create(7);
      v11 = v10;
      values[1] = v11;
      v12 = xpc_dictionary_create(keys, values, 2uLL);
      v13 = _ExternalRequestConnectionWithContext(0);
      v14 = v13;
      v15 = AFSiriLogContextConnection;
      if (v12 && v13)
      {
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          v23 = self->_call;
          *buf = 136315394;
          v31 = "[AFSiriAnnounceIncomingCallRequest performRequestWithCompletion:]";
          v32 = 2112;
          v33 = v23;
          _os_log_debug_impl(&dword_1912FE000, v15, OS_LOG_TYPE_DEBUG, "%s Sending xpc message for %@", buf, 0x16u);
        }

        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __66__AFSiriAnnounceIncomingCallRequest_performRequestWithCompletion___block_invoke;
        handler[3] = &unk_1E7348638;
        v26 = completionCopy;
        v25 = v14;
        xpc_connection_send_message_with_reply(v25, v12, 0, handler);
      }

      else
      {
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
        {
          v22 = self->_call;
          *buf = 136315394;
          v31 = "[AFSiriAnnounceIncomingCallRequest performRequestWithCompletion:]";
          v32 = 2112;
          v33 = v22;
          _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s Unable to send xpc message for %@", buf, 0x16u);
        }

        completionCopy[2](completionCopy, 0);
        if (v14)
        {
          xpc_connection_cancel(v14);
        }
      }

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[AFSiriAnnounceIncomingCallRequest performRequestWithCompletion:]";
      _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, "%s Announce Telephony is not enabled, rejecting request", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

LABEL_24:

  v19 = *MEMORY[0x1E69E9840];
}

void __66__AFSiriAnnounceIncomingCallRequest_performRequestWithCompletion___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict)
  {
    xpc_dictionary_get_BOOL(xdict, "result");
  }

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_connection_cancel(v3);
}

- (AFSiriAnnounceIncomingCallRequest)initWithIncomingCall:(id)call
{
  callCopy = call;
  v9.receiver = self;
  v9.super_class = AFSiriAnnounceIncomingCallRequest;
  v5 = [(AFSiriAnnounceIncomingCallRequest *)&v9 init];
  if (v5)
  {
    v6 = [callCopy copy];
    call = v5->_call;
    v5->_call = v6;
  }

  return v5;
}

@end