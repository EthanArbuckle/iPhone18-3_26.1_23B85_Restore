@interface ATXAudioRouteStream
+ (int)atxAudioRouteTypeFromBMAudioRouteType:(int)a3;
- (void)_enumerateAudioOutputEventsConnected:(BOOL)a3 startDate:(id)a4 endDate:(id)a5 filterBlock:(id)a6 limit:(unint64_t)a7 ascending:(BOOL)a8 block:(id)a9;
@end

@implementation ATXAudioRouteStream

+ (int)atxAudioRouteTypeFromBMAudioRouteType:(int)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)_enumerateAudioOutputEventsConnected:(BOOL)a3 startDate:(id)a4 endDate:(id)a5 filterBlock:(id)a6 limit:(unint64_t)a7 ascending:(BOOL)a8 block:(id)a9
{
  v9 = a8;
  v15 = a6;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = objc_opt_new();
  v20 = !v9;
  v21 = [(ATXAudioRouteStream *)self _publisherWithStartDate:v18 endDate:v17 limit:a7 shouldReverse:!v9];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2;
  v26[3] = &unk_2785904D0;
  v31 = v20;
  v32 = a3;
  v27 = v19;
  v28 = self;
  v29 = v15;
  v30 = v16;
  v22 = v16;
  v23 = v15;
  v24 = v19;
  v25 = [v21 sinkWithCompletion:&__block_literal_global_8 shouldContinue:v26];
}

void __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 identifier];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v3 eventBody];
  v8 = [v7 portName];
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v3 eventBody];
  v11 = [v10 portType];

  if (v11)
  {
    v12 = [v3 eventBody];
    v13 = [v12 routeChangeReason];

    if ((v13 - 3) >= 0xFFFFFFFE)
    {
      v14 = *(a1 + 64);
      v15 = *(a1 + 65);
      if (v15 != v14 && v13 == 1)
      {
        v16 = *(a1 + 32);
        v4 = [v3 eventBody];
        v6 = [v4 identifier];
        [v16 setObject:v3 forKeyedSubscript:v6];
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }

      v18 = *(a1 + 32);
      v19 = [v3 eventBody];
      v20 = [v19 identifier];
      if (v15 != v14 || v13 == 1)
      {
        v21 = [v18 objectForKeyedSubscript:v20];

        if (v3 && v21)
        {
          v22 = objc_alloc(MEMORY[0x277CBEAA8]);
          v53 = v21;
          [v21 timestamp];
          v23 = [v22 initWithTimeIntervalSinceReferenceDate:?];
          v24 = objc_alloc(MEMORY[0x277CBEAA8]);
          [v3 timestamp];
          v25 = [v24 initWithTimeIntervalSinceReferenceDate:?];
          v26 = [ATXAudioRouteEvent alloc];
          if (*(a1 + 64))
          {
            v27 = v25;
          }

          else
          {
            v27 = v23;
          }

          v51 = v25;
          v52 = v23;
          if (*(a1 + 64))
          {
            v28 = v23;
          }

          else
          {
            v28 = v25;
          }

          v47 = v28;
          v48 = v27;
          v46 = *(a1 + 65);
          v50 = [v3 eventBody];
          v45 = [v50 identifier];
          v49 = [v3 eventBody];
          v29 = [v49 portType];
          v30 = [v3 eventBody];
          v31 = [v30 portName];
          v32 = MEMORY[0x277CCABB0];
          v33 = [v3 eventBody];
          v34 = [v32 numberWithInt:{objc_msgSend(v33, "routeChangeReason")}];
          v35 = *(a1 + 40);
          v36 = objc_opt_class();
          v37 = [v3 eventBody];
          LODWORD(v44) = [v36 atxAudioRouteTypeFromBMAudioRouteType:{objc_msgSend(v37, "type")}];
          v38 = [(ATXAudioRouteEvent *)v26 initWithStartTime:v48 endTime:v47 connected:v46 identifier:v45 portType:v29 portName:v31 routeChangeReason:v34 type:v44];

          v39 = *(a1 + 32);
          v40 = [v3 eventBody];
          v41 = [v40 identifier];
          [v39 setObject:0 forKeyedSubscript:v41];

          v42 = *(a1 + 48);
          if (!v42 || (*(v42 + 16))(v42, v38))
          {
            (*(*(a1 + 56) + 16))();
          }

          v21 = v53;
        }

        else
        {
          v43 = __atxlog_handle_default();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_1(v21, v3, v43);
          }
        }
      }

      else
      {
        [v18 setObject:v3 forKeyedSubscript:v20];
      }
    }
  }

LABEL_11:

  return 1;
}

void __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXAudioRouteStream _enumerateAudioOutputEventsConnected:startDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest Audio.Route event from biome %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_226368000, log, OS_LOG_TYPE_ERROR, "Skipping event: %@ %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end