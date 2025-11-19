@interface CNMeCardSharingSettingsViewController
+ (id)descriptorForRequiredKeys;
- (BOOL)isPresentingModalViewController;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8;
- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8 showsWallpaperSuggestionsGalleryPicker:(BOOL)a9 headerMode:(int64_t)a10;
- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8 showsWallpaperSuggestionsGalleryPicker:(BOOL)a9 headerMode:(int64_t)a10 presentedInOnboarding:(BOOL)a11;
- (CNMeCardSharingSettingsViewControllerDelegate)delegate;
- (double)availableHeaderHeight;
- (double)viewHeight;
- (id)initForOnboardingWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8 showsWallpaperSuggestionsGalleryPicker:(BOOL)a9 headerMode:(int64_t)a10;
- (id)sharingResultWithContactImage:(id)a3 wallpaper:(id)a4 watchWallpaperImageData:(id)a5 didSaveToMeCard:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)textFieldForIndex:(int64_t)a3;
- (id)textFields;
- (void)adjustInsetsForKeyboardOverlap:(double)a3;
- (void)avatarPosterEditorFromFlowManager:(id)a3 didUpdateContact:(id)a4 withVisualIdentity:(id)a5;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)didTapContinueButton:(id)a3;
- (void)familyNameDidChange:(id)a3;
- (void)generateEditingContactWithCompletionHandler:(id)a3;
- (void)givenNameDidChange:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)notifyDelegateOfChangesWithDidSaveMeCard:(BOOL)a3 contactImage:(id)a4 sharingResult:(id)a5;
- (void)notifyDelegateOfChangesWithDidSaveToMeCard:(BOOL)a3;
- (void)notifyOfChangedEnablementState:(BOOL)a3;
- (void)performSaveToMeCardAction;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
- (void)preWarmContactPosterForContact:(id)a3;
- (void)presentErrorAlertForEmptyPhotoIfNeededWithCompletion:(id)a3;
- (void)presentNameEditor;
- (void)presentPhotoPickerControllerForContact:(id)a3;
- (void)promptForSavingToMeCardIfNeeded;
- (void)saveDraftContact;
- (void)sharingEnabledDataSource:(id)a3 didChangeEnabledState:(BOOL)a4;
- (void)sharingSettingsHeaderWasTapped:(id)a3;
- (void)sharingSettingsPreferenceMenuCell:(id)a3 didSelectSharingAudience:(unint64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateContact:(id)a3 withEditedContact:(id)a4;
- (void)updateContact:(id)a3 withImagePropertiesFromContact:(id)a4;
- (void)updateContact:(id)a3 withNamePropertiesFromContact:(id)a4;
- (void)updateHeaderViewFrame;
- (void)updateHeaderViewFrameAndTableView;
- (void)updateTableViewBottomPaddingIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
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

- (void)sharingSettingsPreferenceMenuCell:(id)a3 didSelectSharingAudience:(unint64_t)a4
{
  v6 = [(CNMeCardSharingSettingsViewController *)self sharingAudienceDataSource];
  [v6 setSelectedSharingAudience:a4];

  v7 = [(CNMeCardSharingSettingsViewController *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [v8 sharingSettingsViewController:self didSelectSharingAudience:{-[CNMeCardSharingAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
  }

  v9 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v9 reloadData];
}

- (BOOL)isPresentingModalViewController
{
  v2 = [(CNMeCardSharingSettingsViewController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)avatarPosterEditorFromFlowManager:(id)a3 didUpdateContact:(id)a4 withVisualIdentity:(id)a5
{
  v7 = MEMORY[0x1E695CD88];
  v8 = a5;
  v9 = a4;
  v10 = [v7 alloc];
  v11 = [v8 imageData];
  [v8 cropRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [MEMORY[0x1E695DF00] now];
  v21 = [v10 initWithImageData:v11 cropRect:v20 lastUsedDate:{v13, v15, v17, v19}];
  editingContactImage = self->_editingContactImage;
  self->_editingContactImage = v21;

  v23 = [v8 contactImageSource];
  [(CNContactImage *)self->_editingContactImage setSource:v23];
  [(CNMeCardSharingSettingsViewController *)self updateContact:self->_editingContact withEditedContact:v9];

  if (self->_editingContactAvatarProvider)
  {
    v24 = [(CNMeCardSharingSettingsViewController *)self headerViewController];
    [v24 reload];
  }

  else
  {
    v25 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:self->_editingContact];
    editingContactAvatarProvider = self->_editingContactAvatarProvider;
    self->_editingContactAvatarProvider = v25;

    v24 = [(CNMeCardSharingSettingsViewController *)self headerViewController];
    [v24 updateWithAvatarProvider:self->_editingContactAvatarProvider];
  }

  [(CNMeCardSharingSettingsViewController *)self preWarmContactPosterForContact:self->_editingContact];
  v27 = [(CNMeCardSharingSettingsViewController *)self editingContact];
  v28 = [v27 givenName];
  v29 = [(CNMeCardSharingSettingsViewController *)self givenNameField];
  [v29 setText:v28];

  v30 = [(CNMeCardSharingSettingsViewController *)self editingContact];
  v31 = [v30 familyName];
  v32 = [(CNMeCardSharingSettingsViewController *)self familyNameField];
  [v32 setText:v31];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __111__CNMeCardSharingSettingsViewController_avatarPosterEditorFromFlowManager_didUpdateContact_withVisualIdentity___block_invoke;
  v33[3] = &unk_1E74E6A88;
  v33[4] = self;
  [(CNMeCardSharingSettingsViewController *)self dismissViewControllerAnimated:1 completion:v33];
}

- (void)sharingEnabledDataSource:(id)a3 didChangeEnabledState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v7 = !v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || ![(CNMeCardSharingSettingsViewController *)self multiplePhoneNumbersTiedToAppleID])
  {
    [(CNMeCardSharingSettingsViewController *)self notifyOfChangedEnablementState:v4];
  }

  else
  {
    v8 = objc_opt_new();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__CNMeCardSharingSettingsViewController_sharingEnabledDataSource_didChangeEnabledState___block_invoke;
    v12[3] = &unk_1E74E2220;
    v13 = v6;
    v14 = self;
    v15 = v4;
    [v8 setOnCancel:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__CNMeCardSharingSettingsViewController_sharingEnabledDataSource_didChangeEnabledState___block_invoke_2;
    v10[3] = &unk_1E74E2248;
    v10[4] = self;
    v11 = v4;
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

- (void)notifyOfChangedEnablementState:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v5 reloadData];

  v6 = [(CNMeCardSharingSettingsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [v8 sharingSettingsViewController:self didUpdateSharingState:v3];
  }

  if (v3)
  {

    [(CNMeCardSharingSettingsViewController *)self notifyDelegateOfChangesWithDidSaveToMeCard:0];
  }
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_storeStrong(&self->_editingContactImage, a5);
  if (v7)
  {
    [(CNMeCardSharingSettingsViewController *)self updateContact:self->_editingContact withImagePropertiesFromContact:v7];
    if (self->_editingContactAvatarProvider)
    {
      v9 = [(CNMeCardSharingSettingsViewController *)self headerViewController];
      [v9 reload];
    }

    else
    {
      v10 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:self->_editingContact];
      editingContactAvatarProvider = self->_editingContactAvatarProvider;
      self->_editingContactAvatarProvider = v10;

      v9 = [(CNMeCardSharingSettingsViewController *)self headerViewController];
      [v9 updateWithAvatarProvider:self->_editingContactAvatarProvider];
    }
  }

  v12 = [(CNMeCardSharingSettingsViewController *)self presentedViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__CNMeCardSharingSettingsViewController_photoPicker_didUpdatePhotoForContact_withContactImage___block_invoke;
  v13[3] = &unk_1E74E6A88;
  v13[4] = self;
  [v12 dismissViewControllerAnimated:1 completion:v13];
}

- (void)photoPickerDidCancel:(id)a3
{
  v3 = [(CNMeCardSharingSettingsViewController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentNameEditor
{
  v3 = [CNMeCardSharingSettingsNameEditorViewController alloc];
  v4 = [(CNMeCardSharingSettingsViewController *)self textFields];
  v6 = [(CNMeCardSharingSettingsNameEditorViewController *)v3 initWithTextFields:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [(CNMeCardSharingSettingsViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)preWarmContactPosterForContact:(id)a3
{
  v17 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  if ([v5 isFeatureEnabled:28])
  {
    v6 = [(CNMeCardSharingSettingsViewController *)self showsWallpaperSuggestionsGalleryPicker];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CNMeCardSharingSettingsViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 windowScene];

  if (v6)
  {
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      if (v9)
      {
        v12 = [MEMORY[0x1E69966E8] currentEnvironment];
        v13 = [v12 nicknameProvider];
        v14 = [v13 nicknameAsContactForContact:v17];

        v15 = [[_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer alloc] initWithContact:v17 contactForSharedProfile:v14];
        [(CNMeCardSharingSettingsViewController *)self setCarouselPreWarmer:v15];

        v16 = [(CNMeCardSharingSettingsViewController *)self carouselPreWarmer];
        [v16 preWarmFirstPosterSnapshotIn:v9];
      }
    }
  }
}

- (void)presentPhotoPickerControllerForContact:(id)a3
{
  v18 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  if ([v5 isFeatureEnabled:28])
  {
    v6 = [(CNMeCardSharingSettingsViewController *)self showsWallpaperSuggestionsGalleryPicker];

    if (v6)
    {
      v7 = [(CNMeCardSharingSettingsViewController *)self editAvatarPosterFlowManager];
      [(CNPhotoPickerViewController *)v7 startEditFlowWithSNaPContact:v18];
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
  v7 = [(CNPhotoPickerViewController *)v8 initWithContact:v18 style:v9 configuration:v11];

  [(CNPhotoPickerViewController *)v7 setDelegate:self];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"SHARING_PHOTOPICKER_ASSIGN_TITLE_OVERRIDE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityPickerViewController *)v7 setAssignActionTitleOverride:v13];

  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPhotoPickerViewController *)v7 setPreferredContentSize:?];
  [(CNMeCardSharingSettingsViewController *)self setPhotoPicker:v7];
  v14 = [(CNMeCardSharingSettingsViewController *)self view];
  v15 = [v14 window];
  [v15 endEditing:1];

  v16 = [(CNMeCardSharingSettingsViewController *)self photoPicker];
  v17 = [CNPhotoPickerViewController navigationControllerForPicker:v16];

  [(CNMeCardSharingSettingsViewController *)self presentViewController:v17 animated:1 completion:0];
LABEL_6:
}

- (double)viewHeight
{
  v2 = [(CNMeCardSharingSettingsViewController *)self view];
  [v2 bounds];
  v4 = v3;

  return v4;
}

- (void)sharingSettingsHeaderWasTapped:(id)a3
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

- (void)generateEditingContactWithCompletionHandler:(id)a3
{
  v4 = a3;
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
      v23 = v4;
      [(CNMeCardSharingAvatarProvider *)avatarProvider generateAvatarImageOfSize:v22 imageHandler:220.0, 220.0];

      goto LABEL_6;
    }

    v6 = avatarProvider;
  }

  v9 = v6;
  v10 = [(CNMeCardSharingContactAvatarProvider *)v6 imageData];
  [(CNMeCardSharingContactAvatarProvider *)v9 cropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CNMeCardSharingContactAvatarProvider *)v9 thumbnailImageData];
  v20 = [(CNMeCardSharingContactAvatarProvider *)v9 wallpaper];

  v21 = [(CNMutableContact *)self->_editingContact mutableCopy];
  [v21 setImageData:v10];
  [v21 setCropRect:{v12, v14, v16, v18}];
  [v21 setThumbnailImageData:v19];
  [v21 setGivenName:self->_editingGivenName];
  [v21 setFamilyName:self->_editingFamilyName];
  [v21 setWallpaper:v20];
  (*(v4 + 2))(v4, v21);

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

- (void)updateContact:(id)a3 withNamePropertiesFromContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 givenName];
  [v6 setGivenName:v7];

  v8 = [v5 familyName];

  [v6 setFamilyName:v8];
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

  v14 = [v5 wallpaper];
  [v6 setWallpaper:v14];

  v15 = [v5 watchWallpaperImageData];

  [v6 setWatchWallpaperImageData:v15];
}

- (void)updateContact:(id)a3 withEditedContact:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CNMeCardSharingSettingsViewController *)self updateContact:v7 withImagePropertiesFromContact:v6];
  [(CNMeCardSharingSettingsViewController *)self updateContact:v7 withNamePropertiesFromContact:v6];
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
    v6 = [(CNMutableContact *)self->_editingContact identifier];
    [(CNSharingProfileLogger *)logger logSettingsSavingContact:v6];

    [v3 addContact:self->_editingContact toContainerWithIdentifier:0];
  }

  else if ([(CNContact *)self->_contact hasBeenPersisted])
  {
    v4 = [(CNContact *)self->_contact mutableCopy];
    [(CNMeCardSharingSettingsViewController *)self updateContact:v4 withImagePropertiesFromContact:self->_editingContact];
    v7 = self->_logger;
    v8 = [(CNMutableContact *)v4 identifier];
    [(CNSharingProfileLogger *)v7 logSettingsSavingContact:v8];

    [v3 updateContact:v4];
  }

  else
  {
    v4 = 0;
  }

  v9 = [(CNMeCardSharingSettingsViewController *)self contactStore];
  v26 = 0;
  v10 = [v9 executeSaveRequest:v3 error:&v26];
  v11 = v26;

  if ((v10 & 1) == 0)
  {
    v20 = self->_logger;
    v21 = [v11 localizedDescription];
    [(CNSharingProfileLogger *)v20 logSettingsErrorSavingContactWithDescription:v21];
LABEL_15:

    goto LABEL_16;
  }

  v12 = self->_logger;
  if (self->_shouldSetAsMeContact)
  {
    [(CNSharingProfileLogger *)v12 logSettingsSettingMeContact];
    v13 = [(CNMeCardSharingSettingsViewController *)self contactStore];
    v25 = 0;
    v14 = [v13 setMeContact:v4 error:&v25];
    v15 = v25;

    if ((v14 & 1) == 0)
    {
      v24 = self->_logger;
      v21 = [v15 localizedDescription];
      [(CNSharingProfileLogger *)v24 logSettingsErrorSettingMeContactWithDescription:v21];

      goto LABEL_15;
    }

    self->_shouldSetAsMeContact = 0;
    v16 = [(CNMutableContact *)v4 copy];
    contact = self->_contact;
    self->_contact = v16;

    [(CNSharingProfileLogger *)self->_logger logSettingsSuccessSavingContact];
    v18 = [(CNMeCardSharingSettingsViewController *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  [(CNSharingProfileLogger *)v12 logSettingsSuccessSavingContact];
  v22 = [(CNMeCardSharingSettingsViewController *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
LABEL_13:
    v21 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [v21 sharingSettingsViewControllerDidUpdateContact:self];
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
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:27];

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

    v20 = self;
    v21 = [(CNMeCardSharingSettingsViewController *)v20 presentedViewController];

    if (v21)
    {
      v22 = [(CNMeCardSharingSettingsViewController *)v20 presentedViewController];

      v20 = v22;
    }

    [(CNMeCardSharingSettingsViewController *)v20 presentViewController:v11 animated:1 completion:0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 cellForRowAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNMeCardSharingSettingsViewController *)self presentNameEditor];
    [v8 deselectRowAtIndexPath:v6 animated:0];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 row])
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v7];

    v13 = [(CNMeCardSharingSettingsViewController *)self enabledDataSource];
    v11 = [v13 itemForIndex:0];

    v14 = [v11 label];
    v15 = [v10 textLabel];
    [v15 setText:v14];

    [v10 setSelectionStyle:0];
    v12 = [v11 accessoryView];
    [v10 setAccessoryView:v12];
    goto LABEL_5;
  }

  v8 = [v7 row];

  if (v8 == 1)
  {
    v9 = +[CNMeCardSharingSettingsNameCell cellIdentifier];
    v10 = [v6 dequeueReusableCellWithIdentifier:v9];

    v11 = [(CNMeCardSharingSettingsViewController *)self editingGivenName];
    v12 = [(CNMeCardSharingSettingsViewController *)self editingFamilyName];
    [v10 setUpWithGivenName:v11 familyName:v12];
LABEL_5:

    goto LABEL_7;
  }

  v16 = +[CNMeCardSharingSettingsPreferenceMenuCell cellIdentifier];
  v10 = [v6 dequeueReusableCellWithIdentifier:v16];

  [v10 setSharingAudience:{-[CNMeCardSharingSettingsViewController selectedSharingAudience](self, "selectedSharingAudience")}];
  [v10 setEnabled:{-[CNMeCardSharingSettingsViewController sharingEnabled](self, "sharingEnabled")}];
  [v10 setDelegate:self];
  [v10 setSelectionStyle:0];
LABEL_7:
  v17 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v17];

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(CNMeCardSharingSettingsViewController *)self sharingAudienceDataSource:a3];
  v5 = [v4 sectionFooterLabel];

  return v5;
}

- (id)textFieldForIndex:(int64_t)a3
{
  v4 = [(CNMeCardSharingSettingsViewController *)self textFields];
  v5 = [v4 objectAtIndexedSubscript:a3];

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

- (void)textFieldDidEndEditing:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(UITextField *)self->_givenNameField text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = v4;

  v6 = [(UITextField *)self->_familyNameField text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = v6;

  v8 = [(CNMeCardSharingSettingsViewController *)self tableView];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:0];
  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v8 reloadRowsAtIndexPaths:v10 withRowAnimation:100];

  if (![(CNMeCardSharingSettingsViewController *)self isPresentedInOnboarding])
  {
    [(CNMeCardSharingSettingsViewController *)self notifyDelegateOfChangesWithDidSaveToMeCard:0];
  }
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
    [(UITextField *)v4 resignFirstResponder];
  }

  return 0;
}

- (void)updateTableViewBottomPaddingIfNeeded
{
  v3 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
  [v3 frame];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = [(CNMeCardSharingSettingsViewController *)self tableView];
    [v6 _bottomPadding];
    v8 = v7;

    if (v8 < v5)
    {
      v9 = [(CNMeCardSharingSettingsViewController *)self tableView];
      [v9 _setBottomPadding:v5];
    }
  }
}

- (double)availableHeaderHeight
{
  v3 = [(CNMeCardSharingSettingsViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v6 rectForSection:0];
  v8 = v7;

  v9 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v9 rectForFooterInSection:0];
  v11 = v10;

  v12 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v12 _bottomPadding];
  v14 = v5 - v8 - v11 - v13;
  v15 = [(CNMeCardSharingSettingsViewController *)self view];
  [v15 safeAreaInsets];
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

  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController minBottomPadding];
    v6 = v6 + fmax((v4 - v6 - v10) * 0.5, 0.0);
  }

  v11 = [(CNMeCardSharingSettingsViewController *)self view];
  [v11 bounds];
  v13 = v12;

  v14 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  [v14 frame];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v13;
  v19.size.height = v6;
  v15 = CGRectEqualToRect(v18, v19);

  if (!v15)
  {
    v16 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
    [v16 setFrame:{0.0, 0.0, v13, v6}];
  }
}

- (void)updateHeaderViewFrameAndTableView
{
  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrame];
  v4 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  v3 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v3 setTableHeaderView:v4];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v4 reloadData];

  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrameAndTableView];
}

- (void)adjustInsetsForKeyboardOverlap:(double)a3
{
  [(CNMeCardSharingSettingsViewController *)self keyboardHeight];
  if (v5 != a3)
  {
    [(CNMeCardSharingSettingsViewController *)self setKeyboardHeight:a3];
  }

  v6 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (v12 >= a3)
  {
    if (a3 != 0.0)
    {
      return;
    }

    [(CNMeCardSharingSettingsViewController *)self tableViewBottomInsets];
    v15 = v16;
  }

  else
  {
    [(CNMeCardSharingSettingsViewController *)self setTableViewBottomInsets:v12];
    v15 = v12 + a3;
  }

  if (v15 != v12)
  {
    v17 = [(CNMeCardSharingSettingsViewController *)self tableView];
    [v17 contentOffset];
    v19 = v18;
    v21 = v20;
    v22 = *MEMORY[0x1E695EFF8];
    v23 = *(MEMORY[0x1E695EFF8] + 8);

    v24 = [(CNMeCardSharingSettingsViewController *)self tableView];
    [v24 setContentInset:{v8, v10, v15, v14}];

    v25 = [(CNMeCardSharingSettingsViewController *)self tableView];
    [v25 setScrollIndicatorInsets:{v8, v10, v15, v14}];

    if (v22 == v19 && v23 == v21)
    {
      v27 = [(CNMeCardSharingSettingsViewController *)self tableView];
      [v27 contentOffset];
      v29 = v28;
      v30 = -v8;

      if (v29 != v30)
      {
        v34 = [(CNMeCardSharingSettingsViewController *)self tableView];
        [v34 contentOffset];
        v32 = v31;
        v33 = [(CNMeCardSharingSettingsViewController *)self tableView];
        [v33 setContentOffset:{v32, v30}];
      }
    }
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

  v31 = [(CNMeCardSharingSettingsViewController *)self view];
  v14 = [v31 window];
  [v14 convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v31 convertRect:0 fromView:{v16, v18, v20, v22}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v31 bounds];
  v35.origin.x = v24;
  v35.origin.y = v26;
  v35.size.width = v28;
  v35.size.height = v30;
  v34 = CGRectIntersection(v33, v35);
  [(CNMeCardSharingSettingsViewController *)self adjustInsetsForKeyboardOverlap:CGRectGetHeight(v34)];
}

- (void)familyNameDidChange:(id)a3
{
  v4 = [a3 text];
  editingFamilyName = self->_editingFamilyName;
  self->_editingFamilyName = v4;

  MEMORY[0x1EEE66BB8](v4, editingFamilyName);
}

- (void)givenNameDidChange:(id)a3
{
  v4 = [a3 text];
  editingGivenName = self->_editingGivenName;
  self->_editingGivenName = v4;

  MEMORY[0x1EEE66BB8](v4, editingGivenName);
}

- (void)notifyDelegateOfChangesWithDidSaveMeCard:(BOOL)a3 contactImage:(id)a4 sharingResult:(id)a5
{
  v7 = a4;
  v8 = a5;
  logger = self->_logger;
  v10 = [v8 description];
  [(CNSharingProfileLogger *)logger logSettingsReturningSharingResultWithDescription:v10];

  v11 = *MEMORY[0x1E6996540];
  v12 = [v7 imageData];
  LOBYTE(v11) = (*(v11 + 16))(v11, v12);

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!self->_editingContactImage)
  {
    [(CNSharingProfileLogger *)self->_logger logSettingsReturningEmptyImageForNoChange];
LABEL_8:
    v14 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [v14 sharingSettingsViewController:self didUpdateWithSharingResult:v8];

    goto LABEL_9;
  }

  if ([v7 source] == 1)
  {
    v13 = [v7 variant];

    if (!v13)
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
  v16 = v8;
  [(CNMeCardSharingSettingsViewController *)self presentErrorAlertForEmptyPhotoIfNeededWithCompletion:v15];

LABEL_9:
}

void __109__CNMeCardSharingSettingsViewController_notifyDelegateOfChangesWithDidSaveMeCard_contactImage_sharingResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sharingSettingsViewController:*(a1 + 32) didUpdateWithSharingResult:*(a1 + 40)];
}

- (void)notifyDelegateOfChangesWithDidSaveToMeCard:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNMeCardSharingSettingsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    editingContactImage = self->_editingContactImage;
    v8 = [(CNMutableContact *)self->_editingContact imageData];
    v9 = [(CNContactImage *)editingContactImage copyWithNewImageData:v8];

    v10 = *MEMORY[0x1E6996540];
    v11 = [(CNMutableContact *)self->_editingContact wallpaper];
    v12 = [v11 posterArchiveData];
    v13 = (*(v10 + 16))(v10, v12);

    v14 = [(CNMutableContact *)self->_editingContact wallpaper];
    editingContact = self->_editingContact;
    if (v13)
    {
      v16 = [(CNMutableContact *)self->_editingContact watchWallpaperImageData];
      v17 = [(CNMeCardSharingSettingsViewController *)self sharingResultWithContactImage:v9 wallpaper:v14 watchWallpaperImageData:v16 didSaveToMeCard:v3];

      [(CNMeCardSharingSettingsViewController *)self notifyDelegateOfChangesWithDidSaveMeCard:v3 contactImage:v9 sharingResult:v17];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __84__CNMeCardSharingSettingsViewController_notifyDelegateOfChangesWithDidSaveToMeCard___block_invoke;
      v18[3] = &unk_1E74E21F8;
      v18[4] = self;
      v19 = v9;
      v20 = v3;
      [v14 snapshotImageDataForWatchForContact:editingContact completion:v18];
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

- (id)sharingResultWithContactImage:(id)a3 wallpaper:(id)a4 watchWallpaperImageData:(id)a5 didSaveToMeCard:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [CNMeCardSharingResult alloc];
  editingGivenName = self->_editingGivenName;
  editingFamilyName = self->_editingFamilyName;
  v16 = [v12 resizedContactImageForMeCardSharing];

  v17 = [(CNMeCardSharingResult *)v13 initWithGivenName:editingGivenName familyName:editingFamilyName contactImage:v16 wallpaper:v11 watchWallpaperImageData:v10 didSaveImageToMeCard:v6];

  return v17;
}

- (void)didTapContinueButton:(id)a3
{
  v4 = [(CNMeCardSharingSettingsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [v6 sharingSettingsViewController:self didUpdateSharingState:{-[CNMeCardSharingSettingsViewController sharingEnabled](self, "sharingEnabled")}];
  }

  v7 = [(CNMeCardSharingSettingsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNMeCardSharingSettingsViewController *)self delegate];
    [v9 sharingSettingsViewController:self didSelectSharingAudience:{-[CNMeCardSharingAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
  }

  [(CNMeCardSharingSettingsViewController *)self promptForSavingToMeCardIfNeeded];
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
    v14[2] = __94__CNMeCardSharingSettingsViewController_presentErrorAlertForEmptyPhotoIfNeededWithCompletion___block_invoke;
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

- (void)viewDidLayoutSubviews
{
  [(CNMeCardSharingSettingsViewController *)self updateTableViewBottomPaddingIfNeeded];
  v3.receiver = self;
  v3.super_class = CNMeCardSharingSettingsViewController;
  [(CNMeCardSharingSettingsViewController *)&v3 viewDidLayoutSubviews];
  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrameAndTableView];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNMeCardSharingSettingsViewController;
  [(CNMeCardSharingSettingsViewController *)&v5 viewIsAppearing:a3];
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
  v3 = [(CNMeCardSharingSettingsViewController *)self navigationItem];
  [v3 _setBackgroundHidden:1];

  v4 = [(CNMeCardSharingSettingsViewController *)self navigationItem];
  [v4 setLargeTitleDisplayMode:2];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = [(CNMeCardSharingSettingsViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:2 style:?];
  [(CNMeCardSharingSettingsViewController *)self setTableView:v7];

  v8 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v8 setAutoresizingMask:18];

  v9 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v9 setDelegate:self];

  v10 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v10 setDataSource:self];

  v11 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  v12 = [(CNMeCardSharingSettingsViewController *)self tableView];
  v13 = objc_opt_class();
  v14 = +[CNMeCardSharingSettingsNameCell cellIdentifier];
  [v12 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = [(CNMeCardSharingSettingsViewController *)self tableView];
  v16 = objc_opt_class();
  v17 = +[CNMeCardSharingSettingsPreferenceMenuCell cellIdentifier];
  [v15 registerClass:v16 forCellReuseIdentifier:v17];

  v18 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v18 setContentInsetAdjustmentBehavior:2];

  v19 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v19 setAutomaticallyAdjustsScrollIndicatorInsets:0];

  v20 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v20 setShowsVerticalScrollIndicator:0];

  v21 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v22 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v22 setBackgroundColor:v21];

  v23 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v23 _setTopPadding:0.0];

  v24 = [(CNMeCardSharingSettingsViewController *)self tableView];
  v25 = [(CNMeCardSharingSettingsViewController *)self tabBarController];
  v26 = [v25 tabBar];
  [v26 bounds];
  v28 = v27;
  [v24 _bottomPadding];
  [v24 _setBottomPadding:v29 + v28];

  v30 = [(CNMeCardSharingSettingsViewController *)self view];
  v31 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v30 addSubview:v31];

  [(CNMeCardSharingSettingsViewController *)self updateHeaderViewFrame];
  v32 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  [v32 setAutoresizingMask:2];

  [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController willMoveToParentViewController:self];
  [(CNMeCardSharingSettingsViewController *)self addChildViewController:self->_headerViewController];
  v33 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  v34 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v34 setTableHeaderView:v33];

  v35 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v36 = [(CNMeCardSharingSettingsHeaderViewController *)self->_headerViewController view];
  [v36 setBackgroundColor:v35];

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
  v46 = [(CNMeCardSharingNameProvider *)self->_nameProvider givenName];
  [(UITextField *)self->_givenNameField setText:v46];

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
  v52 = [(CNMeCardSharingNameProvider *)self->_nameProvider familyName];
  [(UITextField *)self->_familyNameField setText:v52];

  v53 = CNContactsUIBundle();
  v54 = [v53 localizedStringForKey:@"SHARING_FAMILY_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_familyNameField setPlaceholder:v54];

  [(UITextField *)self->_familyNameField addTarget:self action:sel_familyNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_familyNameField setDelegate:self];
  v55 = [(CNContact *)self->_contact givenName];
  if (v55 && (v56 = v55, [(CNContact *)self->_contact familyName], v57 = objc_claimAutoreleasedReturnValue(), v57, v56, v57))
  {
    v58 = 0;
  }

  else
  {
    v58 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v59 = [(CNContact *)self->_contact givenName];
    [v58 setGivenName:v59];

    v60 = [(CNContact *)self->_contact familyName];
    [v58 setFamilyName:v60];
  }

  self->_nameOrder = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:v58 options:0];
  v61 = [(CNMeCardSharingSettingsViewController *)self tableView];
  [v61 setKeyboardDismissMode:2];

  v62 = [MEMORY[0x1E696AD88] defaultCenter];
  [v62 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v63 = [MEMORY[0x1E696AD88] defaultCenter];
  [v63 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  v64 = [MEMORY[0x1E696AD88] defaultCenter];
  [v64 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  if ([(CNMeCardSharingSettingsViewController *)self isPresentedInOnboarding])
  {
    v65 = [MEMORY[0x1E69B7CF8] boldButton];
    [(CNMeCardSharingSettingsViewController *)self setContinueButton:v65];

    v66 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    v67 = CNContactsUIBundle();
    v68 = [v67 localizedStringForKey:@"SHARING_DONE" value:&stru_1F0CE7398 table:@"Localized"];
    [v66 setTitle:v68 forState:0];

    v69 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    [v69 addTarget:self action:sel_didTapContinueButton_ forControlEvents:64];

    v70 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    [v70 setTranslatesAutoresizingMaskIntoConstraints:0];

    v71 = [objc_alloc(MEMORY[0x1E69B7D18]) initWithFrame:{v38, v39, v40, v41}];
    [(CNMeCardSharingSettingsViewController *)self setButtonTray:v71];

    v72 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    [v72 setTranslatesAutoresizingMaskIntoConstraints:0];

    v73 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    v74 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    [v73 addButton:v74];

    v75 = [(CNMeCardSharingSettingsViewController *)self tableView];
    v76 = [v75 backgroundColor];
    v77 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    [v77 setBackgroundColor:v76];

    v78 = [(CNMeCardSharingSettingsViewController *)self view];
    v79 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    [v78 addSubview:v79];

    v96 = MEMORY[0x1E696ACD8];
    v108 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    v106 = [v108 leadingAnchor];
    v107 = [(CNMeCardSharingSettingsViewController *)self view];
    v105 = [v107 layoutMarginsGuide];
    v104 = [v105 leadingAnchor];
    v103 = [v106 constraintEqualToAnchor:v104];
    v111[0] = v103;
    v102 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    v100 = [v102 trailingAnchor];
    v101 = [(CNMeCardSharingSettingsViewController *)self view];
    v99 = [v101 layoutMarginsGuide];
    v98 = [v99 trailingAnchor];
    v97 = [v100 constraintEqualToAnchor:v98];
    v111[1] = v97;
    v95 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    v93 = [v95 bottomAnchor];
    v94 = [(CNMeCardSharingSettingsViewController *)self view];
    v92 = [v94 bottomAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v111[2] = v91;
    v90 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    v80 = [v90 leadingAnchor];
    [(CNMeCardSharingSettingsViewController *)self buttonTray];
    v81 = v109 = v58;
    v82 = [v81 leadingAnchor];
    v83 = [v80 constraintEqualToAnchor:v82];
    v111[3] = v83;
    v84 = [(CNMeCardSharingSettingsViewController *)self continueButton];
    v85 = [v84 trailingAnchor];
    v86 = [(CNMeCardSharingSettingsViewController *)self buttonTray];
    v87 = [v86 trailingAnchor];
    v88 = [v85 constraintEqualToAnchor:v87];
    v111[4] = v88;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:5];
    [v96 activateConstraints:v89];

    v58 = v109;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNMeCardSharingSettingsViewController;
  [(CNMeCardSharingSettingsViewController *)&v4 dealloc];
}

- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8 showsWallpaperSuggestionsGalleryPicker:(BOOL)a9 headerMode:(int64_t)a10 presentedInOnboarding:(BOOL)a11
{
  v11 = a7;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v56.receiver = self;
  v56.super_class = CNMeCardSharingSettingsViewController;
  v21 = [(CNMeCardSharingSettingsViewController *)&v56 initWithNibName:0 bundle:0];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v21->_contactStore, a3);
  objc_storeStrong(&v22->_contact, a4);
  v22->_isPresentedInOnboarding = a11;
  if (!v18)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695CF18]);
    editingContact = v22->_editingContact;
    v22->_editingContact = v25;

LABEL_7:
    v22->_shouldSetAsMeContact = 1;
    goto LABEL_8;
  }

  v23 = [v18 mutableCopy];
  v24 = v22->_editingContact;
  v22->_editingContact = v23;

  if (v22->_isPresentedInOnboarding && ([v18 hasBeenPersisted] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v27 = +[CNMeCardSharingPickerLayoutAttributes layoutAttributesForSettings];
  layoutAttributes = v22->_layoutAttributes;
  v22->_layoutAttributes = v27;

  objc_storeStrong(&v22->_avatarProvider, a5);
  v22->_showsWallpaperSuggestionsGalleryPicker = a9;
  v29 = [MEMORY[0x1E69DC938] currentDevice];
  v30 = [v29 userInterfaceIdiom];

  if ((v30 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = a10;
  }

  v22->_headerMode = v31;
  v32 = [[CNMeCardSharingSettingsHeaderViewController alloc] initWithAvatarProvider:v22->_avatarProvider mode:v22->_headerMode];
  headerViewController = v22->_headerViewController;
  v22->_headerViewController = v32;

  [(CNMeCardSharingSettingsHeaderViewController *)v22->_headerViewController setDelegate:v22];
  v34 = [[CNSNaPSetupFlowManager alloc] initWithPresenterDelegate:v22 contactStore:v17 mode:v22->_headerMode];
  editAvatarPosterFlowManager = v22->_editAvatarPosterFlowManager;
  v22->_editAvatarPosterFlowManager = v34;

  [(CNSNaPSetupFlowManager *)v22->_editAvatarPosterFlowManager setDelegate:v22];
  v36 = [[CNSharedProfileOnboardingController alloc] initWithContactStore:v17];
  snapOnboardingController = v22->_snapOnboardingController;
  v22->_snapOnboardingController = v36;

  v38 = [MEMORY[0x1E695DF70] array];
  objc_storeStrong(&v22->_nameProvider, a6);
  v39 = objc_alloc_init(CNMeCardSharingSettingsNameDataSource);
  nameDataSource = v22->_nameDataSource;
  v22->_nameDataSource = v39;

  [v38 addObject:v22->_nameDataSource];
  v41 = [[CNMeCardSharingEnabledDataSource alloc] initWithSharingEnabled:v11];
  enabledDataSource = v22->_enabledDataSource;
  v22->_enabledDataSource = v41;

  [(CNMeCardSharingEnabledDataSource *)v22->_enabledDataSource setDelegate:v22];
  [v38 addObject:v22->_enabledDataSource];
  v43 = [[CNMeCardSharingAudienceDataSource alloc] initWithSelectedSharingAudience:a8];
  sharingAudienceDataSource = v22->_sharingAudienceDataSource;
  v22->_sharingAudienceDataSource = v43;

  if (v11)
  {
    [v38 addObject:v22->_sharingAudienceDataSource];
  }

  v45 = [v38 copy];
  sectionDataSources = v22->_sectionDataSources;
  v22->_sectionDataSources = v45;

  v47 = [(CNMeCardSharingNameProvider *)v22->_nameProvider givenName];
  editingGivenName = v22->_editingGivenName;
  v22->_editingGivenName = v47;

  v49 = [(CNMeCardSharingNameProvider *)v22->_nameProvider familyName];
  editingFamilyName = v22->_editingFamilyName;
  v22->_editingFamilyName = v49;

  v51 = objc_alloc_init(CNSharingProfileLogger);
  logger = v22->_logger;
  v22->_logger = v51;

  v53 = v22;
LABEL_14:

  return v22;
}

- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8 showsWallpaperSuggestionsGalleryPicker:(BOOL)a9 headerMode:(int64_t)a10
{
  LOBYTE(v12) = 0;
  LOBYTE(v11) = a9;
  return [(CNMeCardSharingSettingsViewController *)self initWithContactStore:a3 contact:a4 avatarProvider:a5 nameProvider:a6 sharingEnabled:a7 selectedSharingAudience:a8 showsWallpaperSuggestionsGalleryPicker:v11 headerMode:a10 presentedInOnboarding:v12];
}

- (CNMeCardSharingSettingsViewController)initWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8
{
  v9 = a7;
  v14 = MEMORY[0x1E69966E8];
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v14 currentEnvironment];
  v20 = [v19 featureFlags];
  LOBYTE(v24) = 0;
  LOBYTE(v23) = [v20 isFeatureEnabled:28];
  v21 = [(CNMeCardSharingSettingsViewController *)self initWithContactStore:v18 contact:v17 avatarProvider:v16 nameProvider:v15 sharingEnabled:v9 selectedSharingAudience:a8 showsWallpaperSuggestionsGalleryPicker:v23 headerMode:0 presentedInOnboarding:v24];

  return v21;
}

- (id)initForOnboardingWithContactStore:(id)a3 contact:(id)a4 avatarProvider:(id)a5 nameProvider:(id)a6 sharingEnabled:(BOOL)a7 selectedSharingAudience:(unint64_t)a8 showsWallpaperSuggestionsGalleryPicker:(BOOL)a9 headerMode:(int64_t)a10
{
  v11 = a7;
  v16 = a4;
  LOBYTE(v32) = 1;
  LOBYTE(v31) = a9;
  v17 = [(CNMeCardSharingSettingsViewController *)self initWithContactStore:a3 contact:v16 avatarProvider:a5 nameProvider:a6 sharingEnabled:v11 selectedSharingAudience:a8 showsWallpaperSuggestionsGalleryPicker:v31 headerMode:a10 presentedInOnboarding:v32];
  v18 = objc_alloc(MEMORY[0x1E695CD88]);
  v19 = [v16 imageData];
  [v16 cropRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [MEMORY[0x1E695DF00] now];
  v29 = [v18 initWithImageData:v19 cropRect:v28 lastUsedDate:{v21, v23, v25, v27}];
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