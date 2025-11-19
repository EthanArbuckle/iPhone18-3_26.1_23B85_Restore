@interface WFCreateFolderAction
- (BOOL)requiresRemoteExecution;
- (id)filenamePlaceholderText;
- (id)minimumSupportedClientVersion;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3 storageService:(id)a4;
@end

@implementation WFCreateFolderAction

- (id)minimumSupportedClientVersion
{
  v5.receiver = self;
  v5.super_class = WFCreateFolderAction;
  v2 = [(WFCreateFolderAction *)&v5 minimumSupportedClientVersion];
  v3 = WFMaximumBundleVersion();

  return v3;
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = WFLocalizedString(@"Allow “%1$@” to use %2$@ in a folder name in %3$@?");
  v12 = [v7 localizedStringWithFormat:v11, v8, v10, v9];

  return v12;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(WFCreateFolderAction *)self input];

  if (v4)
  {
    v5 = MEMORY[0x277CFC318];
    v6 = [(WFCreateFolderAction *)self input];
    [v5 getContentLocationFromFile:v6 completionHandler:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
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
  v2 = [(WFStorageServiceAction *)self storageService];
  v3 = [v2 storageLocationPrefix];
  v4 = [v3 hasSuffix:@"/"];

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

- (void)runAsynchronouslyWithInput:(id)a3 storageService:(id)a4
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(WFStorageServiceAction *)self filePathKey];
  v7 = [(WFCreateFolderAction *)self parameterValueForKey:v6 ofClass:objc_opt_class()];

  if (![v7 length])
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA050];
    v31[0] = *MEMORY[0x277CCA470];
    v10 = WFLocalizedString(@"No path specified");
    v32[0] = v10;
    v31[1] = *MEMORY[0x277CCA450];
    v14 = WFLocalizedString(@"Please make sure to specify a path for the new folder in the Create Folder action.");
    v32[1] = v14;
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
    v14 = WFLocalizedString(@"No folder specified!");
    v30[0] = v14;
    v29[1] = *MEMORY[0x277CCA450];
    v19 = WFLocalizedString(@"You must specify where the folder should be created.");
    v30[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = [v17 errorWithDomain:v18 code:4 userInfo:v20];
    [(WFCreateFolderAction *)self finishRunningWithError:v21];

LABEL_11:
    goto LABEL_12;
  }

  v13 = [v10 fileURL];
  v14 = [v13 wf_fileProviderItem];

  v15 = [(WFCreateFolderAction *)self workflow];
  v16 = [v15 workflowID];

  if (v16)
  {
    if (v14)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__WFCreateFolderAction_runAsynchronouslyWithInput_storageService___block_invoke;
      v28[3] = &unk_278C209C0;
      v28[4] = self;
      [v5 createFolderAtPath:v7 parentDirectoryItem:v14 completionHandler:v28];
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __66__WFCreateFolderAction_runAsynchronouslyWithInput_storageService___block_invoke_2;
      v27[3] = &unk_278C209C0;
      v27[4] = self;
      [v5 createFolderAtPath:v7 inDirectory:v10 completionHandler:v27];
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