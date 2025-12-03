@interface CNAvatarViewControllerSettings
+ (id)defaultSettingsWithBackgroundStyle:(unint64_t)style;
+ (id)defaultSettingsWithCacheSize:(unint64_t)size threeDTouchEnabled:(BOOL)enabled;
+ (id)defaultSettingsWithPersonaId:(id)id backgroundStyle:(unint64_t)style;
+ (id)settingsWithContactStore:(id)store;
+ (id)settingsWithContactStore:(id)store cacheSize:(unint64_t)size threeDTouchEnabled:(BOOL)enabled;
+ (id)settingsWithContactStore:(id)store threeDTouchEnabled:(BOOL)enabled;
+ (id)settingsWithLikenessResolver:(id)resolver likenessRenderer:(id)renderer contactStore:(id)store threeDTouchEnabled:(BOOL)enabled schedulerProvider:(id)provider backgroundStyle:(unint64_t)style;
- (CNAvatarViewControllerSettings)initWithLikenessResolver:(id)resolver likenessRenderer:(id)renderer contactStore:(id)store threeDTouchEnabled:(BOOL)enabled schedulerProvider:(id)provider backgroundStyle:(unint64_t)style personaId:(id)id;
@end

@implementation CNAvatarViewControllerSettings

- (CNAvatarViewControllerSettings)initWithLikenessResolver:(id)resolver likenessRenderer:(id)renderer contactStore:(id)store threeDTouchEnabled:(BOOL)enabled schedulerProvider:(id)provider backgroundStyle:(unint64_t)style personaId:(id)id
{
  resolverCopy = resolver;
  rendererCopy = renderer;
  storeCopy = store;
  providerCopy = provider;
  idCopy = id;
  v24.receiver = self;
  v24.super_class = CNAvatarViewControllerSettings;
  v19 = [(CNAvatarViewControllerSettings *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_likenessResolver, resolver);
    objc_storeStrong(&v20->_likenessRenderer, renderer);
    objc_storeStrong(&v20->_contactStore, store);
    v20->_threeDTouchEnabled = enabled;
    objc_storeStrong(&v20->_schedulerProvider, provider);
    v20->_backgroundStyle = style;
    v20->_personaId = idCopy;
  }

  return v20;
}

+ (id)defaultSettingsWithPersonaId:(id)id backgroundStyle:(unint64_t)style
{
  idCopy = id;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = v7;
  if (idCopy)
  {
    [v7 setPersonaId:idCopy];
  }

  v9 = [CNAvatarViewControllerSettings alloc];
  cachingLikenessResolver = [v8 cachingLikenessResolver];
  cachingLikenessRenderer = [v8 cachingLikenessRenderer];
  contactStore = [v8 contactStore];
  threeDTouchEnabledDefaultValue = [self threeDTouchEnabledDefaultValue];
  defaultSchedulerProvider = [v8 defaultSchedulerProvider];
  v15 = [(CNAvatarViewControllerSettings *)v9 initWithLikenessResolver:cachingLikenessResolver likenessRenderer:cachingLikenessRenderer contactStore:contactStore threeDTouchEnabled:threeDTouchEnabledDefaultValue schedulerProvider:defaultSchedulerProvider backgroundStyle:style personaId:idCopy];

  return v15;
}

+ (id)settingsWithLikenessResolver:(id)resolver likenessRenderer:(id)renderer contactStore:(id)store threeDTouchEnabled:(BOOL)enabled schedulerProvider:(id)provider backgroundStyle:(unint64_t)style
{
  enabledCopy = enabled;
  providerCopy = provider;
  storeCopy = store;
  rendererCopy = renderer;
  resolverCopy = resolver;
  v17 = [[CNAvatarViewControllerSettings alloc] initWithLikenessResolver:resolverCopy likenessRenderer:rendererCopy contactStore:storeCopy threeDTouchEnabled:enabledCopy schedulerProvider:providerCopy backgroundStyle:style personaId:0];

  return v17;
}

+ (id)settingsWithContactStore:(id)store cacheSize:(unint64_t)size threeDTouchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  storeCopy = store;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = objc_alloc(MEMORY[0x1E6996BB0]);
  defaultSchedulerProvider = [v8 defaultSchedulerProvider];
  v11 = [v9 initWithContactStore:storeCopy schedulerProvider:defaultSchedulerProvider];

  [v11 setProhibitedSources:8];
  v12 = v11;
  if (size - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = MEMORY[0x1E6996B90];
    defaultSchedulerProvider2 = [v8 defaultSchedulerProvider];
    v16 = [v17 rendererWithLikenessResolver:v12 schedulerProvider:defaultSchedulerProvider2];
    v13 = v12;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v12 capacity:size];

    v14 = MEMORY[0x1E6996B90];
    defaultSchedulerProvider2 = [v8 defaultSchedulerProvider];
    v16 = [v14 cachingRendererWithLikenessResolver:v13 capacity:size schedulerProvider:defaultSchedulerProvider2];
  }

  defaultSchedulerProvider3 = [v8 defaultSchedulerProvider];
  v19 = [CNAvatarViewControllerSettings settingsWithLikenessResolver:v13 likenessRenderer:v16 contactStore:storeCopy threeDTouchEnabled:enabledCopy schedulerProvider:defaultSchedulerProvider3 backgroundStyle:0];

  return v19;
}

+ (id)settingsWithContactStore:(id)store threeDTouchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  storeCopy = store;
  v6 = +[CNUIContactsEnvironment currentEnvironment];
  v7 = objc_alloc(MEMORY[0x1E6996BB0]);
  defaultSchedulerProvider = [v6 defaultSchedulerProvider];
  v9 = [v7 initWithContactStore:storeCopy schedulerProvider:defaultSchedulerProvider];

  [v9 setProhibitedSources:8];
  v10 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v9];
  v11 = MEMORY[0x1E6996B90];
  defaultSchedulerProvider2 = [v6 defaultSchedulerProvider];
  v13 = [v11 cachingRendererWithLikenessResolver:v10 schedulerProvider:defaultSchedulerProvider2];

  defaultSchedulerProvider3 = [v6 defaultSchedulerProvider];
  v15 = [CNAvatarViewControllerSettings settingsWithLikenessResolver:v10 likenessRenderer:v13 contactStore:storeCopy threeDTouchEnabled:enabledCopy schedulerProvider:defaultSchedulerProvider3 backgroundStyle:0];

  return v15;
}

+ (id)settingsWithContactStore:(id)store
{
  storeCopy = store;
  v5 = [self settingsWithContactStore:storeCopy threeDTouchEnabled:{objc_msgSend(self, "threeDTouchEnabledDefaultValue")}];

  return v5;
}

+ (id)defaultSettingsWithCacheSize:(unint64_t)size threeDTouchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  contactStore = [v7 contactStore];
  v9 = [self settingsWithContactStore:contactStore cacheSize:size threeDTouchEnabled:enabledCopy];

  return v9;
}

+ (id)defaultSettingsWithBackgroundStyle:(unint64_t)style
{
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  cachingLikenessResolver = [v5 cachingLikenessResolver];
  cachingLikenessRenderer = [v5 cachingLikenessRenderer];
  contactStore = [v5 contactStore];
  threeDTouchEnabledDefaultValue = [self threeDTouchEnabledDefaultValue];
  defaultSchedulerProvider = [v5 defaultSchedulerProvider];
  v11 = [self settingsWithLikenessResolver:cachingLikenessResolver likenessRenderer:cachingLikenessRenderer contactStore:contactStore threeDTouchEnabled:threeDTouchEnabledDefaultValue schedulerProvider:defaultSchedulerProvider backgroundStyle:style];

  return v11;
}

@end