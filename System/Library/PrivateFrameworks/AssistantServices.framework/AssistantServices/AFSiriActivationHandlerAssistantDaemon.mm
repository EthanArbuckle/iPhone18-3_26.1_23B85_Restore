@interface AFSiriActivationHandlerAssistantDaemon
- (BOOL)handleContext:(id)context completion:(id)completion;
@end

@implementation AFSiriActivationHandlerAssistantDaemon

- (BOOL)handleContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[AFSiriActivationHandlerAssistantDaemon handleContext:completion:]";
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v8 = [[AFSiriActivationRequest alloc] initWithContext:contextCopy];
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[AFSiriActivationHandlerAssistantDaemon handleContext:completion:]";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s externalRequest = %@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__AFSiriActivationHandlerAssistantDaemon_handleContext_completion___block_invoke;
  v13[3] = &unk_1E7348700;
  v14 = completionCopy;
  v10 = completionCopy;
  [(AFSiriActivationRequest *)v8 performRequestWithResultHandler:v13];

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

void __67__AFSiriActivationHandlerAssistantDaemon_handleContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFSiriActivationHandlerAssistantDaemon handleContext:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s result = %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end