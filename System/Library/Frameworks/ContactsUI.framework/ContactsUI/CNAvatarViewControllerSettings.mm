@interface CNAvatarViewControllerSettings
+ (id)defaultSettingsWithBackgroundStyle:(unint64_t)a3;
+ (id)defaultSettingsWithCacheSize:(unint64_t)a3 threeDTouchEnabled:(BOOL)a4;
+ (id)defaultSettingsWithPersonaId:(id)a3 backgroundStyle:(unint64_t)a4;
+ (id)settingsWithContactStore:(id)a3;
+ (id)settingsWithContactStore:(id)a3 cacheSize:(unint64_t)a4 threeDTouchEnabled:(BOOL)a5;
+ (id)settingsWithContactStore:(id)a3 threeDTouchEnabled:(BOOL)a4;
+ (id)settingsWithLikenessResolver:(id)a3 likenessRenderer:(id)a4 contactStore:(id)a5 threeDTouchEnabled:(BOOL)a6 schedulerProvider:(id)a7 backgroundStyle:(unint64_t)a8;
- (CNAvatarViewControllerSettings)initWithLikenessResolver:(id)a3 likenessRenderer:(id)a4 contactStore:(id)a5 threeDTouchEnabled:(BOOL)a6 schedulerProvider:(id)a7 backgroundStyle:(unint64_t)a8 personaId:(id)a9;
@end

@implementation CNAvatarViewControllerSettings

- (CNAvatarViewControllerSettings)initWithLikenessResolver:(id)a3 likenessRenderer:(id)a4 contactStore:(id)a5 threeDTouchEnabled:(BOOL)a6 schedulerProvider:(id)a7 backgroundStyle:(unint64_t)a8 personaId:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v24.receiver = self;
  v24.super_class = CNAvatarViewControllerSettings;
  v19 = [(CNAvatarViewControllerSettings *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_likenessResolver, a3);
    objc_storeStrong(&v20->_likenessRenderer, a4);
    objc_storeStrong(&v20->_contactStore, a5);
    v20->_threeDTouchEnabled = a6;
    objc_storeStrong(&v20->_schedulerProvider, a7);
    v20->_backgroundStyle = a8;
    v20->_personaId = v18;
  }

  return v20;
}

+ (id)defaultSettingsWithPersonaId:(id)a3 backgroundStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = v7;
  if (v6)
  {
    [v7 setPersonaId:v6];
  }

  v9 = [CNAvatarViewControllerSettings alloc];
  v10 = [v8 cachingLikenessResolver];
  v11 = [v8 cachingLikenessRenderer];
  v12 = [v8 contactStore];
  v13 = [a1 threeDTouchEnabledDefaultValue];
  v14 = [v8 defaultSchedulerProvider];
  v15 = [(CNAvatarViewControllerSettings *)v9 initWithLikenessResolver:v10 likenessRenderer:v11 contactStore:v12 threeDTouchEnabled:v13 schedulerProvider:v14 backgroundStyle:a4 personaId:v6];

  return v15;
}

+ (id)settingsWithLikenessResolver:(id)a3 likenessRenderer:(id)a4 contactStore:(id)a5 threeDTouchEnabled:(BOOL)a6 schedulerProvider:(id)a7 backgroundStyle:(unint64_t)a8
{
  v9 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[CNAvatarViewControllerSettings alloc] initWithLikenessResolver:v16 likenessRenderer:v15 contactStore:v14 threeDTouchEnabled:v9 schedulerProvider:v13 backgroundStyle:a8 personaId:0];

  return v17;
}

+ (id)settingsWithContactStore:(id)a3 cacheSize:(unint64_t)a4 threeDTouchEnabled:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = objc_alloc(MEMORY[0x1E6996BB0]);
  v10 = [v8 defaultSchedulerProvider];
  v11 = [v9 initWithContactStore:v7 schedulerProvider:v10];

  [v11 setProhibitedSources:8];
  v12 = v11;
  if (a4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = MEMORY[0x1E6996B90];
    v15 = [v8 defaultSchedulerProvider];
    v16 = [v17 rendererWithLikenessResolver:v12 schedulerProvider:v15];
    v13 = v12;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v12 capacity:a4];

    v14 = MEMORY[0x1E6996B90];
    v15 = [v8 defaultSchedulerProvider];
    v16 = [v14 cachingRendererWithLikenessResolver:v13 capacity:a4 schedulerProvider:v15];
  }

  v18 = [v8 defaultSchedulerProvider];
  v19 = [CNAvatarViewControllerSettings settingsWithLikenessResolver:v13 likenessRenderer:v16 contactStore:v7 threeDTouchEnabled:v5 schedulerProvider:v18 backgroundStyle:0];

  return v19;
}

+ (id)settingsWithContactStore:(id)a3 threeDTouchEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[CNUIContactsEnvironment currentEnvironment];
  v7 = objc_alloc(MEMORY[0x1E6996BB0]);
  v8 = [v6 defaultSchedulerProvider];
  v9 = [v7 initWithContactStore:v5 schedulerProvider:v8];

  [v9 setProhibitedSources:8];
  v10 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v9];
  v11 = MEMORY[0x1E6996B90];
  v12 = [v6 defaultSchedulerProvider];
  v13 = [v11 cachingRendererWithLikenessResolver:v10 schedulerProvider:v12];

  v14 = [v6 defaultSchedulerProvider];
  v15 = [CNAvatarViewControllerSettings settingsWithLikenessResolver:v10 likenessRenderer:v13 contactStore:v5 threeDTouchEnabled:v4 schedulerProvider:v14 backgroundStyle:0];

  return v15;
}

+ (id)settingsWithContactStore:(id)a3
{
  v4 = a3;
  v5 = [a1 settingsWithContactStore:v4 threeDTouchEnabled:{objc_msgSend(a1, "threeDTouchEnabledDefaultValue")}];

  return v5;
}

+ (id)defaultSettingsWithCacheSize:(unint64_t)a3 threeDTouchEnabled:(BOOL)a4
{
  v4 = a4;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = [v7 contactStore];
  v9 = [a1 settingsWithContactStore:v8 cacheSize:a3 threeDTouchEnabled:v4];

  return v9;
}

+ (id)defaultSettingsWithBackgroundStyle:(unint64_t)a3
{
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [v5 cachingLikenessResolver];
  v7 = [v5 cachingLikenessRenderer];
  v8 = [v5 contactStore];
  v9 = [a1 threeDTouchEnabledDefaultValue];
  v10 = [v5 defaultSchedulerProvider];
  v11 = [a1 settingsWithLikenessResolver:v6 likenessRenderer:v7 contactStore:v8 threeDTouchEnabled:v9 schedulerProvider:v10 backgroundStyle:a3];

  return v11;
}

@end