@interface AFSiriAnnounceDropInCallRequest
- (AFSiriAnnounceDropInCallRequest)initWithAnnouncementType:(int64_t)type;
- (void)performRequestWithCompletion:(id)completion;
@end

@implementation AFSiriAnnounceDropInCallRequest

- (void)performRequestWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (!self->_announcementType)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    goto LABEL_13;
  }

  *keys = xmmword_1E73486B8;
  values[0] = xpc_int64_create(11);
  values[1] = xpc_int64_create(self->_announcementType);
  v6 = xpc_dictionary_create(keys, values, 2uLL);
  v7 = _ExternalRequestConnectionWithContext(0);
  v8 = v7;
  if (!v6 || !v7)
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[AFSiriAnnounceDropInCallRequest performRequestWithCompletion:]";
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Unable to send xpc message.", buf, 0xCu);
      if (!v5)
      {
LABEL_9:
        if (v8)
        {
          xpc_connection_cancel(v8);
        }

        goto LABEL_11;
      }
    }

    else if (!v5)
    {
      goto LABEL_9;
    }

    v5[2](v5, 0);
    goto LABEL_9;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__AFSiriAnnounceDropInCallRequest_performRequestWithCompletion___block_invoke;
  v12[3] = &unk_1E7348638;
  v14 = v5;
  v13 = v8;
  xpc_connection_send_message_with_reply(v13, v6, 0, v12);

LABEL_11:
  for (i = 1; i != -1; --i)
  {
  }

LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
}

void __64__AFSiriAnnounceDropInCallRequest_performRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (AFSiriAnnounceDropInCallRequest)initWithAnnouncementType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = AFSiriAnnounceDropInCallRequest;
  result = [(AFSiriAnnounceDropInCallRequest *)&v5 init];
  if (result)
  {
    result->_announcementType = type;
  }

  return result;
}

@end