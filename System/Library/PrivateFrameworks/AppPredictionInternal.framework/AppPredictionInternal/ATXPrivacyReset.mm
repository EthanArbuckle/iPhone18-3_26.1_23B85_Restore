@interface ATXPrivacyReset
+ (id)sharedInstance;
- (ATXPrivacyReset)init;
- (BOOL)_placeholderExists;
- (id)_placeholderPath;
- (void)_handlePrivacyResetNotification;
- (void)_registerForResetPrivacyWarningsNotification;
- (void)_removeAllAppActionData;
- (void)_removeAllBlendingUICaches;
- (void)_writeDeletionPlaceholder;
- (void)dealloc;
@end

@implementation ATXPrivacyReset

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_32 != -1)
  {
    +[ATXPrivacyReset sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_39;

  return v3;
}

void __33__ATXPrivacyReset_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_39;
  sharedInstance__pasExprOnceResult_39 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXPrivacyReset)init
{
  v5.receiver = self;
  v5.super_class = ATXPrivacyReset;
  v2 = [(ATXPrivacyReset *)&v5 init];
  v3 = v2;
  if (v2)
  {
    if ([(ATXPrivacyReset *)v2 _placeholderExists])
    {
      [(ATXPrivacyReset *)v3 _removeAllAppActionData];
    }

    [(ATXPrivacyReset *)v3 _registerForResetPrivacyWarningsNotification];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_resetPrivacyWarningsNotificationToken];

  v4.receiver = self;
  v4.super_class = ATXPrivacyReset;
  [(ATXPrivacyReset *)&v4 dealloc];
}

- (id)_placeholderPath
{
  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v3 = [appPredictionDirectory stringByAppendingPathComponent:@"ATXPrivacyResetTriggered"];

  return v3;
}

- (BOOL)_placeholderExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _placeholderPath = [(ATXPrivacyReset *)self _placeholderPath];
  v5 = [defaultManager fileExistsAtPath:_placeholderPath];

  return v5;
}

- (void)_registerForResetPrivacyWarningsNotification
{
  if (!self->_resetPrivacyWarningsNotificationToken)
  {
    v8[7] = v2;
    v8[8] = v3;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__ATXPrivacyReset__registerForResetPrivacyWarningsNotification__block_invoke;
    v8[3] = &unk_278599D40;
    v8[4] = self;
    v6 = [defaultCenter addObserverForName:@"com.apple.Preferences.ResetPrivacyWarningsNotification" object:0 queue:0 usingBlock:v8];
    resetPrivacyWarningsNotificationToken = self->_resetPrivacyWarningsNotificationToken;
    self->_resetPrivacyWarningsNotificationToken = v6;
  }
}

void __63__ATXPrivacyReset__registerForResetPrivacyWarningsNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _handlePrivacyResetNotification];
  exit(0);
}

- (void)_handlePrivacyResetNotification
{
  v3 = objc_opt_new();
  [v3 synchronouslyRelinquishOnDiskResourcesAheadOfDataDeletionWithCompletionHandler:&__block_literal_global_35_4];
  [(ATXPrivacyReset *)self _writeDeletionPlaceholder];
  [(ATXPrivacyReset *)self _removeAllBlendingUICaches];
}

void __50__ATXPrivacyReset__handlePrivacyResetNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__ATXPrivacyReset__handlePrivacyResetNotification__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_writeDeletionPlaceholder
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _placeholderPath = [(ATXPrivacyReset *)self _placeholderPath];
  [defaultManager createFileAtPath:_placeholderPath contents:0 attributes:0];
}

- (void)_removeAllBlendingUICaches
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXPrivacyReset: Error removing blending UI caches. Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeAllAppActionData
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXPrivacyReset: Error removing all app/action data. Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__ATXPrivacyReset__handlePrivacyResetNotification__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "An error occurred while telling home screen clients to relinquish resources: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end