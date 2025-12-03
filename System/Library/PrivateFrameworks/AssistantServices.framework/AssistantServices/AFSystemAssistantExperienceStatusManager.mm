@interface AFSystemAssistantExperienceStatusManager
+ (BOOL)deviceSupportsSAE;
+ (BOOL)isSAEEnabled;
+ (BOOL)isVisualIntelligenceEnabled;
+ (BOOL)saeAvailable;
+ (BOOL)swaiEnabled;
+ (id)sharedManager;
- (AFSystemAssistantExperienceStatusManager)init;
- (void)fetchGenerativeModelsAvailability;
@end

@implementation AFSystemAssistantExperienceStatusManager

+ (BOOL)saeAvailable
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AFSystemAssistantExperienceStatusManager sharedManager];
  saeAvailable = [v2 saeAvailable];

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "+[AFSystemAssistantExperienceStatusManager saeAvailable]";
    v9 = 1024;
    v10 = saeAvailable;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheRead saeAvailable: %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return saeAvailable;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_32916 != -1)
  {
    dispatch_once(&sharedManager_onceToken_32916, &__block_literal_global_32917);
  }

  v3 = sharedManager_result_32918;

  return v3;
}

+ (BOOL)isSAEEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AFSystemAssistantExperienceStatusManager sharedManager];
  saeEnabled = [v2 saeEnabled];

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "+[AFSystemAssistantExperienceStatusManager isSAEEnabled]";
    v9 = 1024;
    v10 = saeEnabled;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheRead saeEnabled: %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return saeEnabled;
}

+ (BOOL)deviceSupportsSAE
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AFSystemAssistantExperienceStatusManager sharedManager];
  deviceSupportsSAE = [v2 deviceSupportsSAE];

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "+[AFSystemAssistantExperienceStatusManager deviceSupportsSAE]";
    v9 = 1024;
    v10 = deviceSupportsSAE;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheRead deviceSupportsSAE: %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return deviceSupportsSAE;
}

- (void)fetchGenerativeModelsAvailability
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = AFDeviceSupportsSAEDeprecated();
  v4 = +[AFFeatureFlags isSystemAssistantExperienceEnabled]& v3;
  v5 = checkGMStatusWithUseCaseIdentifiers(&unk_1F0570068, 0);
  v6 = AFVisualIntelligenceEnabled();
  if (((v3 ^ [(AFSystemAssistantExperienceStatusManager *)self deviceSupportsSAE]) & 1) == 0 && v4 == [(AFSystemAssistantExperienceStatusManager *)self saeEnabled]&& v5 == [(AFSystemAssistantExperienceStatusManager *)self saeAvailable]&& ![(AFSystemAssistantExperienceStatusManager *)self swaiEnabled]&& v6 == [(AFSystemAssistantExperienceStatusManager *)self visualIntelligenceEnabled])
  {
    v10 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v13 = "[AFSystemAssistantExperienceStatusManager fetchGenerativeModelsAvailability]";
      _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheUpdate Cache already up to date", buf, 0xCu);
    }
  }

  else
  {
    v7 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *buf = 136317698;
      v13 = "[AFSystemAssistantExperienceStatusManager fetchGenerativeModelsAvailability]";
      v14 = 1024;
      v15 = v3;
      v16 = 1024;
      deviceSupportsSAE = [(AFSystemAssistantExperienceStatusManager *)self deviceSupportsSAE];
      v18 = 1024;
      v19 = v4;
      v20 = 1024;
      saeEnabled = [(AFSystemAssistantExperienceStatusManager *)self saeEnabled];
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      saeAvailable = [(AFSystemAssistantExperienceStatusManager *)self saeAvailable];
      v26 = 1024;
      v27 = 0;
      v28 = 1024;
      swaiEnabled = [(AFSystemAssistantExperienceStatusManager *)self swaiEnabled];
      v30 = 1024;
      v31 = v6;
      v32 = 1024;
      visualIntelligenceEnabled = [(AFSystemAssistantExperienceStatusManager *)self visualIntelligenceEnabled];
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEFAULT, "%s #SAEStatus #cacheUpdate Updating cache:\ndeviceSupportsSAE: %d (%d)\n       saeEnabled: %d (%d)\n     saeAvailable: %d (%d)\n      swaiEnabled: %d (%d)\n        viEnabled: %d (%d)", buf, 0x48u);
    }

    [(AFSystemAssistantExperienceStatusManager *)self setDeviceSupportsSAE:v3 & 1];
    [(AFSystemAssistantExperienceStatusManager *)self setSaeEnabled:v4];
    [(AFSystemAssistantExperienceStatusManager *)self setSaeAvailable:v5];
    [(AFSystemAssistantExperienceStatusManager *)self setSwaiEnabled:0];
    [(AFSystemAssistantExperienceStatusManager *)self setVisualIntelligenceEnabled:v6];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__AFSystemAssistantExperienceStatusManager_fetchGenerativeModelsAvailability__block_invoke;
    block[3] = &unk_1E73497C8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __77__AFSystemAssistantExperienceStatusManager_fetchGenerativeModelsAvailability__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFSystemAssistantExperienceStatusManager fetchGenerativeModelsAvailability]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheUpdate Posting AFSystemAssistantExperienceAvailabilityDidChangeNotificationName", &v5, 0xCu);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"com.apple.siri.availability.notification" object:*(a1 + 32)];

  v4 = *MEMORY[0x1E69E9840];
}

- (AFSystemAssistantExperienceStatusManager)init
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AFSystemAssistantExperienceStatusManager;
  v2 = [(AFSystemAssistantExperienceStatusManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(25, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.siri.systemAssistantExperienceStatusManagerQueue", 0, v3);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v4;

    v6 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[AFSystemAssistantExperienceStatusManager init]";
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheUpdate Initializing cache", buf, 0xCu);
    }

    [(AFSystemAssistantExperienceStatusManager *)v2 fetchGenerativeModelsAvailability];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (BOOL)isVisualIntelligenceEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AFSystemAssistantExperienceStatusManager sharedManager];
  visualIntelligenceEnabled = [v2 visualIntelligenceEnabled];

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "+[AFSystemAssistantExperienceStatusManager isVisualIntelligenceEnabled]";
    v9 = 1024;
    v10 = visualIntelligenceEnabled;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheRead visualIntelligenceEnabled: %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return visualIntelligenceEnabled;
}

+ (BOOL)swaiEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[AFSystemAssistantExperienceStatusManager sharedManager];
  swaiEnabled = [v2 swaiEnabled];

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "+[AFSystemAssistantExperienceStatusManager swaiEnabled]";
    v9 = 1024;
    v10 = swaiEnabled;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s #SAEStatus #cacheRead swaiEnabled: %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return swaiEnabled;
}

void __57__AFSystemAssistantExperienceStatusManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_result_32918;
  sharedManager_result_32918 = v0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, sharedManager_result_32918, HandleSiriCapabilitiesDidChange, @"com.apple.siri.orchestration.capabilities.didChange", 0, 0);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, sharedManager_result_32918, HandleSiriCapabilitiesDidChange, @"com.apple.gms.availability.notification", 0, 0);
  v3 = sharedManager_result_32918;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, HandleSiriCapabilitiesDidChange, @"com.apple.os-eligibility-domain.change.greymatter", 0, 0);
}

@end