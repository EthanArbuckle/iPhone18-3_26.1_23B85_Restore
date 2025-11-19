@interface ATXOnboardingStackResultCacheManager
- (ATXOnboardingStackResultCacheManager)init;
- (ATXOnboardingStackResultCacheManager)initWithPath:(id)a3 isiPad:(BOOL)a4;
- (BOOL)_writeOnboardingStackResultCache:(id)a3;
- (BOOL)updateCacheWithActivity:(id)a3 widgetCache:(id)a4;
- (id)_generateResultCacheWithWidgetCache:(id)a3;
- (id)_resultFromOnboardingStacks:(id)a3;
- (id)fetchOnboardingStackResultCache;
@end

@implementation ATXOnboardingStackResultCacheManager

- (ATXOnboardingStackResultCacheManager)init
{
  v3 = [MEMORY[0x1E698B010] onboardingStackResultCacheFilePath];
  v4 = -[ATXOnboardingStackResultCacheManager initWithPath:isiPad:](self, "initWithPath:isiPad:", v3, [MEMORY[0x1E69C5CF8] isiPad]);

  return v4;
}

- (ATXOnboardingStackResultCacheManager)initWithPath:(id)a3 isiPad:(BOOL)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = ATXOnboardingStackResultCacheManager;
  v7 = [(ATXOnboardingStackResultCacheManager *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    path = v7->_path;
    v7->_path = v8;

    v7->_isiPad = a4;
    v10 = objc_opt_new();
    v11 = [v10 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    appLaunchCounts = v7->_appLaunchCounts;
    v7->_appLaunchCounts = v11;
  }

  return v7;
}

- (BOOL)updateCacheWithActivity:(id)a3 widgetCache:(id)a4
{
  v6 = a4;
  if ([a3 didDefer])
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXOnboardingStackResultCacheManager: Activity was deferred, stopping early", v11, 2u);
    }

    v8 = 0;
  }

  else
  {
    v9 = [(ATXOnboardingStackResultCacheManager *)self _generateResultCacheWithWidgetCache:v6];
    v8 = [(ATXOnboardingStackResultCacheManager *)self _writeOnboardingStackResultCache:v9];
  }

  return v8;
}

- (id)_generateResultCacheWithWidgetCache:(id)a3
{
  v4 = a3;
  v5 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:v4 adblDrainClassification:0 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  v6 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v5 onboardingStacks];
  v7 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:v6];

  v8 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:v4 adblDrainClassification:1 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  v9 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v8 onboardingStacks];
  v10 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:v9];

  v11 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:v4 adblDrainClassification:2 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  v12 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v11 onboardingStacks];
  v13 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:v12];

  v14 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:v4 adblDrainClassification:3 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  v15 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v14 onboardingStacks];
  v16 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:v15];

  v17 = [[ATXOnboardingStackResultCache alloc] initWithUnknownBatteryDrainResult:v7 lightBatteryDrainResult:v10 mediumBatteryDrainResult:v13 heavyBatteryDrainResult:v16];

  return v17;
}

- (BOOL)_writeOnboardingStackResultCache:(id)a3
{
  v4 = MEMORY[0x1E698AFF0];
  v5 = a3;
  v6 = [v4 alloc];
  path = self->_path;
  v8 = __atxlog_handle_home_screen();
  v9 = [v6 initWithCacheFilePath:path loggingHandle:v8 debugName:@"onboarding stacks"];

  LOBYTE(v6) = [v9 storeSecureCodedObject:v5 error:0];
  return v6;
}

- (id)fetchOnboardingStackResultCache
{
  v3 = objc_alloc(MEMORY[0x1E698AFF0]);
  path = self->_path;
  v5 = __atxlog_handle_home_screen();
  v6 = [v3 initWithCacheFilePath:path loggingHandle:v5 debugName:@"onboarding stacks"];

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  v9 = [v6 readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:0 error:-1.0];

  return v9;
}

- (id)_resultFromOnboardingStacks:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  isiPad = self->_isiPad;
  v8 = [v4 stack1];
  v9 = v8;
  if (isiPad)
  {
    v10 = [v8 mediumDefaultStack];
    [v5 setMediumDefaultStack:v10];

    v11 = [v4 stack2];

    v12 = [v11 mediumDefaultStack];
    [v6 setMediumDefaultStack:v12];
  }

  else
  {
    v13 = [v8 smallDefaultStack];
    [v5 setSmallDefaultStack:v13];

    v11 = [v4 stack2];

    v12 = [v11 smallDefaultStack];
    [v6 setSmallDefaultStack:v12];
  }

  v14 = [[ATXOnboardingStackResult alloc] initWithStack1:v5 stack2:v6];

  return v14;
}

@end