@interface CNAvatarImageRendererSettings
+ (id)defaultSettingsWithCacheSize:(unint64_t)a3 personaId:(id)a4;
+ (id)defaultSettingsWithCacheSize:(unint64_t)a3 skipContactLookup:(BOOL)a4;
+ (id)offMainThreadSynchronousRenderingOnlySettingsWithCacheSize:(unint64_t)a3;
+ (id)settingsWithContactStore:(id)a3 cacheSize:(unint64_t)a4 schedulerProvider:(id)a5 concurrentCaches:(BOOL)a6 skipContactLookup:(BOOL)a7 personaId:(id)a8;
+ (id)settingsWithContactStore:(id)a3 cacheSize:(unint64_t)a4 skipContactLookup:(BOOL)a5;
- (CNAvatarImageRendererSettings)initWithLikenessResolver:(id)a3 likenessRenderer:(id)a4 schedulerProvider:(id)a5;
@end

@implementation CNAvatarImageRendererSettings

- (CNAvatarImageRendererSettings)initWithLikenessResolver:(id)a3 likenessRenderer:(id)a4 schedulerProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNAvatarImageRendererSettings;
  v12 = [(CNAvatarImageRendererSettings *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_likenessResolver, a3);
    objc_storeStrong(&v13->_likenessRenderer, a4);
    objc_storeStrong(&v13->_schedulerProvider, a5);
    v14 = v13;
  }

  return v13;
}

+ (id)settingsWithContactStore:(id)a3 cacheSize:(unint64_t)a4 schedulerProvider:(id)a5 concurrentCaches:(BOOL)a6 skipContactLookup:(BOOL)a7 personaId:(id)a8
{
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v14 = a5;
  v15 = a8;
  v16 = objc_alloc(MEMORY[0x1E6996BB0]);
  if (v15)
  {
    v17 = [v16 initWithPersonaId:v15 schedulerProvider:v14];
  }

  else
  {
    v17 = [v16 initWithContactStore:v13 schedulerProvider:v14];
  }

  v18 = v17;
  [v17 setProhibitedSources:8];
  if (v9)
  {
    [v18 setLookupOptions:1];
  }

  v19 = v18;
  v20 = [MEMORY[0x1E6996B90] rendererWithLikenessResolver:v19 schedulerProvider:v14];
  if (a4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v19;
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v19 capacity:a4 schedulerProvider:v14];

    if (v10)
    {
      [MEMORY[0x1E6996B90] concurrentCachingRendererWithLikenessResolver:v21 capacity:a4 schedulerProvider:v14];
    }

    else
    {
      [MEMORY[0x1E6996B90] cachingRendererWithLikenessResolver:v21 capacity:a4 schedulerProvider:v14];
    }
    v22 = ;

    v20 = v22;
  }

  v23 = [[CNAvatarImageRendererSettings alloc] initWithLikenessResolver:v21 likenessRenderer:v20 schedulerProvider:v14];

  return v23;
}

+ (id)settingsWithContactStore:(id)a3 cacheSize:(unint64_t)a4 skipContactLookup:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[CNUIContactsEnvironment currentEnvironment];
  v10 = [v9 defaultSchedulerProvider];
  v11 = [a1 settingsWithContactStore:v8 cacheSize:a4 schedulerProvider:v10 skipContactLookup:v5];

  return v11;
}

+ (id)offMainThreadSynchronousRenderingOnlySettingsWithCacheSize:(unint64_t)a3
{
  v22 = +[CNUIContactsEnvironment currentEnvironment];
  v19 = [v22 contactStore];
  v3 = [v22 defaultSchedulerProvider];
  v17 = [v3 backgroundScheduler];
  v4 = [v3 inlineScheduler];
  v5 = [v3 inlineScheduler];
  v6 = [v3 immediateScheduler];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__CNAvatarImageRendererSettings_offMainThreadSynchronousRenderingOnlySettingsWithCacheSize___block_invoke;
  aBlock[3] = &unk_1E74E2F90;
  v7 = v3;
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
  v14 = [objc_alloc(MEMORY[0x1E6996820]) initWithBackgroundScheduler:v17 mainThreadScheduler:v4 inlineScheduler:v5 immediateScheduler:v6 serialSchedulerProvider:v8 workloopSchedulerProvider:v10 synchronousSerialSchedulerProvider:v12 readerWriterSchedulerProvider:v13];
  v15 = [a1 settingsWithContactStore:v19 cacheSize:a3 schedulerProvider:v14 concurrentCaches:1 skipContactLookup:0 personaId:0];

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

+ (id)defaultSettingsWithCacheSize:(unint64_t)a3 skipContactLookup:(BOOL)a4
{
  v4 = a4;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = v7;
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 contactStore];
  }

  v10 = [a1 settingsWithContactStore:v9 cacheSize:a3 skipContactLookup:v4];

  return v10;
}

+ (id)defaultSettingsWithCacheSize:(unint64_t)a3 personaId:(id)a4
{
  v6 = a4;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = [v7 defaultSchedulerProvider];
  v9 = [a1 settingsWithContactStore:0 cacheSize:a3 schedulerProvider:v8 concurrentCaches:0 skipContactLookup:0 personaId:v6];

  return v9;
}

@end