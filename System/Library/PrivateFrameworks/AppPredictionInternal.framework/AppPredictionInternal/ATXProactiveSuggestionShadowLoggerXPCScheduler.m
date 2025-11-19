@interface ATXProactiveSuggestionShadowLoggerXPCScheduler
- (id)shadowLoggingURLPathWithFileName:(id)a3;
- (void)shadowLogWithXPCActivity:(id)a3;
@end

@implementation ATXProactiveSuggestionShadowLoggerXPCScheduler

- (id)shadowLoggingURLPathWithFileName:(id)a3
{
  v3 = MEMORY[0x277CEBCB0];
  v4 = a3;
  v5 = [v3 feedbackRootDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"shadowLogging"];

  v7 = [v6 stringByAppendingPathComponent:v4];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];

  return v8;
}

- (void)shadowLogWithXPCActivity:(id)a3
{
  v52[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v36 = [MEMORY[0x277CBEAA8] now];
  v51[0] = &unk_283A57308;
  v51[1] = &unk_283A57338;
  v52[0] = &unk_283A58A18;
  v52[1] = &unk_283A58A30;
  v51[2] = &unk_283A57320;
  v51[3] = &unk_283A57368;
  v52[2] = &unk_283A58A48;
  v52[3] = &unk_283A58A60;
  v51[4] = &unk_283A57380;
  v51[5] = &unk_283A57398;
  v52[4] = &unk_283A58A78;
  v52[5] = &unk_283A58A90;
  v51[6] = &unk_283A573B0;
  v51[7] = &unk_283A573C8;
  v52[6] = &unk_283A58AA8;
  v52[7] = &unk_283A58AC0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    v9 = 0x277D42000uLL;
    v35 = v3;
    v33 = v5;
    v34 = v4;
    v30 = *v44;
    do
    {
      v10 = 0;
      v31 = v7;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        v12 = [v11 integerValue];
        if ((v12 - 50) < 0xFFFFFFFFFFFFFFCFLL)
        {
          goto LABEL_24;
        }

        v13 = v12;
        v32 = v10;
        v38 = [*(v9 + 112) clientModelIdFromClientModelType:v12];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v14 = [v4 objectForKeyedSubscript:v11];
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (!v15)
        {
          goto LABEL_23;
        }

        v16 = v15;
        v17 = *v40;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            if ([v3 didDefer])
            {

              v5 = v33;
              v4 = v34;
              goto LABEL_28;
            }

            v20 = [v19 integerValue];
            if ((v20 - 11) >= 0xFFFFFFFFFFFFFFF6)
            {
              v21 = v20;
              if (v20 == 1)
              {
                v22 = off_2785933B8;
              }

              else
              {
                if (v20 != 2)
                {
                  continue;
                }

                v22 = off_2785933B0;
              }

              v23 = v13;
              v24 = [objc_alloc(*v22) initWithClientModelType:v13];
              v25 = [objc_alloc(MEMORY[0x277D420B0]) initWithDataSource:v24];
              v26 = [v25 computeResultFromStartDate:v37 toEndDate:v36];
              v27 = [v26 asCoreAnalyticsMessageWithModelId:v38 executableType:v21];
              v28 = __atxlog_handle_metrics();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v48 = v27;
                _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Sending shadow metrics event to CoreAnalytics %@", buf, 0xCu);
              }

              AnalyticsSendEvent();
              v13 = v23;
              v3 = v35;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

LABEL_23:

        v5 = v33;
        v4 = v34;
        v8 = v30;
        v7 = v31;
        v9 = 0x277D42000;
        v10 = v32;
LABEL_24:
        ++v10;
      }

      while (v10 != v7);
      v7 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v7);
  }

LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
}

@end