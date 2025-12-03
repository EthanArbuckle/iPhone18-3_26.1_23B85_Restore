@interface CNMeCardSharingOnboardingEditViewController
+ (id)descriptorForRequiredKeys;
+ (id)headerText;
- (BOOL)textFieldShouldReturn:(id)return;
- (CNMeCardSharingOnboardingEditViewController)initWithContactStore:(id)store contact:(id)contact nameProvider:(id)provider avatarRecord:(id)record;
- (CNMeCardSharingOnboardingEditViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)confirmButtonTitle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)textFieldForIndex:(int64_t)index;
- (int64_t)contactImageSourceForType:(unint64_t)type;
- (void)adjustInsetsForKeyboardOverlap:(double)overlap;
- (void)avatarCarouselViewControllerDidTapPhotoPickerCell:(id)cell;
- (void)avatarCarouselViewControllerDidUpdateCenterMostItem:(id)item;
- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item;
- (void)dealloc;
- (void)familyNameDidChange:(id)change;
- (void)finishOnboardingWithDidSaveToMeContact:(BOOL)contact;
- (void)finishOnboardingWithProviderItem:(id)item;
- (void)givenNameDidChange:(id)change;
- (void)handleConfirmButtonTapped;
- (void)keyboardWillShow:(id)show;
- (void)notifyDelegateWithContactImage:(id)image didSaveToMeContact:(BOOL)contact;
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
- (void)photoPickerVariantListController:(id)controller didSelectProviderItem:(id)item;
- (void)photoPickerVariantListControllerDidCancel:(id)cancel;
- (void)presentErrorAlertForEmptyPhotoIfNeededWithCompletion:(id)completion;
- (void)presentPhotoPickerVariantListForItem:(id)item FromViewController:(id)controller;
- (void)promptForSavingToMeCard;
- (void)saveDraftContact;
- (void)showAvatarPosePickerFromItem:(id)item;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateAvatarCarouselContactName;
- (void)updateContact:(id)contact withImagePropertiesFromContact:(id)fromContact;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNMeCardSharingOnboardingEditViewController

- (CNMeCardSharingOnboardingEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  pickerCopy = picker;
  contactCopy = contact;
  imageCopy = image;
  if (contactCopy)
  {
    [(CNMeCardSharingOnboardingEditViewController *)self updateContact:self->_editingContact withImagePropertiesFromContact:contactCopy];
    [(CNMeCardSharingOnboardingEditViewController *)self updateContact:self->_avatarCarouselEditingContact withImagePropertiesFromContact:contactCopy];
  }

  if ([imageCopy source] == 1 || !objc_msgSend(imageCopy, "source"))
  {
    variant = [imageCopy variant];

    if (variant)
    {
      v11 = objc_alloc(MEMORY[0x1E69BDC50]);
      variant2 = [imageCopy variant];
      v13 = [v11 initWithColorName:variant2];
      [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController setMonogramColor:v13];
    }

    else
    {
      [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController setMonogramColor:0];
    }
  }

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController reloadForUpdatedContactPhoto];
  presentedViewController = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)photoPickerDidCancel:(id)cancel
{
  presentedViewController = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)avatarCarouselViewControllerDidUpdateCenterMostItem:(id)item
{
  imageProvider = [item imageProvider];
  confirmButton = [(CNMeCardSharingOnboardingViewController *)self confirmButton];
  [confirmButton setEnabled:imageProvider != 0];
}

- (void)avatarCarouselViewControllerDidTapPhotoPickerCell:(id)cell
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

  view = [(CNMeCardSharingOnboardingEditViewController *)self view];
  window = [view window];
  [window endEditing:1];

  v15 = [CNPhotoPickerViewController navigationControllerForPicker:v12];

  [(CNMeCardSharingOnboardingEditViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (id)textFieldForIndex:(int64_t)index
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
  v7 = [v6 objectAtIndexedSubscript:index];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SHARING_ONBOARDING_DISPLAY_NAME" value:&stru_1F0CE7398 table:@"Localized"];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  textField = [v5 textField];
  [textField becomeFirstResponder];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CNMeCardSharingTextFieldTableViewCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  [v9 setSelectionStyle:0];
  v10 = [pathCopy row];

  v11 = [(CNMeCardSharingOnboardingEditViewController *)self textFieldForIndex:v10];
  [v9 setTextField:v11];

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(UITextField *)self->_givenNameField font:view];
  [v4 lineHeight];
  v6 = v5 + 10.0;

  result = 44.0;
  if (v6 >= 44.0)
  {
    return v6;
  }

  return result;
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_givenNameField text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = text;

  text2 = [(UITextField *)self->_familyNameField text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = text2;

  [(CNMeCardSharingOnboardingEditViewController *)self updateAvatarCarouselContactName];
  avatarCarouselViewController = self->_avatarCarouselViewController;

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)avatarCarouselViewController reloadForUpdatedMonogram];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = returnCopy;
  nameOrder = self->_nameOrder;
  if ((nameOrder != 2 || self->_familyNameField == returnCopy) && self->_givenNameField == returnCopy)
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
    [(UITextField *)returnCopy resignFirstResponder];
  }

  return 0;
}

- (void)adjustInsetsForKeyboardOverlap:(double)overlap
{
  scrollView = [(OBTableWelcomeController *)self scrollView];
  [scrollView contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v11 != overlap)
  {
    scrollView2 = [(OBTableWelcomeController *)self scrollView];
    [scrollView2 setContentInset:{v7, v9, overlap, v13}];

    scrollView3 = [(OBTableWelcomeController *)self scrollView];
    [scrollView3 setScrollIndicatorInsets:{v7, v9, overlap, v13}];
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(CNMeCardSharingOnboardingEditViewController *)self view];
  window = [view window];
  [window convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [view convertRect:0 fromView:{v16, v18, v20, v22}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [view bounds];
  v64.origin.x = v24;
  v64.origin.y = v26;
  v64.size.width = v28;
  v64.size.height = v30;
  v62 = CGRectIntersection(v61, v64);
  Height = CGRectGetHeight(v62);
  scrollView = [(OBTableWelcomeController *)self scrollView];
  [scrollView frame];
  v33 = v32;
  scrollView2 = [(OBTableWelcomeController *)self scrollView];
  [scrollView2 frame];
  v36 = v35;
  scrollView3 = [(OBTableWelcomeController *)self scrollView];
  [scrollView3 contentSize];
  v39 = v38;
  scrollView4 = [(OBTableWelcomeController *)self scrollView];
  [scrollView4 contentSize];
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
    scrollView5 = [(OBTableWelcomeController *)self scrollView];
    [scrollView5 frame];
    v45 = Height - v44;

    scrollView6 = [(OBTableWelcomeController *)self scrollView];
    [scrollView6 frame];
    v48 = v45 + v47;
    scrollView7 = [(OBTableWelcomeController *)self scrollView];
    [scrollView7 contentSize];
    v51 = v50;

    if (v48 > v51)
    {
      scrollView8 = [(OBTableWelcomeController *)self scrollView];
      [scrollView8 contentSize];
      v54 = v53;
      scrollView9 = [(OBTableWelcomeController *)self scrollView];
      [scrollView9 frame];
      v45 = v54 - (v56 - Height);
    }

    scrollView10 = [(OBTableWelcomeController *)self scrollView];
    [scrollView10 setContentOffset:{0.0, v45}];
  }
}

- (void)updateContact:(id)contact withImagePropertiesFromContact:(id)fromContact
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
}

- (void)photoPickerVariantListController:(id)controller didSelectProviderItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  v8 = controllerCopy;
  presentedViewController = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  presentingViewController = [(CNMeCardSharingOnboardingEditViewController *)v8 presentingViewController];

  selfCopy = v8;
  if (presentedViewController == presentingViewController)
  {
    selfCopy = self;
  }

  [itemCopy updateContact:self->_editingContact];
  [(CNMeCardSharingOnboardingEditViewController *)self updateContact:self->_avatarCarouselEditingContact withImagePropertiesFromContact:self->_editingContact];
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController reloadForUpdatedContactPhoto];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__CNMeCardSharingOnboardingEditViewController_photoPickerVariantListController_didSelectProviderItem___block_invoke;
  v12[3] = &unk_1E74E6A88;
  v12[4] = self;
  [(CNMeCardSharingOnboardingEditViewController *)selfCopy dismissViewControllerAnimated:1 completion:v12];
}

- (void)photoPickerVariantListControllerDidCancel:(id)cancel
{
  presentedViewController = [(CNMeCardSharingOnboardingEditViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)presentPhotoPickerVariantListForItem:(id)item FromViewController:(id)controller
{
  controllerCopy = controller;
  itemCopy = item;
  v14 = [[CNPhotoPickerVariantListController alloc] initWithVariantsManager:self->_variantsManager originalItem:itemCopy];

  [(CNPhotoPickerVariantListController *)v14 setDelegate:self];
  view = [(CNMeCardSharingOnboardingEditViewController *)self view];
  backgroundColor = [view backgroundColor];
  view2 = [(CNPhotoPickerVariantListController *)v14 view];
  [view2 setBackgroundColor:backgroundColor];

  v11 = [[CNPortraitOnlyNavigationController alloc] initWithRootViewController:v14];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(CNPortraitOnlyNavigationController *)v11 setModalPresentationStyle:2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    viewController = [manager viewController];
    navigationController = [viewController navigationController];
    [(CNMeCardSharingOnboardingEditViewController *)self presentPhotoPickerVariantListForItem:itemCopy FromViewController:navigationController];
  }

  else
  {
    [(CNMeCardSharingOnboardingEditViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)showAvatarPosePickerFromItem:(id)item
{
  itemCopy = item;
  if (!self->_variantsManager)
  {
    v4 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = self->_variantsManager;
    self->_variantsManager = v4;
  }

  if (+[CNPhotoPickerCapabilities allowsAvatarUI])
  {
    v6 = [CNAvatarEditingManager alloc];
    avatarRecord = [itemCopy avatarRecord];
    v8 = [(CNAvatarEditingManager *)v6 initWithAvatarRecord:avatarRecord variantsManager:self->_variantsManager];

    [(CNAvatarEditingManager *)v8 setDelegate:self];
    [(CNAvatarEditingManager *)v8 setOriginalItem:itemCopy];
    posePicker = self->_posePicker;
    self->_posePicker = v8;
    v10 = v8;

    view = [(CNMeCardSharingOnboardingEditViewController *)self view];
    backgroundColor = [view backgroundColor];
    viewController = [(CNAvatarEditingManager *)v10 viewController];
    view2 = [viewController view];
    [view2 setBackgroundColor:backgroundColor];

    v15 = [CNPortraitOnlyNavigationController alloc];
    viewController2 = [(CNAvatarEditingManager *)v10 viewController];

    v17 = [(CNPortraitOnlyNavigationController *)v15 initWithRootViewController:viewController2];
    [(CNPortraitOnlyNavigationController *)v17 setModalPresentationStyle:0];
    [(CNMeCardSharingOnboardingEditViewController *)self presentViewController:v17 animated:1 completion:0];
  }
}

- (void)notifyDelegateWithContactImage:(id)image didSaveToMeContact:(BOOL)contact
{
  contactCopy = contact;
  imageCopy = image;
  v7 = [CNMeCardSharingResult alloc];
  editingGivenName = self->_editingGivenName;
  editingFamilyName = self->_editingFamilyName;
  resizedContactImageForMeCardSharing = [imageCopy resizedContactImageForMeCardSharing];
  wallpaper = [(CNMutableContact *)self->_editingContact wallpaper];
  watchWallpaperImageData = [(CNMutableContact *)self->_editingContact watchWallpaperImageData];
  v13 = [(CNMeCardSharingResult *)v7 initWithGivenName:editingGivenName familyName:editingFamilyName contactImage:resizedContactImageForMeCardSharing wallpaper:wallpaper watchWallpaperImageData:watchWallpaperImageData didSaveImageToMeCard:contactCopy];

  logger = self->_logger;
  v15 = [(CNMeCardSharingResult *)v13 description];
  [(CNSharingProfileLogger *)logger logOnboardingReturningSharingResultWithDescription:v15];

  contactImage = [(CNMeCardSharingResult *)v13 contactImage];
  imageData = [contactImage imageData];
  v18 = [imageData length];

  if (!v18)
  {
    if ([imageCopy source] != 1 || (objc_msgSend(imageCopy, "variant"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
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

- (void)presentErrorAlertForEmptyPhotoIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
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
    v15 = completionCopy;
    v13 = [v10 actionWithTitle:v12 style:0 handler:v14];
    [v9 addAction:v13];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)finishOnboardingWithDidSaveToMeContact:(BOOL)contact
{
  contactCopy = contact;
  selectedItem = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController selectedItem];
  imageType = [selectedItem imageType];
  cachedImage = [selectedItem cachedImage];
  v8 = cachedImage;
  if (!cachedImage)
  {
    imageProvider = [selectedItem imageProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__CNMeCardSharingOnboardingEditViewController_finishOnboardingWithDidSaveToMeContact___block_invoke;
    v13[3] = &unk_1E74E5C70;
    v13[4] = self;
    v13[5] = imageType;
    v14 = contactCopy;
    (imageProvider)[2](imageProvider, v13);
    goto LABEL_5;
  }

  v9 = UIImagePNGRepresentation(cachedImage);
  v10 = objc_alloc(MEMORY[0x1E695CD88]);
  date = [MEMORY[0x1E695DF00] date];
  imageProvider = [v10 initWithImageData:v9 cropRect:date lastUsedDate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [imageProvider setSource:{-[CNMeCardSharingOnboardingEditViewController contactImageSourceForType:](self, "contactImageSourceForType:", imageType)}];
  if (imageProvider)
  {
    [(CNMeCardSharingOnboardingEditViewController *)self notifyDelegateWithContactImage:imageProvider didSaveToMeContact:contactCopy];
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

- (int64_t)contactImageSourceForType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_199E43F20[type - 1];
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

  selfCopy = self;
  presentedViewController = [(CNMeCardSharingOnboardingEditViewController *)selfCopy presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(CNMeCardSharingOnboardingEditViewController *)selfCopy presentedViewController];

    selfCopy = presentedViewController2;
  }

  [(CNMeCardSharingOnboardingEditViewController *)selfCopy presentViewController:v8 animated:1 completion:0];
}

uint64_t __70__CNMeCardSharingOnboardingEditViewController_promptForSavingToMeCard__block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveDraftContact];
  v2 = *(a1 + 32);

  return [v2 finishOnboardingWithDidSaveToMeContact:1];
}

- (void)finishOnboardingWithProviderItem:(id)item
{
  itemCopy = item;
  cachedImage = [itemCopy cachedImage];

  if (cachedImage && [itemCopy imageType] == 2)
  {
    cachedImage2 = [itemCopy cachedImage];
    v6 = UIImagePNGRepresentation(cachedImage2);
    [(CNMutableContact *)self->_editingContact setImageData:v6];

    [(CNMutableContact *)self->_editingContact updateImageInfoWithType:2];
  }

  [(CNMeCardSharingOnboardingEditViewController *)self promptForSavingToMeCard];
}

- (void)handleConfirmButtonTapped
{
  text = [(UITextField *)self->_givenNameField text];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v5 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  text2 = [(UITextField *)self->_familyNameField text];
  whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [text2 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

  objc_storeStrong(&self->_editingGivenName, v5);
  objc_storeStrong(&self->_editingFamilyName, v8);
  [(CNMeCardSharingOnboardingEditViewController *)self updateAvatarCarouselContactName];
  selectedItem = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController selectedItem];
  if ([selectedItem imageType] == 3 && objc_msgSend(selectedItem, "shouldShowVariants"))
  {
    v10 = +[CNUIContactsEnvironment currentEnvironment];
    defaultSchedulerProvider = [v10 defaultSchedulerProvider];

    v12 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerAnimojiProvider.renderingQueue"];
    mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
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
    gridThumbnailScope = [v17 gridThumbnailScope];
    v20 = [[CNPhotoPickerAnimojiProviderItem alloc] initWithAvatarRecord:self->_avatarRecord imageProvider:v16 renderingScope:gridThumbnailScope renderingQueue:v12 callbackQueue:mainThreadScheduler];
    [(CNMeCardSharingOnboardingEditViewController *)self showAvatarPosePickerFromItem:v20];
  }

  else
  {
    [(CNMeCardSharingOnboardingEditViewController *)self finishOnboardingWithProviderItem:selectedItem];
  }
}

- (id)confirmButtonTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_CONTINUE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)familyNameDidChange:(id)change
{
  text = [change text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = text;

  [(CNMeCardSharingOnboardingEditViewController *)self updateAvatarCarouselContactName];
  avatarCarouselViewController = self->_avatarCarouselViewController;

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)avatarCarouselViewController reloadForUpdatedMonogram];
}

- (void)givenNameDidChange:(id)change
{
  text = [change text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = text;

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
  identifier = [(CNMutableContact *)v4 identifier];
  [(CNSharingProfileLogger *)logger logOnboardingSavingContact:identifier];

  contactStore = [(CNMeCardSharingOnboardingEditViewController *)self contactStore];
  v20 = 0;
  v8 = [contactStore executeSaveRequest:v3 error:&v20];
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
    contactStore2 = [(CNMeCardSharingOnboardingEditViewController *)self contactStore];
    v19 = 0;
    v12 = [contactStore2 setMeContact:v4 error:&v19];
    localizedDescription2 = v19;

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
      localizedDescription = [localizedDescription2 localizedDescription];
      [(CNSharingProfileLogger *)v17 logOnboardingErrorSettingMeContactWithDescription:localizedDescription];

      localizedDescription2 = localizedDescription;
    }
  }

  else
  {
    v16 = self->_logger;
    localizedDescription2 = [v9 localizedDescription];
    [(CNSharingProfileLogger *)v16 logOnboardingErrorSavingContactWithDescription:localizedDescription2];
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CNMeCardSharingOnboardingEditViewController;
  [(OBTableWelcomeController *)&v6 viewWillAppear:appear];
  view = [(CNMeCardSharingOnboardingEditViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController scrollToItemAtIndex:0 animated:0];
  }
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = CNMeCardSharingOnboardingEditViewController;
  [(CNMeCardSharingOnboardingViewController *)&v46 viewDidLoad];
  scrollView = [(OBTableWelcomeController *)self scrollView];
  [scrollView setKeyboardDismissMode:2];

  tableView = [(OBTableWelcomeController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[CNMeCardSharingTextFieldTableViewCell cellIdentifier];
  [tableView registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [[CNMeCardSharingOnboardingAvatarCarouselViewController alloc] initWithContact:self->_avatarCarouselEditingContact avatarRecord:self->_avatarRecord logger:self->_logger];
  avatarCarouselViewController = self->_avatarCarouselViewController;
  self->_avatarCarouselViewController = v7;

  view = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController view];
  [view setAutoresizingMask:2];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 bounds];
  Width = CGRectGetWidth(v47);
  view2 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController view];
  [view2 setFrame:{0.0, 0.0, Width, 220.0}];

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController setDelegate:self];
  view3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self->_avatarCarouselViewController view];
  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setTableHeaderView:view3];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDelegate:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDataSource:self];

  givenName = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = givenName;

  familyName = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = familyName;

  v21 = objc_alloc(MEMORY[0x1E69DD0B0]);
  v22 = *MEMORY[0x1E695F058];
  v23 = *(MEMORY[0x1E695F058] + 8);
  v24 = *(MEMORY[0x1E695F058] + 16);
  v25 = *(MEMORY[0x1E695F058] + 24);
  v26 = [v21 initWithFrame:{*MEMORY[0x1E695F058], v23, v24, v25}];
  givenNameField = self->_givenNameField;
  self->_givenNameField = v26;

  givenName2 = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  [(UITextField *)self->_givenNameField setText:givenName2];

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

  familyName2 = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  [(UITextField *)self->_familyNameField setText:familyName2];

  v36 = CNContactsUIBundle();
  v37 = [v36 localizedStringForKey:@"SHARING_FAMILY_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_familyNameField setPlaceholder:v37];

  v38 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v31];
  [(UITextField *)self->_familyNameField setFont:v38];

  [(UITextField *)self->_familyNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_familyNameField setAutocorrectionType:1];
  [(UITextField *)self->_familyNameField addTarget:self action:sel_familyNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_familyNameField setDelegate:self];
  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setKeyboardDismissMode:2];

  v40 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  givenName3 = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  [v40 setGivenName:givenName3];

  familyName3 = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  [v40 setFamilyName:familyName3];

  self->_nameOrder = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:v40 options:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNMeCardSharingOnboardingEditViewController;
  [(CNMeCardSharingOnboardingEditViewController *)&v4 dealloc];
}

- (CNMeCardSharingOnboardingEditViewController)initWithContactStore:(id)store contact:(id)contact nameProvider:(id)provider avatarRecord:(id)record
{
  storeCopy = store;
  contactCopy = contact;
  providerCopy = provider;
  recordCopy = record;
  headerText = [objc_opt_class() headerText];
  v33.receiver = self;
  v33.super_class = CNMeCardSharingOnboardingEditViewController;
  v16 = [(OBTableWelcomeController *)&v33 initWithTitle:headerText detailText:0 icon:0 adoptTableViewScrollView:0];

  if (v16)
  {
    objc_storeStrong(&v16->_contactStore, store);
    objc_storeStrong(&v16->_contact, contact);
    objc_storeStrong(&v16->_nameProvider, provider);
    objc_storeStrong(&v16->_avatarRecord, record);
    if (contactCopy)
    {
      v17 = [contactCopy mutableCopy];
      editingContact = v16->_editingContact;
      v16->_editingContact = v17;

      v19 = [contactCopy mutableCopy];
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

    givenName = [providerCopy givenName];
    [(CNMutableContact *)v16->_avatarCarouselEditingContact setGivenName:givenName];

    familyName = [providerCopy familyName];
    [(CNMutableContact *)v16->_avatarCarouselEditingContact setFamilyName:familyName];

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