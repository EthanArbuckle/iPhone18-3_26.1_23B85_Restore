@interface SetupDebugUserDefaults
@end

@implementation SetupDebugUserDefaults

uint64_t ____SetupDebugUserDefaults_block_invoke()
{
  v0 = dispatch_get_global_queue(21, 0);
  notify_register_dispatch("com.apple.appstored.defaultschange", &__SetupDebugUserDefaults_sToken, v0, &__block_literal_global_47);

  return __ReloadDebugUserDefaults();
}

uint64_t ____SetupDebugUserDefaults_block_invoke_2()
{
  CFPreferencesAppSynchronize(@"com.apple.appstored");

  return __ReloadDebugUserDefaults();
}

@end