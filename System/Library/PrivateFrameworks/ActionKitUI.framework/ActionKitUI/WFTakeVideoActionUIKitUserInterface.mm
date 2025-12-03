@interface WFTakeVideoActionUIKitUserInterface
+ (int64_t)cameraDeviceFromString:(id)string;
+ (int64_t)qualityFromString:(id)string;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithOutput:(id)output error:(id)error;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)showWithQuality:(id)quality device:(id)device startImmediately:(BOOL)immediately completionHandler:(id)handler;
@end

@implementation WFTakeVideoActionUIKitUserInterface

- (void)imagePickerControllerDidCancel:(id)cancel
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WFTakeVideoActionUIKitUserInterface_imagePickerControllerDidCancel___block_invoke;
  v3[3] = &unk_278C37538;
  v3[4] = self;
  [cancel dismissViewControllerAnimated:1 completion:v3];
}

void __70__WFTakeVideoActionUIKitUserInterface_imagePickerControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithOutput:0 error:v2];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  v6 = *MEMORY[0x277D76A78];
  infoCopy = info;
  controllerCopy = controller;
  v9 = [infoCopy objectForKey:v6];
  v10 = [infoCopy objectForKey:*MEMORY[0x277D76A70]];

  v11 = [MEMORY[0x277D79F68] typeWithString:v10];
  fileExtension = [v11 fileExtension];

  if (!fileExtension)
  {
    wfFileType = [v9 wfFileType];

    v11 = wfFileType;
  }

  v14 = MEMORY[0x277CCACA8];
  fileExtension2 = [v11 fileExtension];
  v16 = [v14 wf_datedFilenameWithTypeString:@"Movie" fileExtension:fileExtension2];

  v17 = [MEMORY[0x277CFC3C8] fileWithURL:v9 options:3 ofType:0 proposedFilename:v16];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__WFTakeVideoActionUIKitUserInterface_imagePickerController_didFinishPickingMediaWithInfo___block_invoke;
  v19[3] = &unk_278C375A0;
  v19[4] = self;
  v20 = v17;
  v18 = v17;
  [controllerCopy dismissViewControllerAnimated:1 completion:v19];
}

- (void)finishWithOutput:(id)output error:(id)error
{
  outputCopy = output;
  errorCopy = error;
  completionHandler = [(WFTakeVideoActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFTakeVideoActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, outputCopy, errorCopy);
  }

  [(WFTakeVideoActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__WFTakeVideoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFTakeVideoActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __79__WFTakeVideoActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithOutput:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithQuality:(id)quality device:(id)device startImmediately:(BOOL)immediately completionHandler:(id)handler
{
  qualityCopy = quality;
  deviceCopy = device;
  handlerCopy = handler;
  if (qualityCopy)
  {
    if (deviceCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTakeVideoActionUIKitUserInterface.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTakeVideoActionUIKitUserInterface.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFTakeVideoActionUIKitUserInterface.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"quality"}];

  if (!deviceCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(WFTakeVideoActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__WFTakeVideoActionUIKitUserInterface_showWithQuality_device_startImmediately_completionHandler___block_invoke;
  block[3] = &unk_278C36F40;
  block[4] = self;
  v20 = deviceCopy;
  v21 = qualityCopy;
  immediatelyCopy = immediately;
  v14 = qualityCopy;
  v15 = deviceCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __97__WFTakeVideoActionUIKitUserInterface_showWithQuality_device_startImmediately_completionHandler___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D755C8]);
  [v2 setDelegate:*(a1 + 32)];
  [v2 setSourceType:1];
  v3 = *(a1 + 32);
  [v2 setCameraDevice:{objc_msgSend(objc_opt_class(), "cameraDeviceFromString:", *(a1 + 40))}];
  v4 = *(a1 + 32);
  [v2 setVideoQuality:{objc_msgSend(objc_opt_class(), "qualityFromString:", *(a1 + 48))}];
  v5 = [*MEMORY[0x277CE1E00] identifier];
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v2 setMediaTypes:v6];

  [v2 setCameraCaptureMode:1];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __97__WFTakeVideoActionUIKitUserInterface_showWithQuality_device_startImmediately_completionHandler___block_invoke_2;
  v13 = &unk_278C373E0;
  v15 = *(a1 + 56);
  v7 = v2;
  v14 = v7;
  v8 = _Block_copy(&v10);
  if (([*(a1 + 32) presentContent:v7 completion:{v8, v10, v11, v12, v13}] & 1) == 0)
  {
    [*(a1 + 32) presentContent:v7];
    v8[2](v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __97__WFTakeVideoActionUIKitUserInterface_showWithQuality_device_startImmediately_completionHandler___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) startVideoCapture];
  }

  return result;
}

+ (int64_t)cameraDeviceFromString:(id)string
{
  stringCopy = string;
  if (![stringCopy isEqualToString:*MEMORY[0x277CE8960]] || (v4 = 0, (objc_msgSend(MEMORY[0x277D755C8], "isCameraDeviceAvailable:", 0) & 1) == 0))
  {
    if (![stringCopy isEqualToString:*MEMORY[0x277CE8958]] || (v4 = 1, (objc_msgSend(MEMORY[0x277D755C8], "isCameraDeviceAvailable:", 1) & 1) == 0))
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (int64_t)qualityFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x277CE8970]])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x277CE8968]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end