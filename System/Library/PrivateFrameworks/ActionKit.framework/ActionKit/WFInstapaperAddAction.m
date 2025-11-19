@interface WFInstapaperAddAction
- (id)disabledOnPlatforms;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)engine:(id)a3 connection:(id)a4 didAddBookmark:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3 selectedFolder:(id)a4;
@end

@implementation WFInstapaperAddAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  if (v6)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to add %2$@ to Instapaper?");
    [v7 localizedStringWithFormat:v9, v8, v6];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to add content to Instapaper?");
    [v7 localizedStringWithFormat:v9, v8, v12];
  }
  v10 = ;

  return v10;
}

- (void)engine:(id)a3 connection:(id)a4 didAddBookmark:(id)a5
{
  v11 = a4;
  v6 = [(WFInstapaperAction *)self identifiers];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(WFInstapaperAction *)self identifiers];
    v9 = [(WFInstapaperAction *)self engine];
    v10 = [v9 identifierForConnection:v11];
    [v8 removeObject:v10];
  }
}

- (void)runAsynchronouslyWithInput:(id)a3 selectedFolder:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__WFInstapaperAddAction_runAsynchronouslyWithInput_selectedFolder___block_invoke;
  v11[3] = &unk_278C1BA80;
  v11[4] = self;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__WFInstapaperAddAction_runAsynchronouslyWithInput_selectedFolder___block_invoke_2;
  v10[3] = &unk_278C21F18;
  v10[4] = self;
  [v8 enumerateObjectRepresentations:v11 forClass:v9 completionHandler:v10];
}

void __67__WFInstapaperAddAction_runAsynchronouslyWithInput_selectedFolder___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  v8 = a2;
  v9 = [v8 wfName];
  v10 = [v15 isEqualToString:v9];

  v11 = v15;
  if (v10)
  {

    v11 = 0;
  }

  v12 = [*(a1 + 32) identifiers];
  v13 = [*(a1 + 32) engine];
  v14 = [v13 addBookmarkWithURL:v8 title:v11 description:0 folder:*(a1 + 40) resolveFinalURL:1 userInfo:0];

  [v12 addObject:v14];
  v7[2](v7, 0);
}

uint64_t __67__WFInstapaperAddAction_runAsynchronouslyWithInput_selectedFolder___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) finishRunningWithError:0];
  }

  return result;
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFInstapaperAddAction;
  v2 = [(WFInstapaperAddAction *)&v5 disabledOnPlatforms];
  v3 = [v2 arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end