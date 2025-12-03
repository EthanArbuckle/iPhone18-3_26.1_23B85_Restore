@interface WFTrelloCreateListAction
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)updateListCacheForBoard:(id)board onAccount:(id)account;
@end

@implementation WFTrelloCreateListAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  v7 = MEMORY[0x277CCACA8];
  nameCopy = name;
  if (descriptionCopy)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to create a new Trello list with %2$@?");
    [v7 localizedStringWithFormat:v9, nameCopy, descriptionCopy];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to create a new Trello list?");
    [v7 localizedStringWithFormat:v9, nameCopy, v12];
  }
  v10 = ;

  return v10;
}

- (void)updateListCacheForBoard:(id)board onAccount:(id)account
{
  boardCopy = board;
  accountCopy = account;
  identifier = [boardCopy identifier];

  if (identifier)
  {
    identifier2 = [boardCopy identifier];
    v17 = WFDiskCacheKey(identifier2, v10, v11, v12, v13, v14, v15, v16, @"WFTrelloLists");

    if ([accountCopy isValid])
    {
      v18 = [WFTrelloSessionManager alloc];
      token = [accountCopy token];
      v20 = [(WFTrelloSessionManager *)v18 initWithConfiguration:0 token:token];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __62__WFTrelloCreateListAction_updateListCacheForBoard_onAccount___block_invoke;
      v22[3] = &unk_278C21150;
      v22[4] = self;
      v23 = v17;
      [(WFTrelloSessionManager *)v20 getListsForBoard:boardCopy completionHandler:v22];
    }

    else
    {
      v21 = +[WFDiskCache workflowCache];
      [v21 removeObjectForKey:v17 completion:0];

      [(WFTrelloCreateListAction *)self finishRunningWithError:0];
    }
  }

  else
  {
    [(WFTrelloCreateListAction *)self finishRunningWithError:0];
  }
}

void __62__WFTrelloCreateListAction_updateListCacheForBoard_onAccount___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = a3;
  }

  else
  {
    v9 = [v5 count];
    v10 = +[WFDiskCache workflowCache];
    v11 = v10;
    v12 = *(a1 + 40);
    if (v9)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__WFTrelloCreateListAction_updateListCacheForBoard_onAccount___block_invoke_2;
      v13[3] = &unk_278C224A0;
      v13[4] = *(a1 + 32);
      [v10 setObject:v6 forKey:v12 completion:v13];

      goto LABEL_6;
    }

    [v10 removeObjectForKey:*(a1 + 40) completion:0];

    v7 = *(a1 + 32);
    v8 = 0;
  }

  [v7 finishRunningWithError:v8];
LABEL_6:
}

uint64_t __62__WFTrelloCreateListAction_updateListCacheForBoard_onAccount___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFTrelloListParameterNeedsUpdate" object:0];

  v3 = *(a1 + 32);

  return [v3 finishRunningWithError:0];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v23[1] = *MEMORY[0x277D85DE8];
  resourceManager = [(WFTrelloCreateListAction *)self resourceManager];
  v5 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v5 anyObject];

  accounts = [anyObject accounts];
  firstObject = [accounts firstObject];

  v9 = [(WFTrelloCreateListAction *)self parameterValueForKey:@"WFTrelloBoard" ofClass:objc_opt_class()];
  if (v9)
  {
    v10 = [(WFTrelloCreateListAction *)self parameterValueForKey:@"WFTrelloName" ofClass:objc_opt_class()];
    v11 = [(WFTrelloCreateListAction *)self parameterValueForKey:@"WFTrelloPosition" ofClass:objc_opt_class()];
    v12 = [WFTrelloSessionManager alloc];
    token = [firstObject token];
    v14 = [(WFTrelloSessionManager *)v12 initWithConfiguration:0 token:token];

    identifier = [v9 identifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__WFTrelloCreateListAction_runAsynchronouslyWithInput___block_invoke;
    v19[3] = &unk_278C196F8;
    v19[4] = self;
    v20 = v9;
    v21 = firstObject;
    [(WFTrelloSessionManager *)v14 createListWithName:v10 onBoardWithIdentifier:identifier position:v11 completionHandler:v19];
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D7CB30];
    v22 = *MEMORY[0x277CCA450];
    v10 = WFLocalizedString(@"You must select a board to create the list on.");
    v23[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = [v16 errorWithDomain:v17 code:5 userInfo:v11];
    [(WFTrelloCreateListAction *)self finishRunningWithError:v14];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __55__WFTrelloCreateListAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) finishRunningWithError:v5];
  }

  else
  {
    if (v7)
    {
      v6 = [*(a1 + 32) output];
      [v6 addObject:v7];
    }

    [*(a1 + 32) updateListCacheForBoard:*(a1 + 40) onAccount:*(a1 + 48)];
  }
}

@end