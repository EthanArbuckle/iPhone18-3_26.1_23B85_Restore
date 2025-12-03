@interface CNContactImageUpdater
+ (id)descriptorForRequiredKeys;
+ (id)log;
+ (void)updateMutableContact:(id)contact withImageAndWallpaperPropertiesFromContact:(id)fromContact;
+ (void)updateMutableContact:(id)contact withImagePropertiesFromContact:(id)fromContact;
+ (void)updateMutableContact:(id)contact withWallpaperPropertiesFromContact:(id)fromContact;
- (BOOL)updateImageWithImageContact:(id)contact setAsMe:(BOOL)me;
- (CNContactImageUpdater)initWithContact:(id)contact contactStore:(id)store;
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
  v4 = [self description];
  v5 = [CNContact descriptorWithKeyDescriptors:v3 description:v4];

  return v5;
}

- (CNContactImageUpdater)initWithContact:(id)contact contactStore:(id)store
{
  contactCopy = contact;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CNContactImageUpdater;
  v9 = [(CNContactImageUpdater *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_contact, contact);
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

- (BOOL)updateImageWithImageContact:(id)contact setAsMe:(BOOL)me
{
  meCopy = me;
  v31 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v7 = objc_alloc_init(CNSaveRequest);
  v8 = objc_opt_class();
  contact = [(CNContactImageUpdater *)self contact];
  [v8 updateMutableContact:contact withImageAndWallpaperPropertiesFromContact:contactCopy];

  contact2 = [(CNContactImageUpdater *)self contact];
  hasBeenPersisted = [contact2 hasBeenPersisted];

  contact3 = [(CNContactImageUpdater *)self contact];
  if (hasBeenPersisted)
  {
    [(CNSaveRequest *)v7 updateContact:contact3];
  }

  else
  {
    [(CNSaveRequest *)v7 addContact:contact3 toContainerWithIdentifier:0];
  }

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    contact4 = [(CNContactImageUpdater *)self contact];
    identifier = [contact4 identifier];
    *buf = 138543362;
    v30 = identifier;
    _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_DEFAULT, "Saving contact with identifier %{public}@", buf, 0xCu);
  }

  contactStore = [(CNContactImageUpdater *)self contactStore];
  v28 = 0;
  v17 = [contactStore executeSaveRequest:v7 error:&v28];
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

  if ((meCopy & ~hasBeenPersisted) != 0)
  {
    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v19, OS_LOG_TYPE_DEFAULT, "Saving contact", buf, 2u);
    }

    contactStore2 = [(CNContactImageUpdater *)self contactStore];
    contact5 = [(CNContactImageUpdater *)self contact];
    v27 = 0;
    v22 = [contactStore2 setMeContact:contact5 error:&v27];
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

+ (void)updateMutableContact:(id)contact withImageAndWallpaperPropertiesFromContact:(id)fromContact
{
  fromContactCopy = fromContact;
  contactCopy = contact;
  [objc_opt_class() updateMutableContact:contactCopy withImagePropertiesFromContact:fromContactCopy];
  [objc_opt_class() updateMutableContact:contactCopy withWallpaperPropertiesFromContact:fromContactCopy];
}

+ (void)updateMutableContact:(id)contact withImagePropertiesFromContact:(id)fromContact
{
  fromContactCopy = fromContact;
  contactCopy = contact;
  imageData = [fromContactCopy imageData];
  [contactCopy setImageData:imageData];

  [fromContactCopy cropRect];
  [contactCopy setCropRect:?];
  thumbnailImageData = [fromContactCopy thumbnailImageData];
  [contactCopy setThumbnailImageData:thumbnailImageData];

  fullscreenImageData = [fromContactCopy fullscreenImageData];
  [contactCopy setFullscreenImageData:fullscreenImageData];

  preferredLikenessSource = [fromContactCopy preferredLikenessSource];
  [contactCopy setPreferredLikenessSource:preferredLikenessSource];

  imageType = [fromContactCopy imageType];
  [contactCopy setImageType:imageType];

  imageHash = [fromContactCopy imageHash];
  [contactCopy setImageHash:imageHash];

  memojiMetadata = [fromContactCopy memojiMetadata];
  [contactCopy setMemojiMetadata:memojiMetadata];

  avatarRecipeData = [fromContactCopy avatarRecipeData];
  [contactCopy setAvatarRecipeData:avatarRecipeData];

  imageBackgroundColorsData = [fromContactCopy imageBackgroundColorsData];

  [contactCopy setImageBackgroundColorsData:imageBackgroundColorsData];
}

+ (void)updateMutableContact:(id)contact withWallpaperPropertiesFromContact:(id)fromContact
{
  contactCopy = contact;
  fromContactCopy = fromContact;
  if ([fromContactCopy isKeyAvailable:@"wallpaper"])
  {
    wallpaper = [fromContactCopy wallpaper];
    [contactCopy setWallpaper:wallpaper];
  }

  if ([fromContactCopy isKeyAvailable:@"watchWallpaperImageData"])
  {
    watchWallpaperImageData = [fromContactCopy watchWallpaperImageData];
    [contactCopy setWatchWallpaperImageData:watchWallpaperImageData];
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