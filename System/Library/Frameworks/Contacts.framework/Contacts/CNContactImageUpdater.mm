@interface CNContactImageUpdater
+ (id)descriptorForRequiredKeys;
+ (id)log;
+ (void)updateMutableContact:(id)a3 withImageAndWallpaperPropertiesFromContact:(id)a4;
+ (void)updateMutableContact:(id)a3 withImagePropertiesFromContact:(id)a4;
+ (void)updateMutableContact:(id)a3 withWallpaperPropertiesFromContact:(id)a4;
- (BOOL)updateImageWithImageContact:(id)a3 setAsMe:(BOOL)a4;
- (CNContactImageUpdater)initWithContact:(id)a3 contactStore:(id)a4;
@end

@implementation CNContactImageUpdater

+ (id)descriptorForRequiredKeys
{
  v7[11] = *MEMORY[0x1E69E9840];
  v7[0] = @"imageDataAvailable";
  v7[1] = @"thumbnailImageData";
  v7[2] = @"cropRect";
  v7[3] = @"fullscreenImageData";
  v7[4] = @"preferredLikenessSource";
  v7[5] = @"imageType";
  v7[6] = @"imageHash";
  v7[7] = @"memojiMetadata";
  v7[8] = @"imageBackgroundColorsData";
  v7[9] = @"wallpaper";
  v7[10] = @"watchWallpaperImageData";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:11];
  v4 = [a1 description];
  v5 = [CNContact descriptorWithKeyDescriptors:v3 description:v4];

  return v5;
}

- (CNContactImageUpdater)initWithContact:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactImageUpdater;
  v9 = [(CNContactImageUpdater *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a4);
    objc_storeStrong(&v10->_contact, a3);
    v11 = v10;
  }

  return v10;
}

+ (id)log
{
  if (log_cn_once_token_0_23 != -1)
  {
    +[CNContactImageUpdater log];
  }

  v3 = log_cn_once_object_0_23;

  return v3;
}

uint64_t __28__CNContactImageUpdater_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "contactimageupdater");
  v1 = log_cn_once_object_0_23;
  log_cn_once_object_0_23 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)updateImageWithImageContact:(id)a3 setAsMe:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(CNSaveRequest);
  v8 = objc_opt_class();
  v9 = [(CNContactImageUpdater *)self contact];
  [v8 updateMutableContact:v9 withImageAndWallpaperPropertiesFromContact:v6];

  v10 = [(CNContactImageUpdater *)self contact];
  v11 = [v10 hasBeenPersisted];

  v12 = [(CNContactImageUpdater *)self contact];
  if (v11)
  {
    [(CNSaveRequest *)v7 updateContact:v12];
  }

  else
  {
    [(CNSaveRequest *)v7 addContact:v12 toContainerWithIdentifier:0];
  }

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CNContactImageUpdater *)self contact];
    v15 = [v14 identifier];
    *buf = 138543362;
    v30 = v15;
    _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_DEFAULT, "Saving contact with identifier %{public}@", buf, 0xCu);
  }

  v16 = [(CNContactImageUpdater *)self contactStore];
  v28 = 0;
  v17 = [v16 executeSaveRequest:v7 error:&v28];
  v18 = v28;

  if ((v17 & 1) == 0)
  {
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CNContactImageUpdater updateImageWithImageContact:v18 setAsMe:?];
    }

    goto LABEL_20;
  }

  if ((v4 & ~v11) != 0)
  {
    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Saving contact", buf, 2u);
    }

    v20 = [(CNContactImageUpdater *)self contactStore];
    v21 = [(CNContactImageUpdater *)self contact];
    v27 = 0;
    v22 = [v20 setMeContact:v21 error:&v27];
    v23 = v27;

    if (v22)
    {

      goto LABEL_12;
    }

    v25 = [objc_opt_class() log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CNContactImageUpdater updateImageWithImageContact:v23 setAsMe:?];
    }

LABEL_20:
    v24 = 0;
    goto LABEL_21;
  }

LABEL_12:
  v23 = [objc_opt_class() log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v23, OS_LOG_TYPE_DEFAULT, "Saving contact succeeded", buf, 2u);
  }

  v24 = 1;
LABEL_21:

  return v24;
}

+ (void)updateMutableContact:(id)a3 withImageAndWallpaperPropertiesFromContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() updateMutableContact:v6 withImagePropertiesFromContact:v5];
  [objc_opt_class() updateMutableContact:v6 withWallpaperPropertiesFromContact:v5];
}

+ (void)updateMutableContact:(id)a3 withImagePropertiesFromContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 imageData];
  [v6 setImageData:v7];

  [v5 cropRect];
  [v6 setCropRect:?];
  v8 = [v5 thumbnailImageData];
  [v6 setThumbnailImageData:v8];

  v9 = [v5 fullscreenImageData];
  [v6 setFullscreenImageData:v9];

  v10 = [v5 preferredLikenessSource];
  [v6 setPreferredLikenessSource:v10];

  v11 = [v5 imageType];
  [v6 setImageType:v11];

  v12 = [v5 imageHash];
  [v6 setImageHash:v12];

  v13 = [v5 memojiMetadata];
  [v6 setMemojiMetadata:v13];

  v14 = [v5 avatarRecipeData];
  [v6 setAvatarRecipeData:v14];

  v15 = [v5 imageBackgroundColorsData];

  [v6 setImageBackgroundColorsData:v15];
}

+ (void)updateMutableContact:(id)a3 withWallpaperPropertiesFromContact:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v5 isKeyAvailable:@"wallpaper"])
  {
    v6 = [v5 wallpaper];
    [v8 setWallpaper:v6];
  }

  if ([v5 isKeyAvailable:@"watchWallpaperImageData"])
  {
    v7 = [v5 watchWallpaperImageData];
    [v8 setWatchWallpaperImageData:v7];
  }
}

- (void)updateImageWithImageContact:(void *)a1 setAsMe:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Error saving contact: %@", v4, v5, v6, v7, 2u);
}

- (void)updateImageWithImageContact:(void *)a1 setAsMe:.cold.2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Error setting me contact: %@", v4, v5, v6, v7, 2u);
}

@end