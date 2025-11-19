@interface CNMeCardSharingOnboardingEditViewController
+ (id)descriptorForRequiredKeys;
+ (id)headerText;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CNMeCardSharingOnboardingEditViewController)initWithContactStore:(id)a3 contact:(id)a4 nameProvider:(id)a5 avatarRecord:(id)a6;
- (CNMeCardSharingOnboardingEditViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)confirmButtonTitle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)textFieldForIndex:(int64_t)a3;
- (int64_t)contactImageSourceForType:(unint64_t)a3;
- (void)adjustInsetsForKeyboardOverlap:(double)a3;
- (void)avatarCarouselViewControllerDidTapPhotoPickerCell:(id)a3;
- (void)avatarCarouselViewControllerDidUpdateCenterMostItem:(id)a3;
- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)dealloc;
- (void)familyNameDidChange:(id)a3;
- (void)finishOnboardingWithDidSaveToMeContact:(BOOL)a3;
- (void)finishOnboardingWithProviderItem:(id)a3;
- (void)givenNameDidChange:(id)a3;
- (void)handleConfirmButtonTapped;
- (void)keyboardWillShow:(id)a3;
- (void)notifyDelegateWithContactImage:(id)a3 didSaveToMeContact:(BOOL)a4;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
- (void)photoPickerVariantListController:(id)a3 didSelectProviderItem:(id)a4;
- (void)photoPickerVariantListControllerDidCancel:(id)a3;
- (void)presentErrorAlertForEmptyPhotoIfNeededWithCompletion:(id)a3;
- (void)presentPhotoPickerVariantListForItem:(id)a3 FromViewController:(id)a4;
- (void)promptForSavingToMeCard;
- (void)saveDraftContact;
- (void)showAvatarPosePickerFromItem:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateAvatarCarouselContactName;
- (void)updateContact:(id)a3 withImagePropertiesFromContact:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNMeCardSharingOnboardingEditViewController

- (CNMeCardSharingOnboardingEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    [(CNMeCardSharingOnboardingEditViewController *)self updateContact:self->_editingContact withImagePropertiesFromContact:v8];
    [(CNMeCardSharingOnboardingEditViewController *)self updateContact:self->_avatarCarouselEditingContact withImagePropertiesFromContact:v8];
  }

  if ([v9 source] == 1 || !objc_msgSend(v9, "source"))
  {
    v10 = [v9 variant];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69BDC50]);
      v12 = [v9 variant];
      v13 = [v11 initWithColorName:v12];
      [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController setMonogramColor:v13];
    }

    else
    {
      [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController setMonogramColor:0];
    }
  }

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController reloadForUpdatedContactPhoto];
  v14 = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  [v14 dismissViewControllerAnimated:1 completion:0];
}

- (void)photoPickerDidCancel:(id)a3
{
  v3 = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)avatarCarouselViewControllerDidUpdateCenterMostItem:(id)a3
{
  v5 = [a3 imageProvider];
  v4 = [(CNMeCardSharingOnboardingViewController *)self confirmButton];
  [v4 setEnabled:v5 != 0];
}

- (void)avatarCarouselViewControllerDidTapPhotoPickerCell:(id)a3
{
  v4 = [CNPhotoPickerViewController alloc];
  avatarCarouselEditingContact = self->_avatarCarouselEditingContact;
  v6 = +[CNContactStyle defaultStyle];
  v7 = +[CNPhotoPickerConfiguration contactsConfiguration];
  v8 = [(CNPhotoPickerViewController *)v4 initWithContact:avatarCarouselEditingContact style:v6 configuration:v7];

  [(CNPhotoPickerViewController *)v8 setDelegate:self];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_PHOTOPICKER_ASSIGN_TITLE_OVERRIDE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityPickerViewController *)v8 setAssignActionTitleOverride:v10];

  photoPickerViewController = self->_photoPickerViewController;
  self->_photoPickerViewController = v8;
  v12 = v8;

  v13 = [(CNMeCardSharingOnboardingEditViewController *)self view];
  v14 = [v13 window];
  [v14 endEditing:1];

  v15 = [CNPhotoPickerViewController navigationControllerForPicker:v12];

  [(CNMeCardSharingOnboardingEditViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (id)textFieldForIndex:(int64_t)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (self->_nameOrder == 2)
  {
    v10[0] = self->_familyNameField;
    v4 = &OBJC_IVAR___CNMeCardSharingOnboardingEditViewController__givenNameField;
    p_givenNameField = v10;
  }

  else
  {
    givenNameField = self->_givenNameField;
    v4 = &OBJC_IVAR___CNMeCardSharingOnboardingEditViewController__familyNameField;
    p_givenNameField = &givenNameField;
  }

  p_givenNameField[1] = *(&self->super.super.super.super.super.super.super.isa + *v4);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v7 = [v6 objectAtIndexedSubscript:a3];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SHARING_ONBOARDING_DISPLAY_NAME" value:&stru_1F0CE7398 table:@"Localized"];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  v4 = [v5 textField];
  [v4 becomeFirstResponder];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNMeCardSharingTextFieldTableViewCell cellIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  [v9 setSelectionStyle:0];
  v10 = [v6 row];

  v11 = [(CNMeCardSharingOnboardingEditViewController *)self textFieldForIndex:v10];
  [v9 setTextField:v11];

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(UITextField *)self->_givenNameField font:a3];
  [v4 lineHeight];
  v6 = v5 + 10.0;

  result = 44.0;
  if (v6 >= 44.0)
  {
    return v6;
  }

  return result;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(UITextField *)self->_givenNameField text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = v4;

  v6 = [(UITextField *)self->_familyNameField text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = v6;

  [(CNMeCardSharingOnboardingEditViewController *)self updateAvatarCarouselContactName];
  avatarCarouselViewController = self->_avatarCarouselViewController;

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)avatarCarouselViewController reloadForUpdatedMonogram];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = v4;
  nameOrder = self->_nameOrder;
  if ((nameOrder != 2 || self->_familyNameField == v4) && self->_givenNameField == v4)
  {
    if (nameOrder == 2)
    {
      v7 = &OBJC_IVAR___CNMeCardSharingOnboardingEditViewController__givenNameField;
    }

    else
    {
      v7 = &OBJC_IVAR___CNMeCardSharingOnboardingEditViewController__familyNameField;
    }

    [*(&self->super.super.super.super.super.super.super.isa + *v7) becomeFirstResponder];
  }

  else
  {
    [(UITextField *)v4 resignFirstResponder];
  }

  return 0;
}

- (void)adjustInsetsForKeyboardOverlap:(double)a3
{
  v5 = [(OBTableWelcomeController *)self scrollView];
  [v5 contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v11 != a3)
  {
    v14 = [(OBTableWelcomeController *)self scrollView];
    [v14 setContentInset:{v7, v9, a3, v13}];

    v15 = [(OBTableWelcomeController *)self scrollView];
    [v15 setScrollIndicatorInsets:{v7, v9, a3, v13}];
  }
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v59 = [(CNMeCardSharingOnboardingEditViewController *)self view];
  v14 = [v59 window];
  [v14 convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v59 convertRect:0 fromView:{v16, v18, v20, v22}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v59 bounds];
  v64.origin.x = v24;
  v64.origin.y = v26;
  v64.size.width = v28;
  v64.size.height = v30;
  v62 = CGRectIntersection(v61, v64);
  Height = CGRectGetHeight(v62);
  v31 = [(OBTableWelcomeController *)self scrollView];
  [v31 frame];
  v33 = v32;
  v34 = [(OBTableWelcomeController *)self scrollView];
  [v34 frame];
  v36 = v35;
  v37 = [(OBTableWelcomeController *)self scrollView];
  [v37 contentSize];
  v39 = v38;
  v40 = [(OBTableWelcomeController *)self scrollView];
  [v40 contentSize];
  v42 = v41;

  v63.origin.x = v24;
  v63.origin.y = v26;
  v63.size.width = v28;
  v63.size.height = v30;
  v65.origin.x = v33;
  v65.origin.y = v36;
  v65.size.width = v39;
  v65.size.height = v42;
  if (CGRectIntersectsRect(v63, v65))
  {
    [(CNMeCardSharingOnboardingEditViewController *)self adjustInsetsForKeyboardOverlap:Height];
    v43 = [(OBTableWelcomeController *)self scrollView];
    [v43 frame];
    v45 = Height - v44;

    v46 = [(OBTableWelcomeController *)self scrollView];
    [v46 frame];
    v48 = v45 + v47;
    v49 = [(OBTableWelcomeController *)self scrollView];
    [v49 contentSize];
    v51 = v50;

    if (v48 > v51)
    {
      v52 = [(OBTableWelcomeController *)self scrollView];
      [v52 contentSize];
      v54 = v53;
      v55 = [(OBTableWelcomeController *)self scrollView];
      [v55 frame];
      v45 = v54 - (v56 - Height);
    }

    v57 = [(OBTableWelcomeController *)self scrollView];
    [v57 setContentOffset:{0.0, v45}];
  }
}

- (void)updateContact:(id)a3 withImagePropertiesFromContact:(id)a4
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
}

- (void)photoPickerVariantListController:(id)a3 didSelectProviderItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  v10 = [(CNMeCardSharingOnboardingEditViewController *)v8 presentingViewController];

  v11 = v8;
  if (v9 == v10)
  {
    v11 = self;
  }

  [v7 updateContact:self->_editingContact];
  [(CNMeCardSharingOnboardingEditViewController *)self updateContact:self->_avatarCarouselEditingContact withImagePropertiesFromContact:self->_editingContact];
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController reloadForUpdatedContactPhoto];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__CNMeCardSharingOnboardingEditViewController_photoPickerVariantListController_didSelectProviderItem___block_invoke;
  v12[3] = &unk_1E74E6A88;
  v12[4] = self;
  [(CNMeCardSharingOnboardingEditViewController *)v11 dismissViewControllerAnimated:1 completion:v12];
}

- (void)photoPickerVariantListControllerDidCancel:(id)a3
{
  v3 = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentPhotoPickerVariantListForItem:(id)a3 FromViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = [[CNPhotoPickerVariantListController alloc] initWithVariantsManager:self->_variantsManager originalItem:v7];

  [(CNPhotoPickerVariantListController *)v14 setDelegate:self];
  v8 = [(CNMeCardSharingOnboardingEditViewController *)self view];
  v9 = [v8 backgroundColor];
  v10 = [(CNPhotoPickerVariantListController *)v14 view];
  [v10 setBackgroundColor:v9];

  v11 = [[CNPortraitOnlyNavigationController alloc] initWithRootViewController:v14];
  v12 = [MEMORY[0x1E69DC938] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  [(CNPortraitOnlyNavigationController *)v11 setModalPresentationStyle:2 * ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  [v6 presentViewController:v11 animated:1 completion:0];
}

- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4
{
  v8 = a4;
  if (v8)
  {
    v6 = [a3 viewController];
    v7 = [v6 navigationController];
    [(CNMeCardSharingOnboardingEditViewController *)self presentPhotoPickerVariantListForItem:v8 FromViewController:v7];
  }

  else
  {
    [(CNMeCardSharingOnboardingEditViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)showAvatarPosePickerFromItem:(id)a3
{
  v18 = a3;
  if (!self->_variantsManager)
  {
    v4 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = self->_variantsManager;
    self->_variantsManager = v4;
  }

  if (+[CNPhotoPickerCapabilities allowsAvatarUI])
  {
    v6 = [CNAvatarEditingManager alloc];
    v7 = [v18 avatarRecord];
    v8 = [(CNAvatarEditingManager *)v6 initWithAvatarRecord:v7 variantsManager:self->_variantsManager];

    [(CNAvatarEditingManager *)v8 setDelegate:self];
    [(CNAvatarEditingManager *)v8 setOriginalItem:v18];
    posePicker = self->_posePicker;
    self->_posePicker = v8;
    v10 = v8;

    v11 = [(CNMeCardSharingOnboardingEditViewController *)self view];
    v12 = [v11 backgroundColor];
    v13 = [(CNAvatarEditingManager *)v10 viewController];
    v14 = [v13 view];
    [v14 setBackgroundColor:v12];

    v15 = [CNPortraitOnlyNavigationController alloc];
    v16 = [(CNAvatarEditingManager *)v10 viewController];

    v17 = [(CNPortraitOnlyNavigationController *)v15 initWithRootViewController:v16];
    [(CNPortraitOnlyNavigationController *)v17 setModalPresentationStyle:0];
    [(CNMeCardSharingOnboardingEditViewController *)self presentViewController:v17 animated:1 completion:0];
  }
}

- (void)notifyDelegateWithContactImage:(id)a3 didSaveToMeContact:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [CNMeCardSharingResult alloc];
  editingGivenName = self->_editingGivenName;
  editingFamilyName = self->_editingFamilyName;
  v10 = [v6 resizedContactImageForMeCardSharing];
  v11 = [(CNMutableContact *)self->_editingContact wallpaper];
  v12 = [(CNMutableContact *)self->_editingContact watchWallpaperImageData];
  v13 = [(CNMeCardSharingResult *)v7 initWithGivenName:editingGivenName familyName:editingFamilyName contactImage:v10 wallpaper:v11 watchWallpaperImageData:v12 didSaveImageToMeCard:v4];

  logger = self->_logger;
  v15 = [(CNMeCardSharingResult *)v13 description];
  [(CNSharingProfileLogger *)logger logOnboardingReturningSharingResultWithDescription:v15];

  v16 = [(CNMeCardSharingResult *)v13 contactImage];
  v17 = [v16 imageData];
  v18 = [v17 length];

  if (!v18)
  {
    if ([v6 source] != 1 || (objc_msgSend(v6, "variant"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      [(CNSharingProfileLogger *)self->_logger logOnboardingReturningEmptyImage];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __97__CNMeCardSharingOnboardingEditViewController_notifyDelegateWithContactImage_didSaveToMeContact___block_invoke;
      v21[3] = &unk_1E74E77C0;
      v21[4] = self;
      v22 = v13;
      [(CNMeCardSharingOnboardingEditViewController *)self presentErrorAlertForEmptyPhotoIfNeededWithCompletion:v21];

      goto LABEL_6;
    }

    [(CNSharingProfileLogger *)self->_logger logOnboardingReturningDefaultMonogram];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained meCardSharingOnboardingEditController:self didFinishWithOnboardingResult:v13];

LABEL_6:
}

void __97__CNMeCardSharingOnboardingEditViewController_notifyDelegateWithContactImage_didSaveToMeContact___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1312));
  [WeakRetained meCardSharingOnboardingEditController:*(a1 + 32) didFinishWithOnboardingResult:*(a1 + 40)];
}

- (void)presentErrorAlertForEmptyPhotoIfNeededWithCompletion:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E695CD58] nameAndPhotoSharingDebugUIEnabled])
  {
    v4 = MEMORY[0x1E69DC650];
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"Uh Oh" value:&stru_1F0CE7398 table:@"Localized"];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"Empty image returned to Messages for Name + Photo" value:&stru_1F0CE7398 table:@"Localized"];
    v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v10 = MEMORY[0x1E69DC648];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__CNMeCardSharingOnboardingEditViewController_presentErrorAlertForEmptyPhotoIfNeededWithCompletion___block_invoke;
    v14[3] = &unk_1E74E5C98;
    v15 = v3;
    v13 = [v10 actionWithTitle:v12 style:0 handler:v14];
    [v9 addAction:v13];
  }

  else
  {
    v3[2](v3);
  }
}

- (void)finishOnboardingWithDidSaveToMeContact:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController selectedItem];
  v6 = [v5 imageType];
  v7 = [v5 cachedImage];
  v8 = v7;
  if (!v7)
  {
    v12 = [v5 imageProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__CNMeCardSharingOnboardingEditViewController_finishOnboardingWithDidSaveToMeContact___block_invoke;
    v13[3] = &unk_1E74E5C70;
    v13[4] = self;
    v13[5] = v6;
    v14 = v3;
    (v12)[2](v12, v13);
    goto LABEL_5;
  }

  v9 = UIImagePNGRepresentation(v7);
  v10 = objc_alloc(MEMORY[0x1E695CD88]);
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 initWithImageData:v9 cropRect:v11 lastUsedDate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v12 setSource:{-[CNMeCardSharingOnboardingEditViewController contactImageSourceForType:](self, "contactImageSourceForType:", v6)}];
  if (v12)
  {
    [(CNMeCardSharingOnboardingEditViewController *)self notifyDelegateWithContactImage:v12 didSaveToMeContact:v3];
LABEL_5:
  }
}

void __86__CNMeCardSharingOnboardingEditViewController_finishOnboardingWithDidSaveToMeContact___block_invoke(uint64_t a1, UIImage *image)
{
  v6 = UIImagePNGRepresentation(image);
  v3 = objc_alloc(MEMORY[0x1E695CD88]);
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 initWithImageData:v6 cropRect:v4 lastUsedDate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v5 setSource:{objc_msgSend(*(a1 + 32), "contactImageSourceForType:", *(a1 + 40))}];
  [*(a1 + 32) notifyDelegateWithContactImage:v5 didSaveToMeContact:*(a1 + 48)];
}

- (int64_t)contactImageSourceForType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_199E43F20[a3 - 1];
  }
}

- (void)promptForSavingToMeCard
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CONFIRM" value:&stru_1F0CE7398 table:@"Localized"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__CNMeCardSharingOnboardingEditViewController_promptForSavingToMeCard__block_invoke;
  v21[3] = &unk_1E74E6C28;
  v21[4] = self;
  v12 = [v9 actionWithTitle:v11 style:0 handler:v21];
  [v8 addAction:v12];

  v13 = MEMORY[0x1E69DC648];
  v14 = CNContactsUIBundle();
  v15 = [v14 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__CNMeCardSharingOnboardingEditViewController_promptForSavingToMeCard__block_invoke_2;
  v20[3] = &unk_1E74E6C28;
  v20[4] = self;
  v16 = [v13 actionWithTitle:v15 style:1 handler:v20];
  [v8 addAction:v16];

  v17 = self;
  v18 = [(CNMeCardSharingOnboardingEditViewController *)v17 presentedViewController];

  if (v18)
  {
    v19 = [(CNMeCardSharingOnboardingEditViewController *)v17 presentedViewController];

    v17 = v19;
  }

  [(CNMeCardSharingOnboardingEditViewController *)v17 presentViewController:v8 animated:1 completion:0];
}

uint64_t __70__CNMeCardSharingOnboardingEditViewController_promptForSavingToMeCard__block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveDraftContact];
  v2 = *(a1 + 32);

  return [v2 finishOnboardingWithDidSaveToMeContact:1];
}

- (void)finishOnboardingWithProviderItem:(id)a3
{
  v7 = a3;
  v4 = [v7 cachedImage];

  if (v4 && [v7 imageType] == 2)
  {
    v5 = [v7 cachedImage];
    v6 = UIImagePNGRepresentation(v5);
    [(CNMutableContact *)self->_editingContact setImageData:v6];

    [(CNMutableContact *)self->_editingContact updateImageInfoWithType:2];
  }

  [(CNMeCardSharingOnboardingEditViewController *)self promptForSavingToMeCard];
}

- (void)handleConfirmButtonTapped
{
  v3 = [(UITextField *)self->_givenNameField text];
  v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  v6 = [(UITextField *)self->_familyNameField text];
  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  objc_storeStrong(&self->_editingGivenName, v5);
  objc_storeStrong(&self->_editingFamilyName, v8);
  [(CNMeCardSharingOnboardingEditViewController *)self updateAvatarCarouselContactName];
  v9 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController selectedItem];
  if ([v9 imageType] == 3 && objc_msgSend(v9, "shouldShowVariants"))
  {
    v10 = +[CNUIContactsEnvironment currentEnvironment];
    v11 = [v10 defaultSchedulerProvider];

    v12 = [v11 newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerAnimojiProvider.renderingQueue"];
    v13 = [v11 mainThreadScheduler];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v14 = getAVTAvatarRecordImageProviderClass_softClass_53425;
    v29 = getAVTAvatarRecordImageProviderClass_softClass_53425;
    if (!getAVTAvatarRecordImageProviderClass_softClass_53425)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getAVTAvatarRecordImageProviderClass_block_invoke_53426;
      v24 = &unk_1E74E7518;
      v25 = &v26;
      __getAVTAvatarRecordImageProviderClass_block_invoke_53426(&v21);
      v14 = v27[3];
    }

    v15 = v14;
    _Block_object_dispose(&v26, 8);
    v16 = objc_alloc_init(v14);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v17 = getAVTRenderingScopeClass_softClass_53427;
    v29 = getAVTRenderingScopeClass_softClass_53427;
    if (!getAVTRenderingScopeClass_softClass_53427)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getAVTRenderingScopeClass_block_invoke_53428;
      v24 = &unk_1E74E7518;
      v25 = &v26;
      __getAVTRenderingScopeClass_block_invoke_53428(&v21);
      v17 = v27[3];
    }

    v18 = v17;
    _Block_object_dispose(&v26, 8);
    v19 = [v17 gridThumbnailScope];
    v20 = [[CNPhotoPickerAnimojiProviderItem alloc] initWithAvatarRecord:self->_avatarRecord imageProvider:v16 renderingScope:v19 renderingQueue:v12 callbackQueue:v13];
    [(CNMeCardSharingOnboardingEditViewController *)self showAvatarPosePickerFromItem:v20];
  }

  else
  {
    [(CNMeCardSharingOnboardingEditViewController *)self finishOnboardingWithProviderItem:v9];
  }
}

- (id)confirmButtonTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)familyNameDidChange:(id)a3
{
  v4 = [a3 text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = v4;

  [(CNMeCardSharingOnboardingEditViewController *)self updateAvatarCarouselContactName];
  avatarCarouselViewController = self->_avatarCarouselViewController;

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)avatarCarouselViewController reloadForUpdatedMonogram];
}

- (void)givenNameDidChange:(id)a3
{
  v4 = [a3 text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = v4;

  [(CNMeCardSharingOnboardingEditViewController *)self updateAvatarCarouselContactName];
  avatarCarouselViewController = self->_avatarCarouselViewController;

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)avatarCarouselViewController reloadForUpdatedMonogram];
}

- (void)saveDraftContact
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  if (self->_shouldSetAsMeContact)
  {
    [(CNMutableContact *)self->_editingContact setGivenName:self->_editingGivenName];
    [(CNMutableContact *)self->_editingContact setFamilyName:self->_editingFamilyName];
    v4 = self->_editingContact;
    [v3 addContact:v4 toContainerWithIdentifier:0];
  }

  else if ([(CNContact *)self->_contact hasBeenPersisted])
  {
    v4 = [(CNContact *)self->_contact mutableCopy];
    [(CNMeCardSharingOnboardingEditViewController *)self updateContact:v4 withImagePropertiesFromContact:self->_editingContact];
    [v3 updateContact:v4];
  }

  else
  {
    v4 = 0;
  }

  logger = self->_logger;
  v6 = [(CNMutableContact *)v4 identifier];
  [(CNSharingProfileLogger *)logger logOnboardingSavingContact:v6];

  v7 = [(CNMeCardSharingOnboardingEditViewController *)self contactStore];
  v20 = 0;
  v8 = [v7 executeSaveRequest:v3 error:&v20];
  v9 = v20;

  if (v8)
  {
    v10 = self->_logger;
    if (!self->_shouldSetAsMeContact)
    {
      [(CNSharingProfileLogger *)v10 logOnboardingSuccessSavingContact];
      goto LABEL_13;
    }

    [(CNSharingProfileLogger *)v10 logSettingsSettingMeContact];
    v11 = [(CNMeCardSharingOnboardingEditViewController *)self contactStore];
    v19 = 0;
    v12 = [v11 setMeContact:v4 error:&v19];
    v13 = v19;

    if (v12)
    {
      self->_shouldSetAsMeContact = 0;
      v14 = [(CNMutableContact *)v4 copy];
      contact = self->_contact;
      self->_contact = v14;

      [(CNSharingProfileLogger *)self->_logger logOnboardingSuccessSavingContact];
    }

    else
    {
      v17 = self->_logger;
      v18 = [v13 localizedDescription];
      [(CNSharingProfileLogger *)v17 logOnboardingErrorSettingMeContactWithDescription:v18];

      v13 = v18;
    }
  }

  else
  {
    v16 = self->_logger;
    v13 = [v9 localizedDescription];
    [(CNSharingProfileLogger *)v16 logOnboardingErrorSavingContactWithDescription:v13];
  }

LABEL_13:
}

- (void)updateAvatarCarouselContactName
{
  [(CNMutableContact *)self->_avatarCarouselEditingContact setGivenName:self->_editingGivenName];
  editingFamilyName = self->_editingFamilyName;
  avatarCarouselEditingContact = self->_avatarCarouselEditingContact;

  [(CNMutableContact *)avatarCarouselEditingContact setFamilyName:editingFamilyName];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CNMeCardSharingOnboardingEditViewController;
  [(OBTableWelcomeController *)&v6 viewWillAppear:a3];
  v4 = [(CNMeCardSharingOnboardingEditViewController *)self view];
  v5 = [v4 effectiveUserInterfaceLayoutDirection];

  if (v5 == 1)
  {
    [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController scrollToItemAtIndex:0 animated:0];
  }
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = CNMeCardSharingOnboardingEditViewController;
  [(CNMeCardSharingOnboardingViewController *)&v46 viewDidLoad];
  v3 = [(OBTableWelcomeController *)self scrollView];
  [v3 setKeyboardDismissMode:2];

  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CNMeCardSharingTextFieldTableViewCell cellIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [[CNMeCardSharingOnboardingAvatarCarouselViewController alloc] initWithContact:self->_avatarCarouselEditingContact avatarRecord:self->_avatarRecord logger:self->_logger];
  avatarCarouselViewController = self->_avatarCarouselViewController;
  self->_avatarCarouselViewController = v7;

  v9 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController view];
  [v9 setAutoresizingMask:2];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 bounds];
  Width = CGRectGetWidth(v47);
  v12 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController view];
  [v12 setFrame:{0.0, 0.0, Width, 220.0}];

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController setDelegate:self];
  v13 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController view];
  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setTableHeaderView:v13];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 setDelegate:self];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setDataSource:self];

  v17 = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = v17;

  v19 = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = v19;

  v21 = objc_alloc(MEMORY[0x1E69DD0B0]);
  v22 = *MEMORY[0x1E695F058];
  v23 = *(MEMORY[0x1E695F058] + 8);
  v24 = *(MEMORY[0x1E695F058] + 16);
  v25 = *(MEMORY[0x1E695F058] + 24);
  v26 = [v21 initWithFrame:{*MEMORY[0x1E695F058], v23, v24, v25}];
  givenNameField = self->_givenNameField;
  self->_givenNameField = v26;

  v28 = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  [(UITextField *)self->_givenNameField setText:v28];

  v29 = CNContactsUIBundle();
  v30 = [v29 localizedStringForKey:@"SHARING_GIVEN_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_givenNameField setPlaceholder:v30];

  v31 = *MEMORY[0x1E69DDCF8];
  v32 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextField *)self->_givenNameField setFont:v32];

  [(UITextField *)self->_givenNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_givenNameField setAutocorrectionType:1];
  [(UITextField *)self->_givenNameField addTarget:self action:sel_givenNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_givenNameField setDelegate:self];
  v33 = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v22, v23, v24, v25}];
  familyNameField = self->_familyNameField;
  self->_familyNameField = v33;

  v35 = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  [(UITextField *)self->_familyNameField setText:v35];

  v36 = CNContactsUIBundle();
  v37 = [v36 localizedStringForKey:@"SHARING_FAMILY_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_familyNameField setPlaceholder:v37];

  v38 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v31];
  [(UITextField *)self->_familyNameField setFont:v38];

  [(UITextField *)self->_familyNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_familyNameField setAutocorrectionType:1];
  [(UITextField *)self->_familyNameField addTarget:self action:sel_familyNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_familyNameField setDelegate:self];
  v39 = [(OBTableWelcomeController *)self tableView];
  [v39 setKeyboardDismissMode:2];

  v40 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v41 = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  [v40 setGivenName:v41];

  v42 = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  [v40 setFamilyName:v42];

  self->_nameOrder = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:v40 options:0];
  v43 = [MEMORY[0x1E696AD88] defaultCenter];
  [v43 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v44 = [MEMORY[0x1E696AD88] defaultCenter];
  [v44 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  v45 = [MEMORY[0x1E696AD88] defaultCenter];
  [v45 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNMeCardSharingOnboardingEditViewController;
  [(CNMeCardSharingOnboardingEditViewController *)&v4 dealloc];
}

- (CNMeCardSharingOnboardingEditViewController)initWithContactStore:(id)a3 contact:(id)a4 nameProvider:(id)a5 avatarRecord:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [objc_opt_class() headerText];
  v33.receiver = self;
  v33.super_class = CNMeCardSharingOnboardingEditViewController;
  v16 = [(OBTableWelcomeController *)&v33 initWithTitle:v15 detailText:0 icon:0 adoptTableViewScrollView:0];

  if (v16)
  {
    objc_storeStrong(&v16->_contactStore, a3);
    objc_storeStrong(&v16->_contact, a4);
    objc_storeStrong(&v16->_nameProvider, a5);
    objc_storeStrong(&v16->_avatarRecord, a6);
    if (v12)
    {
      v17 = [v12 mutableCopy];
      editingContact = v16->_editingContact;
      v16->_editingContact = v17;

      v19 = [v12 mutableCopy];
      avatarCarouselEditingContact = v16->_avatarCarouselEditingContact;
      v16->_avatarCarouselEditingContact = v19;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v22 = v16->_editingContact;
      v16->_editingContact = v21;

      v23 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v24 = v16->_avatarCarouselEditingContact;
      v16->_avatarCarouselEditingContact = v23;

      v16->_shouldSetAsMeContact = 1;
    }

    v25 = [v13 givenName];
    [(CNMutableContact *)v16->_avatarCarouselEditingContact setGivenName:v25];

    v26 = [v13 familyName];
    [(CNMutableContact *)v16->_avatarCarouselEditingContact setFamilyName:v26];

    v27 = +[CNMeCardSharingPickerLayoutAttributes layoutAttributesForBuddy];
    layoutAttributes = v16->_layoutAttributes;
    v16->_layoutAttributes = v27;

    v29 = objc_alloc_init(CNSharingProfileLogger);
    logger = v16->_logger;
    v16->_logger = v29;

    v31 = v16;
  }

  return v16;
}

+ (id)headerText
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_ONBOARDING_NAME_AND_PHOTO_HEADER" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_53483 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_53483, &__block_literal_global_53484);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_53485;

  return v3;
}

void __72__CNMeCardSharingOnboardingEditViewController_descriptorForRequiredKeys__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = +[CNMeCardSharingContactNameProvider descriptorForRequiredKeys];
  v9[0] = v0;
  v1 = +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v2 = *MEMORY[0x1E695C278];
  v9[1] = v1;
  v9[2] = v2;
  v3 = *MEMORY[0x1E695C238];
  v9[3] = *MEMORY[0x1E695C400];
  v9[4] = v3;
  v9[5] = *MEMORY[0x1E695C270];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];

  v5 = MEMORY[0x1E695CD58];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNMeCardSharingOnboardingEditViewController descriptorForRequiredKeys]_block_invoke"];
  v7 = [v5 descriptorWithKeyDescriptors:v4 description:v6];

  v8 = descriptorForRequiredKeys_cn_once_object_1_53485;
  descriptorForRequiredKeys_cn_once_object_1_53485 = v7;
}

@end