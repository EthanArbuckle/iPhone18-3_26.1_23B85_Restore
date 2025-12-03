@interface AVTGrayscaleStickerController
- (AVTGrayscaleStickerController)init;
- (AVTGrayscaleStickerControllerDelegate)delegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerSelectionDelegate)selectionDelegate;
- (AVTStickerViewController)stickerViewController;
- (AVTStickerViewControllerImageDelegate)imageDelegate;
- (id)stickerSheetControllerForSelectedAvatar:(id)avatar stickerSheetModel:(id)model taskScheduler:(id)scheduler;
- (id)stickerViewControllerForFetchRequest:(id)request allowedStickers:(id)stickers stickerPacks:(id)packs allowPoseCapture:(BOOL)capture showUserInfoView:(BOOL)view allowEditing:(BOOL)editing backgroundColor:(id)color grayscaleConvertionDelegate:(id)self0 presenterDelegate:(id)self1 selectionDelegate:(id)self2;
- (void)poseCaptureViewController:(id)controller didCapturePoseWithConfiguration:(id)configuration avatar:(id)avatar;
- (void)poseCaptureViewController:(id)controller willCaptureAvatarImage:(id)image completion:(id)completion;
- (void)poseCaptureViewControllerDidCancel:(id)cancel;
- (void)stickerSheetController:(id)controller didSelectCameraViewForRecord:(id)record;
- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated;
@end

@implementation AVTGrayscaleStickerController

- (AVTGrayscaleStickerController)init
{
  v8.receiver = self;
  v8.super_class = AVTGrayscaleStickerController;
  v2 = [(AVTGrayscaleStickerController *)&v8 init];
  if (v2)
  {
    v3 = +[AVTUIEnvironment defaultEnvironment];
    environment = v2->_environment;
    v2->_environment = v3;

    v5 = objc_alloc_init(AVTUICapabilities);
    uiCapabilities = v2->_uiCapabilities;
    v2->_uiCapabilities = v5;
  }

  return v2;
}

- (id)stickerViewControllerForFetchRequest:(id)request allowedStickers:(id)stickers stickerPacks:(id)packs allowPoseCapture:(BOOL)capture showUserInfoView:(BOOL)view allowEditing:(BOOL)editing backgroundColor:(id)color grayscaleConvertionDelegate:(id)self0 presenterDelegate:(id)self1 selectionDelegate:(id)self2
{
  editingCopy = editing;
  captureCopy = capture;
  viewCopy = view;
  selectionDelegateCopy = selectionDelegate;
  presenterDelegateCopy = presenterDelegate;
  delegateCopy = delegate;
  colorCopy = color;
  packsCopy = packs;
  stickersCopy = stickers;
  requestCopy = request;
  v20 = objc_alloc_init(AVTAvatarStore);
  v21 = [AVTViewSessionProvider alloc];
  environment = [(AVTGrayscaleStickerController *)self environment];
  [AVTViewSessionProvider backingSizeForEnvironment:environment];
  v24 = v23;
  v26 = v25;
  v27 = +[AVTViewSessionProvider creatorForAVTView];
  environment2 = [(AVTGrayscaleStickerController *)self environment];
  v29 = [(AVTViewSessionProvider *)v21 initWithAVTViewBackingSize:v27 viewCreator:environment2 environment:v24, v26];

  [(AVTGrayscaleStickerController *)self setViewSessionProvider:v29];
  LOBYTE(v33) = 0;
  v30 = [AVTStickerViewController stickerViewControllerForStore:v20 fetchRequest:requestCopy stickerPacks:packsCopy stickerConfigurationNames:stickersCopy avtViewSessionProvider:v29 allowEditing:editingCopy allowPeel:v33];

  [(AVTGrayscaleStickerController *)self setAllowedStickers:stickersCopy];
  [(AVTGrayscaleStickerController *)self setPresenterDelegate:presenterDelegateCopy];
  [(AVTGrayscaleStickerController *)self setImageDelegate:delegateCopy];
  [(AVTGrayscaleStickerController *)self setSelectionDelegate:selectionDelegateCopy];
  [(AVTGrayscaleStickerController *)self setAllowsPoseCapture:captureCopy];
  [(AVTGrayscaleStickerController *)self setShouldHideUserInfoView:!viewCopy];
  [(AVTGrayscaleStickerController *)self setBackgroundColor:colorCopy];
  [v30 setStickerSelectionDelegate:selectionDelegateCopy];

  [v30 setStickerSheetControllerProvider:self];
  [v30 setPresenterDelegate:presenterDelegateCopy];

  [v30 setImageDelegate:delegateCopy];
  [v30 setShouldHideUserInfoView:!viewCopy];
  [v30 setEdgesForExtendedLayout:0];
  view = [v30 view];
  [view setBackgroundColor:colorCopy];

  [(AVTGrayscaleStickerController *)self setStickerViewController:v30];

  return v30;
}

- (void)stickerSheetController:(id)controller didSelectCameraViewForRecord:(id)record
{
  controllerCopy = controller;
  recordCopy = record;
  presenterDelegate = [(AVTGrayscaleStickerController *)self presenterDelegate];

  if (presenterDelegate)
  {
    objc_initWeak(&location, self);
    uiCapabilities = [(AVTGrayscaleStickerController *)self uiCapabilities];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__AVTGrayscaleStickerController_stickerSheetController_didSelectCameraViewForRecord___block_invoke;
    v10[3] = &unk_1E7F3B310;
    objc_copyWeak(&v12, &location);
    v11 = recordCopy;
    [uiCapabilities requestAccessForCameraWithCompletionHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __85__AVTGrayscaleStickerController_stickerSheetController_didSelectCameraViewForRecord___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __85__AVTGrayscaleStickerController_stickerSheetController_didSelectCameraViewForRecord___block_invoke_2;
    v6[3] = &unk_1E7F3AD60;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __85__AVTGrayscaleStickerController_stickerSheetController_didSelectCameraViewForRecord___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (!v2 || ([*(a1 + 32) delegate], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "shouldPresentPoseCaptureControllerForRecord:", *(a1 + 40)), v3, v4))
  {
    v5 = [AVTPoseCaptureViewController alloc];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) viewSessionProvider];
    v11 = [(AVTPoseCaptureViewController *)v5 initWithSelectedRecord:v6 avtViewSessionProvider:v7];

    [(AVTPoseCaptureViewController *)v11 setDelegate:*(a1 + 32)];
    -[AVTPoseCaptureViewController setShouldHideUserInfoView:](v11, "setShouldHideUserInfoView:", [*(a1 + 32) shouldHideUserInfoView]);
    v8 = [*(a1 + 32) backgroundColor];
    [(AVTPoseCaptureViewController *)v11 setBackgroundColor:v8];

    v9 = [*(a1 + 32) accessibilityIgnoresInvertColors];
    v10 = [(AVTPoseCaptureViewController *)v11 view];
    [v10 setAccessibilityIgnoresInvertColors:v9];

    [*(a1 + 32) wrapAndPresentViewController:v11 animated:1];
  }
}

- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated
{
  animated = [AVTUIControllerPresentation presentationWithWrappingForController:controller, animated];
  presenterDelegate = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [presenterDelegate presentAvatarUIController:animated animated:1];
}

- (id)stickerSheetControllerForSelectedAvatar:(id)avatar stickerSheetModel:(id)model taskScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  modelCopy = model;
  v9 = [[AVTSelectableStickerSheetController alloc] initWithStickerSheetModel:modelCopy taskScheduler:schedulerCopy allowsPoseCapture:[(AVTGrayscaleStickerController *)self allowsPoseCapture]];

  presenterDelegate = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [(AVTSelectableStickerSheetController *)v9 setPresenterDelegate:presenterDelegate];

  imageDelegate = [(AVTGrayscaleStickerController *)self imageDelegate];
  [(AVTSelectableStickerSheetController *)v9 setImageDelegate:imageDelegate];

  [(AVTSelectableStickerSheetController *)v9 setShowCellSelectionLayer:[(AVTGrayscaleStickerController *)self shouldShowSelectionLayerForStickers]];
  [(AVTSelectableStickerSheetController *)v9 setStickerSheetDelegate:self];

  return v9;
}

- (void)poseCaptureViewController:(id)controller didCapturePoseWithConfiguration:(id)configuration avatar:(id)avatar
{
  avatarCopy = avatar;
  configurationCopy = configuration;
  stickerViewController = [(AVTGrayscaleStickerController *)self stickerViewController];
  [stickerViewController clearStickerSelection];

  selectionDelegate = [(AVTGrayscaleStickerController *)self selectionDelegate];
  [selectionDelegate didSelectStickerWithConfiguration:configurationCopy avatar:avatarCopy];

  presenterDelegate = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];
}

- (void)poseCaptureViewControllerDidCancel:(id)cancel
{
  presenterDelegate = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:1];
}

- (void)poseCaptureViewController:(id)controller willCaptureAvatarImage:(id)image completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  imageDelegate = [(AVTGrayscaleStickerController *)self imageDelegate];

  if (imageDelegate)
  {
    imageDelegate2 = [(AVTGrayscaleStickerController *)self imageDelegate];
    [imageDelegate2 viewWillUpdateWithImage:imageCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, imageCopy);
  }
}

- (AVTGrayscaleStickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVTStickerViewControllerImageDelegate)imageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDelegate);

  return WeakRetained;
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

- (AVTStickerSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (AVTStickerViewController)stickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_stickerViewController);

  return WeakRetained;
}

@end