@interface SFQRCodeDetectionController
@end

@implementation SFQRCodeDetectionController

void __48___SFQRCodeDetectionController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_sharedController;
  sharedController_sharedController = v1;
}

void __61___SFQRCodeDetectionController_getActionForImage_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___SFQRCodeDetectionController_getActionForImage_completion___block_invoke_2;
  v5[3] = &unk_1E8490818;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __61___SFQRCodeDetectionController_getActionForImage_completion___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = isLiveCameraOnlyAction(*(a1 + 32));
  v3 = *(a1 + 40);
  if (v2 || (v4 = *(a1 + 32)) == 0)
  {
    v6 = *(v3 + 16);

    v6(v3, 0, 0);
  }

  else
  {
    v7 = @"action";
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    (*(v3 + 16))(v3, v4, v5);
  }
}

void __72___SFQRCodeDetectionController_getActionForImageSynchronously_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((isLiveCameraOnlyAction(v4) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL __49___SFQRCodeDetectionController_elementForAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"action"];
  v5 = v4 == *(a1 + 32);

  return v5;
}

id __59___SFQRCodeDetectionController_menuElementsForElementInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 icon];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"qrcode"];
  }

  v6 = v5;

  v7 = MEMORY[0x1E69DC628];
  v8 = [v2 label];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59___SFQRCodeDetectionController_menuElementsForElementInfo___block_invoke_2;
  v12[3] = &unk_1E848F480;
  v13 = v2;
  v9 = v2;
  v10 = [v7 actionWithTitle:v8 image:v6 identifier:0 handler:v12];

  return v10;
}

void __72___SFQRCodeDetectionController_adjustedCopyActionForAction_elementInfo___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v2 = [*(a1 + 32) safari_originalDataAsString];
  [v3 setString:v2];
}

@end