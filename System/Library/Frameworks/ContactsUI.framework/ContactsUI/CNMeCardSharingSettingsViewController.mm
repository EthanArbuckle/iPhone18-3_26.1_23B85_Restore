@interface CNMeCardSharingSettingsViewController
+ (id)descriptorForRequiredKeys;
- (BOOL)isPresentingModalViewController;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)textFieldShouldReturn:(id)return;
- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience;
- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience showsWallpaperSuggestionsGalleryPicker:(BOOL)picker headerMode:(int64_t)self0;
- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience showsWallpaperSuggestionsGalleryPicker:(BOOL)picker headerMode:(int64_t)self0 presentedInOnboarding:(BOOL)self1;
- (CNMeCardSharingSettingsViewControllerDelegate)delegate;
- (double)availableHeaderHeight;
- (double)viewHeight;
- (id)initForOnboardingWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience showsWallpaperSuggestionsGalleryPicker:(BOOL)picker headerMode:(int64_t)self0;
- (id)sharingResultWithContactImage:(id)image wallpaper:(id)wallpaper watchWallpaperImageData:(id)data didSaveToMeCard:(BOOL)card;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)textFieldForIndex:(int64_t)index;
- (id)textFields;
- (void)adjustInsetsForKeyboardOverlap:(double)overlap;
- (void)avatarPosterEditorFromFlowManager:(id)manager didUpdateContact:(id)contact withVisualIdentity:(id)identity;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)didTapContinueButton:(id)button;
- (void)familyNameDidChange:(id)change;
- (void)generateEditingContactWithCompletionHandler:(id)handler;
- (void)givenNameDidChange:(id)change;
- (void)keyboardWillShow:(id)show;
- (void)notifyDelegateOfChangesWithDidSaveMeCard:(BOOL)card contactImage:(id)image sharingResult:(id)result;
- (void)notifyDelegateOfChangesWithDidSaveToMeCard:(BOOL)card;
- (void)notifyOfChangedEnablementState:(BOOL)state;
- (void)performSaveToMeCardAction;
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
- (void)preWarmContactPosterForContact:(id)contact;
- (void)presentErrorAlertForEmptyPhotoIfNeededWithCompletion:(id)completion;
- (void)presentNameEditor;
- (void)presentPhotoPickerControllerForContact:(id)contact;
- (void)promptForSavingToMeCardIfNeeded;
- (void)saveDraftContact;
- (void)sharingEnabledDataSource:(id)source didChangeEnabledState:(BOOL)state;
- (void)sharingSettingsHeaderWasTapped:(id)tapped;
- (void)sharingSettingsPreferenceMenuCell:(id)cell didSelectSharingAudience:(unint64_t)audience;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateContact:(id)contact withEditedContact:(id)editedContact;
- (void)updateContact:(id)contact withImagePropertiesFromContact:(id)fromContact;
- (void)updateContact:(id)contact withNamePropertiesFromContact:(id)fromContact;
- (void)updateHeaderViewFrame;
- (void)updateHeaderViewFrameAndTableView;
- (void)updateTableViewBottomPaddingIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CNMeCardSharingSettingsViewController

- (CNMeCardSharingSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)multiplePhoneNumbersTiedToAppleID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getIMNicknameControllerClass_softClass;
  v9 = getIMNicknameControllerClass_softClass;
  if (!getIMNicknameControllerClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getIMNicknameControllerClass_block_invoke;
    v5[3] = &unk_1E74E7518;
    v5[4] = &v6;
    __getIMNicknameControllerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 multiplePhoneNumbersTiedToAppleID];
}

- (void)sharingSettingsPreferenceMenuCell:(id)cell didSelectSharingAudience:(unint64_t)audience
{
  sharingAudienceDataSource = [(CNMeCardSharingSettingsViewController *)self sharingAudienceDataSource];
  [sharingAudienceDataSource setSelectedSharingAudience:audience];

  delegate = [(CNMeCardSharingSettingsViewController *)self delegate];
  LOBYTE(sharingAudienceDataSource) = objc_opt_respondsToSelector();

  if (sharingAudienceDataSource)
  {
    delegate2 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [delegate2 sharingSettingsViewController:self didSelectSharingAudience:{-[CNMeCardSharingAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
  }

  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (BOOL)isPresentingModalViewController
{
  presentedViewController = [(CNMeCardSharingSettingsViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)avatarPosterEditorFromFlowManager:(id)manager didUpdateContact:(id)contact withVisualIdentity:(id)identity
{
  v7 = MEMORY[0x1E695CD88];
  identityCopy = identity;
  contactCopy = contact;
  v10 = [v7 alloc];
  imageData = [identityCopy imageData];
  [identityCopy cropRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [MEMORY[0x1E695DF00] now];
  v21 = [v10 initWithImageData:imageData cropRect:v20 lastUsedDate:{v13, v15, v17, v19}];
  editingContactImage = self->_editingContactImage;
  self->_editingContactImage = v21;

  contactImageSource = [identityCopy contactImageSource];
  [(CNContactImage *)self->_editingContactImage setSource:contactImageSource];
  [(CNMeCardSharingSettingsViewController *)self updateContact:self->_editingContact withEditedContact:contactCopy];

  if (self->_editingContactAvatarProvider)
  {
    headerViewController = [(CNMeCardSharingSettingsViewController *)self headerViewController];
    [headerViewController reload];
  }

  else
  {
    v25 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:self->_editingContact];
    editingContactAvatarProvider = self->_editingContactAvatarProvider;
    self->_editingContactAvatarProvider = v25;

    headerViewController = [(CNMeCardSharingSettingsViewController *)self headerViewController];
    [headerViewController updateWithAvatarProvider:self->_editingContactAvatarProvider];
  }

  [(CNMeCardSharingSettingsViewController *)self preWarmContactPosterForContact:self->_editingContact];
  editingContact = [(CNMeCardSharingSettingsViewController *)self editingContact];
  givenName = [editingContact givenName];
  givenNameField = [(CNMeCardSharingSettingsViewController *)self givenNameField];
  [givenNameField setText:givenName];

  editingContact2 = [(CNMeCardSharingSettingsViewController *)self editingContact];
  familyName = [editingContact2 familyName];
  familyNameField = [(CNMeCardSharingSettingsViewController *)self familyNameField];
  [familyNameField setText:familyName];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __111__CNMeCardSharingSettingsViewController_avatarPosterEditorFromFlowManager_didUpdateContact_withVisualIdentity___block_invoke;
  v33[3] = &unk_1E74E6A88;
  v33[4] = self;
  [(CNMeCardSharingSettingsViewController *)self dismissViewControllerAnimated:1 completion:v33];
}

- (void)sharingEnabledDataSource:(id)source didChangeEnabledState:(BOOL)state
{
  stateCopy = state;
  sourceCopy = source;
  if (_os_feature_enabled_impl())
  {
    v7 = !stateCopy;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || ![(CNMeCardSharingSettingsViewController *)self multiplePhoneNumbersTiedToAppleID])
  {
    [(CNMeCardSharingSettingsViewController *)self notifyOfChangedEnablementState:stateCopy];
  }

  else
  {
    v8 = objc_opt_new();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__CNMeCardSharingSettingsViewController_sharingEnabledDataSource_didChangeEnabledState___block_invoke;
    v12[3] = &unk_1E74E2220;
    v13 = sourceCopy;
    selfCopy = self;
    v15 = stateCopy;
    [v8 setOnCancel:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__CNMeCardSharingSettingsViewController_sharingEnabledDataSource_didChangeEnabledState___block_invoke_2;
    v10[3] = &unk_1E74E2248;
    v10[4] = self;
    v11 = stateCopy;
    [v8 setOnContinue:v10];
    v9 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:v8];
    [(CNPhotoPickerNavigationViewController *)v9 setAllowRotation:0];
    [(CNPhotoPickerNavigationViewController *)v9 setModalPresentationStyle:0];
    [(CNMeCardSharingSettingsViewController *)self presentViewController:v9 animated:1 completion:&__block_literal_global_206];
  }
}

uint64_t __88__CNMeCardSharingSettingsViewController_sharingEnabledDataSource_didChangeEnabledState___block_invoke(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  [*(a1 + 32) setSharingEnabled:0];
  v3 = *(a1 + 40);
  v4 = (*(a1 + 48) & 1) == 0;

  return [v3 notifyOfChangedEnablementState:v4];
}

uint64_t __88__CNMeCardSharingSettingsViewController_sharingEnabledDataSource_didChangeEnabledState___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 notifyOfChangedEnablementState:v4];
}

- (void)notifyOfChangedEnablementState:(BOOL)state
{
  stateCopy = state;
  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView reloadData];

  delegate = [(CNMeCardSharingSettingsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [delegate2 sharingSettingsViewController:self didUpdateSharingState:stateCopy];
  }

  if (stateCopy)
  {

    [(CNMeCardSharingSettingsViewController *)self notifyDelegateOfChangesWithDidSaveToMeCard:0];
  }
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  contactCopy = contact;
  imageCopy = image;
  objc_storeStrong(&self->_editingContactImage, image);
  if (contactCopy)
  {
    [(CNMeCardSharingSettingsViewController *)self updateContact:self->_editingContact withImagePropertiesFromContact:contactCopy];
    if (self->_editingContactAvatarProvider)
    {
      headerViewController = [(CNMeCardSharingSettingsViewController *)self headerViewController];
      [headerViewController reload];
    }

    else
    {
      v10 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:self->_editingContact];
      editingContactAvatarProvider = self->_editingContactAvatarProvider;
      self->_editingContactAvatarProvider = v10;

      headerViewController = [(CNMeCardSharingSettingsViewController *)self headerViewController];
      [headerViewController updateWithAvatarProvider:self->_editingContactAvatarProvider];
    }
  }

  presentedViewController = [(CNMeCardSharingSettingsViewController *)self presentedViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__CNMeCardSharingSettingsViewController_photoPicker_didUpdatePhotoForContact_withContactImage___block_invoke;
  v13[3] = &unk_1E74E6A88;
  v13[4] = self;
  [presentedViewController dismissViewControllerAnimated:1 completion:v13];
}

- (void)photoPickerDidCancel:(id)cancel
{
  presentedViewController = [(CNMeCardSharingSettingsViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)presentNameEditor
{
  v3 = [CNMeCardSharingSettingsNameEditorViewController alloc];
  textFields = [(CNMeCardSharingSettingsViewController *)self textFields];
  v6 = [(CNMeCardSharingSettingsNameEditorViewController *)v3 initWithTextFields:textFields];

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [(CNMeCardSharingSettingsViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)preWarmContactPosterForContact:(id)contact
{
  contactCopy = contact;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:28])
  {
    showsWallpaperSuggestionsGalleryPicker = [(CNMeCardSharingSettingsViewController *)self showsWallpaperSuggestionsGalleryPicker];
  }

  else
  {
    showsWallpaperSuggestionsGalleryPicker = 0;
  }

  view = [(CNMeCardSharingSettingsViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (showsWallpaperSuggestionsGalleryPicker)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      if (windowScene)
      {
        currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
        nicknameProvider = [currentEnvironment2 nicknameProvider];
        v14 = [nicknameProvider nicknameAsContactForContact:contactCopy];

        v15 = [[_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer alloc] initWithContact:contactCopy contactForSharedProfile:v14];
        [(CNMeCardSharingSettingsViewController *)self setCarouselPreWarmer:v15];

        carouselPreWarmer = [(CNMeCardSharingSettingsViewController *)self carouselPreWarmer];
        [carouselPreWarmer preWarmFirstPosterSnapshotIn:windowScene];
      }
    }
  }
}

- (void)presentPhotoPickerControllerForContact:(id)contact
{
  contactCopy = contact;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:28])
  {
    showsWallpaperSuggestionsGalleryPicker = [(CNMeCardSharingSettingsViewController *)self showsWallpaperSuggestionsGalleryPicker];

    if (showsWallpaperSuggestionsGalleryPicker)
    {
      editAvatarPosterFlowManager = [(CNMeCardSharingSettingsViewController *)self editAvatarPosterFlowManager];
      [(CNPhotoPickerViewController *)editAvatarPosterFlowManager startEditFlowWithSNaPContact:contactCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [CNPhotoPickerViewController alloc];
  v9 = +[CNContactStyle defaultStyle];
  v10 = +[CNPhotoPickerConfiguration contactsConfiguration];
  v11 = [v10 configurationBySettingAllowsPhotoCapture:1];
  editAvatarPosterFlowManager = [(CNPhotoPickerViewController *)v8 initWithContact:contactCopy style:v9 configuration:v11];

  [(CNPhotoPickerViewController *)editAvatarPosterFlowManager setDelegate:self];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"SHARING_PHOTOPICKER_ASSIGN_TITLE_OVERRIDE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityPickerViewController *)editAvatarPosterFlowManager setAssignActionTitleOverride:v13];

  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPhotoPickerViewController *)editAvatarPosterFlowManager setPreferredContentSize:?];
  [(CNMeCardSharingSettingsViewController *)self setPhotoPicker:editAvatarPosterFlowManager];
  view = [(CNMeCardSharingSettingsViewController *)self view];
  window = [view window];
  [window endEditing:1];

  photoPicker = [(CNMeCardSharingSettingsViewController *)self photoPicker];
  v17 = [CNPhotoPickerViewController navigationControllerForPicker:photoPicker];

  [(CNMeCardSharingSettingsViewController *)self presentViewController:v17 animated:1 completion:0];
LABEL_6:
}

- (double)viewHeight
{
  view = [(CNMeCardSharingSettingsViewController *)self view];
  [view bounds];
  v4 = v3;

  return v4;
}

- (void)sharingSettingsHeaderWasTapped:(id)tapped
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__CNMeCardSharingSettingsViewController_sharingSettingsHeaderWasTapped___block_invoke;
  v3[3] = &unk_1E74E21D0;
  v3[4] = self;
  [(CNMeCardSharingSettingsViewController *)self generateEditingContactWithCompletionHandler:v3];
}

uint64_t __72__CNMeCardSharingSettingsViewController_sharingSettingsHeaderWasTapped___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) presentPhotoPickerControllerForContact:a2];
  }

  return result;
}

- (void)generateEditingContactWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  editingContactAvatarProvider = self->_editingContactAvatarProvider;
  if (editingContactAvatarProvider)
  {
    v6 = editingContactAvatarProvider;
  }

  else
  {
    v7 = [(CNMeCardSharingAvatarProvider *)self->_avatarProvider conformsToProtocol:&unk_1F0DB11E8];
    avatarProvider = self->_avatarProvider;
    if (!v7)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__CNMeCardSharingSettingsViewController_generateEditingContactWithCompletionHandler___block_invoke;
      v22[3] = &unk_1E74E2EB0;
      v22[4] = self;
      v23 = handlerCopy;
      [(CNMeCardSharingAvatarProvider *)avatarProvider generateAvatarImageOfSize:v22 imageHandler:220.0, 220.0];

      goto LABEL_6;
    }

    v6 = avatarProvider;
  }

  v9 = v6;
  imageData = [(CNMeCardSharingContactAvatarProvider *)v6 imageData];
  [(CNMeCardSharingContactAvatarProvider *)v9 cropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  thumbnailImageData = [(CNMeCardSharingContactAvatarProvider *)v9 thumbnailImageData];
  wallpaper = [(CNMeCardSharingContactAvatarProvider *)v9 wallpaper];

  v21 = [(CNMutableContact *)self->_editingContact mutableCopy];
  [v21 setImageData:imageData];
  [v21 setCropRect:{v12, v14, v16, v18}];
  [v21 setThumbnailImageData:thumbnailImageData];
  [v21 setGivenName:self->_editingGivenName];
  [v21 setFamilyName:self->_editingFamilyName];
  [v21 setWallpaper:wallpaper];
  (*(handlerCopy + 2))(handlerCopy, v21);

LABEL_6:
}

void __85__CNMeCardSharingSettingsViewController_generateEditingContactWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  image = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 logger];
    v8 = [v5 localizedDescription];
    [v7 logErrorGeneratingAvatarForPhotoPickerWithDescription:v8];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v6[128] mutableCopy];
    v10 = UIImagePNGRepresentation(image);
    [v9 setImageData:v10];
    [v9 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v9 setThumbnailImageData:v10];
    [v9 setGivenName:*(*(a1 + 32) + 1040)];
    [v9 setFamilyName:*(*(a1 + 32) + 1048)];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateContact:(id)contact withNamePropertiesFromContact:(id)fromContact
{
  fromContactCopy = fromContact;
  contactCopy = contact;
  givenName = [fromContactCopy givenName];
  [contactCopy setGivenName:givenName];

  familyName = [fromContactCopy familyName];

  [contactCopy setFamilyName:familyName];
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

  wallpaper = [fromContactCopy wallpaper];
  [contactCopy setWallpaper:wallpaper];

  watchWallpaperImageData = [fromContactCopy watchWallpaperImageData];

  [contactCopy setWatchWallpaperImageData:watchWallpaperImageData];
}

- (void)updateContact:(id)contact withEditedContact:(id)editedContact
{
  editedContactCopy = editedContact;
  contactCopy = contact;
  [(CNMeCardSharingSettingsViewController *)self updateContact:contactCopy withImagePropertiesFromContact:editedContactCopy];
  [(CNMeCardSharingSettingsViewController *)self updateContact:contactCopy withNamePropertiesFromContact:editedContactCopy];
}

- (void)saveDraftContact
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  if (self->_shouldSetAsMeContact)
  {
    [(CNMutableContact *)self->_editingContact setGivenName:self->_editingGivenName];
    [(CNMutableContact *)self->_editingContact setFamilyName:self->_editingFamilyName];
    v4 = self->_editingContact;
    logger = self->_logger;
    identifier = [(CNMutableContact *)self->_editingContact identifier];
    [(CNSharingProfileLogger *)logger logSettingsSavingContact:identifier];

    [v3 addContact:self->_editingContact toContainerWithIdentifier:0];
  }

  else if ([(CNContact *)self->_contact hasBeenPersisted])
  {
    v4 = [(CNContact *)self->_contact mutableCopy];
    [(CNMeCardSharingSettingsViewController *)self updateContact:v4 withImagePropertiesFromContact:self->_editingContact];
    v7 = self->_logger;
    identifier2 = [(CNMutableContact *)v4 identifier];
    [(CNSharingProfileLogger *)v7 logSettingsSavingContact:identifier2];

    [v3 updateContact:v4];
  }

  else
  {
    v4 = 0;
  }

  contactStore = [(CNMeCardSharingSettingsViewController *)self contactStore];
  v26 = 0;
  v10 = [contactStore executeSaveRequest:v3 error:&v26];
  v11 = v26;

  if ((v10 & 1) == 0)
  {
    v20 = self->_logger;
    localizedDescription = [v11 localizedDescription];
    [(CNSharingProfileLogger *)v20 logSettingsErrorSavingContactWithDescription:localizedDescription];
LABEL_15:

    goto LABEL_16;
  }

  v12 = self->_logger;
  if (self->_shouldSetAsMeContact)
  {
    [(CNSharingProfileLogger *)v12 logSettingsSettingMeContact];
    contactStore2 = [(CNMeCardSharingSettingsViewController *)self contactStore];
    v25 = 0;
    v14 = [contactStore2 setMeContact:v4 error:&v25];
    v15 = v25;

    if ((v14 & 1) == 0)
    {
      v24 = self->_logger;
      localizedDescription = [v15 localizedDescription];
      [(CNSharingProfileLogger *)v24 logSettingsErrorSettingMeContactWithDescription:localizedDescription];

      goto LABEL_15;
    }

    self->_shouldSetAsMeContact = 0;
    v16 = [(CNMutableContact *)v4 copy];
    contact = self->_contact;
    self->_contact = v16;

    [(CNSharingProfileLogger *)self->_logger logSettingsSuccessSavingContact];
    delegate = [(CNMeCardSharingSettingsViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  [(CNSharingProfileLogger *)v12 logSettingsSuccessSavingContact];
  delegate2 = [(CNMeCardSharingSettingsViewController *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
LABEL_13:
    localizedDescription = [(CNMeCardSharingSettingsViewController *)self delegate];
    [localizedDescription sharingSettingsViewControllerDidUpdateContact:self];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)performSaveToMeCardAction
{
  [(CNMeCardSharingSettingsViewController *)self saveDraftContact];

  [(CNMeCardSharingSettingsViewController *)self notifyDelegateOfChangesWithDidSaveToMeCard:1];
}

- (void)promptForSavingToMeCardIfNeeded
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:27];

  if (v5)
  {

    [(CNMeCardSharingSettingsViewController *)self performSaveToMeCardAction];
  }

  else
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
    v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = MEMORY[0x1E69DC648];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CONFIRM" value:&stru_1F0CE7398 table:@"Localized"];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__CNMeCardSharingSettingsViewController_promptForSavingToMeCardIfNeeded__block_invoke;
    v24[3] = &unk_1E74E6C28;
    v24[4] = self;
    v15 = [v12 actionWithTitle:v14 style:0 handler:v24];
    [v11 addAction:v15];

    v16 = MEMORY[0x1E69DC648];
    v17 = CNContactsUIBundle();
    v18 = [v17 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__CNMeCardSharingSettingsViewController_promptForSavingToMeCardIfNeeded__block_invoke_2;
    v23[3] = &unk_1E74E6C28;
    v23[4] = self;
    v19 = [v16 actionWithTitle:v18 style:1 handler:v23];
    [v11 addAction:v19];

    selfCopy = self;
    presentedViewController = [(CNMeCardSharingSettingsViewController *)selfCopy presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [(CNMeCardSharingSettingsViewController *)selfCopy presentedViewController];

      selfCopy = presentedViewController2;
    }

    [(CNMeCardSharingSettingsViewController *)selfCopy presentViewController:v11 animated:1 completion:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNMeCardSharingSettingsViewController *)self presentNameEditor];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy row])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];

    enabledDataSource = [(CNMeCardSharingSettingsViewController *)self enabledDataSource];
    editingGivenName = [enabledDataSource itemForIndex:0];

    label = [editingGivenName label];
    textLabel = [v10 textLabel];
    [textLabel setText:label];

    [v10 setSelectionStyle:0];
    accessoryView = [editingGivenName accessoryView];
    [v10 setAccessoryView:accessoryView];
    goto LABEL_5;
  }

  v8 = [pathCopy row];

  if (v8 == 1)
  {
    v9 = +[CNMeCardSharingSettingsNameCell cellIdentifier];
    v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

    editingGivenName = [(CNMeCardSharingSettingsViewController *)self editingGivenName];
    accessoryView = [(CNMeCardSharingSettingsViewController *)self editingFamilyName];
    [v10 setUpWithGivenName:editingGivenName familyName:accessoryView];
LABEL_5:

    goto LABEL_7;
  }

  v16 = +[CNMeCardSharingSettingsPreferenceMenuCell cellIdentifier];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v16];

  [v10 setSharingAudience:{-[CNMeCardSharingSettingsViewController selectedSharingAudience](self, "selectedSharingAudience")}];
  [v10 setEnabled:{-[CNMeCardSharingSettingsViewController sharingEnabled](self, "sharingEnabled")}];
  [v10 setDelegate:self];
  [v10 setSelectionStyle:0];
LABEL_7:
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:secondarySystemBackgroundColor];

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(CNMeCardSharingSettingsViewController *)self sharingAudienceDataSource:view];
  sectionFooterLabel = [v4 sectionFooterLabel];

  return sectionFooterLabel;
}

- (id)textFieldForIndex:(int64_t)index
{
  textFields = [(CNMeCardSharingSettingsViewController *)self textFields];
  v5 = [textFields objectAtIndexedSubscript:index];

  return v5;
}

- (id)textFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (self->_nameOrder == 2)
  {
    v7[0] = self->_familyNameField;
    v2 = &OBJC_IVAR___CNMeCardSharingSettingsViewController__givenNameField;
    p_givenNameField = v7;
  }

  else
  {
    givenNameField = self->_givenNameField;
    v2 = &OBJC_IVAR___CNMeCardSharingSettingsViewController__familyNameField;
    p_givenNameField = &givenNameField;
  }

  p_givenNameField[1] = *(&self->super.super.super.isa + *v2);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v4;
}

- (void)textFieldDidEndEditing:(id)editing
{
  v11[1] = *MEMORY[0x1E69E9840];
  text = [(UITextField *)self->_givenNameField text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = text;

  text2 = [(UITextField *)self->_familyNameField text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = text2;

  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:0];
  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [tableView reloadRowsAtIndexPaths:v10 withRowAnimation:100];

  if (![(CNMeCardSharingSettingsViewController *)self isPresentedInOnboarding])
  {
    [(CNMeCardSharingSettingsViewController *)self notifyDelegateOfChangesWithDidSaveToMeCard:0];
  }
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
      v7 = &OBJC_IVAR___CNMeCardSharingSettingsViewController__givenNameField;
    }

    else
    {
      v7 = &OBJC_IVAR___CNMeCardSharingSettingsViewController__familyNameField;
    }

    [*(&self->super.super.super.isa + *v7) becomeFirstResponder];
  }

  else
  {
    [(UITextField *)returnCopy resignFirstResponder];
  }

  return 0;
}

- (void)updateTableViewBottomPaddingIfNeeded
{
  buttonTray = [(CNMeCardSharingSettingsViewController *)self buttonTray];
  [buttonTray frame];
  v5 = v4;

  if (v5 > 0.0)
  {
    tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
    [tableView _bottomPadding];
    v8 = v7;

    if (v8 < v5)
    {
      tableView2 = [(CNMeCardSharingSettingsViewController *)self tableView];
      [tableView2 _setBottomPadding:v5];
    }
  }
}

- (double)availableHeaderHeight
{
  view = [(CNMeCardSharingSettingsViewController *)self view];
  [view bounds];
  v5 = v4;

  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView rectForSection:0];
  v8 = v7;

  tableView2 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView2 rectForFooterInSection:0];
  v11 = v10;

  tableView3 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView3 _bottomPadding];
  v14 = v5 - v8 - v11 - v13;
  view2 = [(CNMeCardSharingSettingsViewController *)self view];
  [view2 safeAreaInsets];
  v17 = v14 - v16;

  return v17;
}

- (void)updateHeaderViewFrame
{
  [(CNMeCardSharingSettingsViewController *)self availableHeaderHeight];
  v4 = v3;
  [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController minHeight];
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController maxHeight];
  if (v6 >= v7)
  {
    v6 = v7;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController minBottomPadding];
    v6 = v6 + fmax((v4 - v6 - v10) * 0.5, 0.0);
  }

  view = [(CNMeCardSharingSettingsViewController *)self view];
  [view bounds];
  v13 = v12;

  view2 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  [view2 frame];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v13;
  v19.size.height = v6;
  v15 = CGRectEqualToRect(v18, v19);

  if (!v15)
  {
    view3 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
    [view3 setFrame:{0.0, 0.0, v13, v6}];
  }
}

- (void)updateHeaderViewFrameAndTableView
{
  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrame];
  view = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView setTableHeaderView:view];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView reloadData];

  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrameAndTableView];
}

- (void)adjustInsetsForKeyboardOverlap:(double)overlap
{
  [(CNMeCardSharingSettingsViewController *)self keyboardHeight];
  if (v5 != overlap)
  {
    [(CNMeCardSharingSettingsViewController *)self setKeyboardHeight:overlap];
  }

  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (v12 >= overlap)
  {
    if (overlap != 0.0)
    {
      return;
    }

    [(CNMeCardSharingSettingsViewController *)self tableViewBottomInsets];
    v15 = v16;
  }

  else
  {
    [(CNMeCardSharingSettingsViewController *)self setTableViewBottomInsets:v12];
    v15 = v12 + overlap;
  }

  if (v15 != v12)
  {
    tableView2 = [(CNMeCardSharingSettingsViewController *)self tableView];
    [tableView2 contentOffset];
    v19 = v18;
    v21 = v20;
    v22 = *MEMORY[0x1E695EFF8];
    v23 = *(MEMORY[0x1E695EFF8] + 8);

    tableView3 = [(CNMeCardSharingSettingsViewController *)self tableView];
    [tableView3 setContentInset:{v8, v10, v15, v14}];

    tableView4 = [(CNMeCardSharingSettingsViewController *)self tableView];
    [tableView4 setScrollIndicatorInsets:{v8, v10, v15, v14}];

    if (v22 == v19 && v23 == v21)
    {
      tableView5 = [(CNMeCardSharingSettingsViewController *)self tableView];
      [tableView5 contentOffset];
      v29 = v28;
      v30 = -v8;

      if (v29 != v30)
      {
        tableView6 = [(CNMeCardSharingSettingsViewController *)self tableView];
        [tableView6 contentOffset];
        v32 = v31;
        tableView7 = [(CNMeCardSharingSettingsViewController *)self tableView];
        [tableView7 setContentOffset:{v32, v30}];
      }
    }
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

  view = [(CNMeCardSharingSettingsViewController *)self view];
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
  v35.origin.x = v24;
  v35.origin.y = v26;
  v35.size.width = v28;
  v35.size.height = v30;
  v34 = CGRectIntersection(v33, v35);
  [(CNMeCardSharingSettingsViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)familyNameDidChange:(id)change
{
  text = [change text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = text;

  MEMORY[0x1EEE66BB8](text, editingFamilyName);
}

- (void)givenNameDidChange:(id)change
{
  text = [change text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = text;

  MEMORY[0x1EEE66BB8](text, editingGivenName);
}

- (void)notifyDelegateOfChangesWithDidSaveMeCard:(BOOL)card contactImage:(id)image sharingResult:(id)result
{
  imageCopy = image;
  resultCopy = result;
  logger = self->_logger;
  v10 = [resultCopy description];
  [(CNSharingProfileLogger *)logger logSettingsReturningSharingResultWithDescription:v10];

  v11 = *MEMORY[0x1E6996540];
  imageData = [imageCopy imageData];
  LOBYTE(v11) = (*(v11 + 16))(v11, imageData);

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!self->_editingContactImage)
  {
    [(CNSharingProfileLogger *)self->_logger logSettingsReturningEmptyImageForNoChange];
LABEL_8:
    delegate = [(CNMeCardSharingSettingsViewController *)self delegate];
    [delegate sharingSettingsViewController:self didUpdateWithSharingResult:resultCopy];

    goto LABEL_9;
  }

  if ([imageCopy source] == 1)
  {
    variant = [imageCopy variant];

    if (!variant)
    {
      [(CNSharingProfileLogger *)self->_logger logSettingsReturningDefaultMonogram];
      goto LABEL_8;
    }
  }

  [(CNSharingProfileLogger *)self->_logger logSettingsReturningEmptyImage];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__CNMeCardSharingSettingsViewController_notifyDelegateOfChangesWithDidSaveMeCard_contactImage_sharingResult___block_invoke;
  v15[3] = &unk_1E74E77C0;
  v15[4] = self;
  v16 = resultCopy;
  [(CNMeCardSharingSettingsViewController *)self presentErrorAlertForEmptyPhotoIfNeededWithCompletion:v15];

LABEL_9:
}

void __109__CNMeCardSharingSettingsViewController_notifyDelegateOfChangesWithDidSaveMeCard_contactImage_sharingResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sharingSettingsViewController:*(a1 + 32) didUpdateWithSharingResult:*(a1 + 40)];
}

- (void)notifyDelegateOfChangesWithDidSaveToMeCard:(BOOL)card
{
  cardCopy = card;
  delegate = [(CNMeCardSharingSettingsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    editingContactImage = self->_editingContactImage;
    imageData = [(CNMutableContact *)self->_editingContact imageData];
    v9 = [(CNContactImage *)editingContactImage copyWithNewImageData:imageData];

    v10 = *MEMORY[0x1E6996540];
    wallpaper = [(CNMutableContact *)self->_editingContact wallpaper];
    posterArchiveData = [wallpaper posterArchiveData];
    v13 = (*(v10 + 16))(v10, posterArchiveData);

    wallpaper2 = [(CNMutableContact *)self->_editingContact wallpaper];
    editingContact = self->_editingContact;
    if (v13)
    {
      watchWallpaperImageData = [(CNMutableContact *)self->_editingContact watchWallpaperImageData];
      v17 = [(CNMeCardSharingSettingsViewController *)self sharingResultWithContactImage:v9 wallpaper:wallpaper2 watchWallpaperImageData:watchWallpaperImageData didSaveToMeCard:cardCopy];

      [(CNMeCardSharingSettingsViewController *)self notifyDelegateOfChangesWithDidSaveMeCard:cardCopy contactImage:v9 sharingResult:v17];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __84__CNMeCardSharingSettingsViewController_notifyDelegateOfChangesWithDidSaveToMeCard___block_invoke;
      v18[3] = &unk_1E74E21F8;
      v18[4] = self;
      v19 = v9;
      v20 = cardCopy;
      [wallpaper2 snapshotImageDataForWatchForContact:editingContact completion:v18];
    }
  }
}

void __84__CNMeCardSharingSettingsViewController_notifyDelegateOfChangesWithDidSaveToMeCard___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 1024) wallpaper];
  if (((*(*MEMORY[0x1E6996540] + 16))() & 1) == 0)
  {
    [v3 setGeneratedWatchImageData:v5];
  }

  v4 = [*(a1 + 32) sharingResultWithContactImage:*(a1 + 40) wallpaper:v3 watchWallpaperImageData:v5 didSaveToMeCard:*(a1 + 48)];
  [*(a1 + 32) notifyDelegateOfChangesWithDidSaveMeCard:*(a1 + 48) contactImage:*(a1 + 40) sharingResult:v4];
}

- (id)sharingResultWithContactImage:(id)image wallpaper:(id)wallpaper watchWallpaperImageData:(id)data didSaveToMeCard:(BOOL)card
{
  cardCopy = card;
  dataCopy = data;
  wallpaperCopy = wallpaper;
  imageCopy = image;
  v13 = [CNMeCardSharingResult alloc];
  editingGivenName = self->_editingGivenName;
  editingFamilyName = self->_editingFamilyName;
  resizedContactImageForMeCardSharing = [imageCopy resizedContactImageForMeCardSharing];

  v17 = [(CNMeCardSharingResult *)v13 initWithGivenName:editingGivenName familyName:editingFamilyName contactImage:resizedContactImageForMeCardSharing wallpaper:wallpaperCopy watchWallpaperImageData:dataCopy didSaveImageToMeCard:cardCopy];

  return v17;
}

- (void)didTapContinueButton:(id)button
{
  delegate = [(CNMeCardSharingSettingsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [delegate2 sharingSettingsViewController:self didUpdateSharingState:{-[CNMeCardSharingSettingsViewController sharingEnabled](self, "sharingEnabled")}];
  }

  delegate3 = [(CNMeCardSharingSettingsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate4 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [delegate4 sharingSettingsViewController:self didSelectSharingAudience:{-[CNMeCardSharingAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
  }

  [(CNMeCardSharingSettingsViewController *)self promptForSavingToMeCardIfNeeded];
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
    v14[2] = __94__CNMeCardSharingSettingsViewController_presentErrorAlertForEmptyPhotoIfNeededWithCompletion___block_invoke;
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

- (void)viewDidLayoutSubviews
{
  [(CNMeCardSharingSettingsViewController *)self updateTableViewBottomPaddingIfNeeded];
  v3.receiver = self;
  v3.super_class = CNMeCardSharingSettingsViewController;
  [(CNMeCardSharingSettingsViewController *)&v3 viewDidLayoutSubviews];
  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrameAndTableView];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v5.receiver = self;
  v5.super_class = CNMeCardSharingSettingsViewController;
  [(CNMeCardSharingSettingsViewController *)&v5 viewIsAppearing:appearing];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__CNMeCardSharingSettingsViewController_viewIsAppearing___block_invoke;
  v4[3] = &unk_1E74E21D0;
  v4[4] = self;
  [(CNMeCardSharingSettingsViewController *)self generateEditingContactWithCompletionHandler:v4];
}

uint64_t __57__CNMeCardSharingSettingsViewController_viewIsAppearing___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) preWarmContactPosterForContact:a2];
  }

  return result;
}

- (void)viewDidLoad
{
  v111[5] = *MEMORY[0x1E69E9840];
  v110.receiver = self;
  v110.super_class = CNMeCardSharingSettingsViewController;
  [(CNMeCardSharingSettingsViewController *)&v110 viewDidLoad];
  navigationItem = [(CNMeCardSharingSettingsViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationItem2 = [(CNMeCardSharingSettingsViewController *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(CNMeCardSharingSettingsViewController *)self view];
  [view bounds];
  v7 = [v5 initWithFrame:2 style:?];
  [(CNMeCardSharingSettingsViewController *)self setTableView:v7];

  tableView = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView setAutoresizingMask:18];

  tableView2 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  tableView5 = [(CNMeCardSharingSettingsViewController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[CNMeCardSharingSettingsNameCell cellIdentifier];
  [tableView5 registerClass:v13 forCellReuseIdentifier:v14];

  tableView6 = [(CNMeCardSharingSettingsViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[CNMeCardSharingSettingsPreferenceMenuCell cellIdentifier];
  [tableView6 registerClass:v16 forCellReuseIdentifier:v17];

  tableView7 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView7 setContentInsetAdjustmentBehavior:2];

  tableView8 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView8 setAutomaticallyAdjustsScrollIndicatorInsets:0];

  tableView9 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView9 setShowsVerticalScrollIndicator:0];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tableView10 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView10 setBackgroundColor:systemBackgroundColor];

  tableView11 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView11 _setTopPadding:0.0];

  tableView12 = [(CNMeCardSharingSettingsViewController *)self tableView];
  tabBarController = [(CNMeCardSharingSettingsViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  [tabBar bounds];
  v28 = v27;
  [tableView12 _bottomPadding];
  [tableView12 _setBottomPadding:v29 + v28];

  view2 = [(CNMeCardSharingSettingsViewController *)self view];
  tableView13 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [view2 addSubview:tableView13];

  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrame];
  view3 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  [view3 setAutoresizingMask:2];

  [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController willMoveToParentViewController:self];
  [(CNMeCardSharingSettingsViewController *)self addChildViewController:self->_headerViewController];
  view4 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  tableView14 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView14 setTableHeaderView:view4];

  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view5 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  [view5 setBackgroundColor:systemBackgroundColor2];

  [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController didMoveToParentViewController:self];
  v37 = objc_alloc(MEMORY[0x1E69DD0B0]);
  v38 = *MEMORY[0x1E695F058];
  v39 = *(MEMORY[0x1E695F058] + 8);
  v40 = *(MEMORY[0x1E695F058] + 16);
  v41 = *(MEMORY[0x1E695F058] + 24);
  v42 = [v37 initWithFrame:{*MEMORY[0x1E695F058], v39, v40, v41}];
  givenNameField = self->_givenNameField;
  self->_givenNameField = v42;

  v44 = *MEMORY[0x1E69DDCF8];
  v45 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextField *)self->_givenNameField setFont:v45];

  [(UITextField *)self->_givenNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_givenNameField setAutocorrectionType:1];
  givenName = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  [(UITextField *)self->_givenNameField setText:givenName];

  v47 = CNContactsUIBundle();
  v48 = [v47 localizedStringForKey:@"SHARING_GIVEN_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_givenNameField setPlaceholder:v48];

  [(UITextField *)self->_givenNameField addTarget:self action:sel_givenNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_givenNameField setDelegate:self];
  v49 = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v38, v39, v40, v41}];
  familyNameField = self->_familyNameField;
  self->_familyNameField = v49;

  v51 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v44];
  [(UITextField *)self->_familyNameField setFont:v51];

  [(UITextField *)self->_familyNameField setAutocorrectionType:1];
  [(UITextField *)self->_familyNameField setAdjustsFontForContentSizeCategory:1];
  familyName = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  [(UITextField *)self->_familyNameField setText:familyName];

  v53 = CNContactsUIBundle();
  v54 = [v53 localizedStringForKey:@"SHARING_FAMILY_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_familyNameField setPlaceholder:v54];

  [(UITextField *)self->_familyNameField addTarget:self action:sel_familyNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_familyNameField setDelegate:self];
  givenName2 = [(CNContact *)self->_contact givenName];
  if (givenName2 && (v56 = givenName2, [(CNContact *)self->_contact familyName], v57 = objc_claimAutoreleasedReturnValue(), v57, v56, v57))
  {
    v58 = 0;
  }

  else
  {
    v58 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    givenName3 = [(CNContact *)self->_contact givenName];
    [v58 setGivenName:givenName3];

    familyName2 = [(CNContact *)self->_contact familyName];
    [v58 setFamilyName:familyName2];
  }

  self->_nameOrder = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:v58 options:0];
  tableView15 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [tableView15 setKeyboardDismissMode:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  if ([(CNMeCardSharingSettingsViewController *)self isPresentedInOnboarding])
  {
    boldButton = [MEMORY[0x1E69B7CF8] boldButton];
    [(CNMeCardSharingSettingsViewController *)self setContinueButton:boldButton];

    continueButton = [(CNMeCardSharingSettingsViewController *)self continueButton];
    v67 = CNContactsUIBundle();
    v68 = [v67 localizedStringForKey:@"SHARING_DONE" value:&stru_1F0CE7398 table:@"Localized"];
    [continueButton setTitle:v68 forState:0];

    continueButton2 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    [continueButton2 addTarget:self action:sel_didTapContinueButton_ forControlEvents:64];

    continueButton3 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    [continueButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v71 = [objc_alloc(MEMORY[0x1E69B7D18]) initWithFrame:{v38, v39, v40, v41}];
    [(CNMeCardSharingSettingsViewController *)self setButtonTray:v71];

    buttonTray = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    [buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonTray2 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    continueButton4 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    [buttonTray2 addButton:continueButton4];

    tableView16 = [(CNMeCardSharingSettingsViewController *)self tableView];
    backgroundColor = [tableView16 backgroundColor];
    buttonTray3 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    [buttonTray3 setBackgroundColor:backgroundColor];

    view6 = [(CNMeCardSharingSettingsViewController *)self view];
    buttonTray4 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    [view6 addSubview:buttonTray4];

    v96 = MEMORY[0x1E696ACD8];
    buttonTray5 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    leadingAnchor = [buttonTray5 leadingAnchor];
    view7 = [(CNMeCardSharingSettingsViewController *)self view];
    layoutMarginsGuide = [view7 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v103 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v111[0] = v103;
    buttonTray6 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    trailingAnchor = [buttonTray6 trailingAnchor];
    view8 = [(CNMeCardSharingSettingsViewController *)self view];
    layoutMarginsGuide2 = [view8 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v97 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v111[1] = v97;
    buttonTray7 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    bottomAnchor = [buttonTray7 bottomAnchor];
    view9 = [(CNMeCardSharingSettingsViewController *)self view];
    bottomAnchor2 = [view9 bottomAnchor];
    v91 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v111[2] = v91;
    continueButton5 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    leadingAnchor3 = [continueButton5 leadingAnchor];
    [(CNMeCardSharingSettingsViewController *)self buttonTray];
    v81 = v109 = v58;
    leadingAnchor4 = [v81 leadingAnchor];
    v83 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v111[3] = v83;
    continueButton6 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    trailingAnchor3 = [continueButton6 trailingAnchor];
    buttonTray8 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    trailingAnchor4 = [buttonTray8 trailingAnchor];
    v88 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v111[4] = v88;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:5];
    [v96 activateConstraints:v89];

    v58 = v109;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNMeCardSharingSettingsViewController;
  [(CNMeCardSharingSettingsViewController *)&v4 dealloc];
}

- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience showsWallpaperSuggestionsGalleryPicker:(BOOL)picker headerMode:(int64_t)self0 presentedInOnboarding:(BOOL)self1
{
  enabledCopy = enabled;
  storeCopy = store;
  contactCopy = contact;
  providerCopy = provider;
  nameProviderCopy = nameProvider;
  v56.receiver = self;
  v56.super_class = CNMeCardSharingSettingsViewController;
  v21 = [(CNMeCardSharingSettingsViewController *)&v56 initWithNibName:0 bundle:0];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v21->_contactStore, store);
  objc_storeStrong(&v22->_contact, contact);
  v22->_isPresentedInOnboarding = onboarding;
  if (!contactCopy)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695CF18]);
    editingContact = v22->_editingContact;
    v22->_editingContact = v25;

LABEL_7:
    v22->_shouldSetAsMeContact = 1;
    goto LABEL_8;
  }

  v23 = [contactCopy mutableCopy];
  v24 = v22->_editingContact;
  v22->_editingContact = v23;

  if (v22->_isPresentedInOnboarding && ([contactCopy hasBeenPersisted] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v27 = +[CNMeCardSharingPickerLayoutAttributes layoutAttributesForSettings];
  layoutAttributes = v22->_layoutAttributes;
  v22->_layoutAttributes = v27;

  objc_storeStrong(&v22->_avatarProvider, provider);
  v22->_showsWallpaperSuggestionsGalleryPicker = picker;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  v22->_headerMode = modeCopy;
  v32 = [[CNMeCardSharingSettingsHeaderViewController alloc] initWithAvatarProvider:v22->_avatarProvider mode:v22->_headerMode];
  headerViewController = v22->_headerViewController;
  v22->_headerViewController = v32;

  [(CNMeCardSharingSettingsHeaderViewController *)v22->_headerViewController setDelegate:v22];
  v34 = [[CNSNaPSetupFlowManager alloc] initWithPresenterDelegate:v22 contactStore:storeCopy mode:v22->_headerMode];
  editAvatarPosterFlowManager = v22->_editAvatarPosterFlowManager;
  v22->_editAvatarPosterFlowManager = v34;

  [(CNSNaPSetupFlowManager *)v22->_editAvatarPosterFlowManager setDelegate:v22];
  v36 = [[CNSharedProfileOnboardingController alloc] initWithContactStore:storeCopy];
  snapOnboardingController = v22->_snapOnboardingController;
  v22->_snapOnboardingController = v36;

  array = [MEMORY[0x1E695DF70] array];
  objc_storeStrong(&v22->_nameProvider, nameProvider);
  v39 = objc_alloc_init(CNMeCardSharingSettingsNameDataSource);
  nameDataSource = v22->_nameDataSource;
  v22->_nameDataSource = v39;

  [array addObject:v22->_nameDataSource];
  v41 = [[CNMeCardSharingEnabledDataSource alloc] initWithSharingEnabled:enabledCopy];
  enabledDataSource = v22->_enabledDataSource;
  v22->_enabledDataSource = v41;

  [(CNMeCardSharingEnabledDataSource *)v22->_enabledDataSource setDelegate:v22];
  [array addObject:v22->_enabledDataSource];
  v43 = [[CNMeCardSharingAudienceDataSource alloc] initWithSelectedSharingAudience:audience];
  sharingAudienceDataSource = v22->_sharingAudienceDataSource;
  v22->_sharingAudienceDataSource = v43;

  if (enabledCopy)
  {
    [array addObject:v22->_sharingAudienceDataSource];
  }

  v45 = [array copy];
  sectionDataSources = v22->_sectionDataSources;
  v22->_sectionDataSources = v45;

  givenName = [(CNMeCardSharingNameProvider *)v22->_nameProvider givenName];
  editingGivenName = v22->_editingGivenName;
  v22->_editingGivenName = givenName;

  familyName = [(CNMeCardSharingNameProvider *)v22->_nameProvider familyName];
  editingFamilyName = v22->_editingFamilyName;
  v22->_editingFamilyName = familyName;

  v51 = objc_alloc_init(CNSharingProfileLogger);
  logger = v22->_logger;
  v22->_logger = v51;

  v53 = v22;
LABEL_14:

  return v22;
}

- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience showsWallpaperSuggestionsGalleryPicker:(BOOL)picker headerMode:(int64_t)self0
{
  LOBYTE(v12) = 0;
  LOBYTE(v11) = picker;
  return [(CNMeCardSharingSettingsViewController *)self initWithContactStore:store contact:contact avatarProvider:provider nameProvider:nameProvider sharingEnabled:enabled selectedSharingAudience:audience showsWallpaperSuggestionsGalleryPicker:v11 headerMode:mode presentedInOnboarding:v12];
}

- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience
{
  enabledCopy = enabled;
  v14 = MEMORY[0x1E69966E8];
  nameProviderCopy = nameProvider;
  providerCopy = provider;
  contactCopy = contact;
  storeCopy = store;
  currentEnvironment = [v14 currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  LOBYTE(v24) = 0;
  LOBYTE(v23) = [featureFlags isFeatureEnabled:28];
  v21 = [(CNMeCardSharingSettingsViewController *)self initWithContactStore:storeCopy contact:contactCopy avatarProvider:providerCopy nameProvider:nameProviderCopy sharingEnabled:enabledCopy selectedSharingAudience:audience showsWallpaperSuggestionsGalleryPicker:v23 headerMode:0 presentedInOnboarding:v24];

  return v21;
}

- (id)initForOnboardingWithContactStore:(id)store contact:(id)contact avatarProvider:(id)provider nameProvider:(id)nameProvider sharingEnabled:(BOOL)enabled selectedSharingAudience:(unint64_t)audience showsWallpaperSuggestionsGalleryPicker:(BOOL)picker headerMode:(int64_t)self0
{
  enabledCopy = enabled;
  contactCopy = contact;
  LOBYTE(v32) = 1;
  LOBYTE(v31) = picker;
  v17 = [(CNMeCardSharingSettingsViewController *)self initWithContactStore:store contact:contactCopy avatarProvider:provider nameProvider:nameProvider sharingEnabled:enabledCopy selectedSharingAudience:audience showsWallpaperSuggestionsGalleryPicker:v31 headerMode:mode presentedInOnboarding:v32];
  v18 = objc_alloc(MEMORY[0x1E695CD88]);
  imageData = [contactCopy imageData];
  [contactCopy cropRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [MEMORY[0x1E695DF00] now];
  v29 = [v18 initWithImageData:imageData cropRect:v28 lastUsedDate:{v21, v23, v25, v27}];
  [(CNMeCardSharingSettingsViewController *)v17 setEditingContactImage:v29];

  return v17;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_2_6491 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_2_6491, &__block_literal_global_6492);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_2_6493;

  return v3;
}

void __66__CNMeCardSharingSettingsViewController_descriptorForRequiredKeys__block_invoke()
{
  v13[12] = *MEMORY[0x1E69E9840];
  v0 = +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v1 = *MEMORY[0x1E695C278];
  v13[0] = v0;
  v13[1] = v1;
  v2 = *MEMORY[0x1E695C238];
  v13[2] = *MEMORY[0x1E695C400];
  v13[3] = v2;
  v3 = *MEMORY[0x1E6996A78];
  v13[4] = *MEMORY[0x1E695C270];
  v13[5] = v3;
  v4 = *MEMORY[0x1E695C428];
  v13[6] = *MEMORY[0x1E695C420];
  v13[7] = v4;
  v13[8] = *MEMORY[0x1E695C438];
  v5 = +[CNSNaPSetupFlowManager descriptorForRequiredKeys];
  v13[9] = v5;
  v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v13[10] = v6;
  v7 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForNameOrder];
  v13[11] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:12];

  v9 = MEMORY[0x1E695CD58];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNMeCardSharingSettingsViewController descriptorForRequiredKeys]_block_invoke"];
  v11 = [v9 descriptorWithKeyDescriptors:v8 description:v10];

  v12 = descriptorForRequiredKeys_cn_once_object_2_6493;
  descriptorForRequiredKeys_cn_once_object_2_6493 = v11;
}

@end