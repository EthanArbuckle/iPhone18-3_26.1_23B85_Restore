@interface CNPosterSetupAvatarPreviewViewController
+ (CGSize)defaultItemSize;
+ (unint64_t)defaultImageTypeForWallpaperType:(id)a3;
- (CGRect)cropRect;
- (CNPosterSetupAvatarPreviewViewController)initWithContactImage:(id)a3 imageType:(unint64_t)a4 forEditingContact:(id)a5;
- (CNPosterSetupAvatarPreviewViewController)initWithPosterConfiguration:(id)a3 forEditingContact:(id)a4;
- (CNPosterSetupAvatarPreviewViewControllerDelegate)delegate;
- (id)animojiProviderItem:(id)a3 backgroundColor:(id)a4;
- (id)animojiProviderItemForAvatarImageData:(id)a3 backgroundColor:(id)a4;
- (id)closestColor:(id)a3 inColors:(id)a4;
- (id)editorViewControllerForProviderItem:(id)a3;
- (id)memojiEditingManagerForAvatarRecord:(id)a3 poseConfiguration:(id)a4;
- (id)monogramProviderItemForInitials:(id)a3 backgroundColor:(id)a4;
- (id)photoProviderItemForFullImageFromPosterConfiguration:(id)a3;
- (id)providerItemForRandomColoredMonogram;
- (id)providerItemWithSnapshotImage:(id)a3;
- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)avatarPreviewViewDidFinishWithImageData:(id)a3 cropRect:(CGRect)a4;
- (void)avatarPreviewViewDidSelectChangeScale;
- (void)avatarPreviewViewDidSelectCustomizePhoto;
- (void)didTapCancel;
- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)photoPickerProviderItemFromPosterConfiguration:(id)a3 completionBlock:(id)a4;
- (void)photoProviderItemForSnapshotFromPosterConfiguration:(id)a3 completionBlock:(id)a4;
- (void)photoProviderItemFromPosterConfiguration:(id)a3 completionBlock:(id)a4;
- (void)presentPhotoFilterEditorForProviderItem:(id)a3;
- (void)setCropRect:(CGRect)a3;
- (void)setImageData:(id)a3;
- (void)setImageType:(unint64_t)a3;
- (void)skipStep;
- (void)updateMemojiEditingManagerForProviderItem:(id)a3;
- (void)updateWithProviderItem:(id)a3;
- (void)viewDidLoad;
- (void)visualIdentityEditorController:(id)a3 didFinishWithProviderItem:(id)a4;
@end

@implementation CNPosterSetupAvatarPreviewViewController

- (CNPosterSetupAvatarPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4
{
  v5 = a4;
  [(CNPosterSetupAvatarPreviewViewController *)self updateWithProviderItem:v5];
  v6 = [(CNPosterSetupAvatarPreviewViewController *)self memojiImagePickerController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__CNPosterSetupAvatarPreviewViewController_avatarEditingManager_didFinishWithProviderItem___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

- (void)visualIdentityEditorController:(id)a3 didFinishWithProviderItem:(id)a4
{
  v6 = a3;
  [(CNPosterSetupAvatarPreviewViewController *)self updateWithProviderItem:a4];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CNPosterSetupAvatarPreviewViewController *)self updateWithProviderItem:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__CNPosterSetupAvatarPreviewViewController_imagePickerController_didFinishWithProviderItem___block_invoke;
  v9[3] = &unk_1E74E77C0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 dismissViewControllerAnimated:1 completion:v9];
}

- (id)editorViewControllerForProviderItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNPhotoPickerVariantsManager);
  v6 = [[CNVisualIdentityItemEditorViewController alloc] initWithProviderItem:v4 variantsManager:v5];

  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"DONE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityItemEditorViewController *)v6 setDoneButtonTitle:v8];

  [(CNVisualIdentityItemEditorViewController *)v6 setDelegate:self];

  return v6;
}

- (void)presentPhotoFilterEditorForProviderItem:(id)a3
{
  v5 = [(CNPosterSetupAvatarPreviewViewController *)self editorViewControllerForProviderItem:a3];
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [(CNPosterSetupAvatarPreviewViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)avatarPreviewViewDidSelectCustomizePhoto
{
  v3 = [(CNPosterSetupAvatarPreviewViewController *)self delegate];
  [v3 avatarPreviewViewControllerDidSelectCustomizePhoto:self];
}

- (void)avatarPreviewViewDidSelectChangeScale
{
  v20 = objc_alloc_init(CNVisualIdentityImagePickerController);
  v3 = [(CNPosterSetupAvatarPreviewViewController *)self contactImage];
  v4 = [v3 source];

  if (v4 == 3)
  {
    v5 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
    v6 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
    v7 = [v6 originalItem];
    v8 = [v5 imagePickerForItem:v7];

    [(CNVisualIdentityImagePickerController *)v20 presentImagePicker:v8 withStyle:6 fromViewController:self];
    [(CNPosterSetupAvatarPreviewViewController *)self setMemojiImagePickerController:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v10 = [(CNPosterSetupAvatarPreviewViewController *)self editingContact];
    -[CNVisualIdentityImagePickerController setIsMeContact:](v20, "setIsMeContact:", [v9 isMeContact:v10]);

    v8 = [(CNPosterSetupAvatarPreviewViewController *)self imageData];
    [(CNPosterSetupAvatarPreviewViewController *)self cropRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(CNPosterSetupAvatarPreviewViewController *)self imagePickerCustomBackgroundColor];
    [(CNVisualIdentityImagePickerController *)v20 presentMoveAndScaleForImageData:v8 withCropRect:self fromViewController:v19 backgroundColor:v12, v14, v16, v18];
  }

  [(CNVisualIdentityImagePickerController *)v20 setDelegate:self];
  [(CNPosterSetupAvatarPreviewViewController *)self setImagePicker:v20];
}

- (void)avatarPreviewViewDidFinishWithImageData:(id)a3 cropRect:(CGRect)a4
{
  v6 = [(CNPosterSetupAvatarPreviewViewController *)self delegate:a3];
  v5 = [(CNPosterSetupAvatarPreviewViewController *)self contactImage];
  [v6 avatarPreviewViewController:self didFinishWithContactImage:v5];
}

- (id)closestColor:(id)a3 inColors:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v27 = 0;
  v28 = 0.0;
  v26 = 0;
  [v5 getHue:&v28 saturation:&v27 brightness:&v26 alpha:0];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    v12 = 1.79769313e308;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v20 = 0;
        v21 = 0.0;
        v19 = 0;
        v15 = [v14 color];
        [v15 getHue:&v21 saturation:&v20 brightness:&v19 alpha:0];

        v16 = vabdd_f64(v28, v21);
        if (v16 < v12)
        {
          v17 = v14;

          v12 = v16;
          v10 = v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)monogramProviderItemForInitials:(id)a3 backgroundColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CNVisualIdentity);
  [(CNVisualIdentity *)v8 setAbbreviatedName:v7];

  v9 = [MEMORY[0x1E69BDC50] availableColors];
  v10 = [v9 _cn_map:&__block_literal_global_36585];

  v11 = [(CNPosterSetupAvatarPreviewViewController *)self closestColor:v6 inColors:v10];

  v12 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  [objc_opt_class() defaultItemSize];
  v14 = v13;
  v16 = v15;
  v17 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v17 scale];
  v19 = v18;
  v20 = objc_alloc(MEMORY[0x1E69BDC50]);
  v21 = [v11 colorName];
  v22 = [v20 initWithColorName:v21];
  v23 = [CNPhotoPickerMonogramProvider providerItemForVisualIdentity:v8 size:v12 scale:v22 RTL:v14 backgroundColor:v16, v19];

  return v23;
}

CNPhotoPickerColorVariant *__92__CNPosterSetupAvatarPreviewViewController_monogramProviderItemForInitials_backgroundColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CNPhotoPickerColorVariant alloc];
  v4 = [v2 color];
  v5 = [v2 colorName];

  v6 = [(CNPhotoPickerColorVariant *)v3 initWithColor:v4 named:v5];

  return v6;
}

- (id)providerItemForRandomColoredMonogram
{
  v3 = [CNVisualIdentity alloc];
  v4 = [(CNPosterSetupAvatarPreviewViewController *)self editingContact];
  v5 = [(CNVisualIdentity *)v3 initWithContact:v4];

  v6 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  [objc_opt_class() defaultItemSize];
  v7 = [CNPhotoPickerMonogramProvider providerItemWithRandomBackgroundColorForVisualIdentity:v5 size:v6 RTL:?];

  return v7;
}

- (id)animojiProviderItemForAvatarImageData:(id)a3 backgroundColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CNPhotoPickerVariantsManager);
  v9 = [(CNPhotoPickerVariantsManager *)v8 avatarBackgrounds];
  v10 = [(CNPosterSetupAvatarPreviewViewController *)self closestColor:v7 inColors:v9];

  v11 = [v10 color];
  v12 = [CNPhotoPickerVariantsManager nonAlphaColorForBackgroundColor:v11];
  [(CNPosterSetupAvatarPreviewViewController *)self setImagePickerCustomBackgroundColor:v12];

  v13 = [MEMORY[0x1E69DCAB8] imageWithData:v6];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__36592;
  v31 = __Block_byref_object_dispose__36593;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4010000000;
  v24 = "";
  v14 = *(MEMORY[0x1E695F058] + 16);
  v25 = *MEMORY[0x1E695F058];
  v26 = v14;
  v15 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__CNPosterSetupAvatarPreviewViewController_animojiProviderItemForAvatarImageData_backgroundColor___block_invoke;
  v20[3] = &unk_1E74E46C0;
  v20[4] = &v27;
  v20[5] = &v21;
  [v15 prepareAvatarImageForPicker:v13 synchronousCompletion:v20];

  v16 = [CNPhotoPickerAnimojiProviderItem alloc];
  v17 = UIImagePNGRepresentation(v28[5]);
  v18 = [(CNPhotoPickerAnimojiProviderItem *)v16 initWithOriginalImageData:v17 cropRect:v10 backgroundColorVariant:v22[4], v22[5], v22[6], v22[7]];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v18;
}

void __98__CNPosterSetupAvatarPreviewViewController_animojiProviderItemForAvatarImageData_backgroundColor___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v12 = a2;
  v13 = *(*(a1 + 40) + 8);
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
}

- (id)animojiProviderItem:(id)a3 backgroundColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 imageData];
  v9 = [(CNPosterSetupAvatarPreviewViewController *)self animojiProviderItemForAvatarImageData:v8 backgroundColor:v6];

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v7 poseConfiguration];
  [v11 setPoseConfiguration:v12];

  v13 = [v7 avatarRecord];

  [v11 setAvatarRecord:v13];

  return v11;
}

- (id)providerItemWithSnapshotImage:(id)a3
{
  v3 = a3;
  v4 = [v3 cnui_CGImageSnapshot];
  v5 = objc_opt_new();
  v6 = CGImageDestinationCreateWithData(v5, @"public.png", 1uLL, 0);
  CGImageDestinationAddImage(v6, v4, 0);
  CGImageDestinationFinalize(v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = MEMORY[0x1E6996738];
  [v3 size];
  v9 = v8;
  [v3 size];
  [v7 centeredSquareCropRectInRect:{0.0, 0.0, v9, v10}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = objc_opt_class();
  [v3 size];
  v19 = v18;

  [v17 twentyFourPointFivePercentOfHeight:v19];
  v21 = [[CNPhotoPickerProviderItem alloc] initWithImageData:v5 thumbnailImageData:0 fullscreenImageData:0 cropRect:v12, v20, v14, v16];

  return v21;
}

- (void)photoProviderItemForSnapshotFromPosterConfiguration:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNPRUISIncomingCallPosterContext emptyContext];
  v9 = [CNPRUISIncomingCallSnapshotDefinition contentsOnlySnapshotDefinitionWithContext:v8 attachmentIdentifiers:0];

  v10 = [CNPRUISPosterSnapshotRequest requestForConfiguration:v7 definition:v9 interfaceOrientation:1];

  v11 = objc_alloc_init(CNPRUISPosterSnapshotController);
  v26 = 0;
  v12 = [(CNPRUISPosterSnapshotController *)v11 latestSnapshotBundleForRequest:v10 error:&v26];
  v13 = v26;
  if (v12 && ([v9 levelSets], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "snapshotForLevelSet:", v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16))
  {
    v17 = [MEMORY[0x1E6996818] mainThreadScheduler];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke;
    v23[3] = &unk_1E74E6650;
    v23[4] = self;
    v18 = v16;
    v24 = v18;
    v25 = v6;
    [v17 performBlock:v23];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke_2;
    v19[3] = &unk_1E74E4698;
    v22 = v6;
    v20 = v9;
    v21 = self;
    [(CNPRUISPosterSnapshotController *)v11 executeSnapshotRequest:v10 completion:v19];

    v18 = 0;
  }
}

void __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) providerItemWithSnapshotImage:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v7 = [a3 snapshotBundle];
    v8 = [*(a1 + 32) levelSets];
    v9 = [v8 firstObject];
    v10 = [v7 snapshotForLevelSet:v9];

    if (v10)
    {
      v11 = [MEMORY[0x1E6996818] mainThreadScheduler];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke_2_39;
      v18[3] = &unk_1E74E6650;
      v18[4] = *(a1 + 40);
      v12 = v10;
      v19 = v12;
      v20 = *(a1 + 48);
      [v11 performBlock:v18];
    }

    else
    {
      v15 = CNUILogPosters();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, "Snapshot of poster returned nil", buf, 2u);
      }

      v16 = [MEMORY[0x1E6996818] mainThreadScheduler];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke_38;
      v21[3] = &unk_1E74E6F88;
      v22 = *(a1 + 48);
      [v16 performBlock:v21];

      v12 = 0;
    }
  }

  else
  {
    v13 = CNUILogPosters();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 localizedDescription];
      *buf = 138412290;
      v26 = v17;
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Failed to snapshot poster with error: %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E6996818] mainThreadScheduler];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke_37;
    v23[3] = &unk_1E74E6F88;
    v24 = *(a1 + 48);
    [v14 performBlock:v23];

    v12 = v24;
  }
}

void __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke_2_39(uint64_t a1)
{
  v2 = [*(a1 + 32) providerItemWithSnapshotImage:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)photoProviderItemFromPosterConfiguration:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNPosterSetupAvatarPreviewViewController *)self photoProviderItemForFullImageFromPosterConfiguration:v6];
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v9 = CNUILogPosters();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get original image data for Photos poster, falling back to poster snapshot", v10, 2u);
    }

    [(CNPosterSetupAvatarPreviewViewController *)self photoProviderItemForSnapshotFromPosterConfiguration:v6 completionBlock:v7];
  }
}

- (id)photoProviderItemForFullImageFromPosterConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[CNPhotosPosterConfigurationReader alloc] initWithPosterConfiguration:v3];

  v5 = [(CNPhotosPosterConfigurationReader *)v4 fullExtentPreviewImageData];
  [(CNPhotosPosterConfigurationReader *)v4 fullExtentPreviewImageSize];
  v7 = v6;
  v9 = v8;
  [(CNPhotosPosterConfigurationReader *)v4 fullExtentPreviewImageFaceRect];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (CGRectEqualToRect(v21, *MEMORY[0x1E695F058]))
  {
    [MEMORY[0x1E6996738] centeredSquareCropRectInRect:{0.0, 0.0, v7, v9}];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = [[CNPhotoPickerProviderItem alloc] initWithImageData:v5 thumbnailImageData:0 fullscreenImageData:0 cropRect:x, y, width, height];

  return v18;
}

- (void)photoPickerProviderItemFromPosterConfiguration:(id)a3 completionBlock:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(CNPosterSetupAvatarPreviewViewController *)self setImagePickerCustomBackgroundColor:0];
  v43 = 0;
  v8 = [v6 loadUserInfoWithError:&v43];
  v9 = v43;
  v10 = (*(*MEMORY[0x1E6996548] + 16))();
  if (v10)
  {
    v11 = CNUILogPosters();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Error loading user info for configuration: %@", &buf, 0xCu);
    }
  }

  v12 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:v6];
  if (((v10 | [v12 isEqualToString:*MEMORY[0x1E695CCE8]] ^ 1) & 1) != 0 || !+[CNMonogramPosterConfigurationReader canReadConfiguration](_TtC10ContactsUI35CNMonogramPosterConfigurationReader, "canReadConfiguration"))
  {
    if (((v10 | [v12 isEqualToString:*MEMORY[0x1E695CCE0]] ^ 1) & 1) != 0 || !+[CNMemojiPosterConfigurationReader canReadConfiguration](_TtC10ContactsUI33CNMemojiPosterConfigurationReader, "canReadConfiguration"))
    {
      if ([v12 isEqualToString:*MEMORY[0x1E695CCF0]])
      {
        [(CNPosterSetupAvatarPreviewViewController *)self photoProviderItemFromPosterConfiguration:v6 completionBlock:v7];
      }

      else
      {
        v23 = [(CNPosterSetupAvatarPreviewViewController *)self providerItemForRandomColoredMonogram];
        v7[2](v7, v23);
      }
    }

    else
    {
      v42 = [[_TtC10ContactsUI33CNMemojiPosterConfigurationReader alloc] initWithPosterConfigurationUserInfo:v8];
      v17 = [(CNMemojiPosterConfigurationReader *)v42 avatarRecordData];
      v18 = *MEMORY[0x1E6996540];
      v19 = (*(*MEMORY[0x1E6996540] + 16))(*MEMORY[0x1E6996540], v17);

      if (v19)
      {
        v20 = [(CNMemojiPosterConfigurationReader *)v42 avatarImageData];
        v21 = (*(v18 + 16))(v18, v20);

        if (v21)
        {
          v22 = [(CNPosterSetupAvatarPreviewViewController *)self providerItemForRandomColoredMonogram];
        }

        else
        {
          v37 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManagerForAvatarRecord:0 poseConfiguration:0];
          memojiEditingManager = self->_memojiEditingManager;
          self->_memojiEditingManager = v37;

          v39 = [(CNMemojiPosterConfigurationReader *)v42 avatarImageData];
          v40 = [(CNMemojiPosterConfigurationReader *)v42 backgroundColor];
          v22 = [(CNPosterSetupAvatarPreviewViewController *)self animojiProviderItemForAvatarImageData:v39 backgroundColor:v40];
        }
      }

      else
      {
        v44 = 0;
        v45 = &v44;
        v46 = 0x2050000000;
        v24 = getAVTAvatarRecordSerializerClass_softClass;
        v47 = getAVTAvatarRecordSerializerClass_softClass;
        if (!getAVTAvatarRecordSerializerClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v49 = __getAVTAvatarRecordSerializerClass_block_invoke;
          v50 = &unk_1E74E7518;
          v51 = &v44;
          __getAVTAvatarRecordSerializerClass_block_invoke(&buf);
          v24 = v45[3];
        }

        v25 = v24;
        _Block_object_dispose(&v44, 8);
        v26 = [(CNMemojiPosterConfigurationReader *)v42 avatarRecordData];
        v27 = [v24 avatarRecordFromData:v26];

        v28 = MEMORY[0x1E695CF08];
        v29 = [(CNMemojiPosterConfigurationReader *)v42 avatarPoseData];
        v41 = [v28 poseConfigurationForData:v29 withAvatarRecord:v27];

        v30 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManagerForAvatarRecord:v27 poseConfiguration:v41];
        v31 = self->_memojiEditingManager;
        self->_memojiEditingManager = v30;

        v32 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
        v33 = [v32 originalItem];

        [v33 setPoseConfiguration:v41];
        v34 = [v33 generateImageDataIfNeeded];
        v35 = [(CNMemojiPosterConfigurationReader *)v42 backgroundColor];
        v22 = [(CNPosterSetupAvatarPreviewViewController *)self animojiProviderItem:v33 backgroundColor:v35];

        v36 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
        [v36 setOriginalItem:v22];
      }

      v7[2](v7, v22);
    }
  }

  else
  {
    v13 = [[_TtC10ContactsUI35CNMonogramPosterConfigurationReader alloc] initWithPosterConfigurationUserInfo:v8];
    v14 = [(CNMonogramPosterConfigurationReader *)v13 initials];
    v15 = [(CNMonogramPosterConfigurationReader *)v13 backgroundColor];
    v16 = [(CNPosterSetupAvatarPreviewViewController *)self monogramProviderItemForInitials:v14 backgroundColor:v15];

    v7[2](v7, v16);
  }
}

- (void)didTapCancel
{
  [(CNPosterSetupAvatarPreviewViewController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = [(CNPosterSetupAvatarPreviewViewController *)self delegate];
  [v3 avatarPreviewViewControllerDidCancel:self];
}

- (void)skipStep
{
  v3 = [(CNPosterSetupAvatarPreviewViewController *)self delegate];
  [v3 avatarPreviewViewControllerDidSelectCustomizeLater:self];
}

- (void)viewDidLoad
{
  v49[4] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = CNPosterSetupAvatarPreviewViewController;
  [(CNPosterSetupAvatarPreviewViewController *)&v48 viewDidLoad];
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"SNAP_POSTER_AVATAR_PREVIEW_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNPosterSetupAvatarPreviewViewController *)self setTitle:v4];

  v5 = [(CNPosterSetupAvatarPreviewViewController *)self navigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 firstObject];
  if (v7 != self)
  {
    v8 = [(CNPosterSetupAvatarPreviewViewController *)self hideSkipOption];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:@"SNAP_POSTER_PREVIEW_SKIP" value:&stru_1F0CE7398 table:@"Localized"];
    v7 = [v9 initWithTitle:v6 style:0 target:self action:sel_skipStep];
    v10 = [(CNPosterSetupAvatarPreviewViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v7];
  }

LABEL_5:
  if ([(CNPosterSetupAvatarPreviewViewController *)self shouldShowCancelButton])
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel];
    v12 = [(CNPosterSetupAvatarPreviewViewController *)self navigationItem];
    [v12 setLeftBarButtonItem:v11];
  }

  v13 = [(CNPosterSetupAvatarPreviewViewController *)self imageData];
  v14 = [(CNPosterSetupAvatarPreviewViewController *)self contactImage];
  v15 = [v14 variant];
  v47 = [CNPhotoPickerProviderItem generateImageDataWithData:v13 filterName:v15];

  v16 = [_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper alloc];
  [(CNPosterSetupAvatarPreviewViewController *)self cropRect];
  v21 = [(CNPosterSetupAvatarPreviewViewWrapper *)v16 initWithImageData:v47 cropRect:[(CNPosterSetupAvatarPreviewViewController *)self imageType] imageType:self delegate:v17, v18, v19, v20];
  v22 = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  v23 = [v22 view];

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNPosterSetupAvatarPreviewViewController *)self setAvatarPreviewView:v21];
  v24 = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  [v24 willMoveToParentViewController:self];

  v46 = v21;
  v25 = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  [(CNPosterSetupAvatarPreviewViewController *)self addChildViewController:v25];

  v26 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  [v26 addSubview:v23];

  v27 = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  [v27 didMoveToParentViewController:self];

  v38 = MEMORY[0x1E696ACD8];
  v44 = [v23 leadingAnchor];
  v45 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  v43 = [v45 leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v49[0] = v42;
  v40 = [v23 trailingAnchor];
  v41 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  v39 = [v41 trailingAnchor];
  v37 = [v40 constraintEqualToAnchor:v39];
  v49[1] = v37;
  v28 = [v23 topAnchor];
  v29 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  v30 = [v29 topAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v49[2] = v31;
  v32 = [v23 bottomAnchor];
  v33 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v49[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v38 activateConstraints:v36];
}

- (void)updateWithProviderItem:(id)a3
{
  v6 = a3;
  v4 = [v6 imageData];
  [(CNPosterSetupAvatarPreviewViewController *)self setImageData:v4];

  [v6 cropRect];
  [(CNPosterSetupAvatarPreviewViewController *)self setCropRect:?];
  -[CNPosterSetupAvatarPreviewViewController setImageType:](self, "setImageType:", [v6 imageType]);
  v5 = [v6 contactImageForMetadataStore];
  [(CNPosterSetupAvatarPreviewViewController *)self setContactImage:v5];

  [(CNPosterSetupAvatarPreviewViewController *)self updateMemojiEditingManagerForProviderItem:v6];
}

- (id)memojiEditingManagerForAvatarRecord:(id)a3 poseConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNPosterSetupAvatarPreviewViewController *)self variantsManager];

  if (!v8)
  {
    v9 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = self->_variantsManager;
    self->_variantsManager = v9;
  }

  v11 = [[CNAvatarEditingManager alloc] initWithAvatarRecord:v7 poseConfiguration:v6 variantsManager:self->_variantsManager];

  [(CNAvatarEditingManager *)v11 setDelegate:self];

  return v11;
}

- (void)updateMemojiEditingManagerForProviderItem:(id)a3
{
  v11 = a3;
  if ([(CNPosterSetupAvatarPreviewViewController *)self imageType]== 3)
  {
    objc_opt_class();
    v4 = v11;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = [v6 avatarRecord];
      v8 = [v6 poseConfiguration];
      v9 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManagerForAvatarRecord:v7 poseConfiguration:v8];

      [(CNAvatarEditingManager *)v9 setOriginalItem:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  memojiEditingManager = self->_memojiEditingManager;
  self->_memojiEditingManager = v9;
}

- (void)setImageType:(unint64_t)a3
{
  self->_imageType = a3;
  v4 = [(CNPosterSetupAvatarPreviewViewController *)self avatarPreviewView];
  [v4 setImageType:a3];
}

- (void)setCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_cropRect = a3;
  v7 = [(CNPosterSetupAvatarPreviewViewController *)self avatarPreviewView];
  [v7 setCropRect:{x, y, width, height}];
}

- (void)setImageData:(id)a3
{
  objc_storeStrong(&self->_imageData, a3);
  v5 = a3;
  v6 = [(CNPosterSetupAvatarPreviewViewController *)self avatarPreviewView];
  [v6 setImageData:v5];
}

- (CNPosterSetupAvatarPreviewViewController)initWithContactImage:(id)a3 imageType:(unint64_t)a4 forEditingContact:(id)a5
{
  v9 = a3;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = CNPosterSetupAvatarPreviewViewController;
  v11 = [(CNPosterSetupAvatarPreviewViewController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_editingContact, a5);
    objc_storeStrong(&v12->_contactImage, a3);
    v13 = [v9 imageData];
    imageData = v12->_imageData;
    v12->_imageData = v13;

    [v9 cropRect];
    v12->_cropRect.origin.x = v15;
    v12->_cropRect.origin.y = v16;
    v12->_cropRect.size.width = v17;
    v12->_cropRect.size.height = v18;
    v12->_imageType = a4;
    v19 = v12;
  }

  return v12;
}

- (CNPosterSetupAvatarPreviewViewController)initWithPosterConfiguration:(id)a3 forEditingContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = CNPosterSetupAvatarPreviewViewController;
  v8 = [(CNPosterSetupAvatarPreviewViewController *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_editingContact, a4);
    v10 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:v6];
    wallpaperType = v9->_wallpaperType;
    v9->_wallpaperType = v10;

    v9->_imageType = [objc_opt_class() defaultImageTypeForWallpaperType:v9->_wallpaperType];
    objc_initWeak(&location, v9);
    v12 = dispatch_get_global_queue(25, 0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __90__CNPosterSetupAvatarPreviewViewController_initWithPosterConfiguration_forEditingContact___block_invoke;
    v16[3] = &unk_1E74E7290;
    v13 = v9;
    v17 = v13;
    v18 = v6;
    objc_copyWeak(&v19, &location);
    dispatch_async(v12, v16);

    v14 = v13;
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  return v9;
}

void __90__CNPosterSetupAvatarPreviewViewController_initWithPosterConfiguration_forEditingContact___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__CNPosterSetupAvatarPreviewViewController_initWithPosterConfiguration_forEditingContact___block_invoke_2;
  v3[3] = &unk_1E74E4670;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 photoPickerProviderItemFromPosterConfiguration:v2 completionBlock:v3];
  objc_destroyWeak(&v4);
}

void __90__CNPosterSetupAvatarPreviewViewController_initWithPosterConfiguration_forEditingContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 generateAllImageDatasIfNeeded];
  objc_initWeak(&location, WeakRetained);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CNPosterSetupAvatarPreviewViewController_initWithPosterConfiguration_forEditingContact___block_invoke_3;
  block[3] = &unk_1E74E6D30;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __90__CNPosterSetupAvatarPreviewViewController_initWithPosterConfiguration_forEditingContact___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateWithProviderItem:*(a1 + 32)];
}

+ (CGSize)defaultItemSize
{
  +[CNVisualIdentityPickerViewController defaultItemSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (unint64_t)defaultImageTypeForWallpaperType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695CCE0]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CCE8]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end