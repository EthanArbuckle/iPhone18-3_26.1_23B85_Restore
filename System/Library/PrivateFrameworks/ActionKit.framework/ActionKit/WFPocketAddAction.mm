@interface WFPocketAddAction
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)finishRunningWithError:(id)a3;
- (void)pocketAPI:(id)a3 receivedResponse:(id)a4 forAPIMethod:(id)a5 error:(id)a6;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFPocketAddAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  if (v6)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to add %2$@ to Pocket?");
    [v7 localizedStringWithFormat:v9, v8, v6];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to add content to Pocket?");
    [v7 localizedStringWithFormat:v9, v8, v12];
  }
  v10 = ;

  return v10;
}

- (void)pocketAPI:(id)a3 receivedResponse:(id)a4 forAPIMethod:(id)a5 error:(id)a6
{
  if (a6)
  {
    [(WFPocketAddAction *)self setLastError:a6, a4, a5];
  }

  v7 = [(WFPocketAddAction *)self addGroup:a3];
  dispatch_group_leave(v7);
}

- (void)finishRunningWithError:(id)a3
{
  v4 = a3;
  [(WFPocketAddAction *)self setAddGroup:0];
  [(WFPocketAddAction *)self setLastError:0];
  v5.receiver = self;
  v5.super_class = WFPocketAddAction;
  [(WFPocketAddAction *)&v5 finishRunningWithError:v4];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  [(WFPocketAddAction *)self setAddGroup:v5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__WFPocketAddAction_runAsynchronouslyWithInput___block_invoke;
  v11[3] = &unk_278C1BA80;
  v12 = v5;
  v13 = self;
  v6 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WFPocketAddAction_runAsynchronouslyWithInput___block_invoke_2;
  v8[3] = &unk_278C1BAA8;
  v9 = v12;
  v10 = self;
  v7 = v12;
  [v4 enumerateObjectRepresentations:v11 forClass:v6 completionHandler:v8];
}

void __48__WFPocketAddAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = a4;
  dispatch_group_enter(v9);
  v20[0] = @"url";
  v11 = [v7 absoluteString];
  v21[0] = v11;
  v20[1] = @"title";
  v12 = [v8 length];
  v13 = v8;
  if (!v12)
  {
    v13 = [v7 absoluteString];
  }

  v21[1] = v13;
  v20[2] = @"tags";
  v14 = [*(a1 + 40) parameterValueForKey:@"WFPocketTags" ofClass:objc_opt_class()];
  v15 = v14;
  v16 = &stru_2850323E8;
  if (v14)
  {
    v16 = v14;
  }

  v21[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (!v12)
  {
  }

  v18 = +[PocketAPI sharedAPI];
  [v18 callAPIMethod:@"add" withHTTPMethod:1 arguments:v17 delegate:*(a1 + 40)];

  v10[2](v10, 0);
  v19 = *MEMORY[0x277D85DE8];
}

void __48__WFPocketAddAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WFPocketAddAction_runAsynchronouslyWithInput___block_invoke_3;
  v8[3] = &unk_278C21508;
  v8[4] = *(a1 + 40);
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(v5, v6, v8);
}

void __48__WFPocketAddAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 lastError];
  v4 = v3;
  if (!v3)
  {
    v3 = *(a1 + 40);
  }

  [v2 finishRunningWithError:v3];
}

@end