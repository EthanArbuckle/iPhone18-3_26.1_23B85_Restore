@interface CNAvatarEditingManager
+ (id)log;
- (CGRect)computeFullscreenImageRectForScreenWithSize:(CGSize)size;
- (CNAvatarEditingManager)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration variantsManager:(id)manager;
- (CNAvatarEditingManagerDelegate)delegate;
- (CNPhotoPickerAnimojiProviderItem)originalItem;
- (UIViewController)viewController;
- (id)captureFlashViewWithSize:(CGSize)size alpha:(double)alpha;
- (id)compositeImageDataForImage:(id)image backgroundColor:(id)color;
- (id)createImagePickerForEditingImageData:(id)data withCropRect:(CGRect)rect customBackgroundColor:(id)color;
- (id)croppedAndCenteredImageForGeneratedImage:(id)image toSize:(CGSize)size;
- (id)fullScreenImageFromImage:(id)image inSize:(CGSize)size;
- (id)imagePickerForItem:(id)item;
- (id)initForEditingWithAvatarRecord:(id)record variantsManager:(id)manager fromViewController:(id)controller;
- (id)renderImage:(id)image inRect:(CGRect)rect;
- (void)combinedPickerViewController:(id)controller didSelectRecord:(id)record withStickerConfiguration:(id)configuration;
- (void)combinedPickerViewControllerDidCancel:(id)cancel;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)prepareAvatarImageForPicker:(id)picker synchronousCompletion:(id)completion;
- (void)presentImagePickerForImage:(id)image cropRect:(CGRect)rect fadeIn:(BOOL)in completion:(id)completion;
@end

@implementation CNAvatarEditingManager

- (CNAvatarEditingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  if (self->_viewController)
  {
    viewController = [(CNAvatarEditingManager *)self viewController];
    [viewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {

    [cancel dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  v57 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  infoCopy = info;
  delegate = [(CNAvatarEditingManager *)self delegate];

  if (delegate)
  {
    imageWithAlpha = [(CNAvatarEditingManager *)self imageWithAlpha];
    v10 = UIImagePNGRepresentation(imageWithAlpha);

    v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DDDE0]];
    v12 = v11;
    if (v11)
    {
      [v11 CGRectValue];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
    }

    else
    {
      v14 = *MEMORY[0x1E695F058];
      v16 = *(MEMORY[0x1E695F058] + 8);
      v18 = *(MEMORY[0x1E695F058] + 16);
      v20 = *(MEMORY[0x1E695F058] + 24);
    }

    [controllerCopy dismissViewControllerAnimated:1 completion:0];
    v21 = [MEMORY[0x1E69DCAB8] imageWithData:v10];
    [v21 size];
    v23 = v22;
    v25 = v24;

    v26 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69DDE10]];
    [v26 size];
    v28 = v27;
    v30 = v29;

    if (v23 != v28 || v25 != v30)
    {
      v32 = [objc_opt_class() log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v49 = 134218752;
        v50 = v28;
        v51 = 2048;
        v52 = v30;
        v53 = 2048;
        v54 = v23;
        v55 = 2048;
        v56 = v25;
        _os_log_impl(&dword_199A75000, v32, OS_LOG_TYPE_DEFAULT, "Scaling cropRect, image size mismatch detected with returned UIImagePickerControllerOriginalImage {%.2f, %.2f} and original image provided on initialization {%.2f, %.2f}", &v49, 0x2Au);
      }

      [MEMORY[0x1E6996738] scaledCropRect:v14 fromSize:v16 toSize:{v18, v20, v28, v30, v23, v25}];
      [MEMORY[0x1E6996738] squareCropRect:? toFitSize:?];
      v14 = v33;
      v16 = v34;
      v18 = v35;
      v20 = v36;
    }

    originalItem = [(CNAvatarEditingManager *)self originalItem];
    backgroundColorVariant = [originalItem backgroundColorVariant];
    v39 = backgroundColorVariant;
    if (backgroundColorVariant)
    {
      firstObject = backgroundColorVariant;
    }

    else
    {
      variantsManager = [(CNAvatarEditingManager *)self variantsManager];
      avatarBackgrounds = [variantsManager avatarBackgrounds];
      firstObject = [avatarBackgrounds firstObject];
    }

    v43 = [[CNPhotoPickerAnimojiProviderItem alloc] initWithOriginalImageData:v10 cropRect:firstObject backgroundColorVariant:v14, v16, v18, v20];
    originalItem2 = [(CNAvatarEditingManager *)self originalItem];
    [originalItem2 originalImageSize];
    [(CNPhotoPickerAnimojiProviderItem *)v43 setOriginalImageSize:?];

    avatarRecord = [(CNAvatarEditingManager *)self avatarRecord];
    [(CNPhotoPickerAnimojiProviderItem *)v43 setAvatarRecord:avatarRecord];

    poseConfiguration = [(CNAvatarEditingManager *)self poseConfiguration];
    [(CNPhotoPickerAnimojiProviderItem *)v43 setPoseConfiguration:poseConfiguration];

    originalItem3 = [(CNAvatarEditingManager *)self originalItem];
    [originalItem3 edgeInsets];
    [(CNPhotoPickerAnimojiProviderItem *)v43 setEdgeInsets:?];

    delegate2 = [(CNAvatarEditingManager *)self delegate];
    [delegate2 avatarEditingManager:self didFinishWithProviderItem:v43];
  }
}

- (id)createImagePickerForEditingImageData:(id)data withCropRect:(CGRect)rect customBackgroundColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v26[7] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  colorCopy = color;
  if (dataCopy)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DCAD0]) _initWithSourceImageData:dataCopy cropRect:{x, y, width, height}];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E69DCAD0]);
  }

  v14 = v13;
  [v13 setDelegate:self];
  if (colorCopy)
  {
    v15 = colorCopy;
  }

  else
  {
    v15 = +[CNUIColorRepository photoPickerCaptureBackgroundColor];
  }

  v16 = v15;
  [v14 _setImagePickerSavingOptions:7];
  v17 = MEMORY[0x1E695DF90];
  _properties = [v14 _properties];
  v19 = [v17 dictionaryWithDictionary:_properties];

  v20 = *MEMORY[0x1E69DE998];
  v25[0] = *MEMORY[0x1E69DDDD8];
  v25[1] = v20;
  v26[0] = MEMORY[0x1E695E118];
  v26[1] = MEMORY[0x1E695E118];
  v21 = *MEMORY[0x1E69DE930];
  v25[2] = *MEMORY[0x1E69DE8B8];
  v25[3] = v21;
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = MEMORY[0x1E695E118];
  v22 = *MEMORY[0x1E69DE978];
  v25[4] = *MEMORY[0x1E69DE8B0];
  v25[5] = v22;
  v26[4] = MEMORY[0x1E695E118];
  v26[5] = MEMORY[0x1E695E110];
  v25[6] = *MEMORY[0x1E69DE918];
  v26[6] = v16;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  [v19 addEntriesFromDictionary:v23];

  [v14 _setProperties:v19];

  return v14;
}

- (id)imagePickerForItem:(id)item
{
  v4 = MEMORY[0x1E69DCAB8];
  itemCopy = item;
  originalImageData = [itemCopy originalImageData];
  v7 = [v4 imageWithData:originalImageData];
  [(CNAvatarEditingManager *)self setImageWithAlpha:v7];

  backgroundColorVariant = [itemCopy backgroundColorVariant];
  color = [backgroundColorVariant color];
  v10 = [CNPhotoPickerVariantsManager nonAlphaColorForBackgroundColor:color];

  imageWithAlpha = [(CNAvatarEditingManager *)self imageWithAlpha];
  v12 = [(CNAvatarEditingManager *)self compositeImageDataForImage:imageWithAlpha backgroundColor:v10];

  [itemCopy cropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(CNAvatarEditingManager *)self createImagePickerForEditingImageData:v12 withCropRect:v10 customBackgroundColor:v14, v16, v18, v20];

  return v21;
}

- (id)croppedAndCenteredImageForGeneratedImage:(id)image toSize:(CGSize)size
{
  v4 = [(CNAvatarEditingManager *)self fullScreenImageFromImage:image inSize:size.width, size.height];
  v5 = [CNAvatarImageUtilities croppedAndCenteredAvatarImageForImage:v4 widthMultiplier:1.1];

  return v5;
}

- (void)presentImagePickerForImage:(id)image cropRect:(CGRect)rect fadeIn:(BOOL)in completion:(id)completion
{
  inCopy = in;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  imageCopy = image;
  [(CNAvatarEditingManager *)self setImageWithAlpha:imageCopy];
  v15 = [(CNAvatarEditingManager *)self compositeImageDataForImage:imageCopy backgroundColor:0];

  height = [(CNAvatarEditingManager *)self createImagePickerForEditingImageData:v15 withCropRect:0 customBackgroundColor:x, y, width, height];
  [height setModalTransitionStyle:2];
  [height setModalPresentationStyle:3];
  if (inCopy)
  {
    view = [height view];
    [view bounds];
    v20 = [(CNAvatarEditingManager *)self captureFlashViewWithSize:v18 alpha:v19, 1.0];

    view2 = [height view];
    [view2 addSubview:v20];

    viewController = [(CNAvatarEditingManager *)self viewController];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80__CNAvatarEditingManager_presentImagePickerForImage_cropRect_fadeIn_completion___block_invoke;
    v25[3] = &unk_1E74E6DD0;
    v26 = v20;
    v27 = completionCopy;
    v23 = v20;
    [viewController presentViewController:height animated:0 completion:v25];
  }

  else
  {
    viewController2 = [(CNAvatarEditingManager *)self viewController];
    [viewController2 presentViewController:height animated:1 completion:0];
  }
}

void __80__CNAvatarEditingManager_presentImagePickerForImage_cropRect_fadeIn_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__CNAvatarEditingManager_presentImagePickerForImage_cropRect_fadeIn_completion___block_invoke_2;
  v6[3] = &unk_1E74E6A88;
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__CNAvatarEditingManager_presentImagePickerForImage_cropRect_fadeIn_completion___block_invoke_3;
  v3[3] = &unk_1E74E6FB0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:0x20000 delay:v6 options:v3 animations:0.1 completion:0.0];
}

uint64_t __80__CNAvatarEditingManager_presentImagePickerForImage_cropRect_fadeIn_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)prepareAvatarImageForPicker:(id)picker synchronousCompletion:(id)completion
{
  completionCopy = completion;
  pickerCopy = picker;
  [CNAvatarImageUtilities transparencyInsetsForImage:pickerCopy requiringFullOpacity:0];
  v9 = v8;
  [pickerCopy size];
  v11 = v10;
  [pickerCopy size];
  v50 = [(CNAvatarEditingManager *)self croppedAndCenteredImageForGeneratedImage:pickerCopy toSize:v11, v12 + v12];
  [CNAvatarImageUtilities transparencyInsetsForImage:v50 requiringFullOpacity:0];
  v14 = v13;
  v15 = MEMORY[0x1E6996738];
  [v50 size];
  v17 = v16;
  [v50 size];
  [v15 centeredSquareCropRectInRect:{0.0, 0.0, v17, v18}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [v50 size];
  v28 = v27;
  [pickerCopy scale];
  v30 = v28 - v14 / v29;
  v52.origin.x = v20;
  v52.origin.y = v22;
  v52.size.width = v24;
  v52.size.height = v26;
  v31 = v30 - CGRectGetMaxY(v52);
  [pickerCopy scale];
  v33 = v31 - v32;
  if (v9 != 0.0)
  {
    v33 = 0.0;
  }

  v34 = v22 + v33;
  [v50 size];
  v36 = v35 * 0.1;
  v37 = [CNAvatarImageUtilities paddedImage:v50 withPadding:v35 * 0.1];
  v53.origin.x = v20;
  v53.origin.y = v34;
  v53.size.width = v24;
  v53.size.height = v26;
  v54 = CGRectOffset(v53, v36, v36);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  [pickerCopy scale];
  v43 = v42 * x;
  [pickerCopy scale];
  v45 = y * v44;
  [pickerCopy scale];
  v47 = width * v46;
  [pickerCopy scale];
  v49 = v48;

  completionCopy[2](completionCopy, v37, v43, v45, v47, height * v49);
}

- (id)compositeImageDataForImage:(id)image backgroundColor:(id)color
{
  imageCopy = image;
  colorCopy = color;
  v8 = colorCopy;
  if (colorCopy)
  {
    v9 = colorCopy;
  }

  else
  {
    viewController = [(CNAvatarEditingManager *)self viewController];
    traitCollection = [viewController traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      +[CNUIColorRepository photoPickerCaptureDarkBackgroundColor];
    }

    else
    {
      +[CNUIColorRepository photoPickerCaptureLightBackgroundColor];
    }
    v9 = ;
  }

  [imageCopy size];
  v13 = v12;
  [imageCopy size];
  v15 = v14;
  [imageCopy scale];
  v17 = v16;
  v22.width = v13;
  v22.height = v15;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v17);
  [v9 setFill];
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v13;
  v23.size.height = v15;
  UIRectFill(v23);
  [imageCopy drawInRect:{0.0, 0.0, v13, v15}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v19 = UIImagePNGRepresentation(v18);

  return v19;
}

- (id)renderImage:(id)image inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  imageCopy = image;
  [imageCopy size];
  [imageCopy size];
  [imageCopy scale];
  UIRoundToScale();
  v8 = v7;
  [imageCopy scale];
  UIRoundToScale();
  v10 = v9;
  [imageCopy scale];
  v12 = v11;
  v17.width = width;
  v17.height = height;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v12);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  [imageCopy drawInRect:{0.0, v10, width, v8}];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (CGRect)computeFullscreenImageRectForScreenWithSize:(CGSize)size
{
  if (size.width <= size.height)
  {
    width = size.width;
  }

  else
  {
    width = size.height;
  }

  if (size.width <= size.height)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  v5 = 0.0;
  v6 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)fullScreenImageFromImage:(id)image inSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  [(CNAvatarEditingManager *)self computeFullscreenImageRectForScreenWithSize:width, height];
  v8 = [(CNAvatarEditingManager *)self renderImage:imageCopy inRect:?];

  return v8;
}

- (void)combinedPickerViewController:(id)controller didSelectRecord:(id)record withStickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  recordCopy = record;
  [(CNAvatarEditingManager *)self setAvatarRecord:recordCopy];
  v9 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:recordCopy];

  [v9 setPoseConfiguration:configurationCopy];
  originalItem = [(CNAvatarEditingManager *)self originalItem];
  [originalItem originalImageSize];
  [v9 setOriginalImageSize:?];

  originalItem2 = [(CNAvatarEditingManager *)self originalItem];
  [originalItem2 edgeInsets];
  [v9 setEdgeInsets:?];

  [(CNAvatarEditingManager *)self setPoseConfiguration:configurationCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__CNAvatarEditingManager_combinedPickerViewController_didSelectRecord_withStickerConfiguration___block_invoke;
  v13[3] = &unk_1E74E77C0;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v12 applyVariantEffectToFullsizeImageWithCompletion:v13];
}

void __96__CNAvatarEditingManager_combinedPickerViewController_didSelectRecord_withStickerConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) originalItem];
  [v2 edgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 40) edgeInsets];
  if (v6 != v14 || v4 != v11 || v10 != v13)
  {

LABEL_10:
    [*(a1 + 40) edgeInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [*(a1 + 32) originalItem];
    [v26 setEdgeInsets:{v19, v21, v23, v25}];

    goto LABEL_11;
  }

  v17 = v12;

  if (v8 != v17)
  {
    goto LABEL_10;
  }

LABEL_11:
  [*(a1 + 40) originalImageSize];
  v28 = v27;
  v30 = v29;
  v31 = [*(a1 + 32) originalItem];
  [v31 setOriginalImageSize:{v28, v30}];

  v32 = MEMORY[0x1E69DCAB8];
  v33 = [*(a1 + 40) imageData];
  v34 = [v32 cnui_imageWithDataPreservingScale:v33];

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__34421;
  v48 = __Block_byref_object_dispose__34422;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x4010000000;
  v41 = "";
  v35 = *(MEMORY[0x1E695F058] + 16);
  v42 = *MEMORY[0x1E695F058];
  v43 = v35;
  v36 = *(a1 + 32);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __96__CNAvatarEditingManager_combinedPickerViewController_didSelectRecord_withStickerConfiguration___block_invoke_6;
  v37[3] = &unk_1E74E46C0;
  v37[4] = &v44;
  v37[5] = &v38;
  [v36 prepareAvatarImageForPicker:v34 synchronousCompletion:v37];
  [*(a1 + 32) presentImagePickerForImage:v45[5] cropRect:0 fadeIn:0 completion:{v39[4], v39[5], v39[6], v39[7]}];
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
}

void __96__CNAvatarEditingManager_combinedPickerViewController_didSelectRecord_withStickerConfiguration___block_invoke_6(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v12 = a2;
  v13 = *(*(a1 + 40) + 8);
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
}

- (void)combinedPickerViewControllerDidCancel:(id)cancel
{
  delegate = [(CNAvatarEditingManager *)self delegate];
  [delegate avatarEditingManager:self didFinishWithProviderItem:0];
}

- (id)captureFlashViewWithSize:(CGSize)size alpha:(double)alpha
{
  v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, size.width, size.height}];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v5 setBackgroundColor:blackColor];

  [v5 setAlpha:alpha];

  return v5;
}

- (UIViewController)viewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getAVTCombinedPickerViewControllerClass_softClass;
    v15 = getAVTCombinedPickerViewControllerClass_softClass;
    if (!getAVTCombinedPickerViewControllerClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getAVTCombinedPickerViewControllerClass_block_invoke;
      v11[3] = &unk_1E74E7518;
      v11[4] = &v12;
      __getAVTCombinedPickerViewControllerClass_block_invoke(v11);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = [v4 alloc];
    avatarRecord = [(CNAvatarEditingManager *)self avatarRecord];
    v8 = [v6 initWithSelectedRecord:avatarRecord];

    [(UIViewController *)v8 setDelegate:self];
    v9 = self->_viewController;
    self->_viewController = v8;

    viewController = self->_viewController;
  }

  return viewController;
}

- (CNPhotoPickerAnimojiProviderItem)originalItem
{
  originalItem = self->_originalItem;
  if (!originalItem)
  {
    avatarRecord = [(CNAvatarEditingManager *)self avatarRecord];
    v5 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:avatarRecord];
    v6 = self->_originalItem;
    self->_originalItem = v5;

    originalItem = self->_originalItem;
  }

  return originalItem;
}

- (id)initForEditingWithAvatarRecord:(id)record variantsManager:(id)manager fromViewController:(id)controller
{
  controllerCopy = controller;
  v10 = [(CNAvatarEditingManager *)self initWithAvatarRecord:record variantsManager:manager];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewController, controller);
    v12 = v11;
  }

  return v11;
}

- (CNAvatarEditingManager)initWithAvatarRecord:(id)record poseConfiguration:(id)configuration variantsManager:(id)manager
{
  recordCopy = record;
  configurationCopy = configuration;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = CNAvatarEditingManager;
  v12 = [(CNAvatarEditingManager *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarRecord, record);
    objc_storeStrong(&v13->_poseConfiguration, configuration);
    objc_storeStrong(&v13->_variantsManager, manager);
    v14 = v13;
  }

  return v13;
}

+ (id)log
{
  if (log_cn_once_token_1_34445 != -1)
  {
    dispatch_once(&log_cn_once_token_1_34445, &__block_literal_global_34446);
  }

  v3 = log_cn_once_object_1_34447;

  return v3;
}

uint64_t __29__CNAvatarEditingManager_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNVisualIdentityPicker");
  v1 = log_cn_once_object_1_34447;
  log_cn_once_object_1_34447 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end