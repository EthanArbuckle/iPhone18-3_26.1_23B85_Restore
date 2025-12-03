@interface LocalKeychainAnalytics
- (BOOL)canPersistMetrics;
- (LocalKeychainAnalytics)init;
- (void)processPendingMessages;
- (void)reportKeychainBackupEnd:(BOOL)end error:(id)error;
- (void)reportKeychainBackupStartWithType:(int)type;
- (void)reportKeychainUpgradeOutcome:(int)outcome attributes:(id)attributes;
@end

@implementation LocalKeychainAnalytics

- (void)reportKeychainBackupEnd:(BOOL)end error:(id)error
{
  endCopy = end;
  v19[3] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_backupStartTime];
  v9 = 100 * ((v8 + 0.05) * 10.0);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  [(SFAnalytics *)self logMetric:v10 withName:@"LKAMetricBackupDuration"];

  if (endCopy)
  {
    [(SFAnalytics *)self setDateProperty:date forKey:@"backupLastSuccess"];
    [(SFAnalytics *)self logSuccessForEventNamed:@"LKAEventBackup" timestampBucket:2];
  }

  else
  {
    v11 = [(SFAnalytics *)self datePropertyForKey:@"backupLastSuccess"];
    v12 = [SFAnalytics fuzzyDaysSinceDate:v11];

    if ([errorCopy code] != -25308 || v12)
    {
      v18[0] = @"daysSinceSuccess";
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      v19[0] = v13;
      v18[1] = @"duration";
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v19[1] = v14;
      v18[2] = @"type";
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_backupType];
      v19[2] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      [(SFAnalytics *)self logResultForEvent:@"LKAEventBackup" hardFailure:1 result:errorCopy withAttributes:v16 timestampBucket:2];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)reportKeychainBackupStartWithType:(int)type
{
  date = [MEMORY[0x1E695DF00] date];
  backupStartTime = self->_backupStartTime;
  self->_backupStartTime = date;

  self->_backupType = type;
}

- (void)reportKeychainUpgradeOutcome:(int)outcome attributes:(id)attributes
{
  if (outcome)
  {
    [(SFAnalytics *)self logHardFailureForEventNamed:@"LKAEventUpgrade" withAttributes:attributes];
  }

  else
  {
    [(SFAnalytics *)self logSuccessForEventNamed:@"LKAEventUpgrade", attributes];
  }
}

void __69__LocalKeychainAnalytics_reportKeychainUpgradeFrom_to_outcome_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v2 = [[LKAUpgradeOutcomeReport alloc] initWithOutcome:*(a1 + 48) attributes:*(a1 + 40)];
  [v1 addObject:v2];
}

- (void)processPendingMessages
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__LocalKeychainAnalytics_processPendingMessages__block_invoke;
  block[3] = &unk_1E70E4300;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__LocalKeychainAnalytics_processPendingMessages__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = [v7 outcome];
        v10 = [v7 attributes];
        [v8 reportKeychainUpgradeOutcome:v9 attributes:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)canPersistMetrics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  probablyInClassD = selfCopy->_probablyInClassD;
  objc_sync_exit(selfCopy);

  if (!probablyInClassD)
  {
    return 1;
  }

  v6 = -1431655766;
  aks_get_lock_state();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__LocalKeychainAnalytics_canPersistMetrics__block_invoke;
  v5[3] = &unk_1E70E4300;
  v5[4] = selfCopy;
  if (canPersistMetrics_onceToken != -1)
  {
    dispatch_once(&canPersistMetrics_onceToken, v5);
  }

  return 0;
}

void __43__LocalKeychainAnalytics_canPersistMetrics__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43__LocalKeychainAnalytics_canPersistMetrics__block_invoke_2;
  handler[3] = &unk_1E70D4738;
  handler[4] = v1;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v1 + 88), v2, handler);
}

- (LocalKeychainAnalytics)init
{
  v10.receiver = self;
  v10.super_class = LocalKeychainAnalytics;
  v2 = [(SFAnalytics *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_probablyInClassD = 1;
    v4 = objc_opt_new();
    pendingReports = v3->_pendingReports;
    v3->_pendingReports = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("LKADataQueue", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v3->_notificationToken = -1;
  }

  return v3;
}

@end