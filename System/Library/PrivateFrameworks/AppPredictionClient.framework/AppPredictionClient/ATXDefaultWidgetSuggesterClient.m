@interface ATXDefaultWidgetSuggesterClient
- (ATXDefaultWidgetSuggesterClient)init;
- (void)defaultWidgetSuggestionOfType:(int64_t)a3 completionHandler:(id)a4;
- (void)logEventForDefaultWidgetSuggestionType:(int64_t)a3 event:(int64_t)a4;
@end

@implementation ATXDefaultWidgetSuggesterClient

- (ATXDefaultWidgetSuggesterClient)init
{
  v7.receiver = self;
  v7.super_class = ATXDefaultWidgetSuggesterClient;
  v2 = [(ATXDefaultWidgetSuggesterClient *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.DefaultWidgetSuggester" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = ATXDefaultWidgetSuggesterInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_74];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __39__ATXDefaultWidgetSuggesterClient_init__block_invoke()
{
  v0 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __39__ATXDefaultWidgetSuggesterClient_init__block_invoke_cold_1();
  }
}

- (void)defaultWidgetSuggestionOfType:(int64_t)a3 completionHandler:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E695E000]);
    v8 = [v7 initWithSuiteName:*MEMORY[0x1E698B030]];
    v9 = [v8 integerForKey:*MEMORY[0x1E698AFB8]];
    if (v9 < 1)
    {
      v13 = [v8 objectForKey:*MEMORY[0x1E698AF88]];
      v14 = [v8 objectForKey:*MEMORY[0x1E698AF98]];
      v15 = [v8 objectForKey:*MEMORY[0x1E698AFA0]];
      v16 = v15;
      if (v13)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17 || v14 == 0)
      {
        v19 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: requesting full computation of TV widget suggstion", buf, 2u);
        }

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke;
        v42[3] = &unk_1E80C4548;
        v43 = v8;
        v20 = v6;
        v44 = v20;
        v45 = 1;
        v21 = MEMORY[0x1BFB5BA40](v42);
        xpcConnection = self->_xpcConnection;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25;
        v40[3] = &unk_1E80C08E0;
        v23 = v21;
        v41 = v23;
        v24 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v40];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27;
        v36[3] = &unk_1E80C4570;
        v37 = v23;
        v38 = v20;
        v39 = 1;
        v25 = v23;
        [v24 shouldSuggestTVWithCompletionHandler:v36];
      }

      else
      {
        v26 = objc_opt_class();
        [v13 doubleValue];
        v28 = v27;
        [v14 doubleValue];
        v30 = v29;
        [v16 doubleValue];
        v32 = [v26 shouldSuggestTVWithAppLaunchCount:v28 intentDonationCount:v30 upcomingMediaCount:v31];
        v33 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109890;
          *v47 = v32;
          *&v47[4] = 2114;
          *&v47[6] = v13;
          v48 = 2114;
          v49 = v14;
          v50 = 2114;
          v51 = v16;
          _os_log_impl(&dword_1BF549000, v33, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (%{BOOL}d) using cached app launches: %{public}@, intent donations: %{public}@, upcoming media: %{public}@", buf, 0x26u);
        }

        if (v32)
        {
          v35 = [[ATXDefaultWidgetSuggestion alloc] initWithType:1];
          (*(v6 + 2))(v6, v35);
        }

        else
        {
          (*(v6 + 2))(v6, 0);
        }
      }
    }

    else
    {
      v10 = v9;
      v11 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v47 = v10;
        _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: not making a TV suggestion that we have feedback for: %ld", buf, 0xCu);
      }

      (*(v6 + 2))(v6, 0);
    }
  }

  else
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXDefaultWidgetSuggesterClient defaultWidgetSuggestionOfType:completionHandler:];
    }

    (*(v6 + 2))(v6, 0);
  }
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E698AF90]];
  if (!v2)
  {
    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v8 = "ATXDefaultWidgetSuggesterClient: no cached AzulF key";
      v9 = &v12;
LABEL_13:
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_14:

    (*(*(a1 + 40) + 16))(*(a1 + 40));
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_cold_1();
    }

    goto LABEL_14;
  }

  v3 = [v2 BOOLValue];
  v4 = __atxlog_handle_home_screen();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      v10 = 0;
      v8 = "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (NO) using cached AzulF BOOL";
      v9 = &v10;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (YES) using cached AzulF BOOL", buf, 2u);
  }

  v6 = *(a1 + 40);
  v7 = [[ATXDefaultWidgetSuggestion alloc] initWithType:*(a1 + 48)];
  (*(v6 + 16))(v6, v7);

LABEL_15:
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27(void *a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = __atxlog_handle_home_screen();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27_cold_1(v5, v7);
    }

LABEL_9:
    (*(a1[4] + 16))();
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXDefaultWidgetSuggesterClient: returning TV widget suggestion (%{BOOL}d) after full computation", v10, 8u);
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v8 = a1[5];
  v9 = [[ATXDefaultWidgetSuggestion alloc] initWithType:a1[6]];
  (*(v8 + 16))(v8, v9);

LABEL_10:
}

- (void)logEventForDefaultWidgetSuggestionType:(int64_t)a3 event:(int64_t)a4
{
  if (a3 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E695E000]);
    v11 = [v5 initWithSuiteName:*MEMORY[0x1E698B030]];
    [v11 setInteger:a4 forKey:*MEMORY[0x1E698AFB8]];
    if (a4 == 3)
    {
      v7 = MEMORY[0x1E698AFB0];
    }

    else
    {
      v6 = v11;
      if (a4 != 1)
      {
LABEL_11:

        return;
      }

      v7 = MEMORY[0x1E698AFA8];
    }

    v9 = *v7;
    v10 = [v11 objectForKey:*v7];

    v6 = v11;
    if (!v10)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [v11 setDouble:v9 forKey:?];
      v6 = v11;
    }

    goto LABEL_11;
  }

  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [ATXDefaultWidgetSuggesterClient defaultWidgetSuggestionOfType:completionHandler:];
  }
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_25_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultWidgetSuggesterClient: XPC error; could not compute TV widget suggestion via duetexpertd: %@", &v2, 0xCu);
}

void __83__ATXDefaultWidgetSuggesterClient_defaultWidgetSuggestionOfType_completionHandler___block_invoke_27_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultWidgetSuggesterClient: could not compute TV widget suggestion via duetexpertd: %@", &v2, 0xCu);
}

@end