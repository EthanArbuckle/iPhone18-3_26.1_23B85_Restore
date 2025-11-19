@interface WFInstapaperAction
- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4;
- (IKEngine)engine;
- (id)folders;
- (id)possibleStatesForEnumeration:(id)a3;
- (void)dealloc;
- (void)engine:(id)a3 connection:(id)a4 didReceiveFolders:(id)a5;
- (void)engine:(id)a3 didFinishConnection:(id)a4;
- (void)engine:(id)a3 willStartConnection:(id)a4;
- (void)finishRunningWithError:(id)a3;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3 selectedFolder:(id)a4;
- (void)updateFolders;
- (void)wasAddedToWorkflow:(id)a3;
- (void)wasRemovedFromWorkflow:(id)a3;
@end

@implementation WFInstapaperAction

- (id)possibleStatesForEnumeration:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [(WFInstapaperAction *)self folders];
  v7 = [v6 allKeys];
  v8 = [v5 initWithArray:v7];

  if (![(WFInstapaperAction *)self includeSpecialFolders])
  {
    v21 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 copy];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [(WFInstapaperAction *)self folders];
          v16 = [v15 objectForKey:v14];
          v17 = [v16 integerValue];

          if (v17 < 0)
          {
            [v8 removeObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v4 = v21;
  }

  v18 = [v8 if_map:&__block_literal_global_9991];
  [v4 setHidden:{objc_msgSend(v18, "count") == 0}];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id __51__WFInstapaperAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

- (void)engine:(id)a3 connection:(id)a4 didReceiveFolders:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "folderID")}];
        v17 = [v15 title];
        [v9 setObject:v16 forKey:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  v18 = MEMORY[0x277CCABB0];
  v19 = +[IKFolder starredFolder];
  v20 = [v18 numberWithInteger:{objc_msgSend(v19, "folderID")}];
  [v9 setObject:v20 forKey:@"Starred"];

  v21 = MEMORY[0x277CCABB0];
  v22 = +[IKFolder unreadFolder];
  v23 = [v21 numberWithInteger:{objc_msgSend(v22, "folderID")}];
  [v9 setObject:v23 forKey:@"Unread"];

  v24 = MEMORY[0x277CCABB0];
  v25 = +[IKFolder archiveFolder];
  v26 = [v24 numberWithInteger:{objc_msgSend(v25, "folderID")}];
  [v9 setObject:v26 forKey:@"Archive"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WFInstapaperAction_engine_connection_didReceiveFolders___block_invoke;
  block[3] = &unk_278C21F68;
  block[4] = self;
  v31 = v9;
  v32 = v7;
  v27 = v7;
  v28 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v29 = *MEMORY[0x277D85DE8];
}

void __58__WFInstapaperAction_engine_connection_didReceiveFolders___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasFetchedFolders:1];
  v2 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  [v2 setObject:*(a1 + 40) forKey:@"WFInstapaperFolders"];

  v3 = [*(a1 + 32) parameterForKey:@"WFInstapaperFolder"];
  [v3 reloadPossibleStates];

  if (![*(a1 + 48) numberOfConnections])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 352);
    *(v4 + 352) = 0;
  }
}

- (void)engine:(id)a3 didFinishConnection:(id)a4
{
  v9 = a4;
  v5 = [(WFInstapaperAction *)self identifiers];
  if ([v5 count])
  {
  }

  else
  {
    v6 = [(WFInstapaperAction *)self connectionTypes];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "type")}];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      [(WFInstapaperAction *)self finishRunningWithError:0];
    }
  }
}

- (void)engine:(id)a3 willStartConnection:(id)a4
{
  v11 = a4;
  v5 = [(WFInstapaperAction *)self connectionTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "type")}];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(WFInstapaperAction *)self identifiers];
    v9 = [(WFInstapaperAction *)self engine];
    v10 = [v9 identifierForConnection:v11];
    [v8 addObject:v10];
  }
}

- (void)runAsynchronouslyWithInput:(id)a3 selectedFolder:(id)a4
{
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CB30] code:3 userInfo:0];
  [(WFInstapaperAction *)self finishRunningWithError:v5];
}

- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4
{
  if (a4 == 1)
  {
    v5 = [MEMORY[0x277CFC248] sharedContext];
    v6 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.instapaper.com/premium"];
    v7 = [(WFInstapaperAction *)self userInterface];
    [v5 openURL:v6 userInterface:v7 completionHandler:0];
  }

  return 1;
}

- (void)finishRunningWithError:(id)a3
{
  engine = self->_engine;
  self->_engine = 0;
  v5 = a3;

  identifiers = self->_identifiers;
  self->_identifiers = 0;

  v7.receiver = self;
  v7.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v7 finishRunningWithError:v5];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v10 = [(WFInstapaperAction *)self parameterValueForKey:@"WFInstapaperFolder" ofClass:objc_opt_class()];
  v5 = [(WFInstapaperAction *)self folders];
  v6 = [v5 objectForKey:v10];
  v7 = +[IKFolder folderWithFolderID:](IKFolder, "folderWithFolderID:", [v6 integerValue]);

  v8 = objc_opt_new();
  identifiers = self->_identifiers;
  self->_identifiers = v8;

  [(WFInstapaperAction *)self runAsynchronouslyWithInput:v4 selectedFolder:v7];
}

- (IKEngine)engine
{
  engine = self->_engine;
  if (!engine)
  {
    v4 = [[IKEngine alloc] initWithDelegate:self];
    v5 = self->_engine;
    self->_engine = v4;

    v6 = +[WFInstapaperAccessResource instapaperToken];
    [(IKEngine *)self->_engine setOAuthToken:v6];

    v7 = +[WFInstapaperAccessResource instapaperTokenSecret];
    [(IKEngine *)self->_engine setOAuthTokenSecret:v7];

    engine = self->_engine;
  }

  return engine;
}

- (id)folders
{
  v2 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v3 = [v2 objectForKey:@"WFInstapaperFolders"];

  return v3;
}

- (void)updateFolders
{
  if (![(WFInstapaperAction *)self hasFetchedFolders])
  {
    v3 = [(WFInstapaperAction *)self resourceManager];
    v4 = [v3 resourcesAvailable];

    if (v4)
    {
      v6 = [(WFInstapaperAction *)self engine];
      v5 = [v6 foldersWithUserInfo:0];
    }
  }
}

- (void)wasRemovedFromWorkflow:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v5 wasRemovedFromWorkflow:a3];
  v4 = [(WFInstapaperAction *)self resourceManager];
  [v4 removeTarget:self selector:sel_updateFolders];
}

- (void)wasAddedToWorkflow:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v5 wasAddedToWorkflow:a3];
  [(WFInstapaperAction *)self updateFolders];
  v4 = [(WFInstapaperAction *)self resourceManager];
  [v4 addTarget:self selector:sel_updateFolders];
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v4 initializeParameters];
  v3 = [(WFInstapaperAction *)self parameterForKey:@"WFInstapaperFolder"];
  [v3 setDataSource:self];
}

- (void)dealloc
{
  v3 = [(WFInstapaperAction *)self engine];
  [v3 setDelegate:0];

  v4 = [(WFInstapaperAction *)self engine];
  [v4 cancelAllConnections];

  v5.receiver = self;
  v5.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v5 dealloc];
}

@end