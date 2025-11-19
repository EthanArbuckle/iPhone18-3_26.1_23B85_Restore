@interface AKFollowUpProviderFactory
+ (id)sharedAuthKitFollowupProvider;
@end

@implementation AKFollowUpProviderFactory

+ (id)sharedAuthKitFollowupProvider
{
  v5 = &sharedAuthKitFollowupProvider_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_13);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedAuthKitFollowupProvider_followupController;

  return v2;
}

uint64_t __58__AKFollowUpProviderFactory_sharedAuthKitFollowupProvider__block_invoke()
{
  v3 = [AKFollowUpController alloc];
  v4 = +[AKFLFollowUpController sharedInstance];
  v0 = [(AKFollowUpController *)v3 initWithFLFollowupController:?];
  v1 = sharedAuthKitFollowupProvider_followupController;
  sharedAuthKitFollowupProvider_followupController = v0;
  MEMORY[0x1E69E5920](v1);
  return MEMORY[0x1E69E5920](v4);
}

@end