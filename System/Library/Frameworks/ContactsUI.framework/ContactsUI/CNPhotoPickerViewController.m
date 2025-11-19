@interface CNPhotoPickerViewController
+ (id)log;
+ (id)photoPickerForGameCenterWithContact:(id)a3;
- (CNPhotoPickerViewController)initWithContact:(id)a3 style:(id)a4 configuration:(id)a5;
- (CNPhotoPickerViewControllerDelegate)delegate;
- (id)contactViewCache;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
- (void)setUpViews;
- (void)updateHeaderViewAvatar;
- (void)updatePendingEditContact;
- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)a3;
@end

@implementation CNPhotoPickerViewController

- (CNPhotoPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)a3
{
  v4 = objc_alloc(MEMORY[0x1E695CD88]);
  v5 = [(CNPhotoPickerViewController *)self pendingEditContact];
  v6 = [v5 imageData];
  v7 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v7 cropRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x1E695DF00] now];
  v19 = [v4 initWithImageData:v6 cropRect:v16 lastUsedDate:{v9, v11, v13, v15}];

  v17 = [(CNPhotoPickerViewController *)self delegate];
  v18 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v17 photoPicker:self didUpdatePhotoForContact:v18 withContactImage:v19];
}

- (id)contactViewCache
{
  v2 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v3 = [v2 contactViewCache];

  return v3;
}

- (void)done:(id)a3
{
  [(CNPhotoPickerViewController *)self updatePendingEditContact];
  v6 = [(CNVisualIdentityPickerViewController *)self contactImageForCurrentActiveItem];
  v4 = [(CNPhotoPickerViewController *)self delegate];
  v5 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v4 photoPicker:self didUpdatePhotoForContact:v5 withContactImage:v6];
}

- (void)cancel:(id)a3
{
  v4 = [(CNPhotoPickerViewController *)self delegate];
  [v4 photoPickerDidCancel:self];
}

- (void)updatePendingEditContact
{
  v3 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v4 = [v3 imageData];
  v5 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v5 setImageData:v4];

  v6 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v7 = [v6 imageData];
  v8 = [v7 _cn_md5Hash];
  v9 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v9 setImageHash:v8];

  v10 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [v10 cropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v19 setCropRect:{v12, v14, v16, v18}];

  v20 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v21 = [v20 thumbnailImageData];
  v22 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v22 setThumbnailImageData:v21];

  v23 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v24 = [v23 fullscreenImageData];
  v25 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v25 setFullscreenImageData:v24];

  v26 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v27 = [v26 imageType];
  v28 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v28 setImageType:v27];

  v29 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v30 = [v29 memojiMetadata];
  v31 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v31 setMemojiMetadata:v30];

  v34 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v32 = [v34 wallpaper];
  v33 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [v33 setWallpaper:v32];
}

- (void)updateHeaderViewAvatar
{
  [(CNPhotoPickerViewController *)self updatePendingEditContact];
  v3.receiver = self;
  v3.super_class = CNPhotoPickerViewController;
  [(CNVisualIdentityPickerViewController *)&v3 updateHeaderViewAvatar];
}

- (void)setUpViews
{
  v50[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:6])
  {
    v5 = [MEMORY[0x1E69966E8] currentEnvironment];
    v6 = [v5 featureFlags];
    v7 = [v6 isFeatureEnabled:7];

    if (v7)
    {
      v8 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
      v9 = [v8 contacts];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [CNUIVisualIdentityEditorViewController alloc];
        v12 = [(CNPhotoPickerViewController *)self pendingEditContact];
        v13 = [(CNPhotoPickerViewController *)self configuration];
        v14 = [(CNUIVisualIdentityEditorViewController *)v11 initWithContact:v12 configuration:v13];
        [(CNPhotoPickerViewController *)self setVisualIdentityEditor:v14];

        v15 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        [v15 setDelegate:self];

        v16 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        [(CNPhotoPickerViewController *)self addChildViewController:v16];

        v17 = [(CNPhotoPickerViewController *)self view];
        v18 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        v19 = [v18 view];
        [v17 addSubview:v19];

        v20 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        v21 = [v20 view];
        [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

        v37 = MEMORY[0x1E696ACD8];
        v48 = [(CNPhotoPickerViewController *)self view];
        v46 = [v48 leadingAnchor];
        v47 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        v45 = [v47 view];
        v44 = [v45 leadingAnchor];
        v43 = [v46 constraintEqualToAnchor:v44];
        v50[0] = v43;
        v42 = [(CNPhotoPickerViewController *)self view];
        v40 = [v42 trailingAnchor];
        v41 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        v39 = [v41 view];
        v38 = [v39 trailingAnchor];
        v36 = [v40 constraintEqualToAnchor:v38];
        v50[1] = v36;
        v35 = [(CNPhotoPickerViewController *)self view];
        v33 = [v35 topAnchor];
        v34 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        v32 = [v34 view];
        v22 = [v32 topAnchor];
        v23 = [v33 constraintEqualToAnchor:v22];
        v50[2] = v23;
        v24 = [(CNPhotoPickerViewController *)self view];
        v25 = [v24 bottomAnchor];
        v26 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        v27 = [v26 view];
        v28 = [v27 bottomAnchor];
        v29 = [v25 constraintEqualToAnchor:v28];
        v50[3] = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
        [v37 activateConstraints:v30];

        v31 = [(CNPhotoPickerViewController *)self navigationController];
        [v31 setNavigationBarHidden:1];

        return;
      }
    }
  }

  else
  {
  }

  v49.receiver = self;
  v49.super_class = CNPhotoPickerViewController;
  [(CNVisualIdentityPickerViewController *)&v49 setUpViews];
}

- (CNPhotoPickerViewController)initWithContact:(id)a3 style:(id)a4 configuration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(CNContactViewCache);
  v12 = [[CNVisualIdentity alloc] initWithContact:v10];
  v13 = [[CNPhotoPickerDataSource alloc] initWithVisualIdentity:v12 contactViewCache:v11 photoPickerConfiguration:v8];
  v17.receiver = self;
  v17.super_class = CNPhotoPickerViewController;
  v14 = -[CNVisualIdentityPickerViewController initWithPhotosDataSource:style:allowRotation:](&v17, sel_initWithPhotosDataSource_style_allowRotation_, v13, v9, [v8 allowRotation]);

  v15 = [v10 mutableCopy];
  [(CNPhotoPickerViewController *)v14 setPendingEditContact:v15];

  [(CNPhotoPickerViewController *)v14 setConfiguration:v8];
  return v14;
}

+ (id)photoPickerForGameCenterWithContact:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 mutableCopy];

  v7 = +[CNContactStyle currentStyle];
  v8 = +[CNPhotoPickerConfiguration gameCenterConfiguration];
  v9 = [v5 initWithContact:v6 style:v7 configuration:v8];

  return v9;
}

+ (id)log
{
  if (log_cn_once_token_6_51938 != -1)
  {
    dispatch_once(&log_cn_once_token_6_51938, &__block_literal_global_51939);
  }

  v3 = log_cn_once_object_6_51940;

  return v3;
}

uint64_t __34__CNPhotoPickerViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNPhotoPicker");
  v1 = log_cn_once_object_6_51940;
  log_cn_once_object_6_51940 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end