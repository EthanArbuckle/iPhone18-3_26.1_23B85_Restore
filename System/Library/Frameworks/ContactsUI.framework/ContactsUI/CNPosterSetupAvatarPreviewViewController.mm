@interface CNPosterSetupAvatarPreviewViewController
+ (CGSize)defaultItemSize;
+ (unint64_t)defaultImageTypeForWallpaperType:(id)type;
- (CGRect)cropRect;
- (CNPosterSetupAvatarPreviewViewController)initWithContactImage:(id)image imageType:(unint64_t)type forEditingContact:(id)contact;
- (CNPosterSetupAvatarPreviewViewController)initWithPosterConfiguration:(id)configuration forEditingContact:(id)contact;
- (CNPosterSetupAvatarPreviewViewControllerDelegate)delegate;
- (id)animojiProviderItem:(id)item backgroundColor:(id)color;
- (id)animojiProviderItemForAvatarImageData:(id)data backgroundColor:(id)color;
- (id)closestColor:(id)color inColors:(id)colors;
- (id)editorViewControllerForProviderItem:(id)item;
- (id)memojiEditingManagerForAvatarRecord:(id)record poseConfiguration:(id)configuration;
- (id)monogramProviderItemForInitials:(id)initials backgroundColor:(id)color;
- (id)photoProviderItemForFullImageFromPosterConfiguration:(id)configuration;
- (id)providerItemForRandomColoredMonogram;
- (id)providerItemWithSnapshotImage:(id)image;
- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item;
- (void)avatarPreviewViewDidFinishWithImageData:(id)data cropRect:(CGRect)rect;
- (void)avatarPreviewViewDidSelectChangeScale;
- (void)avatarPreviewViewDidSelectCustomizePhoto;
- (void)didTapCancel;
- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item;
- (void)photoPickerProviderItemFromPosterConfiguration:(id)configuration completionBlock:(id)block;
- (void)photoProviderItemForSnapshotFromPosterConfiguration:(id)configuration completionBlock:(id)block;
- (void)photoProviderItemFromPosterConfiguration:(id)configuration completionBlock:(id)block;
- (void)presentPhotoFilterEditorForProviderItem:(id)item;
- (void)setCropRect:(CGRect)rect;
- (void)setImageData:(id)data;
- (void)setImageType:(unint64_t)type;
- (void)skipStep;
- (void)updateMemojiEditingManagerForProviderItem:(id)item;
- (void)updateWithProviderItem:(id)item;
- (void)viewDidLoad;
- (void)visualIdentityEditorController:(id)controller didFinishWithProviderItem:(id)item;
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

- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item
{
  itemCopy = item;
  [(CNPosterSetupAvatarPreviewViewController *)self updateWithProviderItem:itemCopy];
  memojiImagePickerController = [(CNPosterSetupAvatarPreviewViewController *)self memojiImagePickerController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__CNPosterSetupAvatarPreviewViewController_avatarEditingManager_didFinishWithProviderItem___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = itemCopy;
  v7 = itemCopy;
  [memojiImagePickerController dismissViewControllerAnimated:1 completion:v8];
}

- (void)visualIdentityEditorController:(id)controller didFinishWithProviderItem:(id)item
{
  controllerCopy = controller;
  [(CNPosterSetupAvatarPreviewViewController *)self updateWithProviderItem:item];
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  [(CNPosterSetupAvatarPreviewViewController *)self updateWithProviderItem:itemCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__CNPosterSetupAvatarPreviewViewController_imagePickerController_didFinishWithProviderItem___block_invoke;
  v9[3] = &unk_1E74E77C0;
  v9[4] = self;
  v10 = itemCopy;
  v8 = itemCopy;
  [controllerCopy dismissViewControllerAnimated:1 completion:v9];
}

- (id)editorViewControllerForProviderItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(CNPhotoPickerVariantsManager);
  v6 = [[CNVisualIdentityItemEditorViewController alloc] initWithProviderItem:itemCopy variantsManager:v5];

  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"DONE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityItemEditorViewController *)v6 setDoneButtonTitle:v8];

  [(CNVisualIdentityItemEditorViewController *)v6 setDelegate:self];

  return v6;
}

- (void)presentPhotoFilterEditorForProviderItem:(id)item
{
  v5 = [(CNPosterSetupAvatarPreviewViewController *)self editorViewControllerForProviderItem:item];
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  [(CNPosterSetupAvatarPreviewViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)avatarPreviewViewDidSelectCustomizePhoto
{
  delegate = [(CNPosterSetupAvatarPreviewViewController *)self delegate];
  [delegate avatarPreviewViewControllerDidSelectCustomizePhoto:self];
}

- (void)avatarPreviewViewDidSelectChangeScale
{
  v20 = objc_alloc_init(CNVisualIdentityImagePickerController);
  contactImage = [(CNPosterSetupAvatarPreviewViewController *)self contactImage];
  source = [contactImage source];

  if (source == 3)
  {
    memojiEditingManager = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
    memojiEditingManager2 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
    originalItem = [memojiEditingManager2 originalItem];
    imageData = [memojiEditingManager imagePickerForItem:originalItem];

    [(CNVisualIdentityImagePickerController *)v20 presentImagePicker:imageData withStyle:6 fromViewController:self];
    [(CNPosterSetupAvatarPreviewViewController *)self setMemojiImagePickerController:imageData];
  }

  else
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    editingContact = [(CNPosterSetupAvatarPreviewViewController *)self editingContact];
    -[CNVisualIdentityImagePickerController setIsMeContact:](v20, "setIsMeContact:", [unifiedMeContactMonitor isMeContact:editingContact]);

    imageData = [(CNPosterSetupAvatarPreviewViewController *)self imageData];
    [(CNPosterSetupAvatarPreviewViewController *)self cropRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    imagePickerCustomBackgroundColor = [(CNPosterSetupAvatarPreviewViewController *)self imagePickerCustomBackgroundColor];
    [(CNVisualIdentityImagePickerController *)v20 presentMoveAndScaleForImageData:imageData withCropRect:self fromViewController:imagePickerCustomBackgroundColor backgroundColor:v12, v14, v16, v18];
  }

  [(CNVisualIdentityImagePickerController *)v20 setDelegate:self];
  [(CNPosterSetupAvatarPreviewViewController *)self setImagePicker:v20];
}

- (void)avatarPreviewViewDidFinishWithImageData:(id)data cropRect:(CGRect)rect
{
  v6 = [(CNPosterSetupAvatarPreviewViewController *)self delegate:data];
  contactImage = [(CNPosterSetupAvatarPreviewViewController *)self contactImage];
  [v6 avatarPreviewViewController:self didFinishWithContactImage:contactImage];
}

- (id)closestColor:(id)color inColors:(id)colors
{
  v30 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  colorsCopy = colors;
  v27 = 0;
  v28 = 0.0;
  v26 = 0;
  [colorCopy getHue:&v28 saturation:&v27 brightness:&v26 alpha:0];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = colorsCopy;
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
        color = [v14 color];
        [color getHue:&v21 saturation:&v20 brightness:&v19 alpha:0];

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

- (id)monogramProviderItemForInitials:(id)initials backgroundColor:(id)color
{
  colorCopy = color;
  initialsCopy = initials;
  v8 = objc_alloc_init(CNVisualIdentity);
  [(CNVisualIdentity *)v8 setAbbreviatedName:initialsCopy];

  availableColors = [MEMORY[0x1E69BDC50] availableColors];
  v10 = [availableColors _cn_map:&__block_literal_global_36585];

  v11 = [(CNPosterSetupAvatarPreviewViewController *)self closestColor:colorCopy inColors:v10];

  v12 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  [objc_opt_class() defaultItemSize];
  v14 = v13;
  v16 = v15;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v19 = v18;
  v20 = objc_alloc(MEMORY[0x1E69BDC50]);
  colorName = [v11 colorName];
  v22 = [v20 initWithColorName:colorName];
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
  editingContact = [(CNPosterSetupAvatarPreviewViewController *)self editingContact];
  v5 = [(CNVisualIdentity *)v3 initWithContact:editingContact];

  v6 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  [objc_opt_class() defaultItemSize];
  v7 = [CNPhotoPickerMonogramProvider providerItemWithRandomBackgroundColorForVisualIdentity:v5 size:v6 RTL:?];

  return v7;
}

- (id)animojiProviderItemForAvatarImageData:(id)data backgroundColor:(id)color
{
  dataCopy = data;
  colorCopy = color;
  v8 = objc_alloc_init(CNPhotoPickerVariantsManager);
  avatarBackgrounds = [(CNPhotoPickerVariantsManager *)v8 avatarBackgrounds];
  v10 = [(CNPosterSetupAvatarPreviewViewController *)self closestColor:colorCopy inColors:avatarBackgrounds];

  color = [v10 color];
  v12 = [CNPhotoPickerVariantsManager nonAlphaColorForBackgroundColor:color];
  [(CNPosterSetupAvatarPreviewViewController *)self setImagePickerCustomBackgroundColor:v12];

  v13 = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];
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
  memojiEditingManager = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__CNPosterSetupAvatarPreviewViewController_animojiProviderItemForAvatarImageData_backgroundColor___block_invoke;
  v20[3] = &unk_1E74E46C0;
  v20[4] = &v27;
  v20[5] = &v21;
  [memojiEditingManager prepareAvatarImageForPicker:v13 synchronousCompletion:v20];

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

- (id)animojiProviderItem:(id)item backgroundColor:(id)color
{
  colorCopy = color;
  itemCopy = item;
  objc_opt_class();
  imageData = [itemCopy imageData];
  v9 = [(CNPosterSetupAvatarPreviewViewController *)self animojiProviderItemForAvatarImageData:imageData backgroundColor:colorCopy];

  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  poseConfiguration = [itemCopy poseConfiguration];
  [v11 setPoseConfiguration:poseConfiguration];

  avatarRecord = [itemCopy avatarRecord];

  [v11 setAvatarRecord:avatarRecord];

  return v11;
}

- (id)providerItemWithSnapshotImage:(id)image
{
  imageCopy = image;
  cnui_CGImageSnapshot = [imageCopy cnui_CGImageSnapshot];
  v5 = objc_opt_new();
  v6 = CGImageDestinationCreateWithData(v5, @"public.png", 1uLL, 0);
  CGImageDestinationAddImage(v6, cnui_CGImageSnapshot, 0);
  CGImageDestinationFinalize(v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = MEMORY[0x1E6996738];
  [imageCopy size];
  v9 = v8;
  [imageCopy size];
  [v7 centeredSquareCropRectInRect:{0.0, 0.0, v9, v10}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = objc_opt_class();
  [imageCopy size];
  v19 = v18;

  [v17 twentyFourPointFivePercentOfHeight:v19];
  v21 = [[CNPhotoPickerProviderItem alloc] initWithImageData:v5 thumbnailImageData:0 fullscreenImageData:0 cropRect:v12, v20, v14, v16];

  return v21;
}

- (void)photoProviderItemForSnapshotFromPosterConfiguration:(id)configuration completionBlock:(id)block
{
  blockCopy = block;
  configurationCopy = configuration;
  v8 = +[CNPRUISIncomingCallPosterContext emptyContext];
  v9 = [CNPRUISIncomingCallSnapshotDefinition contentsOnlySnapshotDefinitionWithContext:v8 attachmentIdentifiers:0];

  v10 = [CNPRUISPosterSnapshotRequest requestForConfiguration:configurationCopy definition:v9 interfaceOrientation:1];

  v11 = objc_alloc_init(CNPRUISPosterSnapshotController);
  v26 = 0;
  v12 = [(CNPRUISPosterSnapshotController *)v11 latestSnapshotBundleForRequest:v10 error:&v26];
  v13 = v26;
  if (v12 && ([v9 levelSets], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "snapshotForLevelSet:", v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v16))
  {
    mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke;
    v23[3] = &unk_1E74E6650;
    v23[4] = self;
    v18 = v16;
    v24 = v18;
    v25 = blockCopy;
    [mainThreadScheduler performBlock:v23];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __112__CNPosterSetupAvatarPreviewViewController_photoProviderItemForSnapshotFromPosterConfiguration_completionBlock___block_invoke_2;
    v19[3] = &unk_1E74E4698;
    v22 = blockCopy;
    v20 = v9;
    selfCopy = self;
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

- (void)photoProviderItemFromPosterConfiguration:(id)configuration completionBlock:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  v8 = [(CNPosterSetupAvatarPreviewViewController *)self photoProviderItemForFullImageFromPosterConfiguration:configurationCopy];
  if (v8)
  {
    blockCopy[2](blockCopy, v8);
  }

  else
  {
    v9 = CNUILogPosters();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get original image data for Photos poster, falling back to poster snapshot", v10, 2u);
    }

    [(CNPosterSetupAvatarPreviewViewController *)self photoProviderItemForSnapshotFromPosterConfiguration:configurationCopy completionBlock:blockCopy];
  }
}

- (id)photoProviderItemForFullImageFromPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[CNPhotosPosterConfigurationReader alloc] initWithPosterConfiguration:configurationCopy];

  fullExtentPreviewImageData = [(CNPhotosPosterConfigurationReader *)v4 fullExtentPreviewImageData];
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

  height = [[CNPhotoPickerProviderItem alloc] initWithImageData:fullExtentPreviewImageData thumbnailImageData:0 fullscreenImageData:0 cropRect:x, y, width, height];

  return height;
}

- (void)photoPickerProviderItemFromPosterConfiguration:(id)configuration completionBlock:(id)block
{
  v52 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  blockCopy = block;
  [(CNPosterSetupAvatarPreviewViewController *)self setImagePickerCustomBackgroundColor:0];
  v43 = 0;
  v8 = [configurationCopy loadUserInfoWithError:&v43];
  v9 = v43;
  v10 = (*(*MEMORY[0x1E6996548] + 16))();
  if (v10)
  {
    v11 = CNUILogPosters();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = configurationCopy;
      _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Error loading user info for configuration: %@", &buf, 0xCu);
    }
  }

  v12 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:configurationCopy];
  if (((v10 | [v12 isEqualToString:*MEMORY[0x1E695CCE8]] ^ 1) & 1) != 0 || !+[CNMonogramPosterConfigurationReader canReadConfiguration](_TtC10ContactsUI35CNMonogramPosterConfigurationReader, "canReadConfiguration"))
  {
    if (((v10 | [v12 isEqualToString:*MEMORY[0x1E695CCE0]] ^ 1) & 1) != 0 || !+[CNMemojiPosterConfigurationReader canReadConfiguration](_TtC10ContactsUI33CNMemojiPosterConfigurationReader, "canReadConfiguration"))
    {
      if ([v12 isEqualToString:*MEMORY[0x1E695CCF0]])
      {
        [(CNPosterSetupAvatarPreviewViewController *)self photoProviderItemFromPosterConfiguration:configurationCopy completionBlock:blockCopy];
      }

      else
      {
        providerItemForRandomColoredMonogram = [(CNPosterSetupAvatarPreviewViewController *)self providerItemForRandomColoredMonogram];
        blockCopy[2](blockCopy, providerItemForRandomColoredMonogram);
      }
    }

    else
    {
      v42 = [[_TtC10ContactsUI33CNMemojiPosterConfigurationReader alloc] initWithPosterConfigurationUserInfo:v8];
      avatarRecordData = [(CNMemojiPosterConfigurationReader *)v42 avatarRecordData];
      v18 = *MEMORY[0x1E6996540];
      v19 = (*(*MEMORY[0x1E6996540] + 16))(*MEMORY[0x1E6996540], avatarRecordData);

      if (v19)
      {
        avatarImageData = [(CNMemojiPosterConfigurationReader *)v42 avatarImageData];
        v21 = (*(v18 + 16))(v18, avatarImageData);

        if (v21)
        {
          providerItemForRandomColoredMonogram2 = [(CNPosterSetupAvatarPreviewViewController *)self providerItemForRandomColoredMonogram];
        }

        else
        {
          v37 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManagerForAvatarRecord:0 poseConfiguration:0];
          memojiEditingManager = self->_memojiEditingManager;
          self->_memojiEditingManager = v37;

          avatarImageData2 = [(CNMemojiPosterConfigurationReader *)v42 avatarImageData];
          backgroundColor = [(CNMemojiPosterConfigurationReader *)v42 backgroundColor];
          providerItemForRandomColoredMonogram2 = [(CNPosterSetupAvatarPreviewViewController *)self animojiProviderItemForAvatarImageData:avatarImageData2 backgroundColor:backgroundColor];
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
        avatarRecordData2 = [(CNMemojiPosterConfigurationReader *)v42 avatarRecordData];
        v27 = [v24 avatarRecordFromData:avatarRecordData2];

        v28 = MEMORY[0x1E695CF08];
        avatarPoseData = [(CNMemojiPosterConfigurationReader *)v42 avatarPoseData];
        v41 = [v28 poseConfigurationForData:avatarPoseData withAvatarRecord:v27];

        v30 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManagerForAvatarRecord:v27 poseConfiguration:v41];
        v31 = self->_memojiEditingManager;
        self->_memojiEditingManager = v30;

        memojiEditingManager = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
        originalItem = [memojiEditingManager originalItem];

        [originalItem setPoseConfiguration:v41];
        generateImageDataIfNeeded = [originalItem generateImageDataIfNeeded];
        backgroundColor2 = [(CNMemojiPosterConfigurationReader *)v42 backgroundColor];
        providerItemForRandomColoredMonogram2 = [(CNPosterSetupAvatarPreviewViewController *)self animojiProviderItem:originalItem backgroundColor:backgroundColor2];

        memojiEditingManager2 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManager];
        [memojiEditingManager2 setOriginalItem:providerItemForRandomColoredMonogram2];
      }

      blockCopy[2](blockCopy, providerItemForRandomColoredMonogram2);
    }
  }

  else
  {
    v13 = [[_TtC10ContactsUI35CNMonogramPosterConfigurationReader alloc] initWithPosterConfigurationUserInfo:v8];
    initials = [(CNMonogramPosterConfigurationReader *)v13 initials];
    backgroundColor3 = [(CNMonogramPosterConfigurationReader *)v13 backgroundColor];
    v16 = [(CNPosterSetupAvatarPreviewViewController *)self monogramProviderItemForInitials:initials backgroundColor:backgroundColor3];

    blockCopy[2](blockCopy, v16);
  }
}

- (void)didTapCancel
{
  [(CNPosterSetupAvatarPreviewViewController *)self dismissViewControllerAnimated:1 completion:0];
  delegate = [(CNPosterSetupAvatarPreviewViewController *)self delegate];
  [delegate avatarPreviewViewControllerDidCancel:self];
}

- (void)skipStep
{
  delegate = [(CNPosterSetupAvatarPreviewViewController *)self delegate];
  [delegate avatarPreviewViewControllerDidSelectCustomizeLater:self];
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

  navigationController = [(CNPosterSetupAvatarPreviewViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  if (firstObject != self)
  {
    hideSkipOption = [(CNPosterSetupAvatarPreviewViewController *)self hideSkipOption];

    if (hideSkipOption)
    {
      goto LABEL_5;
    }

    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    navigationController = CNContactsUIBundle();
    viewControllers = [navigationController localizedStringForKey:@"SNAP_POSTER_PREVIEW_SKIP" value:&stru_1F0CE7398 table:@"Localized"];
    firstObject = [v9 initWithTitle:viewControllers style:0 target:self action:sel_skipStep];
    navigationItem = [(CNPosterSetupAvatarPreviewViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:firstObject];
  }

LABEL_5:
  if ([(CNPosterSetupAvatarPreviewViewController *)self shouldShowCancelButton])
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel];
    navigationItem2 = [(CNPosterSetupAvatarPreviewViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v11];
  }

  imageData = [(CNPosterSetupAvatarPreviewViewController *)self imageData];
  contactImage = [(CNPosterSetupAvatarPreviewViewController *)self contactImage];
  variant = [contactImage variant];
  v47 = [CNPhotoPickerProviderItem generateImageDataWithData:imageData filterName:variant];

  v16 = [_TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper alloc];
  [(CNPosterSetupAvatarPreviewViewController *)self cropRect];
  v21 = [(CNPosterSetupAvatarPreviewViewWrapper *)v16 initWithImageData:v47 cropRect:[(CNPosterSetupAvatarPreviewViewController *)self imageType] imageType:self delegate:v17, v18, v19, v20];
  hostingController = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  view = [hostingController view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNPosterSetupAvatarPreviewViewController *)self setAvatarPreviewView:v21];
  hostingController2 = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  [hostingController2 willMoveToParentViewController:self];

  v46 = v21;
  hostingController3 = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  [(CNPosterSetupAvatarPreviewViewController *)self addChildViewController:hostingController3];

  view2 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  [view2 addSubview:view];

  hostingController4 = [(CNPosterSetupAvatarPreviewViewWrapper *)v21 hostingController];
  [hostingController4 didMoveToParentViewController:self];

  v38 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view leadingAnchor];
  view3 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[0] = v42;
  trailingAnchor = [view trailingAnchor];
  view4 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[1] = v37;
  topAnchor = [view topAnchor];
  view5 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[2] = v31;
  bottomAnchor = [view bottomAnchor];
  view6 = [(CNPosterSetupAvatarPreviewViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v38 activateConstraints:v36];
}

- (void)updateWithProviderItem:(id)item
{
  itemCopy = item;
  imageData = [itemCopy imageData];
  [(CNPosterSetupAvatarPreviewViewController *)self setImageData:imageData];

  [itemCopy cropRect];
  [(CNPosterSetupAvatarPreviewViewController *)self setCropRect:?];
  -[CNPosterSetupAvatarPreviewViewController setImageType:](self, "setImageType:", [itemCopy imageType]);
  contactImageForMetadataStore = [itemCopy contactImageForMetadataStore];
  [(CNPosterSetupAvatarPreviewViewController *)self setContactImage:contactImageForMetadataStore];

  [(CNPosterSetupAvatarPreviewViewController *)self updateMemojiEditingManagerForProviderItem:itemCopy];
}

- (id)memojiEditingManagerForAvatarRecord:(id)record poseConfiguration:(id)configuration
{
  configurationCopy = configuration;
  recordCopy = record;
  variantsManager = [(CNPosterSetupAvatarPreviewViewController *)self variantsManager];

  if (!variantsManager)
  {
    v9 = objc_alloc_init(CNPhotoPickerVariantsManager);
    variantsManager = self->_variantsManager;
    self->_variantsManager = v9;
  }

  v11 = [[CNAvatarEditingManager alloc] initWithAvatarRecord:recordCopy poseConfiguration:configurationCopy variantsManager:self->_variantsManager];

  [(CNAvatarEditingManager *)v11 setDelegate:self];

  return v11;
}

- (void)updateMemojiEditingManagerForProviderItem:(id)item
{
  itemCopy = item;
  if ([(CNPosterSetupAvatarPreviewViewController *)self imageType]== 3)
  {
    objc_opt_class();
    v4 = itemCopy;
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
      avatarRecord = [v6 avatarRecord];
      poseConfiguration = [v6 poseConfiguration];
      v9 = [(CNPosterSetupAvatarPreviewViewController *)self memojiEditingManagerForAvatarRecord:avatarRecord poseConfiguration:poseConfiguration];

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

- (void)setImageType:(unint64_t)type
{
  self->_imageType = type;
  avatarPreviewView = [(CNPosterSetupAvatarPreviewViewController *)self avatarPreviewView];
  [avatarPreviewView setImageType:type];
}

- (void)setCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  self->_cropRect = rect;
  avatarPreviewView = [(CNPosterSetupAvatarPreviewViewController *)self avatarPreviewView];
  [avatarPreviewView setCropRect:{x, y, width, height}];
}

- (void)setImageData:(id)data
{
  objc_storeStrong(&self->_imageData, data);
  dataCopy = data;
  avatarPreviewView = [(CNPosterSetupAvatarPreviewViewController *)self avatarPreviewView];
  [avatarPreviewView setImageData:dataCopy];
}

- (CNPosterSetupAvatarPreviewViewController)initWithContactImage:(id)image imageType:(unint64_t)type forEditingContact:(id)contact
{
  imageCopy = image;
  contactCopy = contact;
  v21.receiver = self;
  v21.super_class = CNPosterSetupAvatarPreviewViewController;
  v11 = [(CNPosterSetupAvatarPreviewViewController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_editingContact, contact);
    objc_storeStrong(&v12->_contactImage, image);
    imageData = [imageCopy imageData];
    imageData = v12->_imageData;
    v12->_imageData = imageData;

    [imageCopy cropRect];
    v12->_cropRect.origin.x = v15;
    v12->_cropRect.origin.y = v16;
    v12->_cropRect.size.width = v17;
    v12->_cropRect.size.height = v18;
    v12->_imageType = type;
    v19 = v12;
  }

  return v12;
}

- (CNPosterSetupAvatarPreviewViewController)initWithPosterConfiguration:(id)configuration forEditingContact:(id)contact
{
  configurationCopy = configuration;
  contactCopy = contact;
  v21.receiver = self;
  v21.super_class = CNPosterSetupAvatarPreviewViewController;
  v8 = [(CNPosterSetupAvatarPreviewViewController *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_editingContact, contact);
    v10 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:configurationCopy];
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
    v18 = configurationCopy;
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

+ (unint64_t)defaultImageTypeForWallpaperType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E695CCE0]])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E695CCE8]])
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