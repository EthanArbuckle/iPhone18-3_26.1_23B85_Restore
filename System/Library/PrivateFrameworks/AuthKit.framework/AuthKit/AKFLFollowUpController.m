@interface AKFLFollowUpController
+ (id)sharedInstance;
@end

@implementation AKFLFollowUpController

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_controller;

  return v2;
}

uint64_t __40__AKFLFollowUpController_sharedInstance__block_invoke()
{
  if (CoreFollowUpLibraryCore(0))
  {
    v0 = objc_alloc(getFLFollowUpControllerClass());
  }

  else
  {
    v0 = [0 alloc];
  }

  v1 = [v0 initWithClientIdentifier:@"com.apple.authkit"];
  v2 = sharedInstance_controller;
  sharedInstance_controller = v1;
  return MEMORY[0x1E69E5920](v2);
}

@end