@interface PKCanvasSessionStatisticsManager
+ (id)sharedStatisticsManager;
- (void)_logFeatureUsed:(uint64_t)a1;
- (void)_sendUsageSessionStatistics;
- (void)endSession;
- (void)logFeatureUsed:(uint64_t)a1;
@end

@implementation PKCanvasSessionStatisticsManager

+ (id)sharedStatisticsManager
{
  objc_opt_self();
  if (_MergedGlobals_151 != -1)
  {
    dispatch_once(&_MergedGlobals_151, &__block_literal_global_59);
  }

  v0 = qword_1ED6A5220;

  return v0;
}

void __59__PKCanvasSessionStatisticsManager_sharedStatisticsManager__block_invoke()
{
  v0 = objc_alloc_init(PKCanvasSessionStatisticsManager);
  v1 = qword_1ED6A5220;
  qword_1ED6A5220 = v0;
}

- (void)_logFeatureUsed:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v11 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v3 = v11;
      v4 = *(a1 + 8);
    }

    v7 = [v4 objectForKey:v3];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 integerValue] + 1;
    }

    else
    {
      v9 = 1;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    [*(a1 + 8) setObject:v10 forKeyedSubscript:v11];

    v3 = v11;
  }
}

- (void)logFeatureUsed:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(PKCanvasSessionStatisticsManager *)a1 _logFeatureUsed:v3];
    }

    else
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __51__PKCanvasSessionStatisticsManager_logFeatureUsed___block_invoke;
      v4[3] = &unk_1E82D6E70;
      v4[4] = a1;
      v5 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], v4);
    }
  }
}

- (void)_sendUsageSessionStatistics
{
  v28[16] = *MEMORY[0x1E69E9840];
  v2 = +[PKRecognitionSessionManager enabledLocales];
  v3 = [v2 firstObject];
  v18 = [v3 localeIdentifier];

  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 8), "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [*(a1 + 8) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [*(a1 + 8) objectForKeyedSubscript:v9];
        if ([v10 intValue] <= 0)
        {
          v11 = &unk_1F47C1538;
        }

        else
        {
          v11 = &unk_1F47C1520;
        }

        [v4 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __63__PKCanvasSessionStatisticsManager__sendUsageSessionStatistics__block_invoke;
  v21 = &unk_1E82DAAF8;
  v22 = v4;
  v23 = v18;
  v12 = v18;
  v13 = v4;
  v14 = v19;
  v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.handwritingd.pkanalytics" options:0];
  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F485D600];
  [v15 setRemoteObjectInterface:v16];
  [v15 resume];
  *&v24 = 0;
  *(&v24 + 1) = &v24;
  *&v25 = 0x2020000000;
  BYTE8(v25) = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PKCanvasSessionStatisticsManager__messageHandwritingAnalyticsWithProxyBlock___block_invoke;
  v28[3] = &unk_1E82DAB20;
  v28[4] = &v24;
  v17 = [v15 remoteObjectProxyWithErrorHandler:v28];
  if ((*(*(&v24 + 1) + 24) & 1) == 0)
  {
    v20(v14, v17);
  }

  [v15 invalidate];

  _Block_object_dispose(&v24, 8);
}

- (void)endSession
{
  if (a1)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(PKCanvasSessionStatisticsManager *)a1 _sendUsageSessionStatistics];
      v2 = *(a1 + 8);
      *(a1 + 8) = 0;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__PKCanvasSessionStatisticsManager_endSession__block_invoke;
      block[3] = &unk_1E82D7148;
      block[4] = a1;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __46__PKCanvasSessionStatisticsManager_endSession__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [(PKCanvasSessionStatisticsManager *)*(a1 + 32) _sendUsageSessionStatistics];
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
  }
}

void __79__PKCanvasSessionStatisticsManager__messageHandwritingAnalyticsWithProxyBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Error creating xpc connection for analytics: %@", &v5, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

@end