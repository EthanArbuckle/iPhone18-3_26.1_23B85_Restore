@interface WFCreateFolderAction
- (BOOL)requiresRemoteExecution;
- (id)filenamePlaceholderText;
- (id)minimumSupportedClientVersion;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
- (void)runAsynchronouslyWithInput:(id)input storageService:(id)service;
@end

@implementation WFCreateFolderAction

- (id)minimumSupportedClientVersion
{
  v5.receiver = self;
  v5.super_class = WFCreateFolderAction;
  minimumSupportedClientVersion = [(WFCreateFolderAction *)&v5 minimumSupportedClientVersion];
  v3 = WFMaximumBundleVersion();

  return v3;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  v7 = MEMORY[0x277CCACA8];
  nameCopy = name;
  destinationCopy = destination;
  descriptionCopy = description;
  v11 = WFLocalizedString(@"Allow “%1$@” to use %2$@ in a folder name in %3$@?");
  destinationCopy = [v7 localizedStringWithFormat:v11, nameCopy, descriptionCopy, destinationCopy];

  return destinationCopy;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  input = [(WFCreateFolderAction *)self input];

  if (input)
  {
    v5 = MEMORY[0x277CFC318];
    input2 = [(WFCreateFolderAction *)self input];
    [v5 getContentLocationFromFile:input2 completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (BOOL)requiresRemoteExecution
{
  v3.receiver = self;
  v3.super_class = WFCreateFolderAction;
  return [(WFStorageServiceAction *)&v3 requiresRemoteExecution];
}

- (id)filenamePlaceholderText
{
  storageService = [(WFStorageServiceAction *)self storageService];
  storageLocationPrefix = [storageService storageLocationPrefix];
  v4 = [storageLocationPrefix hasSuffix:@"/"];

  if (v4)
  {
    v5 = @"Adventure/";
  }

  else
  {
    v5 = @"/Adventure/";
  }

  v6 = WFLocalizedString(v5);

  return v6;
}

- (void)runAsynchronouslyWithInput:(id)input storageService:(id)service
{
  v32[2] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  filePathKey = [(WFStorageServiceAction *)self filePathKey];
  v7 = [(WFCreateFolderAction *)self parameterValueForKey:filePathKey ofClass:objc_opt_class()];

  if (![v7 length])
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA050];
    v31[0] = *MEMORY[0x277CCA470];
    v10 = WFLocalizedString(@"No path specified");
    v32[0] = v10;
    v31[1] = *MEMORY[0x277CCA450];
    wf_fileProviderItem = WFLocalizedString(@"Please make sure to specify a path for the new folder in the Create Folder action.");
    v32[1] = wf_fileProviderItem;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v24 = [v22 errorWithDomain:v23 code:4 userInfo:v19];
    [(WFCreateFolderAction *)self finishRunningWithError:v24];

    goto LABEL_11;
  }

  if (([v7 hasPrefix:@"/"] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", v7];

    v7 = v8;
  }

  v9 = [(WFCreateFolderAction *)self parameterValueForKey:@"WFFolder" ofClass:objc_opt_class()];
  v10 = v9;
  if (!v9 || ([v9 fileURL], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "wf_fileIsDirectory"), v11, (v12 & 1) == 0))
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA050];
    v29[0] = *MEMORY[0x277CCA470];
    wf_fileProviderItem = WFLocalizedString(@"No folder specified!");
    v30[0] = wf_fileProviderItem;
    v29[1] = *MEMORY[0x277CCA450];
    v19 = WFLocalizedString(@"You must specify where the folder should be created.");
    v30[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = [v17 errorWithDomain:v18 code:4 userInfo:v20];
    [(WFCreateFolderAction *)self finishRunningWithError:v21];

LABEL_11:
    goto LABEL_12;
  }

  fileURL = [v10 fileURL];
  wf_fileProviderItem = [fileURL wf_fileProviderItem];

  workflow = [(WFCreateFolderAction *)self workflow];
  workflowID = [workflow workflowID];

  if (workflowID)
  {
    if (wf_fileProviderItem)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__WFCreateFolderAction_runAsynchronouslyWithInput_storageService___block_invoke;
      v28[3] = &unk_278C209C0;
      v28[4] = self;
      [serviceCopy createFolderAtPath:v7 parentDirectoryItem:wf_fileProviderItem completionHandler:v28];
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __66__WFCreateFolderAction_runAsynchronouslyWithInput_storageService___block_invoke_2;
      v27[3] = &unk_278C209C0;
      v27[4] = self;
      [serviceCopy createFolderAtPath:v7 inDirectory:v10 completionHandler:v27];
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
    [(WFCreateFolderAction *)self finishRunningWithError:v26];
  }

LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

void __66__WFCreateFolderAction_runAsynchronouslyWithInput_storageService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 output];
    [v7 addFileWithOriginAttribution:v6];
  }

  [*(a1 + 32) finishRunningWithError:v8];
}

void __66__WFCreateFolderAction_runAsynchronouslyWithInput_storageService___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 output];
    [v7 addFileWithOriginAttribution:v6];
  }

  [*(a1 + 32) finishRunningWithError:v8];
}

@end