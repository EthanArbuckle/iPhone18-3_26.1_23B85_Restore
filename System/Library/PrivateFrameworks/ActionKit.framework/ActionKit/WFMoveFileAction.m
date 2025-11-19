@interface WFMoveFileAction
- (id)contentDestinationWithError:(id *)a3;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFMoveFileAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(WFMoveFileAction *)self input];
  v10 = [v9 numberOfItems];

  v11 = MEMORY[0x277CCACA8];
  if (v10 <= 1)
  {
    v12 = @"Allow “%1$@” to move a file in “%2$@”?";
  }

  else
  {
    v12 = @"Allow “%1$@” to move files in “%2$@”?";
  }

  v13 = WFLocalizedString(v12);
  v14 = [v11 localizedStringWithFormat:v13, v7, v8];

  return v14;
}

- (id)contentDestinationWithError:(id *)a3
{
  v3 = [(WFMoveFileAction *)self parameterValueForKey:@"WFFolder" ofClass:objc_opt_class()];
  v4 = [MEMORY[0x277CFC318] contentLocationForFile:v3];

  return v4;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 numberOfItems] == 1)
  {
    v5 = [(WFMoveFileAction *)self parameterValueForKey:@"WFFolder" ofClass:objc_opt_class()];
    if (v5)
    {
      v6 = [(WFMoveFileAction *)self parameterValueForKey:@"WFReplaceExisting" ofClass:objc_opt_class()];
      v7 = [v6 BOOLValue];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke;
      v15[3] = &unk_278C1A950;
      v15[4] = self;
      v5 = v5;
      v16 = v5;
      v17 = v7;
      [v4 getFileRepresentation:v15 forType:0];
    }

    else
    {
      [(WFMoveFileAction *)self finishRunningWithError:0];
    }
  }

  else
  {
    v5 = WFLocalizedString(@"No Input");
    v8 = WFLocalizedString(@"No files were passed as input to the Move File action.");
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D7CB30];
    v11 = *MEMORY[0x277CCA450];
    v18[0] = *MEMORY[0x277CCA470];
    v18[1] = v11;
    v19[0] = v5;
    v19[1] = v8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v13 = [v9 errorWithDomain:v10 code:6 userInfo:v12];
    [(WFMoveFileAction *)self finishRunningWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(WFDefaultFileStorageService);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_2;
  aBlock[3] = &unk_278C1A928;
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v41 = v5;
  v42 = v6;
  v43 = v7;
  v8 = v4;
  v44 = v8;
  v45 = *(a1 + 48);
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 40) fileURL];
  v11 = [v5 fileURL];
  v12 = [v11 lastPathComponent];
  v13 = [v10 URLByAppendingPathComponent:v12];

  if ([(WFDefaultFileStorageService *)v8 fileIsInProtectedList:v13])
  {
    v14 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
    v15 = WFLocalizedString(@"Allow this shortcut to make a change to a shell configuration file?");
    [v14 setTitle:v15];

    v16 = WFLocalizedString(@"The content of this file will be executed automatically and could be malicious.");
    [v14 setMessage:v16];

    v17 = MEMORY[0x277CFC220];
    v18 = WFLocalizedString(@"Don’t Allow");
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_5;
    v39[3] = &unk_278C224A0;
    v39[4] = *(a1 + 32);
    v19 = [v17 buttonWithTitle:v18 style:1 handler:v39];
    [v14 addButton:v19];

    v20 = MEMORY[0x277CFC220];
    v21 = WFLocalizedString(@"OK");
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_6;
    v37[3] = &unk_278C22470;
    v38 = v9;
    v22 = [v20 buttonWithTitle:v21 style:0 preferred:1 handler:v37];
    [v14 addButton:v22];

    v23 = [*(a1 + 32) userInterface];
    [v23 presentAlert:v14];

    v24 = v38;
  }

  else
  {
    if (![(WFDefaultFileStorageService *)v8 fileIsInSystemConfigurationPath:v13])
    {
      v9[2](v9);
      goto LABEL_7;
    }

    v14 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
    v25 = WFLocalizedString(@"Allow this shortcut to move one or more files into a system configuration folder?");
    [v14 setTitle:v25];

    v26 = WFLocalizedString(@"System configuration files from untrusted sources could be malicious. Running this shortcut may put your Mac and your personal information at risk.");
    [v14 setMessage:v26];

    v27 = MEMORY[0x277CFC220];
    v28 = WFLocalizedString(@"Don’t Allow");
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_7;
    v36[3] = &unk_278C224A0;
    v36[4] = *(a1 + 32);
    v29 = [v27 buttonWithTitle:v28 style:1 handler:v36];
    [v14 addButton:v29];

    v30 = MEMORY[0x277CFC220];
    v31 = WFLocalizedString(@"OK");
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_8;
    v34[3] = &unk_278C22470;
    v35 = v9;
    v32 = [v30 buttonWithTitle:v31 style:0 preferred:1 handler:v34];
    [v14 addButton:v32];

    v33 = [*(a1 + 32) userInterface];
    [v33 presentAlert:v14];

    v24 = v35;
  }

LABEL_7:
}

void __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fileURL];
  v3 = [v2 wf_fileProviderItem];

  v4 = [*(a1 + 40) workflow];
  v5 = [v4 workflowID];

  if (v5)
  {
    if (v3)
    {
      v6 = [*(a1 + 48) fileURL];
      v7 = [v6 wf_fileProviderItem];

      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_3;
      v16[3] = &unk_278C209C0;
      v16[4] = *(a1 + 40);
      [v8 moveItem:v3 replaceExisting:v9 withManagedLevel:0 toDirectory:v7 progress:0 completionHandler:v16];
    }

    else
    {
      v11 = *(a1 + 64);
      v13 = *(a1 + 48);
      v12 = *(a1 + 56);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_4;
      v15[3] = &unk_278C209C0;
      v14 = *(a1 + 32);
      v15[4] = *(a1 + 40);
      [v12 moveFile:v14 replaceExisting:v11 withManagedLevel:0 toDirectory:v13 progress:0 completionHandler:v15];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
    [*(a1 + 40) finishRunningWithError:v10];
  }
}

void __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishRunningWithError:v2];
}

void __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishRunningWithError:v2];
}

void __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(a1 + 32) isRunning])
  {
    v6 = *(a1 + 32);
    if (v8)
    {
      v7 = [v6 output];
      [v7 addFileWithOriginAttribution:v8];

      v6 = *(a1 + 32);
    }

    [v6 finishRunningWithError:v5];
  }
}

void __47__WFMoveFileAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(a1 + 32) isRunning])
  {
    v6 = *(a1 + 32);
    if (v8)
    {
      v7 = [v6 output];
      [v7 addFileWithOriginAttribution:v8];

      v6 = *(a1 + 32);
    }

    [v6 finishRunningWithError:v5];
  }
}

@end