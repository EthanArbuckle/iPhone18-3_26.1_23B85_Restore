@interface CNPhotoPickerViewController
+ (id)log;
+ (id)photoPickerForGameCenterWithContact:(id)contact;
- (CNPhotoPickerViewController)initWithContact:(id)contact style:(id)style configuration:(id)configuration;
- (CNPhotoPickerViewControllerDelegate)delegate;
- (id)contactViewCache;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)setUpViews;
- (void)updateHeaderViewAvatar;
- (void)updatePendingEditContact;
- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)editing;
@end

@implementation CNPhotoPickerViewController

- (CNPhotoPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)editing
{
  v4 = objc_alloc(MEMORY[0x1E695CD88]);
  pendingEditContact = [(CNPhotoPickerViewController *)self pendingEditContact];
  imageData = [pendingEditContact imageData];
  pendingEditContact2 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact2 cropRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x1E695DF00] now];
  v19 = [v4 initWithImageData:imageData cropRect:v16 lastUsedDate:{v9, v11, v13, v15}];

  delegate = [(CNPhotoPickerViewController *)self delegate];
  pendingEditContact3 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [delegate photoPicker:self didUpdatePhotoForContact:pendingEditContact3 withContactImage:v19];
}

- (id)contactViewCache
{
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  contactViewCache = [dataSource contactViewCache];

  return contactViewCache;
}

- (void)done:(id)done
{
  [(CNPhotoPickerViewController *)self updatePendingEditContact];
  contactImageForCurrentActiveItem = [(CNVisualIdentityPickerViewController *)self contactImageForCurrentActiveItem];
  delegate = [(CNPhotoPickerViewController *)self delegate];
  pendingEditContact = [(CNPhotoPickerViewController *)self pendingEditContact];
  [delegate photoPicker:self didUpdatePhotoForContact:pendingEditContact withContactImage:contactImageForCurrentActiveItem];
}

- (void)cancel:(id)cancel
{
  delegate = [(CNPhotoPickerViewController *)self delegate];
  [delegate photoPickerDidCancel:self];
}

- (void)updatePendingEditContact
{
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  imageData = [pendingVisualIdentity imageData];
  pendingEditContact = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact setImageData:imageData];

  pendingVisualIdentity2 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  imageData2 = [pendingVisualIdentity2 imageData];
  _cn_md5Hash = [imageData2 _cn_md5Hash];
  pendingEditContact2 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact2 setImageHash:_cn_md5Hash];

  pendingVisualIdentity3 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [pendingVisualIdentity3 cropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  pendingEditContact3 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact3 setCropRect:{v12, v14, v16, v18}];

  pendingVisualIdentity4 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  thumbnailImageData = [pendingVisualIdentity4 thumbnailImageData];
  pendingEditContact4 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact4 setThumbnailImageData:thumbnailImageData];

  pendingVisualIdentity5 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  fullscreenImageData = [pendingVisualIdentity5 fullscreenImageData];
  pendingEditContact5 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact5 setFullscreenImageData:fullscreenImageData];

  pendingVisualIdentity6 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  imageType = [pendingVisualIdentity6 imageType];
  pendingEditContact6 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact6 setImageType:imageType];

  pendingVisualIdentity7 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  memojiMetadata = [pendingVisualIdentity7 memojiMetadata];
  pendingEditContact7 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact7 setMemojiMetadata:memojiMetadata];

  pendingVisualIdentity8 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  wallpaper = [pendingVisualIdentity8 wallpaper];
  pendingEditContact8 = [(CNPhotoPickerViewController *)self pendingEditContact];
  [pendingEditContact8 setWallpaper:wallpaper];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:6])
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    v7 = [featureFlags2 isFeatureEnabled:7];

    if (v7)
    {
      visualIdentity = [(CNVisualIdentityPickerViewController *)self visualIdentity];
      contacts = [visualIdentity contacts];
      v10 = [contacts count];

      if (v10)
      {
        v11 = [CNUIVisualIdentityEditorViewController alloc];
        pendingEditContact = [(CNPhotoPickerViewController *)self pendingEditContact];
        configuration = [(CNPhotoPickerViewController *)self configuration];
        v14 = [(CNUIVisualIdentityEditorViewController *)v11 initWithContact:pendingEditContact configuration:configuration];
        [(CNPhotoPickerViewController *)self setVisualIdentityEditor:v14];

        visualIdentityEditor = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        [visualIdentityEditor setDelegate:self];

        visualIdentityEditor2 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        [(CNPhotoPickerViewController *)self addChildViewController:visualIdentityEditor2];

        view = [(CNPhotoPickerViewController *)self view];
        visualIdentityEditor3 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        view2 = [visualIdentityEditor3 view];
        [view addSubview:view2];

        visualIdentityEditor4 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        view3 = [visualIdentityEditor4 view];
        [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

        v37 = MEMORY[0x1E696ACD8];
        view4 = [(CNPhotoPickerViewController *)self view];
        leadingAnchor = [view4 leadingAnchor];
        visualIdentityEditor5 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        view5 = [visualIdentityEditor5 view];
        leadingAnchor2 = [view5 leadingAnchor];
        v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v50[0] = v43;
        view6 = [(CNPhotoPickerViewController *)self view];
        trailingAnchor = [view6 trailingAnchor];
        visualIdentityEditor6 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        view7 = [visualIdentityEditor6 view];
        trailingAnchor2 = [view7 trailingAnchor];
        v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v50[1] = v36;
        view8 = [(CNPhotoPickerViewController *)self view];
        topAnchor = [view8 topAnchor];
        visualIdentityEditor7 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        view9 = [visualIdentityEditor7 view];
        topAnchor2 = [view9 topAnchor];
        v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v50[2] = v23;
        view10 = [(CNPhotoPickerViewController *)self view];
        bottomAnchor = [view10 bottomAnchor];
        visualIdentityEditor8 = [(CNPhotoPickerViewController *)self visualIdentityEditor];
        view11 = [visualIdentityEditor8 view];
        bottomAnchor2 = [view11 bottomAnchor];
        v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v50[3] = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
        [v37 activateConstraints:v30];

        navigationController = [(CNPhotoPickerViewController *)self navigationController];
        [navigationController setNavigationBarHidden:1];

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

- (CNPhotoPickerViewController)initWithContact:(id)contact style:(id)style configuration:(id)configuration
{
  configurationCopy = configuration;
  styleCopy = style;
  contactCopy = contact;
  v11 = objc_alloc_init(CNContactViewCache);
  v12 = [[CNVisualIdentity alloc] initWithContact:contactCopy];
  v13 = [[CNPhotoPickerDataSource alloc] initWithVisualIdentity:v12 contactViewCache:v11 photoPickerConfiguration:configurationCopy];
  v17.receiver = self;
  v17.super_class = CNPhotoPickerViewController;
  v14 = -[CNVisualIdentityPickerViewController initWithPhotosDataSource:style:allowRotation:](&v17, sel_initWithPhotosDataSource_style_allowRotation_, v13, styleCopy, [configurationCopy allowRotation]);

  v15 = [contactCopy mutableCopy];
  [(CNPhotoPickerViewController *)v14 setPendingEditContact:v15];

  [(CNPhotoPickerViewController *)v14 setConfiguration:configurationCopy];
  return v14;
}

+ (id)photoPickerForGameCenterWithContact:(id)contact
{
  contactCopy = contact;
  v5 = [self alloc];
  v6 = [contactCopy mutableCopy];

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