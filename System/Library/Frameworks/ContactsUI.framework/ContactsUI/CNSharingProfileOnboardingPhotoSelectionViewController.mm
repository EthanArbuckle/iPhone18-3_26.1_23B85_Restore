@interface CNSharingProfileOnboardingPhotoSelectionViewController
+ (id)descriptorForRequiredKeys;
- (CNSharingProfileOnboardingPhotoSelectionViewController)initWithContact:(id)contact avatarRecord:(id)record avatarItemProviderConfiguration:(id)configuration;
- (void)didTapBackButton:(id)button;
- (void)didTapDoneButton:(id)button;
- (void)didTapSetupLaterButton:(id)button;
- (void)loadView;
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
- (void)sharingPhotoPickerDidSelectAddItem:(id)item;
- (void)updateForContentSizeCategoryChange;
@end

@implementation CNSharingProfileOnboardingPhotoSelectionViewController

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  contactCopy = contact;
  imageCopy = image;
  objc_storeStrong(&self->_photoProviderContact, contact);
  if ([imageCopy source] == 1)
  {
    variant = [imageCopy variant];

    if (variant)
    {
      v10 = objc_alloc(MEMORY[0x1E69BDC50]);
      variant2 = [imageCopy variant];
      v12 = [v10 initWithColorName:variant2];
      [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController setMonogramColor:v12];
    }
  }

  memojiMetadata = [contactCopy memojiMetadata];
  [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController setMemojiMetadata:memojiMetadata];

  [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController updateWithContact:self->_photoProviderContact fromFullPhotoPicker:1];
  presentedViewController = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)photoPickerDidCancel:(id)cancel
{
  presentedViewController = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)sharingPhotoPickerDidSelectAddItem:(id)item
{
  v4 = [CNPhotoPickerViewController alloc];
  photoProviderContact = self->_photoProviderContact;
  v6 = +[CNContactStyle defaultStyle];
  v7 = +[CNPhotoPickerConfiguration contactsConfiguration];
  v8 = [(CNPhotoPickerViewController *)v4 initWithContact:photoProviderContact style:v6 configuration:v7];

  [(CNPhotoPickerViewController *)v8 setDelegate:self];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_PHOTOPICKER_ASSIGN_TITLE_OVERRIDE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityPickerViewController *)v8 setAssignActionTitleOverride:v10];

  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPhotoPickerViewController *)v8 setPreferredContentSize:?];
  photoPickerViewController = self->_photoPickerViewController;
  self->_photoPickerViewController = v8;
  v12 = v8;

  view = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self view];
  window = [view window];
  [window endEditing:1];

  v19 = [CNPhotoPickerViewController navigationControllerForPicker:v12];
  [v19 setModalPresentationStyle:2];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v16 = v15;
  v18 = v17;

  [v19 setPreferredContentSize:{v16, v18}];
  [(CNSharingProfileOnboardingPhotoSelectionViewController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)didTapDoneButton:(id)button
{
  selectedItem = [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController selectedItem];
  v4 = objc_alloc_init(CNSharingProfileOnboardingPhotoSelectionResult);
  v5 = [selectedItem originalImageWithSize:{500.0, 500.0}];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setOriginalImage:v5];

  v6 = [selectedItem compositeImageWithSize:{500.0, 500.0}];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setCompositedImage:v6];

  avatarItem = [selectedItem avatarItem];
  -[CNSharingProfileOnboardingPhotoSelectionResult setAvatarType:](v4, "setAvatarType:", [avatarItem type]);

  avatarItem2 = [selectedItem avatarItem];
  variantIdentifier = [avatarItem2 variantIdentifier];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setVariantName:variantIdentifier];

  avatarItem3 = [selectedItem avatarItem];
  -[CNSharingProfileOnboardingPhotoSelectionResult setWasSelectedInFullPhotoPicker:](v4, "setWasSelectedInFullPhotoPicker:", [avatarItem3 wasSetFromFullPhotoPicker]);

  avatarItem4 = [selectedItem avatarItem];
  memojiMetadata = [avatarItem4 memojiMetadata];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setMemojiMetadata:memojiMetadata];

  delegate = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
  [delegate photoSelectionViewControllerDidFinishWithResult:v4];
}

- (void)didTapBackButton:(id)button
{
  delegate = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
  [delegate photoSelectionViewControllerDidFinishWithResult:0];
}

- (void)didTapSetupLaterButton:(id)button
{
  delegate = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
    [delegate2 photoSelectionViewControllerDidTapSetupLater:self];
  }
}

- (void)updateForContentSizeCategoryChange
{
  view = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self view];
  [view setNeedsLayout];
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = CNSharingProfileOnboardingPhotoSelectionViewController;
  [(OBBaseWelcomeController *)&v10 loadView];
  v3 = objc_alloc_init(CNOnboardingBoldButtonProvider);
  boldButton = [(CNOnboardingBoldButtonProvider *)v3 boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = boldButton;

  v6 = self->_confirmButton;
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"SHARING_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v6 setTitle:v8 forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_didTapDoneButton_ forControlEvents:64];
  buttonTray = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self buttonTray];
  [buttonTray addButton:self->_confirmButton];
}

- (CNSharingProfileOnboardingPhotoSelectionViewController)initWithContact:(id)contact avatarRecord:(id)record avatarItemProviderConfiguration:(id)configuration
{
  contactCopy = contact;
  recordCopy = record;
  configurationCopy = configuration;
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"SHARING_CHOOSE_YOUR_PHOTO_TO_SHARE" value:&stru_1F0CE7398 table:@"Localized"];
  v24.receiver = self;
  v24.super_class = CNSharingProfileOnboardingPhotoSelectionViewController;
  v14 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)&v24 initWithTitle:v13 detailText:0 icon:0];

  if (v14)
  {
    objc_storeStrong(&v14->_contact, contact);
    v15 = [contactCopy mutableCopy];
    photoProviderContact = v14->_photoProviderContact;
    v14->_photoProviderContact = v15;

    objc_storeStrong(&v14->_avatarRecord, record);
    objc_storeStrong(&v14->_avatarItemProviderConfiguration, configuration);
    v17 = objc_alloc_init(CNSharingProfileLogger);
    logger = v14->_logger;
    v14->_logger = v17;

    v19 = [[CNSharingProfilePhotoPickerViewController alloc] initWithContact:v14->_photoProviderContact avatarRecord:v14->_avatarRecord avatarItemProviderConfiguration:v14->_avatarItemProviderConfiguration logger:v14->_logger];
    sharingPhotoPickerViewController = v14->_sharingPhotoPickerViewController;
    v14->_sharingPhotoPickerViewController = v19;

    view = [(CNSharingProfilePhotoPickerViewController *)v14->_sharingPhotoPickerViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    [(CNSharingProfilePhotoPickerViewController *)v14->_sharingPhotoPickerViewController setDelegate:v14];
    [(CNSharingProfilePhotoPickerViewController *)v14->_sharingPhotoPickerViewController willMoveToParentViewController:v14];
    [(CNSharingProfileOnboardingPhotoSelectionViewController *)v14 addChildViewController:v14->_sharingPhotoPickerViewController];
    v22 = v14;
  }

  return v14;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_47088 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_47088, &__block_literal_global_47089);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_47090;

  return v3;
}

void __83__CNSharingProfileOnboardingPhotoSelectionViewController_descriptorForRequiredKeys__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v0 = +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v1 = *MEMORY[0x1E695C278];
  v8[0] = v0;
  v8[1] = v1;
  v2 = *MEMORY[0x1E695C238];
  v8[2] = *MEMORY[0x1E695C400];
  v8[3] = v2;
  v8[4] = *MEMORY[0x1E695C270];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];

  v4 = MEMORY[0x1E695CD58];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSharingProfileOnboardingPhotoSelectionViewController descriptorForRequiredKeys]_block_invoke"];
  v6 = [v4 descriptorWithKeyDescriptors:v3 description:v5];

  v7 = descriptorForRequiredKeys_cn_once_object_1_47090;
  descriptorForRequiredKeys_cn_once_object_1_47090 = v6;
}

@end