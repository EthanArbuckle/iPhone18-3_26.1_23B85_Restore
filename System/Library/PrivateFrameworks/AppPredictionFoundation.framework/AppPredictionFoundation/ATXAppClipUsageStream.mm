@interface ATXAppClipUsageStream
- (int)_launchReasonFromString:(id)a3;
- (void)enumerateAppClipUsageEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7 block:(id)a8;
@end

@implementation ATXAppClipUsageStream

- (void)enumerateAppClipUsageEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7 block:(id)a8
{
  v9 = a7;
  v14 = a5;
  v15 = a8;
  v16 = [(ATXAppClipUsageStream *)self _publisherWithStartDate:a3 endDate:a4 limit:a6 shouldReverse:!v9];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __108__ATXAppClipUsageStream_enumerateAppClipUsageEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_11;
  v20[3] = &unk_278590948;
  v20[4] = self;
  v21 = v14;
  v22 = v15;
  v17 = v15;
  v18 = v14;
  v19 = [v16 sinkWithCompletion:&__block_literal_global_19 shouldContinue:v20];
}

void __108__ATXAppClipUsageStream_enumerateAppClipUsageEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __108__ATXAppClipUsageStream_enumerateAppClipUsageEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __108__ATXAppClipUsageStream_enumerateAppClipUsageEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 URLHash];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v4 clipBundleID];
  if (!v7)
  {
LABEL_9:

    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v4 appBundleID];
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v4 webAppBundleID];

  if (v11)
  {
    v27 = [ATXAppClipUsageEvent alloc];
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v3 timestamp];
    v22 = [v12 initWithTimeIntervalSinceReferenceDate:?];
    v25 = [v4 URLHash];
    v23 = [v4 clipBundleID];
    v13 = [v4 appBundleID];
    v14 = [v4 webAppBundleID];
    v15 = *(a1 + 32);
    v24 = [v4 launchReason];
    v16 = [v15 _launchReasonFromString:v24];
    v17 = [v4 fullURL];
    v18 = [v4 referrerURL];
    [v4 referrerBundleID];
    v19 = v26 = a1;
    v6 = [(ATXAppClipUsageEvent *)v27 initWithLaunchDate:v22 urlHash:v25 clipBundleID:v23 parentAppBundleID:v13 webAppBundleID:v14 launchReason:v16 fullURL:v17 referrerURL:v18 referrerBundleID:v19];

    v20 = *(v26 + 40);
    if (!v20 || (*(v20 + 16))(v20, v6))
    {
      (*(*(v26 + 48) + 16))();
    }

    goto LABEL_9;
  }

LABEL_10:

  return 1;
}

- (int)_launchReasonFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NFC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"QR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LocationBased"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SpringBoard"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Maps"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Safari"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Messages"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mail"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 9;
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppClipUsageStream *)v3 _launchReasonFromString:v5];
    }

    v4 = 0;
  }

  return v4;
}

void __108__ATXAppClipUsageStream_enumerateAppClipUsageEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXAppClipUsageStream enumerateAppClipUsageEventsFromStartDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest App.Clip.InFocus event from biome %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_launchReasonFromString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_226368000, a2, OS_LOG_TYPE_FAULT, "Encountered an unknown launch reason for BMLibrary.App.Clip.InFocus: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end