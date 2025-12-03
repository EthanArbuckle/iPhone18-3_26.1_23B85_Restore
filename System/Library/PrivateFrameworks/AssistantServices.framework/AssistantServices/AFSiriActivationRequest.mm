@interface AFSiriActivationRequest
- (AFSiriActivationRequest)initWithContext:(id)context;
- (void)performRequestWithCompletion:(id)completion;
- (void)performRequestWithResultHandler:(id)handler;
@end

@implementation AFSiriActivationRequest

- (void)performRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AFSiriActivationRequest_performRequestWithCompletion___block_invoke;
  v6[3] = &unk_1E7348700;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AFSiriActivationRequest *)self performRequestWithResultHandler:v6];
}

void __56__AFSiriActivationRequest_performRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3 == 0);
  }
}

- (void)performRequestWithResultHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  *keys = xmmword_1E73486C8;
  values[0] = xpc_int64_create(6);
  values[1] = AFSiriActivationCreateXPCDictionaryFromContext(self->_context);
  v5 = xpc_dictionary_create(keys, values, 2uLL);
  v6 = _ExternalRequestConnectionWithContext(0);
  v7 = v6;
  if (v5 && v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__AFSiriActivationRequest_performRequestWithResultHandler___block_invoke;
    v11[3] = &unk_1E7348638;
    v13 = handlerCopy;
    v12 = v7;
    xpc_connection_send_message_with_reply(v12, v5, 0, v11);
  }

  else
  {
    if (handlerCopy)
    {
      v8 = [AFSiriActivationResult newWithBuilder:&__block_literal_global_89];
      (*(handlerCopy + 2))(handlerCopy, v8);
    }

    if (v7)
    {
      xpc_connection_cancel(v7);
    }
  }

  for (i = 1; i != -1; --i)
  {
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __59__AFSiriActivationRequest_performRequestWithResultHandler___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_dictionary(xdict, "activation_result");
  v4 = v3;
  if (v3)
  {
    if (MEMORY[0x193AFBC20](v3) == MEMORY[0x1E69E9E80])
    {
      v3 = AFSiriActivationCreateResultFromXPCDictionary(v4);
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (v3)
    {
      (*(v5 + 16))(*(a1 + 40));
    }

    else
    {
      v6 = [AFSiriActivationResult newWithBuilder:&__block_literal_global_86_43546];
      (*(v5 + 16))(v5, v6);
    }
  }

  xpc_connection_cancel(*(a1 + 32));
}

void __59__AFSiriActivationRequest_performRequestWithResultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [AFError errorWithCode:2504];
  [v2 setError:v3];
}

void __59__AFSiriActivationRequest_performRequestWithResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [AFError errorWithCode:2505];
  [v2 setError:v3];
}

- (AFSiriActivationRequest)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AFSiriActivationRequest;
  v5 = [(AFSiriActivationRequest *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end