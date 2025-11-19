@interface WFTrelloGetItemsAction
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)updateBoards:(id)a3 onAccount:(id)a4;
- (void)updateListCache:(id)a3 board:(id)a4 account:(id)a5;
@end

@implementation WFTrelloGetItemsAction

- (void)updateListCache:(id)a3 board:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 identifier];

  if (v11)
  {
    v12 = [v9 identifier];
    v20 = WFDiskCacheKey(v12, v13, v14, v15, v16, v17, v18, v19, @"WFTrelloLists");

    if ([v10 isValid] && objc_msgSend(v8, "count"))
    {
      v21 = +[WFDiskCache workflowCache];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__WFTrelloGetItemsAction_updateListCache_board_account___block_invoke;
      v23[3] = &unk_278C224A0;
      v23[4] = self;
      [v21 setObject:v8 forKey:v20 completion:v23];
    }

    else
    {
      v22 = +[WFDiskCache workflowCache];
      [v22 removeObjectForKey:v20 completion:0];

      [(WFTrelloGetItemsAction *)self finishRunningWithError:0];
    }
  }

  else
  {
    [(WFTrelloGetItemsAction *)self finishRunningWithError:0];
  }
}

uint64_t __56__WFTrelloGetItemsAction_updateListCache_board_account___block_invoke(uint64_t a1)
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_218);
  v2 = *(a1 + 32);

  return [v2 finishRunningWithError:0];
}

void __56__WFTrelloGetItemsAction_updateListCache_board_account___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"WFTrelloListParameterNeedsUpdate" object:0];
}

- (void)updateBoards:(id)a3 onAccount:(id)a4
{
  v6 = a3;
  if ([a4 isValid] && objc_msgSend(v6, "count"))
  {
    v7 = +[WFDiskCache workflowCache];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__WFTrelloGetItemsAction_updateBoards_onAccount___block_invoke;
    v9[3] = &unk_278C224A0;
    v9[4] = self;
    [v7 setObject:v6 forKey:@"WFTrelloBoards" completion:v9];
  }

  else
  {
    v8 = +[WFDiskCache workflowCache];
    [v8 removeObjectForKey:@"WFTrelloBoards" completion:0];

    [(WFTrelloGetItemsAction *)self finishRunningWithError:0];
  }
}

uint64_t __49__WFTrelloGetItemsAction_updateBoards_onAccount___block_invoke(uint64_t a1)
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_15582);
  v2 = *(a1 + 32);

  return [v2 finishRunningWithError:0];
}

void __49__WFTrelloGetItemsAction_updateBoards_onAccount___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"WFTrelloBoardParameterNeedsUpdateNotification" object:0];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = [(WFTrelloGetItemsAction *)self resourceManager];
  v5 = [v4 resourceObjectsOfClass:objc_opt_class()];
  v6 = [v5 anyObject];

  v7 = [v6 accounts];
  v8 = [v7 firstObject];

  if ([v8 isValid])
  {
    v9 = [WFTrelloSessionManager alloc];
    v10 = [v8 token];
    v11 = [(WFTrelloSessionManager *)v9 initWithConfiguration:0 token:v10];

    v12 = [(WFTrelloGetItemsAction *)self parameterValueForKey:@"WFTrelloBoard" ofClass:objc_opt_class()];
    v13 = [(WFTrelloGetItemsAction *)self parameterValueForKey:@"WFTrelloItemType" ofClass:objc_opt_class()];
    if ([v13 isEqualToString:@"Boards"])
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke;
      v45[3] = &unk_278C21150;
      v45[4] = self;
      v46 = v8;
      [(WFTrelloSessionManager *)v11 getOpenBoardsWithCompletionHandler:v45];
      v14 = v46;
LABEL_8:

      goto LABEL_9;
    }

    if ([v13 isEqualToString:@"Lists"])
    {
      if (v12)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_2;
        v42[3] = &unk_278C221D0;
        v42[4] = self;
        v12 = v12;
        v43 = v12;
        v44 = v8;
        [(WFTrelloSessionManager *)v11 getListsForBoard:v12 completionHandler:v42];

        v14 = v43;
        goto LABEL_8;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277D7CB30];
      v52 = *MEMORY[0x277CCA450];
      v27 = WFLocalizedString(@"You must select a board to retrieve lists from.");
      v53 = v27;
      v28 = MEMORY[0x277CBEAC0];
      v29 = &v53;
      v30 = &v52;
LABEL_18:
      v31 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:1];
      v32 = [v25 errorWithDomain:v26 code:5 userInfo:v31];
      [(WFTrelloGetItemsAction *)self finishRunningWithError:v32];

      v12 = 0;
      goto LABEL_9;
    }

    if (![v13 isEqualToString:@"Cards"])
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277D7CB30];
      v50 = *MEMORY[0x277CCA450];
      v27 = WFLocalizedString(@"You must select a board to retrieve cards from.");
      v51 = v27;
      v28 = MEMORY[0x277CBEAC0];
      v29 = &v51;
      v30 = &v50;
      goto LABEL_18;
    }

    v18 = [(WFTrelloGetItemsAction *)self parameterValueForKey:@"WFTrelloList" ofClass:objc_opt_class()];
    v19 = [v18 identifier];

    if (!v19)
    {
      v39 = +[WFDiskCache workflowCache];
      v20 = MEMORY[0x277CBEB98];
      v49[0] = objc_opt_class();
      v49[1] = objc_opt_class();
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
      v21 = [v20 setWithArray:v38];
      v22 = [v12 identifier];
      v37 = [v39 objectOfClasses:v21 forKeyComponents:{v22, @"WFTrelloLists", 0}];

      v23 = [v18 name];
      v24 = [v37 objectMatchingKey:@"name" value:v23];

      v18 = v24;
    }

    if (v18)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_3;
      v41[3] = &unk_278C22518;
      v41[4] = self;
      [(WFTrelloSessionManager *)v11 getCardsForList:v18 completionHandler:v41];
    }

    else
    {
      v40 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277D7CB30];
      v47 = *MEMORY[0x277CCA450];
      v34 = WFLocalizedString(@"You must select a list to retrieve cards from.");
      v48 = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v36 = [v40 errorWithDomain:v33 code:5 userInfo:v35];
      [(WFTrelloGetItemsAction *)self finishRunningWithError:v36];
    }
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D7CB30];
    v54 = *MEMORY[0x277CCA450];
    v11 = WFLocalizedString(@"Your Trello account couldn’t be verified. Please sign out and try again!");
    v55[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v13 = [v15 errorWithDomain:v16 code:-1 userInfo:v12];
    [(WFTrelloGetItemsAction *)self finishRunningWithError:v13];
  }

LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
}

void __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [*(a1 + 32) output];
          [v12 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) updateBoards:v6 onAccount:*(a1 + 40)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [*(a1 + 32) output];
          [v12 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) updateListCache:v6 board:*(a1 + 40) account:*(a1 + 48)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = a3;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = [*(a1 + 32) output];
          [v14 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v7 = *(a1 + 32);
    v8 = 0;
  }

  [v7 finishRunningWithError:v8];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFTrelloGetItemsAction;
  [(WFTrelloGetItemsAction *)&v4 initializeParameters];
  v3 = [(WFTrelloGetItemsAction *)self parameterForKey:@"WFTrelloList"];
  [v3 setAction:self];
}

@end