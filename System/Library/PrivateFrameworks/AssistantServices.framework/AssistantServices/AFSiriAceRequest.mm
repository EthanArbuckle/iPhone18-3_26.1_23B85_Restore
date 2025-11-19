@interface AFSiriAceRequest
- (AFSiriAceRequest)initWithStartLocalRequest:(id)a3 requestOptions:(unint64_t)a4;
- (AFSiriAceRequest)initWithStartRequest:(id)a3 requestOptions:(unint64_t)a4;
- (void)performRequestWithCompletion:(id)a3;
@end

@implementation AFSiriAceRequest

- (void)performRequestWithCompletion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_startRequestData)
  {
    *keys = xmmword_1E7348678;
    v19 = "request_options";
    values = xpc_int64_create(4);
    v16 = self->_startRequestData;
    v17 = xpc_uint64_create(self->_requestOptions);
    v6 = xpc_dictionary_create(keys, &values, 3uLL);
    for (i = 16; i != -8; i -= 8)
    {
    }
  }

  else
  {
    if (!self->_startLocalRequestData)
    {
      (*(v4 + 2))(v4, 0);
      goto LABEL_16;
    }

    *keys = xmmword_1E7348690;
    v19 = "request_options";
    values = xpc_int64_create(5);
    v16 = self->_startLocalRequestData;
    v17 = xpc_uint64_create(self->_requestOptions);
    v6 = xpc_dictionary_create(keys, &values, 3uLL);
    for (j = 16; j != -8; j -= 8)
    {
    }
  }

  v9 = _ExternalRequestConnectionWithContext(0);
  v10 = v9;
  if (v6 && v9)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __49__AFSiriAceRequest_performRequestWithCompletion___block_invoke;
    handler[3] = &unk_1E7348638;
    v14 = v5;
    v13 = v10;
    xpc_connection_send_message_with_reply(v13, v6, 0, handler);
  }

  else
  {
    if (v5)
    {
      v5[2](v5, 0);
    }

    if (v10)
    {
      xpc_connection_cancel(v10);
    }
  }

LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
}

void __49__AFSiriAceRequest_performRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
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

- (AFSiriAceRequest)initWithStartLocalRequest:(id)a3 requestOptions:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = AFSiriAceRequest;
  v7 = [(AFSiriAceRequest *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    v9 = v8;
    if (v8)
    {
      v8 = xpc_data_create([v8 bytes], objc_msgSend(v8, "length"));
    }

    startLocalRequestData = v7->_startLocalRequestData;
    v7->_startLocalRequestData = v8;

    startRequestData = v7->_startRequestData;
    v7->_startRequestData = 0;

    v7->_requestOptions = a4;
  }

  return v7;
}

- (AFSiriAceRequest)initWithStartRequest:(id)a3 requestOptions:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = AFSiriAceRequest;
  v7 = [(AFSiriAceRequest *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    v9 = v8;
    if (v8)
    {
      v8 = xpc_data_create([v8 bytes], objc_msgSend(v8, "length"));
    }

    startRequestData = v7->_startRequestData;
    v7->_startRequestData = v8;

    startLocalRequestData = v7->_startLocalRequestData;
    v7->_startLocalRequestData = 0;

    v7->_requestOptions = a4;
  }

  return v7;
}

@end