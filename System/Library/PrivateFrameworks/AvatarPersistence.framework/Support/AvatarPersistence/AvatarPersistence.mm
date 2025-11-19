id sub_100001358(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v30 + 1) + 8 * i) recordIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 32);
  v29 = 0;
  v12 = [v11 deleteThumbnailsForAvatarRecordsWithIdentifiers:v4 error:&v29];
  v13 = v29;
  if (v12)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v24 = v13;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          if (![v19 changeType])
          {
            v20 = *(a1 + 40);
            v21 = [v19 recordIdentifier];
            [v20 addObject:v21];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v16);
      v13 = v24;
    }
  }

  else
  {
    v14 = [*(a1 + 32) logger];
    v22 = [v13 description];
    [v14 logErrorDeletingSomeThumbnail:v22];
  }

  return v12;
}

void sub_1000015B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v9 = 0;
  v5 = [v2 processChangeTransactionsWithChangeTokenLocation:v3 handler:v4 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = [*(a1 + 48) logger];
    v8 = [v6 description];
    [v7 logErrorProcessingChangeTransactionsToUpdateThumbnails:v8];
  }
}

uint64_t start()
{
  v0 = +[AVTCoreEnvironment defaultEnvironment];
  v1 = [v0 logger];

  v2 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    [v1 logErrorSettingUserDirSuffixForSandbox:*__error()];
  }

  v3 = [[AVTDaemonImageOperationHandler alloc] initWithLogger:v1];
  v4 = [AVTAvatarStoreServer defaultServerWithImageHandlingDelegate:v3];
  [v4 startListening];
  v5 = [[AVTUsageAnalysisService alloc] initWithLogger:v1];
  [(AVTUsageAnalysisService *)v5 startListening];

  objc_autoreleasePoolPop(v2);
  v6 = +[NSRunLoop mainRunLoop];
  [v6 run];

  return 0;
}

void sub_100001880(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v9 = [*(a1 + 32) logger];
    [v9 logAnalysisServiceWillRun];

    [*(a1 + 32) performUsageAnalysis];
    v6 = [*(a1 + 32) logger];
    [v6 logAnalysisServiceDidRun];
  }

  else
  {
    v4 = state;
    if (state)
    {
      v6 = [*(a1 + 32) logger];
      v10 = *(a1 + 32);
      v11 = [objc_opt_class() _stringFromXPCActivityState:v4];
      [v6 logAnalysisServiceDidNotProcessState:v11];
    }

    else
    {
      v5 = xpc_activity_copy_criteria(activity);
      v6 = v5;
      if (v5)
      {
        v7 = [NSString stringWithCString:xpc_copy_description(v5) encoding:1];
        v8 = [*(a1 + 32) logger];
        [v8 logAnalysisServiceCheckingIn:v7];
      }
    }
  }
}