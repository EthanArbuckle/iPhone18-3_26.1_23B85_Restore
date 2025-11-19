@interface CNNicknameProvider
+ (CNNicknameProvider)defaultProvider;
+ (id)log;
+ (id)makeDefaultProvider;
- (BOOL)iCloudSignedInToUseNicknames;
- (BOOL)isNicknameSharingEnabled;
- (CNNicknameProvider)init;
- (CNNicknameProvider)initWithIMNicknameProvider:(id)a3;
- (id)avatarImageFileURLForContact:(id)a3;
- (id)avatarImageFileURLForNickname:(id)a3;
- (id)avatarRecipeDataForNickname:(id)a3;
- (id)contactFromNickname:(id)a3;
- (id)nicknameAsContactForContact:(id)a3;
- (id)nicknameForContact:(id)a3;
- (id)sharedAvatarImageDataForContact:(id)a3;
- (id)sharedWallpaperForNickname:(id)a3;
- (id)sharedWatchWallpaperImageDataForNickname:(id)a3;
- (id)wallpaperFileURLForContact:(id)a3;
- (id)wallpaperFileURLForNickname:(id)a3;
- (id)watchWallpaperImageDataFileURLForContact:(id)a3;
- (id)watchWallpaperImageDataFileURLForNickname:(id)a3;
- (unint64_t)sharingAudience;
- (void)fetchPersonalNicknameAsContactWithCompletion:(id)a3;
- (void)nicknameStoreDidChange:(id)a3;
- (void)setPersonalNicknameWithContact:(id)a3;
- (void)setPersonalNicknameWithSharingResult:(id)a3;
- (void)setSharingAudience:(unint64_t)a3;
- (void)setSharingEnabled:(BOOL)a3;
@end

@implementation CNNicknameProvider

+ (CNNicknameProvider)defaultProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CNNicknameProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v4 = [[a1 alloc] initWithIMNicknameProvider:v3];
  v5 = [v4 imNicknameProvider];
  [v5 setNicknameListener:v4];

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

- (CNNicknameProvider)initWithIMNicknameProvider:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CNNicknameProvider;
  v6 = [(CNNicknameProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imNicknameProvider, a3);
    v8 = [getIMMeCardSharingStateControllerClass() sharedInstance];
    sharingStateController = v7->_sharingStateController;
    v7->_sharingStateController = v8;

    v10 = v7;
  }

  return v7;
}

- (void)fetchPersonalNicknameAsContactWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CNNicknameProvider *)self imNicknameProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CNNicknameProvider_fetchPersonalNicknameAsContactWithCompletion___block_invoke;
  v7[3] = &unk_1E7416ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 nicknameForCurrentUserWithCompletionHandler:v7];
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

- (void)setPersonalNicknameWithSharingResult:(id)a3
{
  v4 = a3;
  v5 = [(CNNicknameProvider *)self isNicknameSharingEnabled];
  v6 = [objc_opt_class() log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, "Updating nickname with sharing result", v8, 2u);
    }

    v6 = [getIMNicknameControllerClass() sharedInstance];
    [v6 updatePersonalNicknameIfNecessaryWithMeCardSharingResult:v4];
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, "Not updating nickname with sharing result, sharing is disabled", buf, 2u);
  }
}

- (void)setSharingAudience:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Updating Sharing Audience: %lu", &v6, 0xCu);
  }

  v5 = [getIMMeCardSharingStateControllerClass() sharedInstance];
  [v5 setSharingAudience:a3];
}

- (void)setSharingEnabled:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Updating Sharing Enabled: %d", v6, 8u);
  }

  v5 = [getIMMeCardSharingStateControllerClass() sharedInstance];
  [v5 setSharingEnabled:v3];
}

- (void)setPersonalNicknameWithContact:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Setting personal nickname with contact: %@", &v7, 0xCu);
  }

  v6 = [(CNNicknameProvider *)self imNicknameProvider];
  [v6 setPersonalNicknameWithContact:v4];
}

- (id)nicknameForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNNicknameProvider *)self imNicknameProvider];
  v6 = [v5 currentNicknameForContact:v4];

  return v6;
}

- (id)nicknameAsContactForContact:(id)a3
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:a3];
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

- (id)contactFromNickname:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNMutableContact);
  v6 = [v4 firstName];
  [(CNMutableContact *)v5 setGivenName:v6];

  v7 = [v4 lastName];
  [(CNMutableContact *)v5 setFamilyName:v7];

  v8 = [(CNNicknameProvider *)self avatarImageFileURLForNickname:v4];
  if (v8)
  {
    v9 = [MEMORY[0x1E69966E8] currentEnvironment];
    v10 = [v9 fileManager];
    v11 = [v10 dataWithContentsOfURL:v8];
    v12 = [v11 value];

    [(CNMutableContact *)v5 setImageData:v12];
    [(CNMutableContact *)v5 setThumbnailImageData:v12];
  }

  v13 = [(CNNicknameProvider *)self avatarRecipeDataForNickname:v4];
  [(CNMutableContact *)v5 setAvatarRecipeData:v13];

  v14 = [(CNNicknameProvider *)self sharedWallpaperForNickname:v4];
  [(CNMutableContact *)v5 setWallpaper:v14];

  v15 = [(CNNicknameProvider *)self sharedWatchWallpaperImageDataForNickname:v4];
  [(CNMutableContact *)v5 setWatchWallpaperImageData:v15];

  v16 = [(CNMutableContact *)v5 freeze];

  return v16;
}

- (id)avatarImageFileURLForNickname:(id)a3
{
  v3 = [a3 avatar];
  v4 = [v3 imageFilePath];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)avatarRecipeDataForNickname:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:6];

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v3 avatarRecipe];
    v8 = [v7 recipeData];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)wallpaperFileURLForNickname:(id)a3
{
  v3 = [a3 wallpaper];
  v4 = [v3 filePath];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)watchWallpaperImageDataFileURLForNickname:(id)a3
{
  v3 = [a3 wallpaper];
  v4 = [v3 lowResFilePath];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)avatarImageFileURLForContact:(id)a3
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:a3];
  v5 = [(CNNicknameProvider *)self avatarImageFileURLForNickname:v4];

  return v5;
}

- (id)wallpaperFileURLForContact:(id)a3
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:a3];
  v5 = [(CNNicknameProvider *)self wallpaperFileURLForNickname:v4];

  return v5;
}

- (id)watchWallpaperImageDataFileURLForContact:(id)a3
{
  v4 = [(CNNicknameProvider *)self nicknameForContact:a3];
  v5 = [(CNNicknameProvider *)self watchWallpaperImageDataFileURLForNickname:v4];

  return v5;
}

- (id)sharedAvatarImageDataForContact:(id)a3
{
  v3 = [(CNNicknameProvider *)self nicknameForContact:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69966E8] currentEnvironment];
    v5 = [v4 nicknameProvider];
    v6 = [v5 avatarImageFileURLForNickname:v3];

    if (v6)
    {
      v7 = [MEMORY[0x1E69966E8] currentEnvironment];
      v8 = [v7 fileManager];
      v9 = [v8 dataWithContentsOfURL:v6];
      v10 = [v9 value];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)sharedWatchWallpaperImageDataForNickname:(id)a3
{
  v3 = MEMORY[0x1E69966E8];
  v4 = a3;
  v5 = [v3 currentEnvironment];
  v6 = [v5 nicknameProvider];
  v7 = [v6 watchWallpaperImageDataFileURLForNickname:v4];

  if (v7)
  {
    v8 = [MEMORY[0x1E69966E8] currentEnvironment];
    v9 = [v8 fileManager];
    v10 = [v9 dataWithContentsOfURL:v7];
    v11 = [v10 value];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sharedWallpaperForNickname:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 nicknameProvider];
  v6 = [v5 wallpaperFileURLForNickname:v3];

  if (v6)
  {
    v7 = [MEMORY[0x1E69966E8] currentEnvironment];
    v8 = [v7 fileManager];
    v9 = [v8 dataWithContentsOfURL:v6];
    v10 = [v9 value];

    v11 = [CNWallpaper alloc];
    v12 = [v3 wallpaper];
    v13 = -[CNWallpaper initWithPosterArchiveData:contentIsSensitive:](v11, "initWithPosterArchiveData:contentIsSensitive:", v10, [v12 contentIsSensitive]);

    v14 = [v3 wallpaper];
    v15 = [v14 metadata];

    if (v15)
    {
      v16 = [v3 wallpaper];
      v17 = [v16 metadata];
      v18 = [(CNWallpaper *)v13 wallpaperIncludingIMWallpaperMetadata:v17];

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
  v2 = [(CNNicknameProvider *)self sharingStateController];
  v3 = [v2 sharingEnabled];

  return v3;
}

- (unint64_t)sharingAudience
{
  v2 = [(CNNicknameProvider *)self sharingStateController];
  v3 = [v2 sharingAudience];

  return v3;
}

- (BOOL)iCloudSignedInToUseNicknames
{
  v2 = [getIMNicknameControllerClass() sharedInstance];
  v3 = [v2 iCloudSignedInToUseNicknames];

  return v3;
}

- (void)nicknameStoreDidChange:(id)a3
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"CNNicknameStoreChangedNotification" object:0];
}

@end