@interface WFInstapaperGetAction
- (id)disabledOnPlatforms;
- (void)engine:(id)engine connection:(id)connection didReceiveBookmarks:(id)bookmarks ofUser:(id)user forFolder:(id)folder;
- (void)runAsynchronouslyWithInput:(id)input selectedFolder:(id)folder;
@end

@implementation WFInstapaperGetAction

- (void)engine:(id)engine connection:(id)connection didReceiveBookmarks:(id)bookmarks ofUser:(id)user forFolder:(id)folder
{
  v31 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  bookmarksCopy = bookmarks;
  identifiers = [(WFInstapaperAction *)self identifiers];
  v12 = [identifiers count];

  if (v12)
  {
    identifiers2 = [(WFInstapaperAction *)self identifiers];
    engine = [(WFInstapaperAction *)self engine];
    v15 = [engine identifierForConnection:connectionCopy];
    [identifiers2 removeObject:v15];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = bookmarksCopy;
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
        output = [(WFInstapaperGetAction *)self output];
        v23 = [v21 URL];
        title = [v21 title];
        [output addObject:v23 named:title];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)input selectedFolder:(id)folder
{
  folderCopy = folder;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__WFInstapaperGetAction_runAsynchronouslyWithInput_selectedFolder___block_invoke;
  v7[3] = &unk_278C21508;
  v7[4] = self;
  v8 = folderCopy;
  v6 = folderCopy;
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
  disabledOnPlatforms = [(WFInstapaperGetAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end