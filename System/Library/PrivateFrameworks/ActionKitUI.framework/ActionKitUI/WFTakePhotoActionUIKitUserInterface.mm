@interface WFTakePhotoActionUIKitUserInterface
+ (int64_t)cameraDeviceFromString:(id)a3;
- (WFImagePickerController)pickerController;
- (WFTakePhotoActionUIKitUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4;
- (id)setupControllerWithOverlay:(id)a3;
- (void)addImageDataToOutput:(id)a3;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)finishWithError:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)manager:(id)a3 didFinishWithPhoto:(id)a4 error:(id)a5;
- (void)managerDidBecomeReady:(id)a3;
- (void)setUpImmediateInterfaceWithAttribution:(id)a3;
- (void)setUpTapInterface;
@end

@implementation WFTakePhotoActionUIKitUserInterface

- (WFImagePickerController)pickerController
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerController);

  return WeakRetained;
}

- (void)manager:(id)a3 didFinishWithPhoto:(id)a4 error:(id)a5
{
  v10 = a4;
  v8 = a5;
  [a3 stop];
  if (!v8)
  {
    v9 = [v10 fileDataRepresentation];
    [(WFTakePhotoActionUIKitUserInterface *)self addImageDataToOutput:v9];
  }

  [(WFTakePhotoActionUIKitUserInterface *)self finishWithError:v8];
}

- (void)managerDidBecomeReady:(id)a3
{
  v5 = 0;
  [a3 takePhotoWithError:&v5];
  v4 = v5;
  if (v4)
  {
    [(WFTakePhotoActionUIKitUserInterface *)self finishWithError:v4];
  }
}

- (void)addImageDataToOutput:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x277CCACA8] wf_datedFilenameWithTypeString:v7 fileExtension:@"jpeg"];
  v9 = [MEMORY[0x277CFC538] createTemporaryFileWithFilename:v8];
  v16 = 0;
  [v5 writeToURL:v9 options:0 error:&v16];

  v10 = v16;
  if (v10)
  {
    [(WFTakePhotoActionUIKitUserInterface *)self finishWithError:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CFC3C8] fileWithURL:v9 options:1];
    v12 = [(WFTakePhotoActionUIKitUserInterface *)self outputCollection];
    v13 = MEMORY[0x277CFC410];
    v14 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DC0]];
    v15 = [v13 itemWithFile:v11 preferredFileType:v14];
    [v12 addItem:v15];
  }
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WFTakePhotoActionUIKitUserInterface_imagePickerControllerDidCancel___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
}

void __70__WFTakePhotoActionUIKitUserInterface_imagePickerControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithError:v2];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKey:*MEMORY[0x277D76A80]];
  v8 = v7;
  if (v7)
  {
    v9 = UIImageJPEGRepresentation(v7, 1.0);
    [(WFTakePhotoActionUIKitUserInterface *)self addImageDataToOutput:v9];

    [(WFTakePhotoActionUIKitUserInterface *)self setRemainingPhotos:[(WFTakePhotoActionUIKitUserInterface *)self remainingPhotos]- 1];
    v10 = [v6 cameraOverlayView];
    [v10 setTakenPhotos:{objc_msgSend(v10, "totalPhotos") - -[WFTakePhotoActionUIKitUserInterface remainingPhotos](self, "remainingPhotos")}];
    if ([(WFTakePhotoActionUIKitUserInterface *)self remainingPhotos]&& [(WFTakePhotoActionUIKitUserInterface *)self showPreview])
    {
      v11 = [v6 cameraOverlayView];
      v12 = [v11 shutterButton];
      [v12 setEnabled:1];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __91__WFTakePhotoActionUIKitUserInterface_imagePickerController_didFinishPickingMediaWithInfo___block_invoke;
      v13[3] = &unk_278C37538;
      v13[4] = self;
      [v6 dismissViewControllerAnimated:1 completion:v13];
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CE5930] object:0];

  v4.receiver = self;
  v4.super_class = WFTakePhotoActionUIKitUserInterface;
  [(WFTakePhotoActionUIKitUserInterface *)&v4 dealloc];
}

- (void)finishWithError:(id)a3
{
  v11 = a3;
  v4 = [(WFTakePhotoActionUIKitUserInterface *)self outputCollection];
  v5 = [v4 numberOfItems];

  if (v5)
  {
    v6 = MEMORY[0x277CCAAB0];
    v7 = [(WFTakePhotoActionUIKitUserInterface *)self outputCollection];
    v8 = [v6 wf_securelyArchivedDataWithRootObject:v7 deletionResponsibility:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(WFTakePhotoActionUIKitUserInterface *)self completionHandler];

  if (v9)
  {
    v10 = [(WFTakePhotoActionUIKitUserInterface *)self completionHandler];
    (v10)[2](v10, v8, v11);

    [(WFTakePhotoActionUIKitUserInterface *)self setCompletionHandler:0];
  }
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__WFTakePhotoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFTakePhotoActionUIKitUserInterface;
  v5 = v4;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __79__WFTakePhotoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setUpImmediateInterfaceWithAttribution:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__WFTakePhotoActionUIKitUserInterface_setUpImmediateInterfaceWithAttribution___block_invoke;
  block[3] = &unk_278C375A0;
  v5 = v4;
  v11 = v5;
  v12 = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v6 = [[WFTakePhotoImmediateModeManager alloc] initWithCameraPosition:[(WFTakePhotoActionUIKitUserInterface *)self device] delegate:self];
  [(WFTakePhotoActionUIKitUserInterface *)self setImmediateModeManager:v6];

  v7 = [(WFTakePhotoActionUIKitUserInterface *)self immediateModeManager];
  v9 = 0;
  [v7 startSessionWithError:&v9];
  v8 = v9;

  if (v8)
  {
    [(WFTakePhotoActionUIKitUserInterface *)self finishWithError:v8];
  }
}

void __78__WFTakePhotoActionUIKitUserInterface_setUpImmediateInterfaceWithAttribution___block_invoke(uint64_t a1)
{
  v2 = [WFTakePhotoNotificationView alloc];
  v4 = [(WFTakePhotoNotificationView *)v2 initWithFrame:*(a1 + 32) shortcutAttribution:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = objc_alloc_init(MEMORY[0x277D75D28]);
  [v3 setView:v4];
  [*(a1 + 40) presentContent:v3];
}

- (void)setUpTapInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFTakePhotoActionUIKitUserInterface_setUpTapInterface__block_invoke;
  block[3] = &unk_278C37538;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__WFTakePhotoActionUIKitUserInterface_setUpTapInterface__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) remainingPhotos] < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_alloc_init(WFCameraOverlayView);
    -[WFCameraOverlayView setTotalPhotos:](v2, "setTotalPhotos:", [*(a1 + 32) remainingPhotos]);
  }

  v3 = [*(a1 + 32) setupControllerWithOverlay:v2];
  if (v2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__WFTakePhotoActionUIKitUserInterface_setUpTapInterface__block_invoke_2;
    v4[3] = &unk_278C36678;
    v5 = v2;
    [v3 setMagicTapHandler:v4];
  }

  [*(a1 + 32) presentContent:v3];
}

uint64_t __56__WFTakePhotoActionUIKitUserInterface_setUpTapInterface__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) shutterButton];
  [v1 sendActionsForControlEvents:64];

  return 1;
}

- (id)setupControllerWithOverlay:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WFImagePickerController);
  [(WFImagePickerController *)v5 setDelegate:self];
  [(WFImagePickerController *)v5 setSourceType:1];
  [(WFImagePickerController *)v5 setCameraDevice:[(WFTakePhotoActionUIKitUserInterface *)self device]];
  if (v4)
  {
    v6 = [(WFImagePickerController *)v5 cameraOverlayView];
    [v6 frame];
    [v4 setFrame:?];

    [v4 setAutoresizingMask:18];
    [v4 setPickerController:v5];
    [(WFImagePickerController *)v5 setCameraOverlayView:v4];
    [(WFImagePickerController *)v5 setShowsCameraControls:0];
  }

  [(WFTakePhotoActionUIKitUserInterface *)self setPickerController:v5];

  return v5;
}

- (WFTakePhotoActionUIKitUserInterface)initWithUserInterfaceType:(id)a3 attribution:(id)a4
{
  v5 = MEMORY[0x277D79F20];
  v6 = *MEMORY[0x277D7A338];
  v7 = a3;
  v8 = [v5 attributionWithAppBundleIdentifier:v6];
  v12.receiver = self;
  v12.super_class = WFTakePhotoActionUIKitUserInterface;
  v9 = [(WFActionUserInterface *)&v12 initWithUserInterfaceType:v7 attribution:v8];

  if (v9)
  {
    v10 = v9;
  }

  return v9;
}

+ (int64_t)cameraDeviceFromString:(id)a3
{
  v3 = a3;
  if (![v3 isEqualToString:*MEMORY[0x277CE88C0]] || (v4 = 0, (objc_msgSend(MEMORY[0x277D755C8], "isCameraDeviceAvailable:", 0) & 1) == 0))
  {
    if (![v3 isEqualToString:*MEMORY[0x277CE88C8]] || (v4 = 1, (objc_msgSend(MEMORY[0x277D755C8], "isCameraDeviceAvailable:", 1) & 1) == 0))
    {
      v4 = 0;
    }
  }

  return v4;
}

@end