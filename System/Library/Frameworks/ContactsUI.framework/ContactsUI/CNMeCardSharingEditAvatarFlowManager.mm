@interface CNMeCardSharingEditAvatarFlowManager
+ (id)log;
- (CNMeCardSharingEditAvatarFlowManager)init;
- (CNMeCardSharingEditAvatarFlowManagerDelegate)delegate;
- (id)editorViewControllerForProviderItem:(id)a3;
- (int64_t)defaultModalPresentationStyle;
- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)presentAvatarEditorViewControllerForProviderItem:(id)a3;
- (void)presentEditorForAvatarSourceType:(int64_t)a3 visualIdentity:(id)a4 fromGalleryViewController:(id)a5;
- (void)presentMemojiPicker;
- (void)pushAvatarEditorViewControllerForProviderItem:(id)a3 fromViewController:(id)a4;
- (void)visualIdentityEditorController:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)visualIdentityEditorControllerDidCancel:(id)a3;
@end

@implementation CNMeCardSharingEditAvatarFlowManager

- (CNMeCardSharingEditAvatarFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 viewController];
  v9 = [v8 presentedViewController];

  v10 = [v6 viewController];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 presentedViewController];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__CNMeCardSharingEditAvatarFlowManager_avatarEditingManager_didFinishWithProviderItem___block_invoke;
    v18[3] = &unk_1E74E6EE8;
    v13 = v19;
    v19[0] = v7;
    v19[1] = self;
    v20 = v6;
    v14 = v7;
    [v12 dismissViewControllerAnimated:1 completion:v18];

    v11 = v20;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__CNMeCardSharingEditAvatarFlowManager_avatarEditingManager_didFinishWithProviderItem___block_invoke_2;
    v16[3] = &unk_1E74E77C0;
    v13 = v17;
    v17[0] = v7;
    v17[1] = self;
    v15 = v7;
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

- (void)visualIdentityEditorController:(id)a3 didFinishWithProviderItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNMeCardSharingEditAvatarFlowManager *)self delegate];
  [v8 sharingEditAvatarFlowManager:self didFinishWithProviderItem:v6 fromViewController:v7];
}

- (void)visualIdentityEditorControllerDidCancel:(id)a3
{
  v5 = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
  [v5 dismissViewControllerAnimated:a3 != 0 completion:0];

  v6 = [(CNMeCardSharingEditAvatarFlowManager *)self delegate];
  [v6 sharingEditAvatarFlowManagerDidCancel:self];
}

- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 presentingViewController];
  v9 = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];

  if (v8 == v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__CNMeCardSharingEditAvatarFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke_2;
    v14[3] = &unk_1E74E77C0;
    v11 = &v15;
    v14[4] = self;
    v15 = v7;
    v13 = v7;
    [v6 dismissViewControllerAnimated:1 completion:v14];
  }

  else
  {
    v10 = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__CNMeCardSharingEditAvatarFlowManager_imagePickerController_didFinishWithProviderItem___block_invoke;
    v16[3] = &unk_1E74E77C0;
    v11 = &v17;
    v16[4] = self;
    v17 = v7;
    v12 = v7;
    [v10 dismissViewControllerAnimated:1 completion:v16];
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
  v6 = [getAVTAvatarFetchRequestClass_37873() requestForStorePrimaryAvatar];
  v24 = 0;
  v7 = [v5 avatarsForFetchRequest:v6 error:&v24];
  v8 = v24;
  v9 = [v7 firstObject];

  if (v9)
  {
    v10 = v8;
    v11 = v6;
LABEL_6:
    v13 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:v9];
    v14 = [CNAvatarEditingManager alloc];
    v15 = [v13 avatarRecord];
    v16 = [(CNMeCardSharingEditAvatarFlowManager *)self variantsManager];
    v17 = [(CNAvatarEditingManager *)v14 initWithAvatarRecord:v15 variantsManager:v16];

    [(CNAvatarEditingManager *)v17 setDelegate:self];
    [(CNAvatarEditingManager *)v17 setOriginalItem:v13];
    [(CNMeCardSharingEditAvatarFlowManager *)self setAvatarEditingManager:v17];
    v18 = objc_alloc(MEMORY[0x1E69DCCD8]);
    v19 = [(CNAvatarEditingManager *)v17 viewController];
    v20 = [v18 initWithRootViewController:v19];

    [v20 setModalPresentationStyle:{-[CNMeCardSharingEditAvatarFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
    v21 = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
    [v21 presentViewController:v20 animated:1 completion:0];

    goto LABEL_7;
  }

  v11 = [getAVTAvatarFetchRequestClass_37873() requestForAllAvatars];

  v23 = v8;
  v12 = [v5 avatarsForFetchRequest:v11 error:&v23];
  v10 = v23;

  v9 = [v12 firstObject];

  if (v9)
  {
    goto LABEL_6;
  }

  v9 = [objc_opt_class() log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v22 = [v10 debugDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v22;
    _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Could not load avatar; %{public}@", &buf, 0xCu);
  }

LABEL_7:
}

- (int64_t)defaultModalPresentationStyle
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (void)pushAvatarEditorViewControllerForProviderItem:(id)a3 fromViewController:(id)a4
{
  v6 = a4;
  v8 = [(CNMeCardSharingEditAvatarFlowManager *)self editorViewControllerForProviderItem:a3];
  [v8 setCanCancel:0];
  v7 = [v6 navigationController];

  [v7 pushViewController:v8 animated:1];
}

- (void)presentAvatarEditorViewControllerForProviderItem:(id)a3
{
  v6 = [(CNMeCardSharingEditAvatarFlowManager *)self editorViewControllerForProviderItem:a3];
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v4 setModalPresentationStyle:{-[CNMeCardSharingEditAvatarFlowManager defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  v5 = [(CNMeCardSharingEditAvatarFlowManager *)self baseNavigationController];
  [v5 presentViewController:v4 animated:1 completion:0];
}

- (id)editorViewControllerForProviderItem:(id)a3
{
  v4 = a3;
  v5 = [CNVisualIdentityItemEditorViewController alloc];
  v6 = [(CNMeCardSharingEditAvatarFlowManager *)self variantsManager];
  v7 = [(CNVisualIdentityItemEditorViewController *)v5 initWithProviderItem:v4 variantsManager:v6];

  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"NEXT" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityItemEditorViewController *)v7 setDoneButtonTitle:v9];

  [(CNVisualIdentityItemEditorViewController *)v7 setDelegate:self];

  return v7;
}

- (void)presentEditorForAvatarSourceType:(int64_t)a3 visualIdentity:(id)a4 fromGalleryViewController:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
  v10 = [v17 contacts];
  v11 = [v10 firstObject];
  v12 = [v9 isMeContact:v11];
  v13 = [(CNMeCardSharingEditAvatarFlowManager *)self imagePickerController];
  [v13 setIsMeContact:v12];

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_14;
      }

      v15 = [(CNMeCardSharingEditAvatarFlowManager *)self imagePickerController];
      [v15 presentPhotoLibraryPickerFromViewController:v8 sourceView:0];
    }

    else
    {
      v15 = [(CNMeCardSharingEditAvatarFlowManager *)self imagePickerController];
      [v15 presentCameraImagePickerFromViewController:v8];
    }
  }

  else if (a3 == 2)
  {
    [(CNMeCardSharingEditAvatarFlowManager *)self presentMemojiPicker];
  }

  else
  {
    if (a3 == 3)
    {
      v14 = [CNPhotoPickerMonogramProvider providerItemForVisualIdentity:v17 size:0 RTL:212.0, 212.0];
    }

    else
    {
      if (a3 != 4)
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