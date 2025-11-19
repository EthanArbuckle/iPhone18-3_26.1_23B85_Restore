@interface ATXNotificationDigestGeneratorClient
- (ATXNotificationDigestGeneratorClient)initWithDigestRankerClient:(id)a3;
- (ATXNotificationDigestGeneratorClient)initWithMissedNotificationRankingBiomeStream:(id)a3 notificationDigestBiomeStream:(id)a4 modeConfigurationClient:(id)a5 modeEntityScorer:(id)a6 digestRankerClient:(id)a7;
- (id)_flattenNestedNotificationArrays:(id)a3;
- (id)digestRankerClient;
- (id)generateDigestForNotifications:(id)a3 digestTime:(int64_t)a4;
- (void)generateDigestForAppGroupedNotificationStacks:(id)a3 maxGlobalMarqueeGroups:(unint64_t)a4 maxAppMarqueeGroups:(unint64_t)a5 reply:(id)a6;
- (void)generateDigestForNotificationArrays:(id)a3 reply:(id)a4;
- (void)generateMissedNotificationRankingForNotificationArrays:(id)a3 atxMode:(unint64_t)a4 reply:(id)a5;
- (void)generateMissedNotificationRankingForNotificationArrays:(id)a3 modeUUID:(id)a4 reply:(id)a5;
@end

@implementation ATXNotificationDigestGeneratorClient

- (ATXNotificationDigestGeneratorClient)initWithDigestRankerClient:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = +[ATXDNDModeConfigurationClient sharedInstance];
  v8 = objc_opt_new();
  v9 = [(ATXNotificationDigestGeneratorClient *)self initWithMissedNotificationRankingBiomeStream:v5 notificationDigestBiomeStream:v6 modeConfigurationClient:v7 modeEntityScorer:v8 digestRankerClient:v4];

  return v9;
}

- (ATXNotificationDigestGeneratorClient)initWithMissedNotificationRankingBiomeStream:(id)a3 notificationDigestBiomeStream:(id)a4 modeConfigurationClient:(id)a5 modeEntityScorer:(id)a6 digestRankerClient:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ATXNotificationDigestGeneratorClient;
  v17 = [(ATXNotificationDigestGeneratorClient *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_missedNotificationRankingStream, a3);
    objc_storeStrong(&v18->_digestStream, a4);
    objc_storeStrong(&v18->_modeConfigurationClient, a5);
    objc_storeStrong(&v18->_modeEntityScorer, a6);
    objc_storeStrong(&v18->_digestRankerClient, a7);
  }

  return v18;
}

- (id)digestRankerClient
{
  digestRankerClient = self->_digestRankerClient;
  if (!digestRankerClient)
  {
    v4 = objc_opt_new();
    v5 = self->_digestRankerClient;
    self->_digestRankerClient = v4;

    digestRankerClient = self->_digestRankerClient;
  }

  return digestRankerClient;
}

- (id)_flattenNestedNotificationArrays:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObjectsFromArray:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)generateDigestForNotifications:(id)a3 digestTime:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = digestTimeToMode(a4);
  v9 = ATXModeToString(v8);
  [(ATXModeEntityScorerProtocol *)self->_modeEntityScorer scoreUserNotifications:v6 mode:v8];
  v10 = [[ATXUserNotificationDigest alloc] initWithNotifications:v6 modeId:v9 ranker:v7];

  [(ATXUserNotificationDigest *)v10 setLoggingStream:self->_digestStream];

  return v10;
}

- (void)generateDigestForAppGroupedNotificationStacks:(id)a3 maxGlobalMarqueeGroups:(unint64_t)a4 maxAppMarqueeGroups:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [(ATXNotificationDigestGeneratorClient *)self digestRankerClient];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __135__ATXNotificationDigestGeneratorClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke;
  v14[3] = &unk_1E80C6160;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 generateDigestForAppGroupedNotificationStacks:v11 maxGlobalMarqueeGroups:a4 maxAppMarqueeGroups:a5 reply:v14];
}

void __135__ATXNotificationDigestGeneratorClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __135__ATXNotificationDigestGeneratorClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    [v5 setLoggingStream:*(*(a1 + 32) + 16)];
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

- (void)generateDigestForNotificationArrays:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ATXNotificationDigestGeneratorClient *)self digestRankerClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__ATXNotificationDigestGeneratorClient_generateDigestForNotificationArrays_reply___block_invoke;
  v10[3] = &unk_1E80C6160;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 generateDigestForNotificationStacks:v7 reply:v10];
}

void __82__ATXNotificationDigestGeneratorClient_generateDigestForNotificationArrays_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __135__ATXNotificationDigestGeneratorClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    [v5 setLoggingStream:*(*(a1 + 32) + 16)];
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

- (void)generateMissedNotificationRankingForNotificationArrays:(id)a3 modeUUID:(id)a4 reply:(id)a5
{
  modeConfigurationClient = self->_modeConfigurationClient;
  v9 = a5;
  v10 = a3;
  [(ATXNotificationDigestGeneratorClient *)self generateMissedNotificationRankingForNotificationArrays:v10 atxMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDMode:a4] reply:v9];
}

- (void)generateMissedNotificationRankingForNotificationArrays:(id)a3 atxMode:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = ATXModeToString(a4);
  v11 = objc_opt_new();
  v12 = [(ATXNotificationDigestGeneratorClient *)self _flattenNestedNotificationArrays:v8];
  modeEntityScorer = self->_modeEntityScorer;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__ATXNotificationDigestGeneratorClient_generateMissedNotificationRankingForNotificationArrays_atxMode_reply___block_invoke;
  v18[3] = &unk_1E80C6188;
  v22 = self;
  v23 = v9;
  v19 = v8;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v8;
  v17 = v9;
  [(ATXModeEntityScorerProtocol *)modeEntityScorer scoreUserNotifications:v12 mode:a4 reply:v18];
}

void __109__ATXNotificationDigestGeneratorClient_generateMissedNotificationRankingForNotificationArrays_atxMode_reply___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[8] + 16);

    v3();
  }

  else
  {
    v4 = [[ATXMissedNotificationRanking alloc] initWithNotificationArrays:a1[4] modeId:a1[5] ranker:a1[6]];
    [(ATXMissedNotificationRanking *)v4 setLoggingStream:*(a1[7] + 8)];
    (*(a1[8] + 16))();
  }
}

void __135__ATXNotificationDigestGeneratorClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_4(&dword_1BF549000, v2, v3, "[%@] Error calling XPC for the digest: %@", v4, v5, v6, v7, v8);
}

@end