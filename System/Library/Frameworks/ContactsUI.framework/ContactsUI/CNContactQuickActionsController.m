@interface CNContactQuickActionsController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
+ (OS_os_log)log;
+ (id)sharedDataSource;
- (BOOL)hasDefaultActionForActionType:(id)a3;
- (CNContactQuickActionViewContainer)contactQuickActionViewContainer;
- (CNContactQuickActionsController)init;
- (CNContactQuickActionsController)initWithActionTypes:(id)a3 contactQuickActionViewContainer:(id)a4;
- (CNContactQuickActionsController)initWithActionTypes:(id)a3 contactQuickActionViewContainer:(id)a4 disambiguationMenuPresentation:(id)a5;
- (CNContactQuickActionsController)initWithActionTypes:(id)a3 contactQuickActionViewContainer:(id)a4 disambiguationMenuPresentation:(id)a5 userActionListDataSource:(id)a6 schedulerProvider:(id)a7 userActionContext:(id)a8;
- (CNContactQuickActionsControllerDelegate)delegate;
- (CNContactQuickActionsModelTrackingDelegate)modelTrackingDelegate;
- (id)allModelsObservable;
- (id)defaultTitleForActionType:(id)a3;
- (id)disambiguationMenuForActionType:(id)a3;
- (void)cleanUpAfterLatestActionDiscovery;
- (void)contactActionsController:(id)a3 didSelectAction:(id)a4;
- (void)dealloc;
- (void)disambiguationViewControllerDismissedExternally:(id)a3;
- (void)discoverActions;
- (void)executeLongPressBehaviorForActionType:(id)a3;
- (void)executeTapBehaviorForActionType:(id)a3 shouldFallbackToDisambiguationMenu:(BOOL)a4;
- (void)performAction:(id)a3;
- (void)processDiscoveredModels:(id)a3;
- (void)reportStoredModel:(id)a3 forActionType:(id)a4 toQuickActionContainer:(id)a5;
- (void)reportStoredModelsToQuickActionContainer;
- (void)setContact:(id)a3;
- (void)setNavigationListStyle:(id)a3;
- (void)setupDisambiguationMenuForActionType:(id)a3;
- (void)showDisambiguationMenuForActionType:(id)a3;
- (void)storeDiscoveredModels:(id)a3;
- (void)tearDownDisambiguationMenu;
- (void)userActionListDataSource:(id)a3 didResolveInitialActionsForActionType:(id)a4 contactIdentifier:(id)a5;
- (void)userActionListDataSource:(id)a3 willResolveInitialActionsForActionType:(id)a4 contactIdentifier:(id)a5;
@end

@implementation CNContactQuickActionsController

+ (OS_os_log)log
{
  if (log_cn_once_token_2 != -1)
  {
    dispatch_once(&log_cn_once_token_2, &__block_literal_global_33226);
  }

  v3 = log_cn_once_object_2;

  return v3;
}

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E6996BE8] descriptorForRequiredKeys];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactQuickActionsController descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

- (CNContactQuickActionViewContainer)contactQuickActionViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contactQuickActionViewContainer);

  return WeakRetained;
}

+ (id)sharedDataSource
{
  if (sharedDataSource_cn_once_token_3 != -1)
  {
    dispatch_once(&sharedDataSource_cn_once_token_3, &__block_literal_global_36_33221);
  }

  v3 = sharedDataSource_cn_once_object_3;

  return v3;
}

- (void)cleanUpAfterLatestActionDiscovery
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "cleaning up after latest action discovery", v7, 2u);
  }

  v4 = [(CNContactQuickActionsController *)self userActionListDataSource];
  [v4 unregisterDelegate:self];

  v5 = [(CNContactQuickActionsController *)self actionDiscoveryToken];
  [v5 cancel];

  [(CNContactQuickActionsController *)self setActionDiscoveryToken:0];
  v6 = [MEMORY[0x1E695DF20] dictionary];
  [(CNContactQuickActionsController *)self setActionListModelsByActionType:v6];
}

- (void)discoverActions
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactQuickActionsController *)self contact];

  if (v3)
  {
    v4 = [(CNContactQuickActionsController *)self userActionListDataSource];
    v5 = [(CNContactQuickActionsController *)self contact];
    v6 = [v5 identifier];
    [v4 registerDelegate:self withContactIdentifier:v6];

    objc_initWeak(&location, self);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3042000000;
    v34 = __Block_byref_object_copy__33179;
    v35 = __Block_byref_object_dispose__33180;
    v36 = 0;
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(CNContactQuickActionsController *)self contact];
      v23 = [v22 shortDebugDescription];
      *buf = 138412546;
      v39 = self;
      v40 = 2112;
      v41 = v23;
      _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "%@ subscribing action discovering requests for contact %@.", buf, 0x16u);
    }

    v8 = [(CNContactQuickActionsController *)self schedulerProvider];
    v9 = [v8 mainThreadScheduler];

    v10 = [(CNContactQuickActionsController *)self allModelsObservable];
    v11 = [(CNContactQuickActionsController *)self schedulerProvider];
    v12 = [v11 backgroundScheduler];
    v13 = [v10 subscribeOn:v12];
    v14 = MEMORY[0x1E69967A0];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __50__CNContactQuickActionsController_discoverActions__block_invoke;
    v27 = &unk_1E74E4408;
    v15 = v9;
    v28 = v15;
    objc_copyWeak(&v30, &location);
    v29 = &v31;
    v16 = [v14 observerWithResultBlock:&v24];
    v17 = [v13 subscribe:{v16, v24, v25, v26, v27}];
    [(CNContactQuickActionsController *)self setActionDiscoveryToken:v17];

    v18 = [(CNContactQuickActionsController *)self actionDiscoveryToken];
    objc_storeWeak(v32 + 5, v18);

    objc_destroyWeak(&v30);
    _Block_object_dispose(&v31, 8);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = [(CNContactQuickActionsController *)self actionTypes];
    v20 = [v19 _cn_indexBy:*MEMORY[0x1E6996520]];
    v21 = [v20 _cn_map:&__block_literal_global_64];
    [(CNContactQuickActionsController *)self setActionListModelsByActionType:v21];

    [(CNContactQuickActionsController *)self reportStoredModelsToQuickActionContainer];
  }
}

- (id)allModelsObservable
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(CNContactQuickActionsController *)self actionTypes];
    *buf = 138412290;
    v16 = v13;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "Action types: %@", buf, 0xCu);
  }

  v4 = [(CNContactQuickActionsController *)self actionTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CNContactQuickActionsController_allModelsObservable__block_invoke;
  v14[3] = &unk_1E74E6928;
  v14[4] = self;
  v5 = [v4 _cn_map:v14];

  v6 = MEMORY[0x1E6996798];
  v7 = [(CNContactQuickActionsController *)self schedulerProvider];
  v8 = [v6 merge:v5 schedulerProvider:v7];

  v9 = [v8 scan:&__block_literal_global_45 seed:MEMORY[0x1E695E0F8]];
  v10 = [(CNContactQuickActionsController *)self schedulerProvider];
  v11 = [v9 throttle:v10 schedulerProvider:0.0];

  return v11;
}

id __54__CNContactQuickActionsController_allModelsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userActionListDataSource];
  v5 = [*(a1 + 32) contact];
  v6 = [v4 consumer:0 actionModelsForContact:v5 actionType:v3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CNContactQuickActionsController_allModelsObservable__block_invoke_2;
  v10[3] = &unk_1E74E4430;
  v11 = v3;
  v7 = v3;
  v8 = [v6 map:v10];

  return v8;
}

id __54__CNContactQuickActionsController_allModelsObservable__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionaryWithDictionary:a2];
  v7 = [v5 second];
  v8 = [v5 first];

  [v6 setObject:v7 forKeyedSubscript:v8];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];

  return v9;
}

void __50__CNContactQuickActionsController_discoverActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CNContactQuickActionsController_discoverActions__block_invoke_2;
  v6[3] = &unk_1E74E69C0;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  v5 = v3;
  v7 = v5;
  [v4 performBlock:v6];

  objc_destroyWeak(&v9);
}

void __50__CNContactQuickActionsController_discoverActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (v2)
  {
    v3 = [WeakRetained actionDiscoveryToken];

    if (v3 == v2)
    {
      [WeakRetained processDiscoveredModels:*(a1 + 32)];
    }
  }
}

- (void)reportStoredModelsToQuickActionContainer
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(CNContactQuickActionsController *)self actionListModelsByActionType];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(CNContactQuickActionsController *)self actionListModelsByActionType];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [(CNContactQuickActionsController *)self contactQuickActionViewContainer];
        [(CNContactQuickActionsController *)self reportStoredModel:v11 forActionType:v9 toQuickActionContainer:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (CNContactQuickActionsModelTrackingDelegate)modelTrackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_modelTrackingDelegate);

  return WeakRetained;
}

- (CNContactQuickActionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userActionListDataSource:(id)a3 didResolveInitialActionsForActionType:(id)a4 contactIdentifier:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(CNContactQuickActionsController *)self contact];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:v7];

  if (v10)
  {
    v11 = [(CNContactQuickActionsController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CNContactQuickActionsController *)self delegate];
      [v13 quickActionsController:self didResolveInitialActionsForActionType:v14];
    }
  }
}

- (void)userActionListDataSource:(id)a3 willResolveInitialActionsForActionType:(id)a4 contactIdentifier:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(CNContactQuickActionsController *)self contact];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:v7];

  if (v10)
  {
    v11 = [(CNContactQuickActionsController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CNContactQuickActionsController *)self delegate];
      [v13 quickActionsController:self willResolveInitialActionsForActionType:v14];
    }
  }
}

- (void)contactActionsController:(id)a3 didSelectAction:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "disambiguation menu selected action %@", &v16, 0xCu);
  }

  [(CNContactQuickActionsController *)self performAction:v6];
  v9 = [v7 actionTypes];

  v10 = [v9 firstObject];

  v11 = [(CNContactQuickActionsController *)self userActionListDataSource];
  v12 = [(CNContactQuickActionsController *)self contact];
  [v11 consumer:self didSelectItem:v6 forContact:v12 actionType:v10];

  v13 = [(CNContactQuickActionsController *)self delegate];
  v14 = [(CNContactQuickActionsController *)self disambiguationMenuViewController];
  v15 = [v6 type];
  [v13 contactQuickActionsController:self dismissDisambiguationViewController:v14 forActionType:v15];

  [(CNContactQuickActionsController *)self tearDownDisambiguationMenu];
}

- (id)disambiguationMenuForActionType:(id)a3
{
  [(CNContactQuickActionsController *)self setupDisambiguationMenuForActionType:a3];
  v4 = [(CNContactQuickActionsController *)self currentMenuElements];
  v5 = [v4 copy];

  [(CNContactQuickActionsController *)self tearDownDisambiguationMenu];

  return v5;
}

- (void)disambiguationViewControllerDismissedExternally:(id)a3
{
  v5 = a3;
  v6 = [(CNContactQuickActionsController *)self disambiguationMenuViewController];

  if (v6 != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:362 description:@"disambiguationViewController must be presented first in order to be dismissed"];
  }

  [(CNContactQuickActionsController *)self tearDownDisambiguationMenu];
}

- (void)tearDownDisambiguationMenu
{
  [(CNContactQuickActionsController *)self setDisambiguationMenuController:0];

  [(CNContactQuickActionsController *)self setDisambiguationMenuViewController:0];
}

- (void)setupDisambiguationMenuForActionType:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [CNContactActionsController alloc];
  v6 = [(CNContactQuickActionsController *)self contact];
  v7 = [(CNContactQuickActionsController *)self userActionListDataSource];
  v24[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [(CNContactActionsController *)v5 initWithContact:v6 dataSource:v7 actionTypes:v8];
  [(CNContactQuickActionsController *)self setDisambiguationMenuController:v9];

  v10 = [(CNContactQuickActionsController *)self disambiguationMenuController];
  [v10 setDelegate:self];

  LODWORD(v6) = [(CNContactQuickActionsController *)self isCarPlay];
  v11 = [(CNContactQuickActionsController *)self disambiguationMenuController];
  v12 = v11;
  if (v6)
  {
    [v11 setDisplayDefaultAppsSectionedMenus:0];

    if (![v4 isEqualToString:*MEMORY[0x1E695C178]])
    {
      goto LABEL_6;
    }

    v13 = [(CNContactQuickActionsController *)self disambiguationMenuController];
    [v13 setGenerateDefaultAppListItemsOnly:1];

    v14 = *MEMORY[0x1E695C130];
    v12 = [(CNContactQuickActionsController *)self disambiguationMenuController];
    [v12 setDefaultAppBundleIdentifier:v14];
  }

  else
  {
    [v11 setDisplayNonDefaultAppsMenuTitle:1];
  }

LABEL_6:
  v15 = [(CNContactQuickActionsController *)self navigationListStyle];

  if (v15)
  {
    v16 = [(CNContactQuickActionsController *)self navigationListStyle];
    v17 = [(CNContactQuickActionsController *)self disambiguationMenuController];
    [v17 setNavigationListStyle:v16];
  }

  v18 = [(CNContactQuickActionsController *)self contactQuickActionViewContainer];
  v19 = [v18 viewForActionType:v4];

  v20 = [(CNContactQuickActionsController *)self disambiguationMenuPresentation];
  v21 = [(CNContactQuickActionsController *)self disambiguationMenuController];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__CNContactQuickActionsController_setupDisambiguationMenuForActionType___block_invoke;
  v23[3] = &unk_1E74E6A88;
  v23[4] = self;
  v22 = [v20 viewControllerForPresentingActionsController:v21 fromView:v19 dismissDisambiguationMenuHandler:v23];
  [(CNContactQuickActionsController *)self setDisambiguationMenuViewController:v22];
}

- (void)showDisambiguationMenuForActionType:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "showing disambiguation menu", v11, 2u);
  }

  v7 = [(CNContactQuickActionsController *)self disambiguationMenuController];

  if (v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:323 description:@"disambiguation menu is already being presented"];
  }

  [(CNContactQuickActionsController *)self setupDisambiguationMenuForActionType:v5];
  v8 = [(CNContactQuickActionsController *)self delegate];
  v9 = [(CNContactQuickActionsController *)self disambiguationMenuViewController];
  [v8 contactQuickActionsController:self presentDisambiguationViewController:v9 forActionType:v5];
}

- (void)executeLongPressBehaviorForActionType:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘actionType’ must be nonnull" userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(CNContactQuickActionsController *)self actionTypes];
  v6 = [v5 containsObject:v9];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:315 description:@"actionType must be a member of actionTypes provided to the initializer"];
  }

  [(CNContactQuickActionsController *)self showDisambiguationMenuForActionType:v9];
}

- (void)performAction:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = v4;
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "executing action %@", &v22, 0xCu);
  }

  v6 = [(CNContactQuickActionsController *)self contactQuickActionViewContainer];
  v7 = [v6 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 3)
  {
    v9 = [(objc_class *)getFBSOpenApplicationServiceClass() dashboardEndpoint];
    v10 = [(CNContactQuickActionsController *)self userActionContext];
    [v10 setConnectionEndpoint:v9];
  }

  v11 = [v4 type];
  v12 = [v11 isEqualToString:*MEMORY[0x1E695C150]];

  if (v12)
  {
    v13 = [(CNContactQuickActionsController *)self contact];
    v14 = [v13 selectedChannel];

    v15 = [(CNContactQuickActionsController *)self contact];
    v16 = [v15 selectedChannel];

    if (!v16)
    {
      v17 = [(CNContactQuickActionsController *)self contact];
      v18 = [v17 preferredChannel];

      v14 = v18;
    }

    v19 = [(CNContactQuickActionsController *)self userActionContext];
    [v19 setChannelIdentifier:v14];
  }

  v20 = [(CNContactQuickActionsController *)self userActionContext];
  v21 = [v4 performActionWithContext:v20];
}

- (BOOL)hasDefaultActionForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CNContactQuickActionsController *)self actionListModelsByActionType];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 defaultAction];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

- (void)executeTapBehaviorForActionType:(id)a3 shouldFallbackToDisambiguationMenu:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  if (!v14)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘actionType’ must be nonnull" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = [(CNContactQuickActionsController *)self actionTypes];
  v8 = [v7 containsObject:v14];

  if ((v8 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:275 description:@"actionType must be a member of actionTypes provided to the initializer"];
  }

  if ([(CNContactQuickActionsController *)self hasDefaultActionForActionType:v14])
  {
    v9 = [(CNContactQuickActionsController *)self actionListModelsByActionType];
    v10 = [v9 objectForKeyedSubscript:v14];
    v11 = [v10 defaultAction];
    [(CNContactQuickActionsController *)self performAction:v11];
  }

  else if (v4)
  {
    [(CNContactQuickActionsController *)self showDisambiguationMenuForActionType:v14];
  }
}

- (id)defaultTitleForActionType:(id)a3
{
  v4 = a3;
  v5 = [(CNContactQuickActionsController *)self userActionListDataSource];
  v6 = [v5 consumer:self localizedButtonDisplayNameForActionType:v4];

  return v6;
}

- (void)reportStoredModel:(id)a3 forActionType:(id)a4 toQuickActionContainer:(id)a5
{
  v8 = a4;
  v9 = a3;
  v12 = [a5 viewForActionType:v8];
  LODWORD(a5) = [v9 isEmpty];

  [v12 setEnabled:a5 ^ 1];
  v10 = [(CNContactQuickActionsController *)self userActionListDataSource];
  v11 = [v10 consumer:self localizedButtonDisplayNameForActionType:v8];

  [v12 setTitle:v11];
}

- (void)storeDiscoveredModels:(id)a3
{
  v4 = a3;
  v5 = [(CNContactQuickActionsController *)self actionListModelsByActionType];
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  [(CNContactQuickActionsController *)self setActionListModelsByActionType:v6];
}

- (void)processDiscoveredModels:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(CNContactQuickActionsController *)self contact];
    v10 = [v9 shortDebugDescription];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v4;
    _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "for contact: %@, discovered actions %@", &v11, 0x16u);
  }

  [(CNContactQuickActionsController *)self storeDiscoveredModels:v4];
  [(CNContactQuickActionsController *)self reportStoredModelsToQuickActionContainer];
  v6 = [(CNContactQuickActionsController *)self modelTrackingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactQuickActionsController *)self modelTrackingDelegate];
    [v8 quickActionsControllerDidUpdateActionModels];
  }
}

- (void)setContact:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_contact, a3);
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 identifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "kicking off action discovery by setting contact with identifier %@", &v8, 0xCu);
  }

  [(CNContactQuickActionsController *)self cleanUpAfterLatestActionDiscovery];
  [(CNContactQuickActionsController *)self discoverActions];
}

- (void)setNavigationListStyle:(id)a3
{
  objc_storeStrong(&self->_navigationListStyle, a3);
  v5 = a3;
  v6 = [(CNContactQuickActionsController *)self disambiguationMenuController];
  [v6 setNavigationListStyle:v5];
}

- (void)dealloc
{
  v3 = [(CNContactQuickActionsController *)self userActionListDataSource];
  [v3 unregisterDelegate:self];

  v4 = [(CNContactQuickActionsController *)self actionDiscoveryToken];
  [v4 cancel];

  [(CNContactQuickActionsController *)self setActionDiscoveryToken:0];
  v5.receiver = self;
  v5.super_class = CNContactQuickActionsController;
  [(CNContactQuickActionsController *)&v5 dealloc];
}

- (CNContactQuickActionsController)initWithActionTypes:(id)a3 contactQuickActionViewContainer:(id)a4 disambiguationMenuPresentation:(id)a5 userActionListDataSource:(id)a6 schedulerProvider:(id)a7 userActionContext:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  obj = a7;
  v19 = a7;
  v35 = a8;
  v20 = a8;
  if (!v15)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘actionTypes’ must be nonnull";
    goto LABEL_16;
  }

  if (!v16)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘contactQuickActionViewContainer’ must be nonnull";
    goto LABEL_16;
  }

  if (!v17)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘disambiguationMenuPresentation’ must be nonnull";
    goto LABEL_16;
  }

  if (!v18)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘userActionListDataSource’ must be nonnull";
    goto LABEL_16;
  }

  if (!v19)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘schedulerProvider’ must be nonnull";
LABEL_16:
    v31 = [v28 exceptionWithName:v29 reason:v30 userInfo:0];
    objc_exception_throw(v31);
  }

  v21 = v20;
  if (![v15 count])
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:102 description:@"actionTypes should contain at least one action type"];
  }

  v36.receiver = self;
  v36.super_class = CNContactQuickActionsController;
  v22 = [(CNContactQuickActionsController *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_actionTypes, a3);
    objc_storeWeak(&v23->_contactQuickActionViewContainer, v16);
    objc_storeStrong(&v23->_userActionListDataSource, a6);
    objc_storeStrong(&v23->_disambiguationMenuPresentation, a5);
    objc_storeStrong(&v23->_schedulerProvider, obj);
    v24 = [MEMORY[0x1E695DF20] dictionary];
    actionListModelsByActionType = v23->_actionListModelsByActionType;
    v23->_actionListModelsByActionType = v24;

    objc_storeStrong(&v23->_userActionContext, v35);
    v26 = v23;
  }

  return v23;
}

- (CNContactQuickActionsController)initWithActionTypes:(id)a3 contactQuickActionViewContainer:(id)a4 disambiguationMenuPresentation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() sharedDataSource];
  v12 = +[CNUIContactsEnvironment currentEnvironment];
  v13 = [v12 defaultSchedulerProvider];

  v14 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v15 = [(CNContactQuickActionsController *)self initWithActionTypes:v10 contactQuickActionViewContainer:v9 disambiguationMenuPresentation:v8 userActionListDataSource:v11 schedulerProvider:v13 userActionContext:v14];

  return v15;
}

- (CNContactQuickActionsController)initWithActionTypes:(id)a3 contactQuickActionViewContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNContactQuickActionsDisambiguationMenuPresentation defaultPresentation];
  v9 = [(CNContactQuickActionsController *)self initWithActionTypes:v7 contactQuickActionViewContainer:v6 disambiguationMenuPresentation:v8];

  return v9;
}

- (CNContactQuickActionsController)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

void __51__CNContactQuickActionsController_sharedDataSource__block_invoke()
{
  v0 = +[CNUIContactsEnvironment currentEnvironment];
  v1 = [v0 actionDiscoveringEnvironment];

  v2 = [objc_alloc(MEMORY[0x1E6996BE8]) initWithDiscoveringEnvironment:v1];
  [v2 setTracksChanges:1];

  v3 = sharedDataSource_cn_once_object_3;
  sharedDataSource_cn_once_object_3 = v2;
}

uint64_t __38__CNContactQuickActionsController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "quick-actions");
  v1 = log_cn_once_object_2;
  log_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end