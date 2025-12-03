@interface WKInterfaceController
+ (CGRect)screenBounds;
+ (double)screenScale;
+ (void)_insertPageControllersAtIndexes:(id)indexes withNames:(id)names contexts:(id)contexts;
+ (void)_removePageControllersAtIndexes:(id)indexes;
+ (void)reloadRootControllersWithNames:(id)names contexts:(id)contexts;
- (CGRect)contentFrame;
- (WKInterfaceController)init;
- (void)_handleActionWithIdentifier:(id)identifier forNotification:(id)notification remoteNotification:(id)remoteNotification localNotification:(id)localNotification;
- (void)addMenuItemWithImage:(id)image title:(id)title action:(SEL)action;
- (void)addMenuItemWithImageNamed:(id)named title:(id)title action:(SEL)action;
- (void)addMenuItemWithItemIcon:(int64_t)icon title:(id)title action:(SEL)action;
- (void)animateWithDuration:(double)duration animations:(id)animations;
- (void)becomeCurrentPage;
- (void)clearAllMenuItems;
- (void)didRegisterWithRemoteInterface;
- (void)dismissAddPassesController;
- (void)dismissController;
- (void)dismissTextInputController;
- (void)invalidateUserActivity;
- (void)popController;
- (void)popToRootController;
- (void)presentAddPassesControllerWithPasses:(id)passes completion:(id)completion;
- (void)presentControllerWithName:(id)name context:(id)context;
- (void)presentControllerWithNames:(id)names contexts:(id)contexts;
- (void)presentTextInputControllerWithSuggestions:(id)suggestions allowedInputMode:(int64_t)mode completion:(id)completion;
- (void)presentTextInputControllerWithSuggestionsForLanguage:(id)language allowedInputMode:(int64_t)mode completion:(id)completion;
- (void)pushControllerWithName:(id)name context:(id)context;
- (void)setTitle:(id)title;
- (void)updateUserActivity:(id)activity userInfo:(id)info;
- (void)updateUserActivity:(id)activity userInfo:(id)info webpageURL:(id)l;
@end

@implementation WKInterfaceController

+ (double)screenScale
{
  v2 = +[WKInterfaceDevice currentDevice];
  [v2 screenScale];
  v4 = v3;

  return v4;
}

+ (CGRect)screenBounds
{
  v2 = +[WKInterfaceDevice currentDevice];
  [v2 screenBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (WKInterfaceController)init
{
  v8.receiver = self;
  v8.super_class = WKInterfaceController;
  v2 = [(WKInterfaceController *)&v8 init];
  [(WKInterfaceController *)v2 setViewControllerID:__viewControllerID];
  [(WKInterfaceController *)v2 setContentFrame:__contentFrame, *&qword_27E131AB8, unk_27E131AC0];
  [(WKInterfaceController *)v2 setProperties:__properties];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(WKInterfaceController *)v2 setGestureRecognizers:dictionary];

  if (init_onceToken != -1)
  {
    [WKInterfaceController init];
  }

  array = [MEMORY[0x277CBEB18] array];
  [(WKInterfaceController *)v2 setUninstalledGestureIDs:array];

  array2 = [MEMORY[0x277CBEB18] array];
  [(WKInterfaceController *)v2 setPendingGestureInstallationFinishedBlocks:array2];

  v6 = [SPRemoteInterface controller:v2 setupProperties:__properties viewControllerID:__viewControllerID tableIndex:0x7FFFFFFFFFFFFFFFLL rowIndex:0x7FFFFFFFFFFFFFFFLL classForType:_WKInterfaceObjectClassWithType];
  [(WKInterfaceController *)v2 setTopLevelObjects:v6];

  (*(__remoteSetup + 16))(__remoteSetup, v2);
  return v2;
}

uint64_t __29__WKInterfaceController_init__block_invoke()
{
  __gestureRecognizersQueue = dispatch_queue_create("com.apple.watchKit.WKInterfaceControllerGestureRecognizers", MEMORY[0x277D85CD8]);

  return MEMORY[0x2821F96F8]();
}

- (void)didRegisterWithRemoteInterface
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  topLevelObjects = [(WKInterfaceController *)self topLevelObjects];
  v3 = [topLevelObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(topLevelObjects);
        }

        [*(*(&v8 + 1) + 8 * v6++) didRegisterWithRemoteInterface];
      }

      while (v4 != v6);
      v4 = [topLevelObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleActionWithIdentifier:(id)identifier forNotification:(id)notification remoteNotification:(id)remoteNotification localNotification:(id)localNotification
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  notificationCopy = notification;
  remoteNotificationCopy = remoteNotification;
  localNotificationCopy = localNotification;
  v14 = objc_opt_class();
  if (spUtils_subclassForObjectOverridesSelectorFromSuperclass(self, sel_handleActionWithIdentifier_forNotification_, v14))
  {
    v15 = wk_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136446978;
      v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
      v25 = 1024;
      v26 = 276;
      v27 = 2114;
      selfCopy5 = self;
      v29 = 2114;
      v30 = identifierCopy;
      _os_log_impl(&dword_23B338000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
    }

    [(WKInterfaceController *)self handleActionWithIdentifier:identifierCopy forNotification:notificationCopy];
  }

  else if (localNotificationCopy)
  {
    v16 = wk_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136446978;
      v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
      v25 = 1024;
      v26 = 283;
      v27 = 2114;
      selfCopy5 = self;
      v29 = 2114;
      v30 = identifierCopy;
      _os_log_impl(&dword_23B338000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forLocalNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
    }

    [(WKInterfaceController *)self handleActionWithIdentifier:identifierCopy forLocalNotification:localNotificationCopy];
  }

  else
  {
    v17 = wk_default_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (remoteNotificationCopy)
    {
      if (v18)
      {
        v23 = 136446978;
        v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
        v25 = 1024;
        v26 = 286;
        v27 = 2114;
        selfCopy5 = self;
        v29 = 2114;
        v30 = identifierCopy;
        _os_log_impl(&dword_23B338000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forRemoteNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
      }

      selfCopy6 = self;
      v20 = identifierCopy;
      v21 = remoteNotificationCopy;
    }

    else
    {
      if (v18)
      {
        v23 = 136446978;
        v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
        v25 = 1024;
        v26 = 289;
        v27 = 2114;
        selfCopy5 = self;
        v29 = 2114;
        v30 = identifierCopy;
        _os_log_impl(&dword_23B338000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forRemoteNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
      }

      v21 = MEMORY[0x277CBEC10];
      selfCopy6 = self;
      v20 = identifierCopy;
    }

    [(WKInterfaceController *)selfCopy6 handleActionWithIdentifier:v20 forRemoteNotification:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__WKInterfaceController_setTitle___block_invoke;
  v8[3] = &unk_278B7E2F0;
  v8[4] = self;
  v9 = titleCopy;
  v5 = titleCopy;
  v6 = MEMORY[0x23EE9A9D0](v8);
  if (isRunningOnMainQueue())
  {
    v6[2](v6);
  }

  else
  {
    v7 = wk_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController setTitle:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __34__WKInterfaceController_setTitle___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) viewControllerID];
  v2 = [*(a1 + 40) copy];
  [SPRemoteInterface setController:v3 key:@"#title" property:&stru_284DFE9D8 value:v2];
}

- (void)pushControllerWithName:(id)name context:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__WKInterfaceController_pushControllerWithName_context___block_invoke;
  v12[3] = &unk_278B7E278;
  v12[4] = self;
  v13 = nameCopy;
  v14 = contextCopy;
  v8 = contextCopy;
  v9 = nameCopy;
  v10 = MEMORY[0x23EE9A9D0](v12);
  if (isRunningOnMainQueue())
  {
    v10[2](v10);
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController pushControllerWithName:context:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __56__WKInterfaceController_pushControllerWithName_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [SPRemoteInterface controller:v2 pushInterfaceController:v3 context:*(a1 + 48)];
}

- (void)popController
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)popToRootController
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)reloadRootControllersWithNames:(id)names contexts:(id)contexts
{
  namesCopy = names;
  contextsCopy = contexts;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke;
  v11[3] = &unk_278B7E2F0;
  v12 = namesCopy;
  v13 = contextsCopy;
  v7 = contextsCopy;
  v8 = namesCopy;
  v9 = MEMORY[0x23EE9A9D0](v11);
  if (isRunningOnMainQueue())
  {
    v9[2](v9);
  }

  else
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[WKInterfaceController reloadRootControllersWithNames:contexts:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 32) copy];
    v2 = [*(a1 + 40) copy];
    [SPRemoteInterface reloadRootControllersWithNames:v4 contexts:v2];
  }

  else
  {
    v3 = wk_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke_cold_1();
    }
  }
}

+ (void)_insertPageControllersAtIndexes:(id)indexes withNames:(id)names contexts:(id)contexts
{
  indexesCopy = indexes;
  namesCopy = names;
  contextsCopy = contexts;
  if ([namesCopy count])
  {
    v9 = [indexesCopy copy];
    v10 = [namesCopy copy];
    [SPRemoteInterface insertPageControllerAtIndexes:v9 withNames:v10 contexts:contextsCopy];
  }
}

+ (void)_removePageControllersAtIndexes:(id)indexes
{
  v3 = [indexes copy];
  [SPRemoteInterface removePageControllerAtIndexes:v3];
}

- (void)becomeCurrentPage
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentControllerWithName:(id)name context:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__WKInterfaceController_presentControllerWithName_context___block_invoke;
  v12[3] = &unk_278B7E278;
  v12[4] = self;
  v13 = nameCopy;
  v14 = contextCopy;
  v8 = contextCopy;
  v9 = nameCopy;
  v10 = MEMORY[0x23EE9A9D0](v12);
  if (isRunningOnMainQueue())
  {
    v10[2](v10);
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentControllerWithName:context:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __59__WKInterfaceController_presentControllerWithName_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [SPRemoteInterface controller:v2 presentInterfaceController:v3 context:*(a1 + 48)];
}

- (void)presentControllerWithNames:(id)names contexts:(id)contexts
{
  namesCopy = names;
  contextsCopy = contexts;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__WKInterfaceController_presentControllerWithNames_contexts___block_invoke;
  v12[3] = &unk_278B7E278;
  v12[4] = self;
  v13 = namesCopy;
  v14 = contextsCopy;
  v8 = contextsCopy;
  v9 = namesCopy;
  v10 = MEMORY[0x23EE9A9D0](v12);
  if (isRunningOnMainQueue())
  {
    v10[2](v10);
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentControllerWithNames:contexts:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __61__WKInterfaceController_presentControllerWithNames_contexts___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  v3 = [*(a1 + 48) copy];
  [SPRemoteInterface controller:v2 presentInterfaceControllers:v4 contexts:v3];
}

- (void)dismissController
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentTextInputControllerWithSuggestions:(id)suggestions allowedInputMode:(int64_t)mode completion:(id)completion
{
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke;
  v14[3] = &unk_278B7F338;
  v14[4] = self;
  v15 = suggestionsCopy;
  v16 = completionCopy;
  modeCopy = mode;
  v10 = suggestionsCopy;
  v11 = completionCopy;
  v12 = MEMORY[0x23EE9A9D0](v14);
  if (isRunningOnMainQueue())
  {
    v12[2](v12);
  }

  else
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentTextInputControllerWithSuggestions:allowedInputMode:completion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 32);
    v5 = [*(a1 + 40) copy];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    [SPRemoteInterface controller:v2 presentTextInputControllerWithSuggestions:v5 allowedInputMode:v3 completion:*(a1 + 48)];
  }

  else
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke_cold_1();
    }
  }
}

- (void)presentTextInputControllerWithSuggestionsForLanguage:(id)language allowedInputMode:(int64_t)mode completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke;
  v14[3] = &unk_278B7F360;
  v14[4] = self;
  v15 = completionCopy;
  v16 = languageCopy;
  modeCopy = mode;
  v10 = languageCopy;
  v11 = completionCopy;
  v12 = MEMORY[0x23EE9A9D0](v14);
  if (isRunningOnMainQueue())
  {
    v12[2](v12);
  }

  else
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentTextInputControllerWithSuggestionsForLanguage:allowedInputMode:completion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke(void *a1)
{
  if (a1[5])
  {
    v2 = a1[4];
    v3 = a1[6];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    [SPRemoteInterface controller:v2 presentTextInputControllerWithSuggestionsForLanguage:v3 allowedInputMode:v5 completion:a1[5]];
  }

  else
  {
    v4 = wk_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke_cold_1();
    }
  }
}

- (void)dismissTextInputController
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentAddPassesControllerWithPasses:(id)passes completion:(id)completion
{
  passesCopy = passes;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__WKInterfaceController_presentAddPassesControllerWithPasses_completion___block_invoke;
  v12[3] = &unk_278B7F1F0;
  v12[4] = self;
  v13 = passesCopy;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = passesCopy;
  v10 = MEMORY[0x23EE9A9D0](v12);
  if (isRunningOnMainQueue())
  {
    v10[2](v10);
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentAddPassesControllerWithPasses:completion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

- (void)dismissAddPassesController
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)animateWithDuration:(double)duration animations:(id)animations
{
  animationsCopy = animations;
  v7 = animationsCopy;
  if (animationsCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__WKInterfaceController_animateWithDuration_animations___block_invoke;
    block[3] = &unk_278B7F388;
    block[4] = self;
    durationCopy = duration;
    v9 = animationsCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __56__WKInterfaceController_animateWithDuration_animations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerID];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [SPRemoteInterface setController:v2 key:@"#animateBegin" property:&stru_284DFE9D8 value:v3];

  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) viewControllerID];
  [SPRemoteInterface setController:v4 key:@"#animateCommit" property:&stru_284DFE9D8 value:0];
}

- (void)addMenuItemWithImage:(id)image title:(id)title action:(SEL)action
{
  imageCopy = image;
  titleCopy = title;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke;
  v14[3] = &unk_278B7F3B0;
  v15 = imageCopy;
  v16 = titleCopy;
  selfCopy = self;
  actionCopy = action;
  v10 = titleCopy;
  v11 = imageCopy;
  v12 = MEMORY[0x23EE9A9D0](v14);
  if (isRunningOnMainQueue())
  {
    v12[2](v12);
  }

  else
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController addMenuItemWithImage:title:action:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 56));
  v3 = v2;
  if (!*(a1 + 32) || (*(a1 + 40) ? (v4 = v2 == 0) : (v4 = 1), v4))
  {
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 48) viewControllerID];
    v6 = [*(a1 + 40) copy];
    v9[1] = v6;
    v9[2] = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    [SPRemoteInterface setController:v5 key:@"#item" property:&stru_284DFE9D8 value:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addMenuItemWithImageNamed:(id)named title:(id)title action:(SEL)action
{
  namedCopy = named;
  titleCopy = title;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke;
  v14[3] = &unk_278B7F3B0;
  v15 = namedCopy;
  v16 = titleCopy;
  selfCopy = self;
  actionCopy = action;
  v10 = titleCopy;
  v11 = namedCopy;
  v12 = MEMORY[0x23EE9A9D0](v14);
  if (isRunningOnMainQueue())
  {
    v12[2](v12);
  }

  else
  {
    v13 = wk_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController addMenuItemWithImageNamed:title:action:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 56));
  v3 = v2;
  if (!*(a1 + 32) || (*(a1 + 40) ? (v4 = v2 == 0) : (v4 = 1), v4))
  {
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 48) viewControllerID];
    v6 = [*(a1 + 32) copy];
    v7 = [*(a1 + 40) copy];
    v10[1] = v7;
    v10[2] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    [SPRemoteInterface setController:v5 key:@"#item" property:&stru_284DFE9D8 value:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addMenuItemWithItemIcon:(int64_t)icon title:(id)title action:(SEL)action
{
  titleCopy = title;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke;
  v12[3] = &unk_278B7E368;
  v13 = titleCopy;
  selfCopy = self;
  actionCopy = action;
  iconCopy = icon;
  v9 = titleCopy;
  v10 = MEMORY[0x23EE9A9D0](v12);
  if (isRunningOnMainQueue())
  {
    v10[2](v10);
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController addMenuItemWithItemIcon:title:action:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 48));
  v3 = v2;
  if (*(a1 + 32))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = wk_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 40) viewControllerID];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    v7 = [*(a1 + 32) copy];
    v10[1] = v7;
    v10[2] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    [SPRemoteInterface setController:v5 key:@"#item" property:&stru_284DFE9D8 value:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearAllMenuItems
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__WKInterfaceController_clearAllMenuItems__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewControllerID];
  [SPRemoteInterface setController:v1 key:@"#item" property:&stru_284DFE9D8 value:0];
}

- (void)updateUserActivity:(id)activity userInfo:(id)info
{
  activityCopy = activity;
  infoCopy = info;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke;
  v12[3] = &unk_278B7E278;
  v12[4] = self;
  v13 = activityCopy;
  v14 = infoCopy;
  v8 = infoCopy;
  v9 = activityCopy;
  v10 = MEMORY[0x23EE9A9D0](v12);
  if (isRunningOnMainQueue())
  {
    v10[2](v10);
  }

  else
  {
    v11 = wk_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController updateUserActivity:userInfo:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke(uint64_t a1)
{
  v2 = wk_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  v5 = [*(a1 + 48) copy];
  [v3 updateUserActivity:v4 userInfo:v5 webpageURL:0];
}

- (void)updateUserActivity:(id)activity userInfo:(id)info webpageURL:(id)l
{
  activityCopy = activity;
  infoCopy = info;
  lCopy = l;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke;
  v16[3] = &unk_278B7E2C8;
  v17 = activityCopy;
  v18 = infoCopy;
  v19 = lCopy;
  selfCopy = self;
  v11 = lCopy;
  v12 = infoCopy;
  v13 = activityCopy;
  v14 = MEMORY[0x23EE9A9D0](v16);
  if (isRunningOnMainQueue())
  {
    v14[2](v14);
  }

  else
  {
    v15 = wk_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController updateUserActivity:userInfo:webpageURL:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length] && (*(a1 + 40) || *(a1 + 48)))
  {
    v7 = [*(a1 + 32) copy];
    v2 = [*(a1 + 40) copy];
    v3 = [*(a1 + 48) copy];
    [SPRemoteInterface updateUserActivity:v7 userInfo:v2 webpageURL:v3 interfaceController:*(a1 + 56)];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = wk_default_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v6)
      {
        __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_1();
      }
    }

    else if (v6)
    {
      __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_2();
    }
  }
}

- (void)invalidateUserActivity
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTitle:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushControllerWithName:context:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)reloadRootControllersWithNames:contexts:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)presentControllerWithName:context:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentControllerWithNames:contexts:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentTextInputControllerWithSuggestions:allowedInputMode:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)presentTextInputControllerWithSuggestionsForLanguage:allowedInputMode:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)presentAddPassesControllerWithPasses:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addMenuItemWithImage:title:action:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addMenuItemWithImageNamed:title:action:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addMenuItemWithItemIcon:title:action:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateUserActivity:userInfo:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateUserActivity:userInfo:webpageURL:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end