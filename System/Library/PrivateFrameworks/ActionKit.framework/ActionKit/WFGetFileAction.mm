@interface WFGetFileAction
- (BOOL)requiresRemoteExecution;
- (void)runAsynchronouslyWithInput:(id)input storageService:(id)service;
@end

@implementation WFGetFileAction

- (BOOL)requiresRemoteExecution
{
  v3.receiver = self;
  v3.super_class = WFGetFileAction;
  return [(WFStorageServiceAction *)&v3 requiresRemoteExecution];
}

- (void)runAsynchronouslyWithInput:(id)input storageService:(id)service
{
  inputCopy = input;
  serviceCopy = service;
  v8 = [(WFGetFileAction *)self parameterValueForKey:@"WFGetFilePath" ofClass:objc_opt_class()];
  if ([v8 hasPrefix:@"/"])
  {
    v9 = [v8 substringFromIndex:1];

    v8 = v9;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__WFGetFileAction_runAsynchronouslyWithInput_storageService___block_invoke;
  v12[3] = &unk_278C1A298;
  v12[4] = self;
  v13 = serviceCopy;
  v14 = v8;
  v10 = v8;
  v11 = serviceCopy;
  [inputCopy getFileRepresentation:v12 forType:0];
}

void __61__WFGetFileAction_runAsynchronouslyWithInput_storageService___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [*(a1 + 32) parameterValueForKey:@"WFFileErrorIfNotFound" ofClass:objc_opt_class()];
    v7 = [v6 BOOLValue];

    v8 = [*(a1 + 32) parameterValueForKey:@"WFGetFolderContents" ofClass:objc_opt_class()];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = v7 | 0x10;
    }

    else
    {
      v10 = v7;
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__WFGetFileAction_runAsynchronouslyWithInput_storageService___block_invoke_2;
    v13[3] = &unk_278C22518;
    v13[4] = *(a1 + 32);
    [v11 retrieveFileAtPath:v12 fromDirectory:v5 options:v10 completionHandler:v13];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }
}

void __61__WFGetFileAction_runAsynchronouslyWithInput_storageService___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 if_map:&__block_literal_global_7655];
    v3 = [*(a1 + 32) output];
    [v3 addItems:v5];

    [*(a1 + 32) finishRunningWithError:0];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 finishRunningWithError:?];
  }
}

id __61__WFGetFileAction_runAsynchronouslyWithInput_storageService___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFC2F8];
  v3 = MEMORY[0x277CFC318];
  v4 = a2;
  v5 = [v3 contentLocationForFile:v4];
  v6 = [v2 itemWithFile:v4 origin:v5 disclosureLevel:1];

  return v6;
}

@end