@interface CNAvatarImageRendererSettings
+ (id)defaultSettingsWithCacheSize:(unint64_t)size personaId:(id)id;
+ (id)defaultSettingsWithCacheSize:(unint64_t)size skipContactLookup:(BOOL)lookup;
+ (id)offMainThreadSynchronousRenderingOnlySettingsWithCacheSize:(unint64_t)size;
+ (id)settingsWithContactStore:(id)store cacheSize:(unint64_t)size schedulerProvider:(id)provider concurrentCaches:(BOOL)caches skipContactLookup:(BOOL)lookup personaId:(id)id;
+ (id)settingsWithContactStore:(id)store cacheSize:(unint64_t)size skipContactLookup:(BOOL)lookup;
- (CNAvatarImageRendererSettings)initWithLikenessResolver:(id)resolver likenessRenderer:(id)renderer schedulerProvider:(id)provider;
@end

@implementation CNAvatarImageRendererSettings

- (CNAvatarImageRendererSettings)initWithLikenessResolver:(id)resolver likenessRenderer:(id)renderer schedulerProvider:(id)provider
{
  resolverCopy = resolver;
  rendererCopy = renderer;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = CNAvatarImageRendererSettings;
  v12 = [(CNAvatarImageRendererSettings *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_likenessResolver, resolver);
    objc_storeStrong(&v13->_likenessRenderer, renderer);
    objc_storeStrong(&v13->_schedulerProvider, provider);
    v14 = v13;
  }

  return v13;
}

+ (id)settingsWithContactStore:(id)store cacheSize:(unint64_t)size schedulerProvider:(id)provider concurrentCaches:(BOOL)caches skipContactLookup:(BOOL)lookup personaId:(id)id
{
  lookupCopy = lookup;
  cachesCopy = caches;
  storeCopy = store;
  providerCopy = provider;
  idCopy = id;
  v16 = objc_alloc(MEMORY[0x1E6996BB0]);
  if (idCopy)
  {
    v17 = [v16 initWithPersonaId:idCopy schedulerProvider:providerCopy];
  }

  else
  {
    v17 = [v16 initWithContactStore:storeCopy schedulerProvider:providerCopy];
  }

  v18 = v17;
  [v17 setProhibitedSources:8];
  if (lookupCopy)
  {
    [v18 setLookupOptions:1];
  }

  v19 = v18;
  v20 = [MEMORY[0x1E6996B90] rendererWithLikenessResolver:v19 schedulerProvider:providerCopy];
  if (size - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v19;
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v19 capacity:size schedulerProvider:providerCopy];

    if (cachesCopy)
    {
      [MEMORY[0x1E6996B90] concurrentCachingRendererWithLikenessResolver:v21 capacity:size schedulerProvider:providerCopy];
    }

    else
    {
      [MEMORY[0x1E6996B90] cachingRendererWithLikenessResolver:v21 capacity:size schedulerProvider:providerCopy];
    }
    v22 = ;

    v20 = v22;
  }

  v23 = [[CNAvatarImageRendererSettings alloc] initWithLikenessResolver:v21 likenessRenderer:v20 schedulerProvider:providerCopy];

  return v23;
}

+ (id)settingsWithContactStore:(id)store cacheSize:(unint64_t)size skipContactLookup:(BOOL)lookup
{
  lookupCopy = lookup;
  storeCopy = store;
  v9 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v9 defaultSchedulerProvider];
  v11 = [self settingsWithContactStore:storeCopy cacheSize:size schedulerProvider:defaultSchedulerProvider skipContactLookup:lookupCopy];

  return v11;
}

+ (id)offMainThreadSynchronousRenderingOnlySettingsWithCacheSize:(unint64_t)size
{
  v22 = +[CNUIContactsEnvironment currentEnvironment];
  contactStore = [v22 contactStore];
  defaultSchedulerProvider = [v22 defaultSchedulerProvider];
  backgroundScheduler = [defaultSchedulerProvider backgroundScheduler];
  inlineScheduler = [defaultSchedulerProvider inlineScheduler];
  inlineScheduler2 = [defaultSchedulerProvider inlineScheduler];
  immediateScheduler = [defaultSchedulerProvider immediateScheduler];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke;
  aBlock[3] = &unk_1E74E2F90;
  v7 = defaultSchedulerProvider;
  v30 = v7;
  v8 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke_2;
  v27[3] = &unk_1E74E2F90;
  v9 = v7;
  v28 = v9;
  v10 = _Block_copy(v27);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke_3;
  v25[3] = &unk_1E74E2F90;
  v11 = v9;
  v26 = v11;
  v12 = _Block_copy(v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke_4;
  v23[3] = &unk_1E74E2FB8;
  v24 = v11;
  v18 = v11;
  v13 = _Block_copy(v23);
  v14 = [objc_alloc(MEMORY[0x1E6996820]) initWithBackgroundScheduler:backgroundScheduler mainThreadScheduler:inlineScheduler inlineScheduler:inlineScheduler2 immediateScheduler:immediateScheduler serialSchedulerProvider:v8 workloopSchedulerProvider:v10 synchronousSerialSchedulerProvider:v12 readerWriterSchedulerProvider:v13];
  v15 = [self settingsWithContactStore:contactStore cacheSize:size schedulerProvider:v14 concurrentCaches:1 skipContactLookup:0 personaId:0];

  return v15;
}

id __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newSerialSchedulerWithName:a2];

  return v2;
}

id __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newWorkloopSchedulerWithName:a2];

  return v2;
}

id __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newSynchronousSerialSchedulerWithName:a2];

  return v2;
}

id __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newReaderWriterSchedulerWithName:a2];

  return v2;
}

+ (id)defaultSettingsWithCacheSize:(unint64_t)size skipContactLookup:(BOOL)lookup
{
  lookupCopy = lookup;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = v7;
  if (lookupCopy)
  {
    contactStore = 0;
  }

  else
  {
    contactStore = [v7 contactStore];
  }

  v10 = [self settingsWithContactStore:contactStore cacheSize:size skipContactLookup:lookupCopy];

  return v10;
}

+ (id)defaultSettingsWithCacheSize:(unint64_t)size personaId:(id)id
{
  idCopy = id;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v7 defaultSchedulerProvider];
  v9 = [self settingsWithContactStore:0 cacheSize:size schedulerProvider:defaultSchedulerProvider concurrentCaches:0 skipContactLookup:0 personaId:idCopy];

  return v9;
}

@end