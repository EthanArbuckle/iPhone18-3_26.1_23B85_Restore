@interface WFTrimVideoAction
- (void)runWithRemoteUserInterface:(id)a3 input:(id)a4;
@end

@implementation WFTrimVideoAction

- (void)runWithRemoteUserInterface:(id)a3 input:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke;
  v8[3] = &unk_278C20998;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a4 getFileRepresentation:v8 forType:0];
}

void __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getUIVideoEditorControllerClass_softClass;
    v27 = getUIVideoEditorControllerClass_softClass;
    if (!getUIVideoEditorControllerClass_softClass)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __getUIVideoEditorControllerClass_block_invoke;
      v23[3] = &unk_278C222B8;
      v23[4] = &v24;
      __getUIVideoEditorControllerClass_block_invoke(v23);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    v9 = [v5 fileURL];
    v10 = [v9 path];
    v11 = [v7 canEditVideoAtPath:v10];

    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = objc_alloc(MEMORY[0x277CCAC90]);
      v14 = [v5 fileURL];
      v15 = [v13 initWithURL:v14];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke_2;
      v21[3] = &unk_278C1A4D8;
      v21[4] = *(a1 + 32);
      v22 = v5;
      [v12 showWithVideo:v15 completionHandler:v21];
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v17 = WFLocalizedString(@"The input was not a video that can be edited.");
      v29[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v19 = [v16 errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:v18];

      [*(a1 + 32) finishRunningWithError:v19];
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v6];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = MEMORY[0x277CFC3C8];
    v6 = [a2 url];
    v7 = [v5 fileWithURL:v6 options:13];

    v8 = [*(a1 + 32) output];
    [v8 addFile:v7];
  }

  [*(a1 + 32) finishRunningWithError:v9];
}

@end