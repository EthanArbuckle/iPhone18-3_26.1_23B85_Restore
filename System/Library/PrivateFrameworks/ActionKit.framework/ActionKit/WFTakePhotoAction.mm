@interface WFTakePhotoAction
+ (id)userInterfaceXPCInterface;
- (id)disabledOnPlatforms;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)runWithRemoteUserInterface:(id)interface input:(id)input;
@end

@implementation WFTakePhotoAction

+ (id)userInterfaceXPCInterface
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFTakePhotoAction;
  v2 = objc_msgSendSuper2(&v7, sel_userInterfaceXPCInterface);
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_showWithCameraPreview_photoCount_device_shortcutAttribution_completionHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFTakePhotoAction;
  disabledOnPlatforms = [(WFTakePhotoAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

- (void)runWithRemoteUserInterface:(id)interface input:(id)input
{
  interfaceCopy = interface;
  v6 = [(WFTakePhotoAction *)self parameterValueForKey:@"WFCameraCaptureShowPreview" ofClass:objc_opt_class()];
  bOOLValue = [v6 BOOLValue];

  v8 = [(WFTakePhotoAction *)self parameterValueForKey:@"WFPhotoCount" ofClass:objc_opt_class()];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [(WFTakePhotoAction *)self parameterValueForKey:@"WFCameraCaptureDevice" ofClass:objc_opt_class()];
  workflow = [(WFTakePhotoAction *)self workflow];
  hiddenFromLibraryAndSync = [workflow hiddenFromLibraryAndSync];

  if (hiddenFromLibraryAndSync)
  {
    defaultDatabase = [MEMORY[0x277D7C2F8] defaultDatabase];
    workflow2 = [(WFTakePhotoAction *)self workflow];
    workflowID = [workflow2 workflowID];
    workflow3 = [defaultDatabase configuredTriggersForWorkflowID:workflowID error:0];

    firstObject = [workflow3 firstObject];
    trigger = [firstObject trigger];
    localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
  }

  else
  {
    workflow3 = [(WFTakePhotoAction *)self workflow];
    localizedDescriptionWithConfigurationSummary = [workflow3 name];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__WFTakePhotoAction_runWithRemoteUserInterface_input___block_invoke;
  v20[3] = &unk_278C1A398;
  v20[4] = self;
  [interfaceCopy showWithCameraPreview:bOOLValue photoCount:unsignedIntegerValue device:v10 shortcutAttribution:localizedDescriptionWithConfigurationSummary completionHandler:v20];
}

void __54__WFTakePhotoAction_runWithRemoteUserInterface_input___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCAAC8];
  v8 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__WFTakePhotoAction_runWithRemoteUserInterface_input___block_invoke_2;
  v11[3] = &unk_278C1A370;
  v11[4] = *(a1 + 32);
  v12 = v6;
  v9 = v6;
  v10 = [v7 wf_securelyUnarchiveObjectWithData:v5 allowedClasses:v8 completionHandler:v11];
}

uint64_t __54__WFTakePhotoAction_runWithRemoteUserInterface_input___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setOutput:a2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 finishRunningWithError:v4];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFTakePhotoAction *)self parameterValueForKey:@"WFCameraCaptureShowPreview" ofClass:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  variableSource = [(WFTakePhotoAction *)self variableSource];
  workflowStartDate = [variableSource workflowStartDate];

  variableSource2 = [(WFTakePhotoAction *)self variableSource];
  v10 = [variableSource2 contentForPrivateVariableKey:@"WFTakePhotoActionConfirmed"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  bOOLValue2 = [v12 BOOLValue];
  if (!((workflowStartDate == 0) | bOOLValue2 & 1 | bOOLValue & 1))
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [currentCalendar dateByAddingUnit:64 value:10 toDate:workflowStartDate options:0];

    date = [MEMORY[0x277CBEAA8] date];
    v17 = [date compare:v15];

    if (v17 == 1)
    {
      workflow = [(WFTakePhotoAction *)self workflow];
      if ([workflow hiddenFromLibraryAndSync])
      {
      }

      else
      {
        workflow2 = [(WFTakePhotoAction *)self workflow];
        name = [workflow2 name];

        if (name)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = WFLocalizedString(@"The shortcut “%@” wants to take a photo. Do you want to allow it?");
          v23 = [v21 localizedStringWithFormat:v22, name];

LABEL_15:
          v24 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
          localizedName = [(WFTakePhotoAction *)self localizedName];
          [v24 setTitle:localizedName];

          [v24 setMessage:v23];
          v26 = MEMORY[0x277CFC220];
          v27 = WFLocalizedString(@"Don’t Allow");
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __48__WFTakePhotoAction_runAsynchronouslyWithInput___block_invoke;
          v36[3] = &unk_278C224A0;
          v36[4] = self;
          v28 = [v26 buttonWithTitle:v27 style:1 handler:v36];
          [v24 addButton:v28];

          v29 = MEMORY[0x277CFC220];
          v30 = WFLocalizedString(@"OK");
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __48__WFTakePhotoAction_runAsynchronouslyWithInput___block_invoke_2;
          v34[3] = &unk_278C21508;
          v34[4] = self;
          v35 = inputCopy;
          v31 = [v29 buttonWithTitle:v30 style:0 preferred:1 handler:v34];
          [v24 addButton:v31];

          userInterface = [(WFTakePhotoAction *)self userInterface];
          [userInterface presentAlert:v24];

          goto LABEL_16;
        }
      }

      v23 = WFLocalizedString(@"This shortcut wants to take a photo. Do you want to allow it?");
      goto LABEL_15;
    }
  }

  v33.receiver = self;
  v33.super_class = WFTakePhotoAction;
  [(WFTakePhotoAction *)&v33 runAsynchronouslyWithInput:inputCopy];
LABEL_16:
}

void __48__WFTakePhotoAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishRunningWithError:v2];
}

id __48__WFTakePhotoAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) variableSource];
  [v2 setContent:MEMORY[0x277CBEC38] forPrivateVariableKey:@"WFTakePhotoActionConfirmed"];

  v3 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = WFTakePhotoAction;
  return objc_msgSendSuper2(&v5, sel_runAsynchronouslyWithInput_, v3);
}

@end