@interface SOExtensionManager
+ (BOOL)_isMatchedExtension:(id)extension forBundleIdentifier:(id)identifier;
+ (BOOL)isAppleConnectExtensionBundleIdentifier:(id)identifier;
+ (BOOL)isInternalExtensionBundleIdentifier:(id)identifier;
+ (id)sharedInstance;
+ (void)_sendNotificationsLoadedExtensions:(id)extensions new:(id)new removed:(id)removed;
- (BOOL)isLoadedExtensionWithBundleIdentifier:(id)identifier;
- (SOExtensionManager)init;
- (id)_doLoadExtensions;
- (id)loadExtensionWithBundleIdentifier:(id)identifier;
- (id)loadInternalExtension;
- (id)loadedExtensionWithBundleIdentifier:(id)identifier;
- (id)loadedInternalExtension;
- (void)_doBeginMatchingExtensions;
- (void)_doEndMatchingExtensions;
- (void)beginMatchingExtensions;
- (void)dealloc;
- (void)endMatchingExtensions;
- (void)loadExtensionWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)loadExtensions;
- (void)unloadExtensions;
@end

@implementation SOExtensionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SOExtensionManager sharedInstance];
  }

  v3 = sharedInstance_defaultManager;

  return v3;
}

uint64_t __36__SOExtensionManager_sharedInstance__block_invoke()
{
  sharedInstance_defaultManager = objc_alloc_init(SOExtensionManager);

  return MEMORY[0x1EEE66BB8]();
}

- (SOExtensionManager)init
{
  v8.receiver = self;
  v8.super_class = SOExtensionManager;
  v2 = [(SOExtensionManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SOExtensionFinder);
    extensionFinder = v2->_extensionFinder;
    v2->_extensionFinder = v3;

    v5 = dispatch_queue_create("com.apple.AppSSO.extension-manager-queue", 0);
    extensionManagerQueue = v2->_extensionManagerQueue;
    v2->_extensionManagerQueue = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(SOExtensionManager *)self unloadExtensions];
  v3.receiver = self;
  v3.super_class = SOExtensionManager;
  [(SOExtensionManager *)&v3 dealloc];
}

- (void)loadExtensionWithBundleIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SOExtensionManager loadExtensionWithBundleIdentifier:completion:]";
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s bundleIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  extensionFinder = self->_extensionFinder;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__SOExtensionManager_loadExtensionWithBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E813E8E8;
  v14 = identifierCopy;
  v15 = completionCopy;
  v13[4] = self;
  v10 = identifierCopy;
  v11 = completionCopy;
  [(SOExtensionFinder *)extensionFinder findExtensionWithBundleIdentifier:v10 completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __67__SOExtensionManager_loadExtensionWithBundleIdentifier_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v7 = a1[4];
    v8 = [objc_opt_class() _isMatchedExtension:v5 forBundleIdentifier:a1[5]];
    v9 = a1[6];
    if (v8)
    {
      (*(v9 + 16))(v9, v5, 0);
    }

    else
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2050000000;
      v10 = getSOErrorHelperClass_softClass_2;
      v17 = getSOErrorHelperClass_softClass_2;
      if (!getSOErrorHelperClass_softClass_2)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __getSOErrorHelperClass_block_invoke_2;
        v13[3] = &unk_1E813E230;
        v13[4] = &v14;
        __getSOErrorHelperClass_block_invoke_2(v13);
        v10 = v15[3];
      }

      v11 = v10;
      _Block_object_dispose(&v14, 8);
      v12 = [v10 internalErrorWithMessage:@"No AppSSO IdP extension found (internal error)"];
      (*(v9 + 16))(v9, 0, v12);
    }
  }
}

- (id)loadExtensionWithBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[SOExtensionManager loadExtensionWithBundleIdentifier:]";
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s bundleIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  selfCopy = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke;
  v10[3] = &unk_1E813E910;
  v12 = buf;
  v6 = identifierCopy;
  v11 = v6;
  [(SOExtensionManager *)self loadExtensionWithBundleIdentifier:v6 completion:v10];
  v7 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = SO_LOG_SOExtensionManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke_cold_1(a1, v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)loadInternalExtension
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOExtensionManager loadInternalExtension]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  internalExtensionBundleIdentifier = [objc_opt_class() internalExtensionBundleIdentifier];
  v5 = [(SOExtensionManager *)self loadExtensionWithBundleIdentifier:internalExtensionBundleIdentifier];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)beginMatchingExtensions
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOExtensionManager beginMatchingExtensions]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  [(SOExtensionManager *)self _doBeginMatchingExtensions];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)endMatchingExtensions
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOExtensionManager endMatchingExtensions]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  [(SOExtensionManager *)self _doEndMatchingExtensions];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)loadExtensions
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOExtensionManager loadExtensions]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  _doLoadExtensions = [(SOExtensionManager *)selfCopy2 _doLoadExtensions];
  loadedExtensions = selfCopy2->_loadedExtensions;
  selfCopy2->_loadedExtensions = _doLoadExtensions;

  objc_sync_exit(selfCopy2);
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_doLoadExtensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  extensionFinder = self->_extensionFinder;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SOExtensionManager__doLoadExtensions__block_invoke;
  v5[3] = &unk_1E813E938;
  v5[4] = &v6;
  [(SOExtensionFinder *)extensionFinder findExtensionsWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__SOExtensionManager__doLoadExtensions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }
}

- (void)unloadExtensions
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOExtensionManager unloadExtensions]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = selfCopy2->_loadedExtensions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v8++) unload];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  loadedExtensions = selfCopy2->_loadedExtensions;
  selfCopy2->_loadedExtensions = 0;

  objc_sync_exit(selfCopy2);
  v10 = *MEMORY[0x1E69E9840];
}

- (id)loadedExtensionWithBundleIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOExtensionManager loadedExtensionWithBundleIdentifier:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = selfCopy->_loadedExtensions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([objc_opt_class() _isMatchedExtension:v11 forBundleIdentifier:{identifierCopy, v15}])
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  objc_sync_exit(selfCopy);
  v12 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "[SOExtensionManager loadedExtensionWithBundleIdentifier:]";
    v21 = 2114;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = v8;
    v25 = 2112;
    v26 = selfCopy;
    _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@ => %{public}@ on %@", buf, 0x2Au);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)loadedInternalExtension
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOExtensionManager loadedInternalExtension]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  internalExtensionBundleIdentifier = [objc_opt_class() internalExtensionBundleIdentifier];
  v5 = [(SOExtensionManager *)self loadedExtensionWithBundleIdentifier:internalExtensionBundleIdentifier];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isLoadedExtensionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOExtensionManager isLoadedExtensionWithBundleIdentifier:];
  }

  v6 = [(SOExtensionManager *)self loadedExtensionWithBundleIdentifier:identifierCopy];
  v7 = v6 != 0;

  return v7;
}

- (void)_doBeginMatchingExtensions
{
  extensionFinder = self->_extensionFinder;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke;
  v3[3] = &unk_1E813E960;
  v3[4] = self;
  [(SOExtensionFinder *)extensionFinder beginMatchingExtensionsWithCompletion:v3];
}

void __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_2;
  block[3] = &unk_1E813E340;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_2(id *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 endMatchingExtensions];
    v4 = dispatch_time(0, 1000000000);
    v5 = *(a1[5] + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3;
    block[3] = &unk_1E813E390;
    v6 = a1[4];
    v7 = a1[5];
    v26 = v6;
    v27 = v7;
    dispatch_after(v4, v5, block);
    v8 = v26;
  }

  else
  {
    v9 = [v2 loadedExtensions];
    v10 = [v9 mutableCopy];

    v11 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = a1[6];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if ([v10 containsObject:{v17, v21}])
          {
            [v10 removeObject:v17];
          }

          else
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v14);
    }

    v18 = a1[5];
    v8 = v10;
    objc_sync_enter(v18);
    objc_storeStrong(a1[5] + 3, a1[6]);
    objc_sync_exit(v18);

    v19 = a1[5];
    [objc_opt_class() _sendNotificationsLoadedExtensions:a1[6] new:v11 removed:v8];
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3(uint64_t a1)
{
  v2 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3_cold_1(a1, v2);
  }

  return [*(a1 + 40) beginMatchingExtensions];
}

- (void)_doEndMatchingExtensions
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SOExtensionManager _doEndMatchingExtensions]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  [(SOExtensionFinder *)self->_extensionFinder endMatchingExtensions];
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_sendNotificationsLoadedExtensions:(id)extensions new:(id)new removed:(id)removed
{
  v34 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  newCopy = new;
  removedCopy = removed;
  v11 = SO_LOG_SOExtensionManager();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v25 = "+[SOExtensionManager _sendNotificationsLoadedExtensions:new:removed:]";
    v26 = 2114;
    v27 = extensionsCopy;
    v28 = 2114;
    v29 = newCopy;
    v30 = 2114;
    v31 = removedCopy;
    v32 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s extensions: %{public}@, new: %{public}@, removed: %{public}@ on %@", buf, 0x34u);
  }

  if (extensionsCopy)
  {
    v12 = extensionsCopy;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v18 = @"extensions";
  v19 = @"new";
  if (newCopy)
  {
    v13 = newCopy;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  v21 = v12;
  v22 = v13;
  v20 = @"removed";
  if (removedCopy)
  {
    v14 = removedCopy;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v23 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v18 count:3];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.AppSSO.SOExtensionManager.ExtensionsChanged" object:self userInfo:v15];

  v17 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_isMatchedExtension:(id)extension forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  extensionBundleIdentifier = [extension extensionBundleIdentifier];
  v7 = [extensionBundleIdentifier isEqualToString:identifierCopy];

  return v7;
}

+ (BOOL)isInternalExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  internalExtensionsBundleIdentifiers = [self internalExtensionsBundleIdentifiers];
  v6 = [internalExtensionsBundleIdentifiers containsObject:identifierCopy];

  return v6;
}

+ (BOOL)isAppleConnectExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.ist.ds.appleconnect2.AppSSOExtension"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ist.AppleConnect.App-SSO"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"com.apple.ist.AppleConnect.mini.App-SSO"];
  }

  return v4;
}

void __56__SOExtensionManager_loadExtensionWithBundleIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1C1317000, log, OS_LOG_TYPE_ERROR, "extension not found: %{public}@, error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)loadedExtensionWithBundleIdentifier:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C1317000, v0, v1, "%s bundleIdentifier=%{public}@ on %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)isLoadedExtensionWithBundleIdentifier:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C1317000, v0, v1, "%s bundleIdentifier=%{public}@ on %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void __48__SOExtensionManager__doBeginMatchingExtensions__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "restarting matching extensions because of error: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end