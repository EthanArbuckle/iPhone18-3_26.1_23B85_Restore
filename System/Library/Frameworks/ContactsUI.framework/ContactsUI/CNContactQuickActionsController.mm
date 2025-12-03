@interface CNContactQuickActionsController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
+ (OS_os_log)log;
+ (id)sharedDataSource;
- (BOOL)hasDefaultActionForActionType:(id)type;
- (CNContactQuickActionViewContainer)contactQuickActionViewContainer;
- (CNContactQuickActionsController)init;
- (CNContactQuickActionsController)initWithActionTypes:(id)types contactQuickActionViewContainer:(id)container;
- (CNContactQuickActionsController)initWithActionTypes:(id)types contactQuickActionViewContainer:(id)container disambiguationMenuPresentation:(id)presentation;
- (CNContactQuickActionsController)initWithActionTypes:(id)types contactQuickActionViewContainer:(id)container disambiguationMenuPresentation:(id)presentation userActionListDataSource:(id)source schedulerProvider:(id)provider userActionContext:(id)context;
- (CNContactQuickActionsControllerDelegate)delegate;
- (CNContactQuickActionsModelTrackingDelegate)modelTrackingDelegate;
- (id)allModelsObservable;
- (id)defaultTitleForActionType:(id)type;
- (id)disambiguationMenuForActionType:(id)type;
- (void)cleanUpAfterLatestActionDiscovery;
- (void)contactActionsController:(id)controller didSelectAction:(id)action;
- (void)dealloc;
- (void)disambiguationViewControllerDismissedExternally:(id)externally;
- (void)discoverActions;
- (void)executeLongPressBehaviorForActionType:(id)type;
- (void)executeTapBehaviorForActionType:(id)type shouldFallbackToDisambiguationMenu:(BOOL)menu;
- (void)performAction:(id)action;
- (void)processDiscoveredModels:(id)models;
- (void)reportStoredModel:(id)model forActionType:(id)type toQuickActionContainer:(id)container;
- (void)reportStoredModelsToQuickActionContainer;
- (void)setContact:(id)contact;
- (void)setNavigationListStyle:(id)style;
- (void)setupDisambiguationMenuForActionType:(id)type;
- (void)showDisambiguationMenuForActionType:(id)type;
- (void)storeDiscoveredModels:(id)models;
- (void)tearDownDisambiguationMenu;
- (void)userActionListDataSource:(id)source didResolveInitialActionsForActionType:(id)type contactIdentifier:(id)identifier;
- (void)userActionListDataSource:(id)source willResolveInitialActionsForActionType:(id)type contactIdentifier:(id)identifier;
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
  descriptorForRequiredKeys = [MEMORY[0x1E6996BE8] descriptorForRequiredKeys];
  v8[0] = descriptorForRequiredKeys;
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

  userActionListDataSource = [(CNContactQuickActionsController *)self userActionListDataSource];
  [userActionListDataSource unregisterDelegate:self];

  actionDiscoveryToken = [(CNContactQuickActionsController *)self actionDiscoveryToken];
  [actionDiscoveryToken cancel];

  [(CNContactQuickActionsController *)self setActionDiscoveryToken:0];
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  [(CNContactQuickActionsController *)self setActionListModelsByActionType:dictionary];
}

- (void)discoverActions
{
  v42 = *MEMORY[0x1E69E9840];
  contact = [(CNContactQuickActionsController *)self contact];

  if (contact)
  {
    userActionListDataSource = [(CNContactQuickActionsController *)self userActionListDataSource];
    contact2 = [(CNContactQuickActionsController *)self contact];
    identifier = [contact2 identifier];
    [userActionListDataSource registerDelegate:self withContactIdentifier:identifier];

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
      contact3 = [(CNContactQuickActionsController *)self contact];
      shortDebugDescription = [contact3 shortDebugDescription];
      *buf = 138412546;
      selfCopy = self;
      v40 = 2112;
      v41 = shortDebugDescription;
      _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "%@ subscribing action discovering requests for contact %@.", buf, 0x16u);
    }

    schedulerProvider = [(CNContactQuickActionsController *)self schedulerProvider];
    mainThreadScheduler = [schedulerProvider mainThreadScheduler];

    allModelsObservable = [(CNContactQuickActionsController *)self allModelsObservable];
    schedulerProvider2 = [(CNContactQuickActionsController *)self schedulerProvider];
    backgroundScheduler = [schedulerProvider2 backgroundScheduler];
    v13 = [allModelsObservable subscribeOn:backgroundScheduler];
    v14 = MEMORY[0x1E69967A0];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __50__CNContactQuickActionsController_discoverActions__block_invoke;
    v27 = &unk_1E74E4408;
    v15 = mainThreadScheduler;
    v28 = v15;
    objc_copyWeak(&v30, &location);
    v29 = &v31;
    v16 = [v14 observerWithResultBlock:&v24];
    v17 = [v13 subscribe:{v16, v24, v25, v26, v27}];
    [(CNContactQuickActionsController *)self setActionDiscoveryToken:v17];

    actionDiscoveryToken = [(CNContactQuickActionsController *)self actionDiscoveryToken];
    objc_storeWeak(v32 + 5, actionDiscoveryToken);

    objc_destroyWeak(&v30);
    _Block_object_dispose(&v31, 8);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    actionTypes = [(CNContactQuickActionsController *)self actionTypes];
    v20 = [actionTypes _cn_indexBy:*MEMORY[0x1E6996520]];
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
    actionTypes = [(CNContactQuickActionsController *)self actionTypes];
    *buf = 138412290;
    v16 = actionTypes;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "Action types: %@", buf, 0xCu);
  }

  actionTypes2 = [(CNContactQuickActionsController *)self actionTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CNContactQuickActionsController_allModelsObservable__block_invoke;
  v14[3] = &unk_1E74E6928;
  v14[4] = self;
  v5 = [actionTypes2 _cn_map:v14];

  v6 = MEMORY[0x1E6996798];
  schedulerProvider = [(CNContactQuickActionsController *)self schedulerProvider];
  v8 = [v6 merge:v5 schedulerProvider:schedulerProvider];

  v9 = [v8 scan:&__block_literal_global_45 seed:MEMORY[0x1E695E0F8]];
  schedulerProvider2 = [(CNContactQuickActionsController *)self schedulerProvider];
  v11 = [v9 throttle:schedulerProvider2 schedulerProvider:0.0];

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
  actionListModelsByActionType = [(CNContactQuickActionsController *)self actionListModelsByActionType];
  allKeys = [actionListModelsByActionType allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        actionListModelsByActionType2 = [(CNContactQuickActionsController *)self actionListModelsByActionType];
        v11 = [actionListModelsByActionType2 objectForKeyedSubscript:v9];
        contactQuickActionViewContainer = [(CNContactQuickActionsController *)self contactQuickActionViewContainer];
        [(CNContactQuickActionsController *)self reportStoredModel:v11 forActionType:v9 toQuickActionContainer:contactQuickActionViewContainer];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)userActionListDataSource:(id)source didResolveInitialActionsForActionType:(id)type contactIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  contact = [(CNContactQuickActionsController *)self contact];
  identifier = [contact identifier];
  v10 = [identifier isEqualToString:identifierCopy];

  if (v10)
  {
    delegate = [(CNContactQuickActionsController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(CNContactQuickActionsController *)self delegate];
      [delegate2 quickActionsController:self didResolveInitialActionsForActionType:typeCopy];
    }
  }
}

- (void)userActionListDataSource:(id)source willResolveInitialActionsForActionType:(id)type contactIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  contact = [(CNContactQuickActionsController *)self contact];
  identifier = [contact identifier];
  v10 = [identifier isEqualToString:identifierCopy];

  if (v10)
  {
    delegate = [(CNContactQuickActionsController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(CNContactQuickActionsController *)self delegate];
      [delegate2 quickActionsController:self willResolveInitialActionsForActionType:typeCopy];
    }
  }
}

- (void)contactActionsController:(id)controller didSelectAction:(id)action
{
  v18 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  controllerCopy = controller;
  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = actionCopy;
    _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "disambiguation menu selected action %@", &v16, 0xCu);
  }

  [(CNContactQuickActionsController *)self performAction:actionCopy];
  actionTypes = [controllerCopy actionTypes];

  firstObject = [actionTypes firstObject];

  userActionListDataSource = [(CNContactQuickActionsController *)self userActionListDataSource];
  contact = [(CNContactQuickActionsController *)self contact];
  [userActionListDataSource consumer:self didSelectItem:actionCopy forContact:contact actionType:firstObject];

  delegate = [(CNContactQuickActionsController *)self delegate];
  disambiguationMenuViewController = [(CNContactQuickActionsController *)self disambiguationMenuViewController];
  type = [actionCopy type];
  [delegate contactQuickActionsController:self dismissDisambiguationViewController:disambiguationMenuViewController forActionType:type];

  [(CNContactQuickActionsController *)self tearDownDisambiguationMenu];
}

- (id)disambiguationMenuForActionType:(id)type
{
  [(CNContactQuickActionsController *)self setupDisambiguationMenuForActionType:type];
  currentMenuElements = [(CNContactQuickActionsController *)self currentMenuElements];
  v5 = [currentMenuElements copy];

  [(CNContactQuickActionsController *)self tearDownDisambiguationMenu];

  return v5;
}

- (void)disambiguationViewControllerDismissedExternally:(id)externally
{
  externallyCopy = externally;
  disambiguationMenuViewController = [(CNContactQuickActionsController *)self disambiguationMenuViewController];

  if (disambiguationMenuViewController != externallyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:362 description:@"disambiguationViewController must be presented first in order to be dismissed"];
  }

  [(CNContactQuickActionsController *)self tearDownDisambiguationMenu];
}

- (void)tearDownDisambiguationMenu
{
  [(CNContactQuickActionsController *)self setDisambiguationMenuController:0];

  [(CNContactQuickActionsController *)self setDisambiguationMenuViewController:0];
}

- (void)setupDisambiguationMenuForActionType:(id)type
{
  v24[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = [CNContactActionsController alloc];
  contact = [(CNContactQuickActionsController *)self contact];
  userActionListDataSource = [(CNContactQuickActionsController *)self userActionListDataSource];
  v24[0] = typeCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [(CNContactActionsController *)v5 initWithContact:contact dataSource:userActionListDataSource actionTypes:v8];
  [(CNContactQuickActionsController *)self setDisambiguationMenuController:v9];

  disambiguationMenuController = [(CNContactQuickActionsController *)self disambiguationMenuController];
  [disambiguationMenuController setDelegate:self];

  LODWORD(contact) = [(CNContactQuickActionsController *)self isCarPlay];
  disambiguationMenuController2 = [(CNContactQuickActionsController *)self disambiguationMenuController];
  disambiguationMenuController4 = disambiguationMenuController2;
  if (contact)
  {
    [disambiguationMenuController2 setDisplayDefaultAppsSectionedMenus:0];

    if (![typeCopy isEqualToString:*MEMORY[0x1E695C178]])
    {
      goto LABEL_6;
    }

    disambiguationMenuController3 = [(CNContactQuickActionsController *)self disambiguationMenuController];
    [disambiguationMenuController3 setGenerateDefaultAppListItemsOnly:1];

    v14 = *MEMORY[0x1E695C130];
    disambiguationMenuController4 = [(CNContactQuickActionsController *)self disambiguationMenuController];
    [disambiguationMenuController4 setDefaultAppBundleIdentifier:v14];
  }

  else
  {
    [disambiguationMenuController2 setDisplayNonDefaultAppsMenuTitle:1];
  }

LABEL_6:
  navigationListStyle = [(CNContactQuickActionsController *)self navigationListStyle];

  if (navigationListStyle)
  {
    navigationListStyle2 = [(CNContactQuickActionsController *)self navigationListStyle];
    disambiguationMenuController5 = [(CNContactQuickActionsController *)self disambiguationMenuController];
    [disambiguationMenuController5 setNavigationListStyle:navigationListStyle2];
  }

  contactQuickActionViewContainer = [(CNContactQuickActionsController *)self contactQuickActionViewContainer];
  v19 = [contactQuickActionViewContainer viewForActionType:typeCopy];

  disambiguationMenuPresentation = [(CNContactQuickActionsController *)self disambiguationMenuPresentation];
  disambiguationMenuController6 = [(CNContactQuickActionsController *)self disambiguationMenuController];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__CNContactQuickActionsController_setupDisambiguationMenuForActionType___block_invoke;
  v23[3] = &unk_1E74E6A88;
  v23[4] = self;
  v22 = [disambiguationMenuPresentation viewControllerForPresentingActionsController:disambiguationMenuController6 fromView:v19 dismissDisambiguationMenuHandler:v23];
  [(CNContactQuickActionsController *)self setDisambiguationMenuViewController:v22];
}

- (void)showDisambiguationMenuForActionType:(id)type
{
  typeCopy = type;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "showing disambiguation menu", v11, 2u);
  }

  disambiguationMenuController = [(CNContactQuickActionsController *)self disambiguationMenuController];

  if (disambiguationMenuController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:323 description:@"disambiguation menu is already being presented"];
  }

  [(CNContactQuickActionsController *)self setupDisambiguationMenuForActionType:typeCopy];
  delegate = [(CNContactQuickActionsController *)self delegate];
  disambiguationMenuViewController = [(CNContactQuickActionsController *)self disambiguationMenuViewController];
  [delegate contactQuickActionsController:self presentDisambiguationViewController:disambiguationMenuViewController forActionType:typeCopy];
}

- (void)executeLongPressBehaviorForActionType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘actionType’ must be nonnull" userInfo:0];
    objc_exception_throw(v8);
  }

  actionTypes = [(CNContactQuickActionsController *)self actionTypes];
  v6 = [actionTypes containsObject:typeCopy];

  if ((v6 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:315 description:@"actionType must be a member of actionTypes provided to the initializer"];
  }

  [(CNContactQuickActionsController *)self showDisambiguationMenuForActionType:typeCopy];
}

- (void)performAction:(id)action
{
  v24 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = actionCopy;
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_INFO, "executing action %@", &v22, 0xCu);
  }

  contactQuickActionViewContainer = [(CNContactQuickActionsController *)self contactQuickActionViewContainer];
  traitCollection = [contactQuickActionViewContainer traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    dashboardEndpoint = [(objc_class *)getFBSOpenApplicationServiceClass() dashboardEndpoint];
    userActionContext = [(CNContactQuickActionsController *)self userActionContext];
    [userActionContext setConnectionEndpoint:dashboardEndpoint];
  }

  type = [actionCopy type];
  v12 = [type isEqualToString:*MEMORY[0x1E695C150]];

  if (v12)
  {
    contact = [(CNContactQuickActionsController *)self contact];
    selectedChannel = [contact selectedChannel];

    contact2 = [(CNContactQuickActionsController *)self contact];
    selectedChannel2 = [contact2 selectedChannel];

    if (!selectedChannel2)
    {
      contact3 = [(CNContactQuickActionsController *)self contact];
      preferredChannel = [contact3 preferredChannel];

      selectedChannel = preferredChannel;
    }

    userActionContext2 = [(CNContactQuickActionsController *)self userActionContext];
    [userActionContext2 setChannelIdentifier:selectedChannel];
  }

  userActionContext3 = [(CNContactQuickActionsController *)self userActionContext];
  v21 = [actionCopy performActionWithContext:userActionContext3];
}

- (BOOL)hasDefaultActionForActionType:(id)type
{
  typeCopy = type;
  actionListModelsByActionType = [(CNContactQuickActionsController *)self actionListModelsByActionType];
  v6 = [actionListModelsByActionType objectForKeyedSubscript:typeCopy];

  defaultAction = [v6 defaultAction];
  LOBYTE(typeCopy) = defaultAction != 0;

  return typeCopy;
}

- (void)executeTapBehaviorForActionType:(id)type shouldFallbackToDisambiguationMenu:(BOOL)menu
{
  menuCopy = menu;
  typeCopy = type;
  if (!typeCopy)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘actionType’ must be nonnull" userInfo:0];
    objc_exception_throw(v13);
  }

  actionTypes = [(CNContactQuickActionsController *)self actionTypes];
  v8 = [actionTypes containsObject:typeCopy];

  if ((v8 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:275 description:@"actionType must be a member of actionTypes provided to the initializer"];
  }

  if ([(CNContactQuickActionsController *)self hasDefaultActionForActionType:typeCopy])
  {
    actionListModelsByActionType = [(CNContactQuickActionsController *)self actionListModelsByActionType];
    v10 = [actionListModelsByActionType objectForKeyedSubscript:typeCopy];
    defaultAction = [v10 defaultAction];
    [(CNContactQuickActionsController *)self performAction:defaultAction];
  }

  else if (menuCopy)
  {
    [(CNContactQuickActionsController *)self showDisambiguationMenuForActionType:typeCopy];
  }
}

- (id)defaultTitleForActionType:(id)type
{
  typeCopy = type;
  userActionListDataSource = [(CNContactQuickActionsController *)self userActionListDataSource];
  v6 = [userActionListDataSource consumer:self localizedButtonDisplayNameForActionType:typeCopy];

  return v6;
}

- (void)reportStoredModel:(id)model forActionType:(id)type toQuickActionContainer:(id)container
{
  typeCopy = type;
  modelCopy = model;
  v12 = [container viewForActionType:typeCopy];
  LODWORD(container) = [modelCopy isEmpty];

  [v12 setEnabled:container ^ 1];
  userActionListDataSource = [(CNContactQuickActionsController *)self userActionListDataSource];
  v11 = [userActionListDataSource consumer:self localizedButtonDisplayNameForActionType:typeCopy];

  [v12 setTitle:v11];
}

- (void)storeDiscoveredModels:(id)models
{
  modelsCopy = models;
  actionListModelsByActionType = [(CNContactQuickActionsController *)self actionListModelsByActionType];
  v6 = [actionListModelsByActionType mutableCopy];

  [v6 addEntriesFromDictionary:modelsCopy];
  [(CNContactQuickActionsController *)self setActionListModelsByActionType:v6];
}

- (void)processDiscoveredModels:(id)models
{
  v15 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    contact = [(CNContactQuickActionsController *)self contact];
    shortDebugDescription = [contact shortDebugDescription];
    v11 = 138412546;
    v12 = shortDebugDescription;
    v13 = 2112;
    v14 = modelsCopy;
    _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "for contact: %@, discovered actions %@", &v11, 0x16u);
  }

  [(CNContactQuickActionsController *)self storeDiscoveredModels:modelsCopy];
  [(CNContactQuickActionsController *)self reportStoredModelsToQuickActionContainer];
  modelTrackingDelegate = [(CNContactQuickActionsController *)self modelTrackingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    modelTrackingDelegate2 = [(CNContactQuickActionsController *)self modelTrackingDelegate];
    [modelTrackingDelegate2 quickActionsControllerDidUpdateActionModels];
  }
}

- (void)setContact:(id)contact
{
  v10 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  objc_storeStrong(&self->_contact, contact);
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    identifier = [contactCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "kicking off action discovery by setting contact with identifier %@", &v8, 0xCu);
  }

  [(CNContactQuickActionsController *)self cleanUpAfterLatestActionDiscovery];
  [(CNContactQuickActionsController *)self discoverActions];
}

- (void)setNavigationListStyle:(id)style
{
  objc_storeStrong(&self->_navigationListStyle, style);
  styleCopy = style;
  disambiguationMenuController = [(CNContactQuickActionsController *)self disambiguationMenuController];
  [disambiguationMenuController setNavigationListStyle:styleCopy];
}

- (void)dealloc
{
  userActionListDataSource = [(CNContactQuickActionsController *)self userActionListDataSource];
  [userActionListDataSource unregisterDelegate:self];

  actionDiscoveryToken = [(CNContactQuickActionsController *)self actionDiscoveryToken];
  [actionDiscoveryToken cancel];

  [(CNContactQuickActionsController *)self setActionDiscoveryToken:0];
  v5.receiver = self;
  v5.super_class = CNContactQuickActionsController;
  [(CNContactQuickActionsController *)&v5 dealloc];
}

- (CNContactQuickActionsController)initWithActionTypes:(id)types contactQuickActionViewContainer:(id)container disambiguationMenuPresentation:(id)presentation userActionListDataSource:(id)source schedulerProvider:(id)provider userActionContext:(id)context
{
  typesCopy = types;
  containerCopy = container;
  presentationCopy = presentation;
  sourceCopy = source;
  obj = provider;
  providerCopy = provider;
  contextCopy = context;
  contextCopy2 = context;
  if (!typesCopy)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘actionTypes’ must be nonnull";
    goto LABEL_16;
  }

  if (!containerCopy)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘contactQuickActionViewContainer’ must be nonnull";
    goto LABEL_16;
  }

  if (!presentationCopy)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘disambiguationMenuPresentation’ must be nonnull";
    goto LABEL_16;
  }

  if (!sourceCopy)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘userActionListDataSource’ must be nonnull";
    goto LABEL_16;
  }

  if (!providerCopy)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"parameter ‘schedulerProvider’ must be nonnull";
LABEL_16:
    v31 = [v28 exceptionWithName:v29 reason:v30 userInfo:0];
    objc_exception_throw(v31);
  }

  v21 = contextCopy2;
  if (![typesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactQuickActionsController.m" lineNumber:102 description:@"actionTypes should contain at least one action type"];
  }

  v36.receiver = self;
  v36.super_class = CNContactQuickActionsController;
  v22 = [(CNContactQuickActionsController *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_actionTypes, types);
    objc_storeWeak(&v23->_contactQuickActionViewContainer, containerCopy);
    objc_storeStrong(&v23->_userActionListDataSource, source);
    objc_storeStrong(&v23->_disambiguationMenuPresentation, presentation);
    objc_storeStrong(&v23->_schedulerProvider, obj);
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    actionListModelsByActionType = v23->_actionListModelsByActionType;
    v23->_actionListModelsByActionType = dictionary;

    objc_storeStrong(&v23->_userActionContext, contextCopy);
    v26 = v23;
  }

  return v23;
}

- (CNContactQuickActionsController)initWithActionTypes:(id)types contactQuickActionViewContainer:(id)container disambiguationMenuPresentation:(id)presentation
{
  presentationCopy = presentation;
  containerCopy = container;
  typesCopy = types;
  sharedDataSource = [objc_opt_class() sharedDataSource];
  v12 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v12 defaultSchedulerProvider];

  v14 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v15 = [(CNContactQuickActionsController *)self initWithActionTypes:typesCopy contactQuickActionViewContainer:containerCopy disambiguationMenuPresentation:presentationCopy userActionListDataSource:sharedDataSource schedulerProvider:defaultSchedulerProvider userActionContext:v14];

  return v15;
}

- (CNContactQuickActionsController)initWithActionTypes:(id)types contactQuickActionViewContainer:(id)container
{
  containerCopy = container;
  typesCopy = types;
  v8 = +[CNContactQuickActionsDisambiguationMenuPresentation defaultPresentation];
  v9 = [(CNContactQuickActionsController *)self initWithActionTypes:typesCopy contactQuickActionViewContainer:containerCopy disambiguationMenuPresentation:v8];

  return v9;
}

- (CNContactQuickActionsController)init
{
  selfCopy = self;
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