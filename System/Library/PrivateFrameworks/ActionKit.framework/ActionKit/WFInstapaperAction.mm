@interface WFInstapaperAction
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
- (IKEngine)engine;
- (id)folders;
- (id)possibleStatesForEnumeration:(id)enumeration;
- (void)dealloc;
- (void)engine:(id)engine connection:(id)connection didReceiveFolders:(id)folders;
- (void)engine:(id)engine didFinishConnection:(id)connection;
- (void)engine:(id)engine willStartConnection:(id)connection;
- (void)finishRunningWithError:(id)error;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)runAsynchronouslyWithInput:(id)input selectedFolder:(id)folder;
- (void)updateFolders;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasRemovedFromWorkflow:(id)workflow;
@end

@implementation WFInstapaperAction

- (id)possibleStatesForEnumeration:(id)enumeration
{
  v27 = *MEMORY[0x277D85DE8];
  enumerationCopy = enumeration;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  folders = [(WFInstapaperAction *)self folders];
  allKeys = [folders allKeys];
  v8 = [v5 initWithArray:allKeys];

  if (![(WFInstapaperAction *)self includeSpecialFolders])
  {
    v21 = enumerationCopy;
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
          folders2 = [(WFInstapaperAction *)self folders];
          v16 = [folders2 objectForKey:v14];
          integerValue = [v16 integerValue];

          if (integerValue < 0)
          {
            [v8 removeObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    enumerationCopy = v21;
  }

  v18 = [v8 if_map:&__block_literal_global_9991];
  [enumerationCopy setHidden:{objc_msgSend(v18, "count") == 0}];

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

- (void)engine:(id)engine connection:(id)connection didReceiveFolders:(id)folders
{
  v38 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  foldersCopy = folders;
  v9 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = foldersCopy;
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
        title = [v15 title];
        [v9 setObject:v16 forKey:title];
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
  v32 = engineCopy;
  v27 = engineCopy;
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

- (void)engine:(id)engine didFinishConnection:(id)connection
{
  connectionCopy = connection;
  identifiers = [(WFInstapaperAction *)self identifiers];
  if ([identifiers count])
  {
  }

  else
  {
    connectionTypes = [(WFInstapaperAction *)self connectionTypes];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "type")}];
    v8 = [connectionTypes containsObject:v7];

    if (v8)
    {
      [(WFInstapaperAction *)self finishRunningWithError:0];
    }
  }
}

- (void)engine:(id)engine willStartConnection:(id)connection
{
  connectionCopy = connection;
  connectionTypes = [(WFInstapaperAction *)self connectionTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "type")}];
  v7 = [connectionTypes containsObject:v6];

  if (v7)
  {
    identifiers = [(WFInstapaperAction *)self identifiers];
    engine = [(WFInstapaperAction *)self engine];
    v10 = [engine identifierForConnection:connectionCopy];
    [identifiers addObject:v10];
  }
}

- (void)runAsynchronouslyWithInput:(id)input selectedFolder:(id)folder
{
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7CB30] code:3 userInfo:0];
  [(WFInstapaperAction *)self finishRunningWithError:v5];
}

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  if (index == 1)
  {
    mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
    v6 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.instapaper.com/premium"];
    userInterface = [(WFInstapaperAction *)self userInterface];
    [mEMORY[0x277CFC248] openURL:v6 userInterface:userInterface completionHandler:0];
  }

  return 1;
}

- (void)finishRunningWithError:(id)error
{
  engine = self->_engine;
  self->_engine = 0;
  errorCopy = error;

  identifiers = self->_identifiers;
  self->_identifiers = 0;

  v7.receiver = self;
  v7.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v7 finishRunningWithError:errorCopy];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v10 = [(WFInstapaperAction *)self parameterValueForKey:@"WFInstapaperFolder" ofClass:objc_opt_class()];
  folders = [(WFInstapaperAction *)self folders];
  v6 = [folders objectForKey:v10];
  v7 = +[IKFolder folderWithFolderID:](IKFolder, "folderWithFolderID:", [v6 integerValue]);

  v8 = objc_opt_new();
  identifiers = self->_identifiers;
  self->_identifiers = v8;

  [(WFInstapaperAction *)self runAsynchronouslyWithInput:inputCopy selectedFolder:v7];
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
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v3 = [workflowUserDefaults objectForKey:@"WFInstapaperFolders"];

  return v3;
}

- (void)updateFolders
{
  if (![(WFInstapaperAction *)self hasFetchedFolders])
  {
    resourceManager = [(WFInstapaperAction *)self resourceManager];
    resourcesAvailable = [resourceManager resourcesAvailable];

    if (resourcesAvailable)
    {
      engine = [(WFInstapaperAction *)self engine];
      v5 = [engine foldersWithUserInfo:0];
    }
  }
}

- (void)wasRemovedFromWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v5 wasRemovedFromWorkflow:workflow];
  resourceManager = [(WFInstapaperAction *)self resourceManager];
  [resourceManager removeTarget:self selector:sel_updateFolders];
}

- (void)wasAddedToWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v5 wasAddedToWorkflow:workflow];
  [(WFInstapaperAction *)self updateFolders];
  resourceManager = [(WFInstapaperAction *)self resourceManager];
  [resourceManager addTarget:self selector:sel_updateFolders];
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
  engine = [(WFInstapaperAction *)self engine];
  [engine setDelegate:0];

  engine2 = [(WFInstapaperAction *)self engine];
  [engine2 cancelAllConnections];

  v5.receiver = self;
  v5.super_class = WFInstapaperAction;
  [(WFInstapaperAction *)&v5 dealloc];
}

@end