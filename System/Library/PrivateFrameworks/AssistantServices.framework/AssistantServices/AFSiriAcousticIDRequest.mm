@interface AFSiriAcousticIDRequest
- (void)performRequestWithCompletion:(id)a3;
@end

@implementation AFSiriAcousticIDRequest

- (void)performRequestWithCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  *keys = xmmword_1E7348668;
  values[0] = xpc_int64_create(1);
  values[1] = xpc_int64_create(1);
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  v5 = _ExternalRequestConnectionWithContext(0);
  v6 = v5;
  if (v4 && v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__AFSiriAcousticIDRequest_performRequestWithCompletion___block_invoke;
    v9[3] = &unk_1E7348638;
    v11 = v3;
    v10 = v6;
    xpc_connection_send_message_with_reply(v10, v4, 0, v9);
  }

  else
  {
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }

    if (v6)
    {
      xpc_connection_cancel(v6);
    }
  }

  for (i = 1; i != -1; --i)
  {
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __56__AFSiriAcousticIDRequest_performRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
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

@end