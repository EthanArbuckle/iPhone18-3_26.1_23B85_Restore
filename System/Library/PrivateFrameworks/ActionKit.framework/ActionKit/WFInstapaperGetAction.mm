@interface WFInstapaperGetAction
- (id)disabledOnPlatforms;
- (void)engine:(id)a3 connection:(id)a4 didReceiveBookmarks:(id)a5 ofUser:(id)a6 forFolder:(id)a7;
- (void)runAsynchronouslyWithInput:(id)a3 selectedFolder:(id)a4;
@end

@implementation WFInstapaperGetAction

- (void)engine:(id)a3 connection:(id)a4 didReceiveBookmarks:(id)a5 ofUser:(id)a6 forFolder:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [(WFInstapaperAction *)self identifiers];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(WFInstapaperAction *)self identifiers];
    v14 = [(WFInstapaperAction *)self engine];
    v15 = [v14 identifierForConnection:v9];
    [v13 removeObject:v15];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * v20);
        v22 = [(WFInstapaperGetAction *)self output];
        v23 = [v21 URL];
        v24 = [v21 title];
        [v22 addObject:v23 named:v24];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)a3 selectedFolder:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__WFInstapaperGetAction_runAsynchronouslyWithInput_selectedFolder___block_invoke;
  v7[3] = &unk_278C21508;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __67__WFInstapaperGetAction_runAsynchronouslyWithInput_selectedFolder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parameterValueForKey:@"WFBookmarkCount" ofClass:objc_opt_class()];
  v3 = [v2 unsignedIntegerValue];

  v6 = [*(a1 + 32) identifiers];
  v4 = [*(a1 + 32) engine];
  v5 = [v4 bookmarksInFolder:*(a1 + 40) limit:v3 existingBookmarks:0 userInfo:0];
  [v6 addObject:v5];
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFInstapaperGetAction;
  v2 = [(WFInstapaperGetAction *)&v5 disabledOnPlatforms];
  v3 = [v2 arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end