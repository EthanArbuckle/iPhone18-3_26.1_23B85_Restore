@interface WFEvernoteGetLinkAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFEvernoteGetLinkAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFEvernoteGetLinkAction *)self parameterValueForKey:@"WFEvernoteShareInAppLink" ofClass:objc_opt_class()];
  v6 = [v5 BOOLValue];

  v7 = +[WFEvernoteAccessResource evernoteSession];
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__WFEvernoteGetLinkAction_runAsynchronouslyWithInput___block_invoke;
  v11[3] = &unk_278C1B060;
  v13 = v6;
  v12 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__WFEvernoteGetLinkAction_runAsynchronouslyWithInput___block_invoke_3;
  v10[3] = &unk_278C21E70;
  v10[4] = self;
  v9 = v7;
  [v4 transformObjectRepresentationsForClass:v8 usingBlock:v11 completionHandler:v10];
}

void __54__WFEvernoteGetLinkAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (*(a1 + 40) != 1)
  {
    v17 = *(a1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __54__WFEvernoteGetLinkAction_runAsynchronouslyWithInput___block_invoke_2;
    v30[3] = &unk_278C1EB88;
    v31 = v8;
    [v17 shareNote:v7 completion:v30];

    goto LABEL_14;
  }

  v10 = MEMORY[0x277CBEBC0];
  v11 = *(a1 + 32);
  v12 = v7;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  if ([v14 type])
  {
    if ([v14 type] == 1)
    {
      v16 = [v15 businessUser];
    }

    else
    {
      if ([v14 type] != 2)
      {
        v19 = 0;
        goto LABEL_10;
      }

      v16 = [v14 linkedNotebook];
    }
  }

  else
  {
    v16 = [v15 user];
  }

  v18 = v16;
  v19 = [v16 shardId];

LABEL_10:
  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [v15 user];
    [v21 id];
    v22 = v29 = v10;
    v23 = [v22 intValue];
    [v14 guid];
    v24 = v28 = v7;
    v25 = [v14 guid];
    v26 = [v20 stringWithFormat:@"evernote:///view/%d/%@/%@/%@/", v23, v19, v24, v25];

    v7 = v28;
    v10 = v29;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v10 URLWithString:v26];
  (v9)[2](v9, v27, 0);

LABEL_14:
}

void __54__WFEvernoteGetLinkAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

@end