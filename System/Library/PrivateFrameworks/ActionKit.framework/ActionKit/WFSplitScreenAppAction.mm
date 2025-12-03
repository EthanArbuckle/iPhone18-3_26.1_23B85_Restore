@interface WFSplitScreenAppAction
- (OS_dispatch_queue)queue;
- (id)disabledOnPlatforms;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFSplitScreenAppAction

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFSplitScreenAppAction;
  disabledOnPlatforms = [(WFSplitScreenAppAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v55[4] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = [(WFSplitScreenAppAction *)self parameterValueForKey:@"WFPrimaryAppIdentifier" ofClass:objc_opt_class()];
  bundleIdentifier = [v4 bundleIdentifier];
  if (!bundleIdentifier)
  {
    [(WFSplitScreenAppAction *)self finishRunningWithError:0];
    goto LABEL_19;
  }

  v36 = [(WFSplitScreenAppAction *)self parameterValueForKey:@"WFSecondaryAppIdentifier" ofClass:objc_opt_class()];
  bundleIdentifier2 = [v36 bundleIdentifier];
  v35 = [(WFSplitScreenAppAction *)self parameterValueForKey:@"WFAppRatio" ofClass:objc_opt_class()];
  v7 = MEMORY[0x277CBEB38];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v8 = getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr;
  v47 = getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr;
  if (!getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr)
  {
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_block_invoke;
    v42 = &unk_278C222B8;
    v43 = &v44;
    v9 = SpringBoardServicesLibrary();
    v45[3] = dlsym(v9, "SBSOpenApplicationOptionKeyLayoutRole");
    getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr = *(v43[1] + 24);
    v8 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationOptionKeyLayoutRole(void)"];
    [currentHandler handleFailureInFunction:v32 file:@"WFSplitScreenAppAction.m" lineNumber:27 description:{@"%s", dlerror()}];

    goto LABEL_22;
  }

  v10 = *v8;
  v54[0] = v10;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v11 = getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr;
  v47 = getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr;
  if (!getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr)
  {
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __getSBSOpenApplicationLayoutRolePrimarySymbolLoc_block_invoke;
    v42 = &unk_278C222B8;
    v43 = &v44;
    v12 = SpringBoardServicesLibrary();
    v45[3] = dlsym(v12, "SBSOpenApplicationLayoutRolePrimary");
    getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr = *(v43[1] + 24);
    v11 = v45[3];
  }

  _Block_object_dispose(&v44, 8);
  if (!v11)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationLayoutRolePrimary(void)"];
    [currentHandler2 handleFailureInFunction:v34 file:@"WFSplitScreenAppAction.m" lineNumber:28 description:{@"%s", dlerror()}];

LABEL_22:
    __break(1u);
  }

  v13 = *MEMORY[0x277D0AC58];
  v55[0] = *v11;
  v55[1] = MEMORY[0x277CBEC38];
  v14 = *MEMORY[0x277D0AC70];
  v54[1] = v13;
  v54[2] = v14;
  v54[3] = *MEMORY[0x277D0AC20];
  v55[2] = MEMORY[0x277CBEC38];
  v55[3] = &unk_28509B048;
  v15 = MEMORY[0x277CBEAC0];
  v16 = v55[0];
  v17 = [v15 dictionaryWithObjects:v55 forKeys:v54 count:4];

  v18 = [v7 dictionaryWithDictionary:v17];

  v19 = [v35 isEqualToString:@"½ + ½"];
  if (bundleIdentifier2)
  {
    if (v19)
    {
      v20 = @"[A<left>|B<right>]";
    }

    else
    {
      v20 = @"[A<leftTwoThird>|B<rightThird>]";
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:v20];
    v22 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers();
    v51[1] = bundleIdentifier2;
    v52[0] = v22;
    v51[0] = bundleIdentifier;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v53[0] = v23;
    v24 = getSBSOpenApplicationOptionKeyWindowingFormat();
    v52[1] = v24;
    v53[1] = v21;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  }

  else
  {
    if (v19)
    {
      v26 = @"[A<left>]";
    }

    else
    {
      v26 = @"[A<leftTwoThird>]";
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:v26];
    v22 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers();
    v48 = bundleIdentifier;
    v49[0] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v50[0] = v23;
    v24 = getSBSOpenApplicationOptionKeyWindowingFormat();
    v49[1] = v24;
    v50[1] = v21;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  }

  v27 = v25;

  [v18 addEntriesFromDictionary:v27];
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v29 = [MEMORY[0x277D0AD60] optionsWithDictionary:v18];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __53__WFSplitScreenAppAction_runAsynchronouslyWithInput___block_invoke;
  v38[3] = &unk_278C19820;
  v38[4] = self;
  [serviceWithDefaultShellEndpoint openApplication:bundleIdentifier withOptions:v29 completion:v38];

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
}

void __53__WFSplitScreenAppAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[WFSplitScreenAppAction runAsynchronouslyWithInput:]_block_invoke";
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_ERROR, "%s Could not split screen apps with error: %@", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCA9B8];
    v8 = [v4 domain];
    v9 = [v4 code];
    v14 = *MEMORY[0x277CCA450];
    v10 = WFLocalizedString(@"Failed to open the specified apps in split screen mode.");
    v15 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v7 errorWithDomain:v8 code:v9 userInfo:{v11, v14}];
    [v6 finishRunningWithError:v12];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (OS_dispatch_queue)queue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_create("com.apple.shortcuts.WFSplitScreenAppAction", 0);
    v5 = self->_queue;
    self->_queue = v4;

    queue = self->_queue;
  }

  return queue;
}

@end