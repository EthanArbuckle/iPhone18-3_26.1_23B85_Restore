@interface AVTGrayscaleStickerController
- (AVTGrayscaleStickerController)init;
- (AVTGrayscaleStickerControllerDelegate)delegate;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerSelectionDelegate)selectionDelegate;
- (AVTStickerViewController)stickerViewController;
- (AVTStickerViewControllerImageDelegate)imageDelegate;
- (id)stickerSheetControllerForSelectedAvatar:(id)a3 stickerSheetModel:(id)a4 taskScheduler:(id)a5;
- (id)stickerViewControllerForFetchRequest:(id)a3 allowedStickers:(id)a4 stickerPacks:(id)a5 allowPoseCapture:(BOOL)a6 showUserInfoView:(BOOL)a7 allowEditing:(BOOL)a8 backgroundColor:(id)a9 grayscaleConvertionDelegate:(id)a10 presenterDelegate:(id)a11 selectionDelegate:(id)a12;
- (void)poseCaptureViewController:(id)a3 didCapturePoseWithConfiguration:(id)a4 avatar:(id)a5;
- (void)poseCaptureViewController:(id)a3 willCaptureAvatarImage:(id)a4 completion:(id)a5;
- (void)poseCaptureViewControllerDidCancel:(id)a3;
- (void)stickerSheetController:(id)a3 didSelectCameraViewForRecord:(id)a4;
- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4;
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

- (id)stickerViewControllerForFetchRequest:(id)a3 allowedStickers:(id)a4 stickerPacks:(id)a5 allowPoseCapture:(BOOL)a6 showUserInfoView:(BOOL)a7 allowEditing:(BOOL)a8 backgroundColor:(id)a9 grayscaleConvertionDelegate:(id)a10 presenterDelegate:(id)a11 selectionDelegate:(id)a12
{
  v34 = a8;
  v38 = a6;
  v39 = a7;
  v16 = a12;
  v35 = a11;
  v36 = a10;
  v37 = a9;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(AVTAvatarStore);
  v21 = [AVTViewSessionProvider alloc];
  v22 = [(AVTGrayscaleStickerController *)self environment];
  [AVTViewSessionProvider backingSizeForEnvironment:v22];
  v24 = v23;
  v26 = v25;
  v27 = +[AVTViewSessionProvider creatorForAVTView];
  v28 = [(AVTGrayscaleStickerController *)self environment];
  v29 = [(AVTViewSessionProvider *)v21 initWithAVTViewBackingSize:v27 viewCreator:v28 environment:v24, v26];

  [(AVTGrayscaleStickerController *)self setViewSessionProvider:v29];
  LOBYTE(v33) = 0;
  v30 = [AVTStickerViewController stickerViewControllerForStore:v20 fetchRequest:v19 stickerPacks:v17 stickerConfigurationNames:v18 avtViewSessionProvider:v29 allowEditing:v34 allowPeel:v33];

  [(AVTGrayscaleStickerController *)self setAllowedStickers:v18];
  [(AVTGrayscaleStickerController *)self setPresenterDelegate:v35];
  [(AVTGrayscaleStickerController *)self setImageDelegate:v36];
  [(AVTGrayscaleStickerController *)self setSelectionDelegate:v16];
  [(AVTGrayscaleStickerController *)self setAllowsPoseCapture:v38];
  [(AVTGrayscaleStickerController *)self setShouldHideUserInfoView:!v39];
  [(AVTGrayscaleStickerController *)self setBackgroundColor:v37];
  [v30 setStickerSelectionDelegate:v16];

  [v30 setStickerSheetControllerProvider:self];
  [v30 setPresenterDelegate:v35];

  [v30 setImageDelegate:v36];
  [v30 setShouldHideUserInfoView:!v39];
  [v30 setEdgesForExtendedLayout:0];
  v31 = [v30 view];
  [v31 setBackgroundColor:v37];

  [(AVTGrayscaleStickerController *)self setStickerViewController:v30];

  return v30;
}

- (void)stickerSheetController:(id)a3 didSelectCameraViewForRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVTGrayscaleStickerController *)self presenterDelegate];

  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = [(AVTGrayscaleStickerController *)self uiCapabilities];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__AVTGrayscaleStickerController_stickerSheetController_didSelectCameraViewForRecord___block_invoke;
    v10[3] = &unk_1E7F3B310;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    [v9 requestAccessForCameraWithCompletionHandler:v10];

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

- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4
{
  v6 = [AVTUIControllerPresentation presentationWithWrappingForController:a3, a4];
  v5 = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [v5 presentAvatarUIController:v6 animated:1];
}

- (id)stickerSheetControllerForSelectedAvatar:(id)a3 stickerSheetModel:(id)a4 taskScheduler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[AVTSelectableStickerSheetController alloc] initWithStickerSheetModel:v8 taskScheduler:v7 allowsPoseCapture:[(AVTGrayscaleStickerController *)self allowsPoseCapture]];

  v10 = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [(AVTSelectableStickerSheetController *)v9 setPresenterDelegate:v10];

  v11 = [(AVTGrayscaleStickerController *)self imageDelegate];
  [(AVTSelectableStickerSheetController *)v9 setImageDelegate:v11];

  [(AVTSelectableStickerSheetController *)v9 setShowCellSelectionLayer:[(AVTGrayscaleStickerController *)self shouldShowSelectionLayerForStickers]];
  [(AVTSelectableStickerSheetController *)v9 setStickerSheetDelegate:self];

  return v9;
}

- (void)poseCaptureViewController:(id)a3 didCapturePoseWithConfiguration:(id)a4 avatar:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(AVTGrayscaleStickerController *)self stickerViewController];
  [v9 clearStickerSelection];

  v10 = [(AVTGrayscaleStickerController *)self selectionDelegate];
  [v10 didSelectStickerWithConfiguration:v8 avatar:v7];

  v11 = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [v11 dismissAvatarUIControllerAnimated:1];
}

- (void)poseCaptureViewControllerDidCancel:(id)a3
{
  v3 = [(AVTGrayscaleStickerController *)self presenterDelegate];
  [v3 dismissAvatarUIControllerAnimated:1];
}

- (void)poseCaptureViewController:(id)a3 willCaptureAvatarImage:(id)a4 completion:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(AVTGrayscaleStickerController *)self imageDelegate];

  if (v8)
  {
    v9 = [(AVTGrayscaleStickerController *)self imageDelegate];
    [v9 viewWillUpdateWithImage:v10 completion:v7];
  }

  else
  {
    v7[2](v7, v10);
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