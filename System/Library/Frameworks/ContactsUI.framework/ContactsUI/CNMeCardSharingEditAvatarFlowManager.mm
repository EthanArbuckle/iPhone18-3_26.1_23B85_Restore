@interface CNMeCardSharingEditAvatarFlowManager
+ (id)log;
- (CNMeCardSharingEditAvatarFlowManager)init;
- (CNMeCardSharingEditAvatarFlowManagerDelegate)delegate;
- (id)editorViewControllerForProviderItem:(id)item;
- (int64_t)defaultModalPresentationStyle;
- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item;
- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item;
- (void)presentAvatarEditorViewControllerForProviderItem:(id)item;
- (void)presentEditorForAvatarSourceType:(int64_t)type visualIdentity:(id)identity fromGalleryViewController:(id)controller;
- (void)presentMemojiPicker;
- (void)pushAvatarEditorViewControllerForProviderItem:(id)item fromViewController:(id)controller;
- (void)visualIdentityEditorController:(id)controller didFinishWithProviderItem:(id)item;
- (void)visualIdentityEditorControllerDidCancel:(id)cancel;
@end

@implementation CNMeCardSharingEditAvatarFlowManager

- (CNMeCardSharingEditAvatarFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item
{
  managerCopy = manager;
  itemCopy = item;
  viewController = [managerCopy viewController];
  presentedViewController = [viewController presentedViewController];

  viewController2 = [managerCopy viewController];
  v11 = viewController2;
  if (presentedViewController)
  {
    presentedViewController2 = [viewController2 presentedViewController];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__CNMeCardSharingEditAvatarFlowManager_avatarEditingManager_didFinishWithProviderItem___block_invoke;
    v18[3] = &unk_1E74E6EE8;
    v13 = v19;
    v19[0] = itemCopy;
    v19[1] = self;
    v20 = managerCopy;
    v14 = itemCopy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v18];

    v11 = v20;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__CNMeCardSharingEditAvatarFlowManager_avatarEditingManager_didFinishWithProviderItem___block_invoke_2;
    v16[3] = &unk_1E74E77C0;
    v13 = v17;
    v17[0] = itemCopy;
    v17[1] = self;
    v15 = itemCopy;
    [v11 dismissViewControllerAnimated:1 completion:v16];
  }
}

void __87__CNMeCardSharingEditAvatarFlowManager_avatarEditingManager_didFinishWithProviderItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) viewController];
    [v2 pushAvatarEditorViewControllerForProviderItem:v1 fromViewController:v3];
  }
}

uint64_t __87__CNMeCardSharingEditAvatarFlowManager_avatarEditingManager_didFinishWithProviderItem___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) presentAvatarEditorViewControllerForProviderItem:?];
  }

  return result;
}

- (void)visualIdentityEditorController:(id)controller didFinishWithProviderItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  delegate = [(CNMeCardSharingEditAvatarFlowManager *)self delegate];
  [delegate sharingEditAvatarFlowManager:self didFinishWithProviderItem:itemCopy fromViewController:controllerCopy];
}

- (void)visualIdentityEditorControllerDidCancel:(id)cancel
{
  baseNavigationController = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
  [baseNavigationController dismissViewControllerAnimated:cancel != 0 completion:0];

  delegate = [(CNMeCardSharingEditAvatarFlowManager *)self delegate];
  [delegate sharingEditAvatarFlowManagerDidCancel:self];
}

- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  presentingViewController = [controllerCopy presentingViewController];
  baseNavigationController = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];

  if (presentingViewController == baseNavigationController)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__CNMeCardSharingEditAvatarFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke_2;
    v14[3] = &unk_1E74E77C0;
    v11 = &v15;
    v14[4] = self;
    v15 = itemCopy;
    v13 = itemCopy;
    [controllerCopy dismissViewControllerAnimated:1 completion:v14];
  }

  else
  {
    baseNavigationController2 = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__CNMeCardSharingEditAvatarFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke;
    v16[3] = &unk_1E74E77C0;
    v11 = &v17;
    v16[4] = self;
    v17 = itemCopy;
    v12 = itemCopy;
    [baseNavigationController2 dismissViewControllerAnimated:1 completion:v16];
  }
}

- (void)presentMemojiPicker
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v3 = getAVTAvatarStoreClass_softClass_37871;
  v28 = getAVTAvatarStoreClass_softClass_37871;
  if (!getAVTAvatarStoreClass_softClass_37871)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v30 = __getAVTAvatarStoreClass_block_invoke_37872;
    v31 = &unk_1E74E7518;
    v32 = &v25;
    __getAVTAvatarStoreClass_block_invoke_37872(&buf);
    v3 = v26[3];
  }

  v4 = v3;
  _Block_object_dispose(&v25, 8);
  v5 = objc_alloc_init(v3);
  requestForStorePrimaryAvatar = [getAVTAvatarFetchRequestClass_37873() requestForStorePrimaryAvatar];
  v24 = 0;
  v7 = [v5 avatarsForFetchRequest:requestForStorePrimaryAvatar error:&v24];
  v8 = v24;
  firstObject = [v7 firstObject];

  if (firstObject)
  {
    v10 = v8;
    requestForAllAvatars = requestForStorePrimaryAvatar;
LABEL_6:
    v13 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:firstObject];
    v14 = [CNAvatarEditingManager alloc];
    avatarRecord = [v13 avatarRecord];
    variantsManager = [(CNMeCardSharingEditAvatarFlowManager *)self variantsManager];
    v17 = [(CNAvatarEditingManager *)v14 initWithAvatarRecord:avatarRecord variantsManager:variantsManager];

    [(CNAvatarEditingManager *)v17 setDelegate:self];
    [(CNAvatarEditingManager *)v17 setOriginalItem:v13];
    [(CNMeCardSharingEditAvatarFlowManager *)self setAvatarEditingManager:v17];
    v18 = objc_alloc(MEMORY[0x1E69DCCD8]);
    viewController = [(CNAvatarEditingManager *)v17 viewController];
    v20 = [v18 initWithRootViewController:viewController];

    [v20 setModalPresentationStyle:{-[CNMeCardSharingEditAvatarFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
    baseNavigationController = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
    [baseNavigationController presentViewController:v20 animated:1 completion:0];

    goto LABEL_7;
  }

  requestForAllAvatars = [getAVTAvatarFetchRequestClass_37873() requestForAllAvatars];

  v23 = v8;
  v12 = [v5 avatarsForFetchRequest:requestForAllAvatars error:&v23];
  v10 = v23;

  firstObject = [v12 firstObject];

  if (firstObject)
  {
    goto LABEL_6;
  }

  firstObject = [objc_opt_class() log];
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    v22 = [v10 debugDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v22;
    _os_log_error_impl(&dword_199A75000, firstObject, OS_LOG_TYPE_ERROR, "Could not load avatar; %{public}@", &buf, 0xCu);
  }

LABEL_7:
}

- (int64_t)defaultModalPresentationStyle
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (void)pushAvatarEditorViewControllerForProviderItem:(id)item fromViewController:(id)controller
{
  controllerCopy = controller;
  v8 = [(CNMeCardSharingEditAvatarFlowManager *)self editorViewControllerForProviderItem:item];
  [v8 setCanCancel:0];
  navigationController = [controllerCopy navigationController];

  [navigationController pushViewController:v8 animated:1];
}

- (void)presentAvatarEditorViewControllerForProviderItem:(id)item
{
  v6 = [(CNMeCardSharingEditAvatarFlowManager *)self editorViewControllerForProviderItem:item];
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v4 setModalPresentationStyle:{-[CNMeCardSharingEditAvatarFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  baseNavigationController = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
  [baseNavigationController presentViewController:v4 animated:1 completion:0];
}

- (id)editorViewControllerForProviderItem:(id)item
{
  itemCopy = item;
  v5 = [CNVisualIdentityItemEditorViewController alloc];
  variantsManager = [(CNMeCardSharingEditAvatarFlowManager *)self variantsManager];
  v7 = [(CNVisualIdentityItemEditorViewController *)v5 initWithProviderItem:itemCopy variantsManager:variantsManager];

  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"NEXT" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityItemEditorViewController *)v7 setDoneButtonTitle:v9];

  [(CNVisualIdentityItemEditorViewController *)v7 setDelegate:self];

  return v7;
}

- (void)presentEditorForAvatarSourceType:(int64_t)type visualIdentity:(id)identity fromGalleryViewController:(id)controller
{
  identityCopy = identity;
  controllerCopy = controller;
  unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
  contacts = [identityCopy contacts];
  firstObject = [contacts firstObject];
  v12 = [unifiedMeContactMonitor isMeContact:firstObject];
  imagePickerController = [(CNMeCardSharingEditAvatarFlowManager *)self imagePickerController];
  [imagePickerController setIsMeContact:v12];

  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_14;
      }

      imagePickerController2 = [(CNMeCardSharingEditAvatarFlowManager *)self imagePickerController];
      [imagePickerController2 presentPhotoLibraryPickerFromViewController:controllerCopy sourceView:0];
    }

    else
    {
      imagePickerController2 = [(CNMeCardSharingEditAvatarFlowManager *)self imagePickerController];
      [imagePickerController2 presentCameraImagePickerFromViewController:controllerCopy];
    }
  }

  else if (type == 2)
  {
    [(CNMeCardSharingEditAvatarFlowManager *)self presentMemojiPicker];
  }

  else
  {
    if (type == 3)
    {
      v14 = [CNPhotoPickerMonogramProvider providerItemForVisualIdentity:identityCopy size:0 RTL:212.0, 212.0];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_14;
      }

      v14 = [[CNPhotoPickerEmojiProviderItem alloc] initWithStringRepresentation:&stru_1F0CE7398 backgroundColorVariant:0 size:212.0, 212.0];
    }

    v16 = v14;
    [(CNMeCardSharingEditAvatarFlowManager *)self presentAvatarEditorViewControllerForProviderItem:v14];
  }

LABEL_14:
}

- (CNMeCardSharingEditAvatarFlowManager)init
{
  v11.receiver = self;
  v11.super_class = CNMeCardSharingEditAvatarFlowManager;
  v2 = [(CNMeCardSharingEditAvatarFlowManager *)&v11 init];
  if (v2)
  {
    v3 = [CNVisualIdentityImagePickerController alloc];
    v4 = +[CNContactStyle defaultStyle];
    v5 = [(CNVisualIdentityImagePickerController *)v3 initWithContactStyle:v4];
    imagePickerController = v2->_imagePickerController;
    v2->_imagePickerController = v5;

    [(CNVisualIdentityImagePickerController *)v2->_imagePickerController setDelegate:v2];
    v7 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = v2->_variantsManager;
    v2->_variantsManager = v7;

    v9 = v2;
  }

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_1_37920 != -1)
  {
    dispatch_once(&log_cn_once_token_1_37920, &__block_literal_global_37921);
  }

  v3 = log_cn_once_object_1_37922;

  return v3;
}

uint64_t __43__CNMeCardSharingEditAvatarFlowManager_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "MeCardSharingEditAvatarFlowManager");
  v1 = log_cn_once_object_1_37922;
  log_cn_once_object_1_37922 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end