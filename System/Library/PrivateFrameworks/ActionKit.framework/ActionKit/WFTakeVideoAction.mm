@interface WFTakeVideoAction
- (id)disabledOnPlatforms;
- (void)runWithRemoteUserInterface:(id)interface input:(id)input;
@end

@implementation WFTakeVideoAction

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFTakeVideoAction;
  disabledOnPlatforms = [(WFTakeVideoAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

- (void)runWithRemoteUserInterface:(id)interface input:(id)input
{
  interfaceCopy = interface;
  inputCopy = input;
  v8 = [(WFTakeVideoAction *)self parameterValueForKey:@"WFCameraCaptureQuality" ofClass:objc_opt_class()];
  v9 = [(WFTakeVideoAction *)self parameterValueForKey:@"WFCameraCaptureDevice" ofClass:objc_opt_class()];
  v10 = [(WFTakeVideoAction *)self parameterValueForKey:@"WFRecordingStart" ofClass:objc_opt_class()];
  v11 = [v10 isEqualToString:@"Immediately"];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v12 = getUIImagePickerControllerClass_softClass;
  v20 = getUIImagePickerControllerClass_softClass;
  if (!getUIImagePickerControllerClass_softClass)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __getUIImagePickerControllerClass_block_invoke;
    v16[3] = &unk_278C222B8;
    v16[4] = &v17;
    __getUIImagePickerControllerClass_block_invoke(v16);
    v12 = v18[3];
  }

  v13 = v12;
  _Block_object_dispose(&v17, 8);
  if ([v12 isSourceTypeAvailable:1])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__WFTakeVideoAction_runWithRemoteUserInterface_input___block_invoke;
    v15[3] = &unk_278C209C0;
    v15[4] = self;
    [interfaceCopy showWithQuality:v8 device:v9 startImmediately:v11 completionHandler:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    [(WFTakeVideoAction *)self finishRunningWithError:v14];
  }
}

void __54__WFTakeVideoAction_runWithRemoteUserInterface_input___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 output];
    [v7 addFile:v6];
  }

  [*(a1 + 32) finishRunningWithError:v8];
}

@end