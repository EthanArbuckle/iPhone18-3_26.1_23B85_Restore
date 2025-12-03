@interface ATXOnboardingStackResultCacheManager
- (ATXOnboardingStackResultCacheManager)init;
- (ATXOnboardingStackResultCacheManager)initWithPath:(id)path isiPad:(BOOL)pad;
- (BOOL)_writeOnboardingStackResultCache:(id)cache;
- (BOOL)updateCacheWithActivity:(id)activity widgetCache:(id)cache;
- (id)_generateResultCacheWithWidgetCache:(id)cache;
- (id)_resultFromOnboardingStacks:(id)stacks;
- (id)fetchOnboardingStackResultCache;
@end

@implementation ATXOnboardingStackResultCacheManager

- (ATXOnboardingStackResultCacheManager)init
{
  onboardingStackResultCacheFilePath = [MEMORY[0x1E698B010] onboardingStackResultCacheFilePath];
  v4 = -[ATXOnboardingStackResultCacheManager initWithPath:isiPad:](self, "initWithPath:isiPad:", onboardingStackResultCacheFilePath, [MEMORY[0x1E69C5CF8] isiPad]);

  return v4;
}

- (ATXOnboardingStackResultCacheManager)initWithPath:(id)path isiPad:(BOOL)pad
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = ATXOnboardingStackResultCacheManager;
  v7 = [(ATXOnboardingStackResultCacheManager *)&v14 init];
  if (v7)
  {
    v8 = [pathCopy copy];
    path = v7->_path;
    v7->_path = v8;

    v7->_isiPad = pad;
    v10 = objc_opt_new();
    rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v10 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    appLaunchCounts = v7->_appLaunchCounts;
    v7->_appLaunchCounts = rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps;
  }

  return v7;
}

- (BOOL)updateCacheWithActivity:(id)activity widgetCache:(id)cache
{
  cacheCopy = cache;
  if ([activity didDefer])
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
    v9 = [(ATXOnboardingStackResultCacheManager *)self _generateResultCacheWithWidgetCache:cacheCopy];
    v8 = [(ATXOnboardingStackResultCacheManager *)self _writeOnboardingStackResultCache:v9];
  }

  return v8;
}

- (id)_generateResultCacheWithWidgetCache:(id)cache
{
  cacheCopy = cache;
  v5 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:cacheCopy adblDrainClassification:0 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  onboardingStacks = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v5 onboardingStacks];
  v7 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:onboardingStacks];

  v8 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:cacheCopy adblDrainClassification:1 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  onboardingStacks2 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v8 onboardingStacks];
  v10 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:onboardingStacks2];

  v11 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:cacheCopy adblDrainClassification:2 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  onboardingStacks3 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v11 onboardingStacks];
  v13 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:onboardingStacks3];

  v14 = [[ATXDefaultHomeScreenItemOnboardingStacksProducer alloc] initWithOnboardingStackWidgetCache:cacheCopy adblDrainClassification:3 isiPad:self->_isiPad shouldIncludeContactsWidget:0 appLaunchCounts:self->_appLaunchCounts];
  onboardingStacks4 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v14 onboardingStacks];
  v16 = [(ATXOnboardingStackResultCacheManager *)self _resultFromOnboardingStacks:onboardingStacks4];

  v17 = [[ATXOnboardingStackResultCache alloc] initWithUnknownBatteryDrainResult:v7 lightBatteryDrainResult:v10 mediumBatteryDrainResult:v13 heavyBatteryDrainResult:v16];

  return v17;
}

- (BOOL)_writeOnboardingStackResultCache:(id)cache
{
  v4 = MEMORY[0x1E698AFF0];
  cacheCopy = cache;
  v6 = [v4 alloc];
  path = self->_path;
  v8 = __atxlog_handle_home_screen();
  v9 = [v6 initWithCacheFilePath:path loggingHandle:v8 debugName:@"onboarding stacks"];

  LOBYTE(v6) = [v9 storeSecureCodedObject:cacheCopy error:0];
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

- (id)_resultFromOnboardingStacks:(id)stacks
{
  stacksCopy = stacks;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  isiPad = self->_isiPad;
  stack1 = [stacksCopy stack1];
  v9 = stack1;
  if (isiPad)
  {
    mediumDefaultStack = [stack1 mediumDefaultStack];
    [v5 setMediumDefaultStack:mediumDefaultStack];

    stack2 = [stacksCopy stack2];

    mediumDefaultStack2 = [stack2 mediumDefaultStack];
    [v6 setMediumDefaultStack:mediumDefaultStack2];
  }

  else
  {
    smallDefaultStack = [stack1 smallDefaultStack];
    [v5 setSmallDefaultStack:smallDefaultStack];

    stack2 = [stacksCopy stack2];

    mediumDefaultStack2 = [stack2 smallDefaultStack];
    [v6 setSmallDefaultStack:mediumDefaultStack2];
  }

  v14 = [[ATXOnboardingStackResult alloc] initWithStack1:v5 stack2:v6];

  return v14;
}

@end