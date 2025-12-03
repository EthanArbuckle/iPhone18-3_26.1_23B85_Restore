@interface AKGlobalConfig
+ (id)sharedInstance;
- (void)fetchGlobalConfigUsingCachePolicy:(unint64_t)policy completion:(id)completion;
@end

@implementation AKGlobalConfig

+ (id)sharedInstance
{
  v5 = &sharedInstance_pred_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_47);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_sharedInstance_3;

  return v2;
}

uint64_t __32__AKGlobalConfig_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AKGlobalConfig);
  v1 = sharedInstance_sharedInstance_3;
  sharedInstance_sharedInstance_3 = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (void)fetchGlobalConfigUsingCachePolicy:(unint64_t)policy completion:(id)completion
{
  selfCopy = self;
  v15 = a2;
  policyCopy = policy;
  location = 0;
  objc_storeStrong(&location, completion);
  v12 = objc_alloc_init(AKAppleIDAuthenticationController);
  v5 = v12;
  v4 = policyCopy;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __63__AKGlobalConfig_fetchGlobalConfigUsingCachePolicy_completion___block_invoke;
  v10 = &unk_1E73D3538;
  v11 = MEMORY[0x1E69E5928](location);
  [(AKAppleIDAuthenticationController *)v5 fetchGlobalConfigurationUsingPolicy:v4 completion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

void __63__AKGlobalConfig_fetchGlobalConfigUsingCachePolicy_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end