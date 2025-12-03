@interface AXRemoteUIAlertManager
+ (id)sharedInstance;
- (id)_init;
- (void)_sbs_presentRemoteUIAlertWithIdentifier:(id)identifier viewControllerClassName:(id)name userInfo:(id)info presentationHandler:(id)handler dismissalHandler:(id)dismissalHandler;
- (void)presentRemoteUIAlertWithIdentifier:(id)identifier viewControllerClassName:(id)name userInfo:(id)info presentationHandler:(id)handler dismissalHandler:(id)dismissalHandler;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AXRemoteUIAlertManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXRemoteUIAlertManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __40__AXRemoteUIAlertManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = [[AXRemoteUIAlertManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = AXRemoteUIAlertManager;
  v2 = [(AXRemoteUIAlertManager *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(AXRemoteUIAlertManager *)v2 setRemoteCallbackHolders:v3];
  }

  return v2;
}

- (void)presentRemoteUIAlertWithIdentifier:(id)identifier viewControllerClassName:(id)name userInfo:(id)info presentationHandler:(id)handler dismissalHandler:(id)dismissalHandler
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  infoCopy = info;
  handlerCopy = handler;
  dismissalHandlerCopy = dismissalHandler;
  remoteCallbackHolders = [(AXRemoteUIAlertManager *)self remoteCallbackHolders];
  v18 = [remoteCallbackHolders count];

  if (v18)
  {
    v34 = infoCopy;
    v35 = nameCopy;
    v36 = identifierCopy;
    v19 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    remoteCallbackHolders2 = [(AXRemoteUIAlertManager *)self remoteCallbackHolders];
    v21 = [remoteCallbackHolders2 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(remoteCallbackHolders2);
          }

          v25 = *(*(&v37 + 1) + 8 * i);
          v26 = [(AXRemoteUIAlertManager *)self remoteCallbackHolders:v34];
          v27 = [v26 objectForKeyedSubscript:v25];

          remoteAlertHandle = [v27 remoteAlertHandle];
          [remoteAlertHandle invalidate];
        }

        v22 = [remoteCallbackHolders2 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v22);
    }

    v29 = v19;
    AXPerformBlockOnMainThread();
    AXPerformBlockOnMainThread();
    if (dismissalHandlerCopy)
    {
      v30 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA450];
      v42 = @"dismissing existing remote UI alert";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v32 = [v30 errorWithDomain:@"com.apple.AccessibilityRemoteUIServices" code:-110 userInfo:v31];
      dismissalHandlerCopy[2](dismissalHandlerCopy, v32);
    }

    nameCopy = v35;
    identifierCopy = v36;
    infoCopy = v34;
  }

  else
  {
    [(AXRemoteUIAlertManager *)self _sbs_presentRemoteUIAlertWithIdentifier:identifierCopy viewControllerClassName:nameCopy userInfo:infoCopy presentationHandler:handlerCopy dismissalHandler:dismissalHandlerCopy];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __131__AXRemoteUIAlertManager_presentRemoteUIAlertWithIdentifier_viewControllerClassName_userInfo_presentationHandler_dismissalHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [*(a1 + 40) remoteCallbackHolders];
        v9 = [v8 objectForKeyedSubscript:v7];

        v10 = [v9 dismissalHandler];

        if (v10)
        {
          v11 = [v9 dismissalHandler];
          v12 = [v11 copy];

          v12[2](v12, 0);
        }

        v13 = [*(a1 + 40) remoteCallbackHolders];
        [v13 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __131__AXRemoteUIAlertManager_presentRemoteUIAlertWithIdentifier_viewControllerClassName_userInfo_presentationHandler_dismissalHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteCallbackHolders];
  [v1 removeAllObjects];
}

- (void)_sbs_presentRemoteUIAlertWithIdentifier:(id)identifier viewControllerClassName:(id)name userInfo:(id)info presentationHandler:(id)handler dismissalHandler:(id)dismissalHandler
{
  v29[2] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277D66BD8];
  dismissalHandlerCopy = dismissalHandler;
  handlerCopy = handler;
  infoCopy = info;
  nameCopy = name;
  identifierCopy = identifier;
  v18 = [[v12 alloc] initWithServiceName:identifierCopy viewControllerClassName:nameCopy];

  v19 = objc_alloc_init(MEMORY[0x277D66BD0]);
  v20 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v18 configurationContext:v19];
  [v20 registerObserver:self];
  handleID = [v20 handleID];
  v22 = objc_alloc_init(MEMORY[0x277D66BC0]);
  v23 = MEMORY[0x277CBEC10];
  if (infoCopy)
  {
    v23 = infoCopy;
  }

  v28[0] = @"userInfo";
  v28[1] = @"handleId";
  v29[0] = v23;
  v29[1] = handleID;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v22 setUserInfo:v24];

  v25 = objc_opt_new();
  [v25 setPresentationHandler:handlerCopy];

  [v25 setDismissalHandler:dismissalHandlerCopy];
  [v25 setRemoteAlertHandle:v20];
  remoteCallbackHolders = [(AXRemoteUIAlertManager *)self remoteCallbackHolders];
  [remoteCallbackHolders setObject:v25 forKeyedSubscript:handleID];

  [v20 activateWithContext:v22];
  v27 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  handleID = [activate handleID];
  v3 = handleID;
  AXPerformBlockOnMainThread();
}

void __55__AXRemoteUIAlertManager_remoteAlertHandleDidActivate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteCallbackHolders];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [v5 presentationHandler];

  if (v3)
  {
    v4 = [v5 presentationHandler];
    v4[2](v4, 0);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  handleID = [deactivate handleID];
  v3 = handleID;
  AXPerformBlockOnMainThread();
}

void __57__AXRemoteUIAlertManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteCallbackHolders];
  v7 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [v7 dismissalHandler];

  if (v3)
  {
    v4 = [v7 dismissalHandler];
    v5 = [v4 copy];

    v5[2](v5, 0);
  }

  v6 = [*(a1 + 32) remoteCallbackHolders];
  [v6 removeObjectForKey:*(a1 + 40)];
}

@end