@interface INIntentSummaryCache
+ (id)sharedCache;
- (BOOL)getSubtitle:(id *)a3 forIntent:(id)a4 languageCode:(id)a5;
- (BOOL)getTitle:(id *)a3 forIntent:(id)a4 languageCode:(id)a5;
- (INIntentSummaryCache)init;
- (id)bundleCacheForBundleId:(id)a3;
- (id)cachedSummaryForIntent:(id)a3 languageCode:(id)a4 creatingIfNeeded:(BOOL)a5;
- (void)applicationsDidInstall:(id)a3;
- (void)dealloc;
- (void)invalidateCache;
- (void)invalidateCacheForBundleId:(id)a3;
- (void)setBundleCache:(id)a3 forBundleId:(id)a4;
- (void)setSubtitle:(id)a3 forIntent:(id)a4 languageCode:(id)a5;
- (void)setTitle:(id)a3 forIntent:(id)a4 languageCode:(id)a5;
- (void)startAutomaticInvalidation;
- (void)startObservingApplicationWorkspaceChanges;
- (void)startObservingSystemLanguageChanges;
- (void)stopAutomaticInvalidation;
- (void)stopObservingApplicationWorkspaceChanges;
- (void)stopObservingSystemLanguageChanges;
@end

@implementation INIntentSummaryCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, &__block_literal_global_54543);
  }

  v3 = sharedCache_cache;

  return v3;
}

- (void)applicationsDidInstall:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 appState];
        v11 = [v10 isPlaceholder];

        if ((v11 & 1) == 0)
        {
          v12 = [v9 bundleIdentifier];
          [(INIntentSummaryCache *)self invalidateCacheForBundleId:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidateCacheForBundleId:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(INIntentSummaryCache *)self setBundleCache:0 forBundleId:v4];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"bundleId";
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 postNotificationName:@"com.apple.IntentsCore.summarycache.invalidation" object:self userInfo:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)invalidateCache
{
  v3 = [(INIntentSummaryCache *)self resourceAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__INIntentSummaryCache_invalidateCache__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"com.apple.IntentsCore.summarycache.invalidation" object:self];
}

uint64_t __39__INIntentSummaryCache_invalidateCache__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)stopObservingSystemLanguageChanges
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 removeObserver:self];
}

- (void)startObservingSystemLanguageChanges
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__INIntentSummaryCache_startObservingSystemLanguageChanges__block_invoke;
  v6[3] = &unk_1E7281358;
  objc_copyWeak(&v7, &location);
  v3 = MEMORY[0x193AD7780](v6);
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  notify_register_dispatch("com.apple.language.changed", &self->_systemLanguageChangeNotificationToken, v4, v3);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __59__INIntentSummaryCache_startObservingSystemLanguageChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateCache];
}

- (void)stopObservingApplicationWorkspaceChanges
{
  if ([(INIntentSummaryCache *)self systemLanguageChangeNotificationToken])
  {
    v3 = [(INIntentSummaryCache *)self systemLanguageChangeNotificationToken];

    notify_cancel(v3);
  }
}

- (void)startObservingApplicationWorkspaceChanges
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 addObserver:self];
}

- (void)stopAutomaticInvalidation
{
  [(INIntentSummaryCache *)self stopObservingApplicationWorkspaceChanges];

  [(INIntentSummaryCache *)self stopObservingSystemLanguageChanges];
}

- (void)startAutomaticInvalidation
{
  [(INIntentSummaryCache *)self startObservingApplicationWorkspaceChanges];

  [(INIntentSummaryCache *)self startObservingSystemLanguageChanges];
}

- (void)setSubtitle:(id)a3 forIntent:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = [(INIntentSummaryCache *)self cachedSummaryForIntent:a4 languageCode:a5 creatingIfNeeded:1];
  v10 = [(INIntentSummaryCache *)self resourceAccessQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__INIntentSummaryCache_setSubtitle_forIntent_languageCode___block_invoke;
  v13[3] = &unk_1E7287190;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
}

- (void)setTitle:(id)a3 forIntent:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = [(INIntentSummaryCache *)self cachedSummaryForIntent:a4 languageCode:a5 creatingIfNeeded:1];
  v10 = [(INIntentSummaryCache *)self resourceAccessQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__INIntentSummaryCache_setTitle_forIntent_languageCode___block_invoke;
  v13[3] = &unk_1E7287190;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
}

- (BOOL)getSubtitle:(id *)a3 forIntent:(id)a4 languageCode:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(INIntentSummaryCache *)self cachedSummaryForIntent:v8 languageCode:v9 creatingIfNeeded:0];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = [(INIntentSummaryCache *)self resourceAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__INIntentSummaryCache_getSubtitle_forIntent_languageCode___block_invoke;
  block[3] = &unk_1E7281438;
  v15 = v10;
  v16 = &v18;
  v17 = a3;
  v12 = v10;
  dispatch_sync(v11, block);

  LOBYTE(v10) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v10;
}

uint64_t __59__INIntentSummaryCache_getSubtitle_forIntent_languageCode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) containedProperties];
  if ((result & 2) != 0)
  {
    v3 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (v3)
    {
      result = [*(a1 + 32) subtitle];
      **(a1 + 48) = result;
    }
  }

  return result;
}

- (BOOL)getTitle:(id *)a3 forIntent:(id)a4 languageCode:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(INIntentSummaryCache *)self cachedSummaryForIntent:v8 languageCode:v9 creatingIfNeeded:0];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = [(INIntentSummaryCache *)self resourceAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__INIntentSummaryCache_getTitle_forIntent_languageCode___block_invoke;
  block[3] = &unk_1E7281438;
  v15 = v10;
  v16 = &v18;
  v17 = a3;
  v12 = v10;
  dispatch_sync(v11, block);

  LOBYTE(v10) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v10;
}

uint64_t __56__INIntentSummaryCache_getTitle_forIntent_languageCode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) containedProperties];
  if (result)
  {
    v3 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (v3)
    {
      result = [*(a1 + 32) title];
      **(a1 + 48) = result;
    }
  }

  return result;
}

- (id)cachedSummaryForIntent:(id)a3 languageCode:(id)a4 creatingIfNeeded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (![(__CFString *)v9 length])
  {

    v9 = @"SystemLanguage";
  }

  v10 = [v8 launchId];
  v20 = 0;
  INExtractAppInfoFromSiriLaunchId(v10, &v20, 0);
  v11 = v20;

  if ([v11 length])
  {
    v12 = v9;
    v13 = [v8 identifier];
    v14 = [v13 stringByAppendingString:v12];

    v15 = [(INIntentSummaryCache *)self bundleCacheForBundleId:v11];
    v16 = [v15 objectForKey:v14];
    if (!v16 && v5)
    {
      if (!v15)
      {
        v15 = objc_opt_new();
        [(INIntentSummaryCache *)self setBundleCache:v15 forBundleId:v11];
      }

      v17 = [INIntentSummary alloc];
      v18 = [v8 identifier];
      v16 = [(INIntentSummary *)v17 initWithIntentIdentifier:v18 originatingBundleId:v11 languageCode:v12];

      [v15 setObject:v16 forKey:v14];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setBundleCache:(id)a3 forBundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [(INIntentSummaryCache *)self resourceAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__INIntentSummaryCache_setBundleCache_forBundleId___block_invoke;
    block[3] = &unk_1E7281A78;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_sync(v8, block);
  }
}

void __51__INIntentSummaryCache_setBundleCache_forBundleId___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) allBundlesCache];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (id)bundleCacheForBundleId:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__54537;
    v15 = __Block_byref_object_dispose__54538;
    v16 = 0;
    v5 = [(INIntentSummaryCache *)self resourceAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__INIntentSummaryCache_bundleCacheForBundleId___block_invoke;
    block[3] = &unk_1E7283018;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(v5, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __47__INIntentSummaryCache_bundleCacheForBundleId___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) allBundlesCache];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dealloc
{
  [(INIntentSummaryCache *)self stopAutomaticInvalidation];
  v3.receiver = self;
  v3.super_class = INIntentSummaryCache;
  [(INIntentSummaryCache *)&v3 dealloc];
}

- (INIntentSummaryCache)init
{
  v10.receiver = self;
  v10.super_class = INIntentSummaryCache;
  v2 = [(INIntentSummaryCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.IntentsCore.summarycache", v3);
    resourceAccessQueue = v2->_resourceAccessQueue;
    v2->_resourceAccessQueue = v4;

    v6 = objc_opt_new();
    allBundlesCache = v2->_allBundlesCache;
    v2->_allBundlesCache = v6;

    [(INIntentSummaryCache *)v2 startAutomaticInvalidation];
    v8 = v2;
  }

  return v2;
}

uint64_t __35__INIntentSummaryCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(INIntentSummaryCache);
  v1 = sharedCache_cache;
  sharedCache_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end