@interface CNSharingProfileOnboardingPhotoSelectionViewController
+ (id)descriptorForRequiredKeys;
- (CNSharingProfileOnboardingPhotoSelectionViewController)initWithContact:(id)a3 avatarRecord:(id)a4 avatarItemProviderConfiguration:(id)a5;
- (void)didTapBackButton:(id)a3;
- (void)didTapDoneButton:(id)a3;
- (void)didTapSetupLaterButton:(id)a3;
- (void)loadView;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
- (void)sharingPhotoPickerDidSelectAddItem:(id)a3;
- (void)updateForContentSizeCategoryChange;
@end

@implementation CNSharingProfileOnboardingPhotoSelectionViewController

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v15 = a4;
  v8 = a5;
  objc_storeStrong(&self->_photoProviderContact, a4);
  if ([v8 source] == 1)
  {
    v9 = [v8 variant];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69BDC50]);
      v11 = [v8 variant];
      v12 = [v10 initWithColorName:v11];
      [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController setMonogramColor:v12];
    }
  }

  v13 = [v15 memojiMetadata];
  [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController setMemojiMetadata:v13];

  [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController updateWithContact:self->_photoProviderContact fromFullPhotoPicker:1];
  v14 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self presentedViewController];
  [v14 dismissViewControllerAnimated:1 completion:0];
}

- (void)photoPickerDidCancel:(id)a3
{
  v3 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)sharingPhotoPickerDidSelectAddItem:(id)a3
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

  v13 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self view];
  v14 = [v13 window];
  [v14 endEditing:1];

  v19 = [CNPhotoPickerViewController navigationControllerForPicker:v12];
  [v19 setModalPresentationStyle:2];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v16 = v15;
  v18 = v17;

  [v19 setPreferredContentSize:{v16, v18}];
  [(CNSharingProfileOnboardingPhotoSelectionViewController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)didTapDoneButton:(id)a3
{
  v14 = [(CNSharingProfilePhotoPickerViewController *)self->_sharingPhotoPickerViewController selectedItem];
  v4 = objc_alloc_init(CNSharingProfileOnboardingPhotoSelectionResult);
  v5 = [v14 originalImageWithSize:{500.0, 500.0}];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setOriginalImage:v5];

  v6 = [v14 compositeImageWithSize:{500.0, 500.0}];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setCompositedImage:v6];

  v7 = [v14 avatarItem];
  -[CNSharingProfileOnboardingPhotoSelectionResult setAvatarType:](v4, "setAvatarType:", [v7 type]);

  v8 = [v14 avatarItem];
  v9 = [v8 variantIdentifier];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setVariantName:v9];

  v10 = [v14 avatarItem];
  -[CNSharingProfileOnboardingPhotoSelectionResult setWasSelectedInFullPhotoPicker:](v4, "setWasSelectedInFullPhotoPicker:", [v10 wasSetFromFullPhotoPicker]);

  v11 = [v14 avatarItem];
  v12 = [v11 memojiMetadata];
  [(CNSharingProfileOnboardingPhotoSelectionResult *)v4 setMemojiMetadata:v12];

  v13 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
  [v13 photoSelectionViewControllerDidFinishWithResult:v4];
}

- (void)didTapBackButton:(id)a3
{
  v3 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
  [v3 photoSelectionViewControllerDidFinishWithResult:0];
}

- (void)didTapSetupLaterButton:(id)a3
{
  v4 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self delegate];
    [v6 photoSelectionViewControllerDidTapSetupLater:self];
  }
}

- (void)updateForContentSizeCategoryChange
{
  v2 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self view];
  [v2 setNeedsLayout];
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = CNSharingProfileOnboardingPhotoSelectionViewController;
  [(OBBaseWelcomeController *)&v10 loadView];
  v3 = objc_alloc_init(CNOnboardingBoldButtonProvider);
  v4 = [(CNOnboardingBoldButtonProvider *)v3 boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = v4;

  v6 = self->_confirmButton;
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"SHARING_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];
  [(OBBoldTrayButton *)v6 setTitle:v8 forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_didTapDoneButton_ forControlEvents:64];
  v9 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)self buttonTray];
  [v9 addButton:self->_confirmButton];
}

- (CNSharingProfileOnboardingPhotoSelectionViewController)initWithContact:(id)a3 avatarRecord:(id)a4 avatarItemProviderConfiguration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"SHARING_CHOOSE_YOUR_PHOTO_TO_SHARE" value:&stru_1F0CE7398 table:@"Localized"];
  v24.receiver = self;
  v24.super_class = CNSharingProfileOnboardingPhotoSelectionViewController;
  v14 = [(CNSharingProfileOnboardingPhotoSelectionViewController *)&v24 initWithTitle:v13 detailText:0 icon:0];

  if (v14)
  {
    objc_storeStrong(&v14->_contact, a3);
    v15 = [v9 mutableCopy];
    photoProviderContact = v14->_photoProviderContact;
    v14->_photoProviderContact = v15;

    objc_storeStrong(&v14->_avatarRecord, a4);
    objc_storeStrong(&v14->_avatarItemProviderConfiguration, a5);
    v17 = objc_alloc_init(CNSharingProfileLogger);
    logger = v14->_logger;
    v14->_logger = v17;

    v19 = [[CNSharingProfilePhotoPickerViewController alloc] initWithContact:v14->_photoProviderContact avatarRecord:v14->_avatarRecord avatarItemProviderConfiguration:v14->_avatarItemProviderConfiguration logger:v14->_logger];
    sharingPhotoPickerViewController = v14->_sharingPhotoPickerViewController;
    v14->_sharingPhotoPickerViewController = v19;

    v21 = [(CNSharingProfilePhotoPickerViewController *)v14->_sharingPhotoPickerViewController view];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

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