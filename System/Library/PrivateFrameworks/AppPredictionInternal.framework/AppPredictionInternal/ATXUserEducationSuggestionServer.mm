@interface ATXUserEducationSuggestionServer
+ (id)sharedInstance;
- (ATXUserEducationSuggestionServer)init;
@end

@implementation ATXUserEducationSuggestionServer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATXUserEducationSuggestionServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_1 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_1, block);
  }

  v2 = sharedInstance__pasExprOnceResult_1;

  return v2;
}

void __50__ATXUserEducationSuggestionServer_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_1;
  sharedInstance__pasExprOnceResult_1 = v4;

  objc_autoreleasePoolPop(v2);
}

- (ATXUserEducationSuggestionServer)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = ATXUserEducationSuggestionServer;
  v2 = [(ATXUserEducationSuggestionServer *)&v18 init];
  if (v2)
  {
    v3 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[ATXUserEducationSuggestionServer init]";
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    v4 = objc_alloc(MEMORY[0x277CEB928]);
    v5 = *MEMORY[0x277CEBB28];
    v6 = *MEMORY[0x277CEBB20];
    v7 = objc_opt_new();
    v8 = [v4 initWithOurInterfaceFactory:MEMORY[0x277CEB2B0] theirInterfaceFactory:MEMORY[0x277CEB2A8] ourServiceName:v5 theirServiceName:v6 requestHandler:v7];
    connector = v2->_connector;
    v2->_connector = v8;

    v10 = [[ATXUserEducationSuggestionCustomizeFocusServer alloc] initWithConnector:v2->_connector];
    customizeFocusServer = v2->_customizeFocusServer;
    v2->_customizeFocusServer = v10;

    v12 = [[ATXUserEducationSuggestionSleepMigrationServer alloc] initWithConnector:v2->_connector];
    sleepMigrationServer = v2->_sleepMigrationServer;
    v2->_sleepMigrationServer = v12;

    if (([MEMORY[0x277D42590] isiPad] & 1) == 0)
    {
      v14 = [[ATXUserEducationSuggestionExploreFacesServer alloc] initWithConnector:v2->_connector];
      exploreFacesServer = v2->_exploreFacesServer;
      v2->_exploreFacesServer = v14;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

@end