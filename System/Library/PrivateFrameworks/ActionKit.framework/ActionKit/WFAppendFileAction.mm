@interface WFAppendFileAction
- (BOOL)requiresRemoteExecution;
- (id)contentDestinationWithError:(id *)error;
- (id)filenamePlaceholderText;
- (id)minimumSupportedClientVersion;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)runAsynchronouslyWithInput:(id)input storageService:(id)service;
@end

@implementation WFAppendFileAction

- (id)minimumSupportedClientVersion
{
  v5.receiver = self;
  v5.super_class = WFAppendFileAction;
  minimumSupportedClientVersion = [(WFAppendFileAction *)&v5 minimumSupportedClientVersion];
  v3 = WFMaximumBundleVersion();

  return v3;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  nameCopy = name;
  descriptionCopy = description;
  v9 = [(WFAppendFileAction *)self parameterValueForKey:@"WFAppendFileWriteMode" ofClass:objc_opt_class()];
  v10 = [v9 isEqualToString:@"Prepend"];

  v11 = MEMORY[0x277CCACA8];
  if (v10)
  {
    v12 = @"Allow “%1$@” to prepend %2$@ to a text file?";
  }

  else
  {
    v12 = @"Allow “%1$@” to append %2$@ to a text file?";
  }

  v13 = WFLocalizedString(v12);
  descriptionCopy = [v11 localizedStringWithFormat:v13, nameCopy, descriptionCopy];

  return descriptionCopy;
}

- (id)contentDestinationWithError:(id *)error
{
  v3 = [(WFAppendFileAction *)self parameterValueForKey:@"WFFile" ofClass:objc_opt_class()];
  v4 = [MEMORY[0x277CFC318] contentLocationForFile:v3];

  return v4;
}

- (id)filenamePlaceholderText
{
  storageService = [(WFStorageServiceAction *)self storageService];
  storageLocationPrefix = [storageService storageLocationPrefix];
  v4 = [storageLocationPrefix hasSuffix:@"/"];

  if (v4)
  {
    v5 = @"example.txt";
  }

  else
  {
    v5 = @"/example.txt";
  }

  v6 = WFLocalizedString(v5);

  return v6;
}

- (BOOL)requiresRemoteExecution
{
  v3.receiver = self;
  v3.super_class = WFAppendFileAction;
  return [(WFStorageServiceAction *)&v3 requiresRemoteExecution];
}

- (void)runAsynchronouslyWithInput:(id)input storageService:(id)service
{
  v31[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  serviceCopy = service;
  filePathKey = [(WFStorageServiceAction *)self filePathKey];
  v9 = [(WFAppendFileAction *)self parameterValueForKey:filePathKey ofClass:objc_opt_class()];

  v10 = [(WFAppendFileAction *)self parameterValueForKey:@"WFFile" ofClass:objc_opt_class()];
  if ([v9 length])
  {
    v11 = [(WFAppendFileAction *)self parameterValueForKey:@"WFAppendOnNewLine" ofClass:objc_opt_class()];
    bOOLValue = [v11 BOOLValue];

    v13 = [(WFAppendFileAction *)self parameterValueForKey:@"WFAppendFileWriteMode" ofClass:objc_opt_class()];
    v14 = [v13 isEqualToString:@"Prepend"];

    v15 = 9;
    if (!bOOLValue)
    {
      v15 = 1;
    }

    v16 = 2;
    if (v14)
    {
      v16 = 4;
    }

    v17 = v16 | v15;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke;
    v25[3] = &unk_278C1B168;
    v25[4] = self;
    v26 = serviceCopy;
    v27 = v10;
    v28 = v9;
    v29 = v17;
    [inputCopy getStringRepresentation:v25];
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D7CB30];
    v30[0] = *MEMORY[0x277CCA470];
    v20 = WFLocalizedString(@"No File Path Provided");
    v31[0] = v20;
    v30[1] = *MEMORY[0x277CCA450];
    v21 = WFLocalizedString(@"You must specify a filename or path in Append to File.");
    v31[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v23 = [v18 errorWithDomain:v19 code:5 userInfo:v22];
    [(WFAppendFileAction *)self finishRunningWithError:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_2;
    aBlock[3] = &unk_278C1B140;
    v42 = *(a1 + 40);
    v43 = v5;
    v44 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v45 = v6;
    v46 = v8;
    v47 = v7;
    v9 = _Block_copy(aBlock);
    v10 = [*(a1 + 48) fileURL];
    v11 = [v10 URLByAppendingPathComponent:*(a1 + 56)];

    if ([*(a1 + 40) fileIsInProtectedList:v11])
    {
      v12 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
      v13 = WFLocalizedString(@"Allow this shortcut to make a change to a shell configuration file?");
      [v12 setTitle:v13];

      v14 = WFLocalizedString(@"The content of this file will be executed automatically and could be malicious.");
      [v12 setMessage:v14];

      v15 = MEMORY[0x277CFC220];
      v16 = WFLocalizedString(@"Don’t Allow");
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_4;
      v40[3] = &unk_278C224A0;
      v40[4] = *(a1 + 32);
      v17 = [v15 buttonWithTitle:v16 style:1 handler:v40];
      [v12 addButton:v17];

      v18 = MEMORY[0x277CFC220];
      v19 = WFLocalizedString(@"OK");
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_5;
      v38[3] = &unk_278C22470;
      v39 = v9;
      v20 = [v18 buttonWithTitle:v19 style:0 preferred:1 handler:v38];
      [v12 addButton:v20];

      v21 = [*(a1 + 32) userInterface];
      [v21 presentAlert:v12];

      v22 = v39;
    }

    else
    {
      if (![*(a1 + 40) fileIsInSystemConfigurationPath:v11])
      {
        v9[2](v9);
        goto LABEL_9;
      }

      v12 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
      v23 = WFLocalizedString(@"Allow this shortcut to edit one or more system configuration files?");
      [v12 setTitle:v23];

      v24 = WFLocalizedString(@"System configuration files from untrusted sources could be malicious. Running this shortcut may put your Mac and your personal information at risk.");
      [v12 setMessage:v24];

      v25 = MEMORY[0x277CFC220];
      v26 = WFLocalizedString(@"Don’t Allow");
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_6;
      v37[3] = &unk_278C224A0;
      v37[4] = *(a1 + 32);
      v27 = [v25 buttonWithTitle:v26 style:1 handler:v37];
      [v12 addButton:v27];

      v28 = MEMORY[0x277CFC220];
      v29 = WFLocalizedString(@"OK");
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_7;
      v35 = &unk_278C22470;
      v36 = v9;
      v30 = [v28 buttonWithTitle:v29 style:0 preferred:1 handler:&v32];
      [v12 addButton:{v30, v32, v33, v34, v35}];

      v31 = [*(a1 + 32) userInterface];
      [v31 presentAlert:v12];

      v22 = v36;
    }

LABEL_9:
    goto LABEL_10;
  }

  [*(a1 + 32) finishRunningWithError:a3];
LABEL_10:
}

void __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &stru_2850323E8;
  }

  v4 = [*(a1 + 48) fileURL];
  v5 = *(a1 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_3;
  v7[3] = &unk_278C209C0;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 64);
  [v2 appendText:v3 toDirectory:v4 subpath:v6 options:v5 completionHandler:v7];
}

void __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishRunningWithError:v2];
}

void __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishRunningWithError:v2];
}

void __64__WFAppendFileAction_runAsynchronouslyWithInput_storageService___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  if (v5)
  {
    v7 = [v6 output];
    [v7 addFileWithOriginAttribution:v9];

    v6 = *(a1 + 32);
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  [v6 finishRunningWithError:v8];
}

@end