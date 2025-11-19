@interface ATXUserEducationSuggestionClientRequestHandler
- (ATXUserEducationSuggestionClientRequestHandler)initWithClient:(id)a3;
- (void)didReceiveUserEducationSuggestionEvent:(id)a3;
@end

@implementation ATXUserEducationSuggestionClientRequestHandler

- (ATXUserEducationSuggestionClientRequestHandler)initWithClient:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ATXUserEducationSuggestionClientRequestHandler;
  v5 = [(ATXUserEducationSuggestionClientRequestHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_client, v4);
  }

  return v6;
}

- (void)didReceiveUserEducationSuggestionEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ATXUserEducationSuggestionClientRequestHandler didReceiveUserEducationSuggestionEvent:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s: received suggestion event: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained notifyObserversOfSuggestionEvent:v4];
}

@end