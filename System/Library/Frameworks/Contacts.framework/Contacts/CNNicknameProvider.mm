@interface CNNicknameProvider
+ (CNNicknameProvider)defaultProvider;
+ (id)log;
+ (id)makeDefaultProvider;
- (BOOL)iCloudSignedInToUseNicknames;
- (BOOL)isNicknameSharingEnabled;
- (CNNicknameProvider)init;
- (CNNicknameProvider)initWithIMNicknameProvider:(id)provider;
- (id)avatarImageFileURLForContact:(id)contact;
- (id)avatarImageFileURLForNickname:(id)nickname;
- (id)avatarRecipeDataForNickname:(id)nickname;
- (id)contactFromNickname:(id)nickname;
- (id)nicknameAsContactForContact:(id)contact;
- (id)nicknameForContact:(id)contact;
- (id)sharedAvatarImageDataForContact:(id)contact;
- (id)sharedWallpaperForNickname:(id)nickname;
- (id)sharedWatchWallpaperImageDataForNickname:(id)nickname;
- (id)wallpaperFileURLForContact:(id)contact;
- (id)wallpaperFileURLForNickname:(id)nickname;
- (id)watchWallpaperImageDataFileURLForContact:(id)contact;
- (id)watchWallpaperImageDataFileURLForNickname:(id)nickname;
- (unint64_t)sharingAudience;
- (void)fetchPersonalNicknameAsContactWithCompletion:(id)completion;
- (void)nicknameStoreDidChange:(id)change;
- (void)setPersonalNicknameWithContact:(id)contact;
- (void)setPersonalNicknameWithSharingResult:(id)result;
- (void)setSharingAudience:(unint64_t)audience;
- (void)setSharingEnabled:(BOOL)enabled;
@end

@implementation CNNicknameProvider

+ (CNNicknameProvider)defaultProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CNNicknameProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultProvider_cn_once_token_1 != -1)
  {
    dispatch_once(&defaultProvider_cn_once_token_1, block);
  }

  v2 = defaultProvider_cn_once_object_1;

  return v2;
}

uint64_t __37__CNNicknameProvider_defaultProvider__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) makeDefaultProvider];
  v2 = defaultProvider_cn_once_object_1;
  defaultProvider_cn_once_object_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)makeDefaultProvider
{
  v3 = objc_alloc_init(getIMNicknameProviderClass());
  v4 = [[self alloc] initWithIMNicknameProvider:v3];
  imNicknameProvider = [v4 imNicknameProvider];
  [imNicknameProvider setNicknameListener:v4];

  return v4;
}

+ (id)log
{
  if (log_cn_once_token_0_16 != -1)
  {
    +[CNNicknameProvider log];
  }

  v3 = log_cn_once_object_0_16;

  return v3;
}

uint64_t __25__CNNicknameProvider_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNNicknameProvider");
  v1 = log_cn_once_object_0_16;
  log_cn_once_object_0_16 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNNicknameProvider)init
{
  if (init_cn_once_token_2 != -1)
  {
    [CNNicknameProvider init];
  }

  v3 = init_cn_once_object_2;

  return [(CNNicknameProvider *)self initWithIMNicknameProvider:v3];
}

uint64_t __26__CNNicknameProvider_init__block_invoke()
{
  v0 = objc_alloc_init(getIMNicknameProviderClass());
  v1 = init_cn_once_object_2;
  init_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNNicknameProvider)initWithIMNicknameProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CNNicknameProvider;
  v6 = [(CNNicknameProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imNicknameProvider, provider);
    sharedInstance = [getIMMeCardSharingStateControllerClass() sharedInstance];
    sharingStateController = v7->_sharingStateController;
    v7->_sharingStateController = sharedInstance;

    v10 = v7;
  }

  return v7;
}

- (void)fetchPersonalNicknameAsContactWithCompletion:(id)completion
{
  completionCopy = completion;
  imNicknameProvider = [(CNNicknameProvider *)self imNicknameProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CNNicknameProvider_fetchPersonalNicknameAsContactWithCompletion___block_invoke;
  v7[3] = &unk_1E7416ED8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [imNicknameProvider nicknameForCurrentUserWithCompletionHandler:v7];
}

void __67__CNNicknameProvider_fetchPersonalNicknameAsContactWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) contactFromNickname:a2];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4);
  }
}

- (void)setPersonalNicknameWithSharingResult:(id)result
{
  resultCopy = result;
  isNicknameSharingEnabled = [(CNNicknameProvider *)self isNicknameSharingEnabled];
  sharedInstance = [objc_opt_class() log];
  v7 = os_log_type_enabled(sharedInstance, OS_LOG_TYPE_DEFAULT);
  if (isNicknameSharingEnabled)
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_1954A0000, sharedInstance, OS_LOG_TYPE_DEFAULT, "Updating nickname with sharing result", v8, 2u);
    }

    sharedInstance = [getIMNicknameControllerClass() sharedInstance];
    [sharedInstance updatePersonalNicknameIfNecessaryWithMeCardSharingResult:resultCopy];
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, sharedInstance, OS_LOG_TYPE_DEFAULT, "Not updating nickname with sharing result, sharing is disabled", buf, 2u);
  }
}

- (void)setSharingAudience:(unint64_t)audience
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    audienceCopy = audience;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Updating Sharing Audience: %lu", &v6, 0xCu);
  }

  sharedInstance = [getIMMeCardSharingStateControllerClass() sharedInstance];
  [sharedInstance setSharingAudience:audience];
}

- (void)setSharingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Updating Sharing Enabled: %d", v6, 8u);
  }

  sharedInstance = [getIMMeCardSharingStateControllerClass() sharedInstance];
  [sharedInstance setSharingEnabled:enabledCopy];
}

- (void)setPersonalNicknameWithContact:(id)contact
{
  v9 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = contactCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Setting personal nickname with contact: %@", &v7, 0xCu);
  }

  imNicknameProvider = [(CNNicknameProvider *)self imNicknameProvider];
  [imNicknameProvider setPersonalNicknameWithContact:contactCopy];
}

- (id)nicknameForContact:(id)contact
{
  contactCopy = contact;
  imNicknameProvider = [(CNNicknameProvider *)self imNicknameProvider];
  v6 = [imNicknameProvider currentNicknameForContact:contactCopy];

  return v6;
}

- (id)nicknameAsContactForContact:(id)contact
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:contact];
  if (v4)
  {
    v5 = [(CNNicknameProvider *)self contactFromNickname:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contactFromNickname:(id)nickname
{
  nicknameCopy = nickname;
  v5 = objc_alloc_init(CNMutableContact);
  firstName = [nicknameCopy firstName];
  [(CNMutableContact *)v5 setGivenName:firstName];

  lastName = [nicknameCopy lastName];
  [(CNMutableContact *)v5 setFamilyName:lastName];

  v8 = [(CNNicknameProvider *)self avatarImageFileURLForNickname:nicknameCopy];
  if (v8)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    fileManager = [currentEnvironment fileManager];
    v11 = [fileManager dataWithContentsOfURL:v8];
    value = [v11 value];

    [(CNMutableContact *)v5 setImageData:value];
    [(CNMutableContact *)v5 setThumbnailImageData:value];
  }

  v13 = [(CNNicknameProvider *)self avatarRecipeDataForNickname:nicknameCopy];
  [(CNMutableContact *)v5 setAvatarRecipeData:v13];

  v14 = [(CNNicknameProvider *)self sharedWallpaperForNickname:nicknameCopy];
  [(CNMutableContact *)v5 setWallpaper:v14];

  v15 = [(CNNicknameProvider *)self sharedWatchWallpaperImageDataForNickname:nicknameCopy];
  [(CNMutableContact *)v5 setWatchWallpaperImageData:v15];

  freeze = [(CNMutableContact *)v5 freeze];

  return freeze;
}

- (id)avatarImageFileURLForNickname:(id)nickname
{
  avatar = [nickname avatar];
  imageFilePath = [avatar imageFilePath];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:imageFilePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)avatarRecipeDataForNickname:(id)nickname
{
  nicknameCopy = nickname;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:6];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    avatarRecipe = [nicknameCopy avatarRecipe];
    recipeData = [avatarRecipe recipeData];
  }

  else
  {
    recipeData = 0;
  }

  return recipeData;
}

- (id)wallpaperFileURLForNickname:(id)nickname
{
  wallpaper = [nickname wallpaper];
  filePath = [wallpaper filePath];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)watchWallpaperImageDataFileURLForNickname:(id)nickname
{
  wallpaper = [nickname wallpaper];
  lowResFilePath = [wallpaper lowResFilePath];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:lowResFilePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)avatarImageFileURLForContact:(id)contact
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:contact];
  v5 = [(CNNicknameProvider *)self avatarImageFileURLForNickname:v4];

  return v5;
}

- (id)wallpaperFileURLForContact:(id)contact
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:contact];
  v5 = [(CNNicknameProvider *)self wallpaperFileURLForNickname:v4];

  return v5;
}

- (id)watchWallpaperImageDataFileURLForContact:(id)contact
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:contact];
  v5 = [(CNNicknameProvider *)self watchWallpaperImageDataFileURLForNickname:v4];

  return v5;
}

- (id)sharedAvatarImageDataForContact:(id)contact
{
  v3 = [(CNNicknameProvider *)self nicknameForContact:contact];
  if (v3)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider = [currentEnvironment nicknameProvider];
    v6 = [nicknameProvider avatarImageFileURLForNickname:v3];

    if (v6)
    {
      currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
      fileManager = [currentEnvironment2 fileManager];
      v9 = [fileManager dataWithContentsOfURL:v6];
      value = [v9 value];
    }

    else
    {
      value = 0;
    }
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)sharedWatchWallpaperImageDataForNickname:(id)nickname
{
  v3 = MEMORY[0x1E69966E8];
  nicknameCopy = nickname;
  currentEnvironment = [v3 currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  v7 = [nicknameProvider watchWallpaperImageDataFileURLForNickname:nicknameCopy];

  if (v7)
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    fileManager = [currentEnvironment2 fileManager];
    v10 = [fileManager dataWithContentsOfURL:v7];
    value = [v10 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)sharedWallpaperForNickname:(id)nickname
{
  nicknameCopy = nickname;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  v6 = [nicknameProvider wallpaperFileURLForNickname:nicknameCopy];

  if (v6)
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    fileManager = [currentEnvironment2 fileManager];
    v9 = [fileManager dataWithContentsOfURL:v6];
    value = [v9 value];

    v11 = [CNWallpaper alloc];
    wallpaper = [nicknameCopy wallpaper];
    v13 = -[CNWallpaper initWithPosterArchiveData:contentIsSensitive:](v11, "initWithPosterArchiveData:contentIsSensitive:", value, [wallpaper contentIsSensitive]);

    wallpaper2 = [nicknameCopy wallpaper];
    metadata = [wallpaper2 metadata];

    if (metadata)
    {
      wallpaper3 = [nicknameCopy wallpaper];
      metadata2 = [wallpaper3 metadata];
      v18 = [(CNWallpaper *)v13 wallpaperIncludingIMWallpaperMetadata:metadata2];

      v13 = v18;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isNicknameSharingEnabled
{
  sharingStateController = [(CNNicknameProvider *)self sharingStateController];
  sharingEnabled = [sharingStateController sharingEnabled];

  return sharingEnabled;
}

- (unint64_t)sharingAudience
{
  sharingStateController = [(CNNicknameProvider *)self sharingStateController];
  sharingAudience = [sharingStateController sharingAudience];

  return sharingAudience;
}

- (BOOL)iCloudSignedInToUseNicknames
{
  sharedInstance = [getIMNicknameControllerClass() sharedInstance];
  iCloudSignedInToUseNicknames = [sharedInstance iCloudSignedInToUseNicknames];

  return iCloudSignedInToUseNicknames;
}

- (void)nicknameStoreDidChange:(id)change
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CNNicknameStoreChangedNotification" object:0];
}

@end