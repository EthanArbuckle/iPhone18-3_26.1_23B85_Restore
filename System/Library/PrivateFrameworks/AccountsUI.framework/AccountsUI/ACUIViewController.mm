@interface ACUIViewController
+ (id)acuiAccountStore;
+ (id)guestUserModeContentUnavailableConfiguration:(id)configuration;
- (ACUIAccountOperationsHelper)accountOperationsHelper;
- (ACUIViewController)init;
- (ACUIViewControllerAccountChangeObserver)accountChangeObserver;
- (BOOL)isPresentedAsModalSheet;
- (id)_actionSheetWithButtons:(id)buttons title:(id)title destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context;
- (id)_alertViewWithButtons:(id)buttons title:(id)title message:(id)message cancelButtonIndex:(int64_t)index context:(id)context;
- (id)_effectiveParentController;
- (id)operationsHelper:(id)helper desiredDataclassActionFromPicker:(id)picker;
- (id)showAlertViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context completion:(id)completion;
- (id)showAlertViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive context:(id)context completion:(id)completion;
- (id)showConfirmationViewForDeletingAccount:(id)account context:(id)context completion:(id)completion;
- (id)showConfirmationViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context completion:(id)completion;
- (id)showConfirmationViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context forceAlert:(BOOL)alert completion:(id)self0;
- (id)showConfirmationViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive context:(id)context completion:(id)completion;
- (void)actionSheet:(id)sheet didDismissWithButtonIndex:(int64_t)index;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)cancelButtonTapped:(id)tapped;
- (void)confirmationView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)doneButtonTapped:(id)tapped;
- (void)hideActivityInProgressUI;
- (void)hideActivityInProgressUIWithDelay:(double)delay;
- (void)operationsHelper:(id)helper didRemoveAccount:(id)account withSuccess:(BOOL)success error:(id)error;
- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error;
- (void)operationsHelper:(id)helper willRemoveAccount:(id)account;
- (void)operationsHelper:(id)helper willSaveAccount:(id)account;
- (void)reloadAllParentSpecifiers;
- (void)reloadAllParentSpecifiersAnimated:(BOOL)animated;
- (void)reloadParentSpecifier;
- (void)removeParentSpecifier;
- (void)setCellsChecked:(BOOL)checked;
- (void)setTaskCompletionAssertionEnabled:(BOOL)enabled;
- (void)showActivityInProgressUIWithMessage:(id)message;
- (void)showConfirmationForDeletingAccount:(id)account completion:(id)completion;
- (void)showConfirmationWithActions:(id)actions title:(id)title message:(id)message;
- (void)showConfirmationWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive completion:(id)completion;
- (void)startValidationWithPrompt:(id)prompt;
- (void)startValidationWithPrompt:(id)prompt userInteraction:(BOOL)interaction;
- (void)stopValidationWithPrompt:(id)prompt showButtons:(BOOL)buttons;
- (void)updateValidationPrompt:(id)prompt;
- (void)viewDidLoad;
@end

@implementation ACUIViewController

- (ACUIViewController)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = ACUIViewController;
  v4 = [(ACUIViewController *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    v7->_validationInProgress = 0;
    v7->_addedToTaskList = 0;
    v7->_activityInProgress = 0;
  }

  v3 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(ACUIViewController *)self hideActivityInProgressUI];
  v2.receiver = selfCopy;
  v2.super_class = ACUIViewController;
  [(ACUIViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v17 = a2;
  v16.receiver = self;
  v16.super_class = ACUIViewController;
  [(ACUIViewController *)&v16 viewDidLoad];
  if (!selfCopy->_cancelButton)
  {
    v13 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v15 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
    v2 = [v13 initWithTitle:? style:? target:? action:?];
    cancelButton = selfCopy->_cancelButton;
    selfCopy->_cancelButton = v2;
    MEMORY[0x277D82BD8](cancelButton);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
  }

  if (!selfCopy->_doneButton)
  {
    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:@"DONE" value:&stru_2850054A0 table:@"Localizable"];
    v4 = [v10 initWithTitle:? style:? target:? action:?];
    doneButton = selfCopy->_doneButton;
    selfCopy->_doneButton = v4;
    MEMORY[0x277D82BD8](doneButton);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  v6 = selfCopy->_cancelButton;
  navigationItem = [(ACUIViewController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem:v6];
  MEMORY[0x277D82BD8](navigationItem);
  v8 = selfCopy->_doneButton;
  navigationItem2 = [(ACUIViewController *)selfCopy navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];
  MEMORY[0x277D82BD8](navigationItem2);
}

+ (id)guestUserModeContentUnavailableConfiguration:(id)configuration
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.dashed"];
  [emptyConfiguration setImage:?];
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D755D0];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:28.0];
  v12 = [v10 configurationWithPointSize:?];
  imageProperties = [emptyConfiguration imageProperties];
  [imageProperties setPreferredSymbolConfiguration:v12];
  MEMORY[0x277D82BD8](imageProperties);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](defaultMetrics);
  defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics2 scaledValueForValue:12.0];
  [emptyConfiguration setImageToTextPadding:?];
  MEMORY[0x277D82BD8](defaultMetrics2);
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v16 localizedStringForKey:@"CONTENT_UNAVAILABLE_SHARING_MODE_TEXT" value:? table:?];
  [emptyConfiguration setText:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = MEMORY[0x277D74300];
  defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics3 scaledValueForValue:22.0];
  v3 = *MEMORY[0x277D743F8];
  v19 = [v17 systemFontOfSize:? weight:?];
  textProperties = [emptyConfiguration textProperties];
  [textProperties setFont:v19];
  MEMORY[0x277D82BD8](textProperties);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](defaultMetrics3);
  labelColor = [MEMORY[0x277D75348] labelColor];
  textProperties2 = [emptyConfiguration textProperties];
  [textProperties2 setColor:labelColor];
  MEMORY[0x277D82BD8](textProperties2);
  MEMORY[0x277D82BD8](labelColor);
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v24 localizedStringForKey:@"CONTENT_UNAVAILABLE_SHARING_MODE_SECONDARY_TEXT" value:&stru_2850054A0 table:@"Localizable"];
  [emptyConfiguration setSecondaryText:?];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  [emptyConfiguration directionalLayoutMargins];
  [location[0] safeAreaInsets];
  [location[0] safeAreaInsets];
  [location[0] safeAreaInsets];
  [location[0] safeAreaInsets];
  NSDirectionalEdgeInsetsMake();
  [emptyConfiguration setDirectionalLayoutMargins:{v4, v5, v6, v7}];
  v25 = MEMORY[0x277D82BE0](emptyConfiguration);
  objc_storeStrong(&emptyConfiguration, 0);
  objc_storeStrong(location, 0);

  return v25;
}

- (BOOL)isPresentedAsModalSheet
{
  parentController = [(ACUIViewController *)self parentController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](parentController);
  return isKindOfClass & 1;
}

- (void)dismissAnimated:(BOOL)animated
{
  if ([(ACUIViewController *)self isPresentedAsModalSheet])
  {
    navigationController = [(ACUIViewController *)self navigationController];
    [navigationController dismissViewControllerAnimated:animated completion:0];
    MEMORY[0x277D82BD8](navigationController);
  }

  else
  {
    traitCollection = [(ACUIViewController *)self traitCollection];
    v7 = [ACUIStatefulNavigation acui_statefulNavigation:?];
    MEMORY[0x277D82BD8](traitCollection);
    if (v7)
    {
      traitCollection2 = [(ACUIViewController *)self traitCollection];
      [ACUIStatefulNavigation acui_popLastItemFromStack:?];
      MEMORY[0x277D82BD8](traitCollection2);
    }

    else
    {
      navigationController2 = [(ACUIViewController *)self navigationController];
      v3 = [navigationController2 popViewControllerAnimated:animated];
      MEMORY[0x277D82BD8](navigationController2);
    }
  }
}

- (void)cancelButtonTapped:(id)tapped
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, tapped);
  oslog = _ACUILogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v5 = type;
    v3 = selfCopy;
    v6 = NSStringFromSelector(v11);
    v7 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_66(v13, "[ACUIViewController cancelButtonTapped:]", 152, v3, v7, location);
    _os_log_impl(&dword_23DC86000, log, v5, "%s (%d) @%{public}@ %{public}@: %{public}@", v13, 0x30u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)doneButtonTapped:(id)tapped
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, tapped);
  oslog = _ACUILogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v5 = type;
    v3 = selfCopy;
    v6 = NSStringFromSelector(v11);
    v7 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_5_8_32_4_0_8_66_8_66_8_66(v13, "[ACUIViewController doneButtonTapped:]", 157, v3, v7, location);
    _os_log_impl(&dword_23DC86000, log, v5, "%s (%d) @%{public}@ %{public}@: %{public}@", v13, 0x30u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)showConfirmationWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v31 = 0;
  objc_storeStrong(&v31, title);
  v30 = 0;
  objc_storeStrong(&v30, message);
  destructiveCopy = destructive;
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(location[0], "count")}];
  for (i = 0; ; ++i)
  {
    v12 = i;
    if (v12 >= [location[0] count])
    {
      break;
    }

    v25 = 0;
    v11 = i;
    if (v11 == [location[0] count] - 1)
    {
      v25 = 1;
    }

    else if (destructiveCopy)
    {
      v10 = i;
      if (v10 == [location[0] count] - 2)
      {
        v25 = 2;
      }
    }

    v8 = MEMORY[0x277D750F8];
    v9 = [location[0] objectAtIndexedSubscript:i];
    v7 = v25;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __87__ACUIViewController_showConfirmationWithButtons_title_message_destructive_completion___block_invoke;
    v21 = &unk_278BFA450;
    v22 = MEMORY[0x277D82BE0](v28);
    v23 = i;
    v24 = [v8 actionWithTitle:v9 style:v7 handler:&v17];
    MEMORY[0x277D82BD8](v9);
    [v27 addObject:v24];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v22, 0);
  }

  [(ACUIViewController *)selfCopy showConfirmationWithActions:v27 title:v31 message:v30];
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void __87__ACUIViewController_showConfirmationWithButtons_title_message_destructive_completion___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)showConfirmationWithActions:(id)actions title:(id)title message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, actions);
  v23 = 0;
  objc_storeStrong(&v23, title);
  v22 = 0;
  objc_storeStrong(&v22, message);
  v13 = MEMORY[0x277D75110];
  v14 = v23;
  v15 = v22;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v26 = userInterfaceIdiom;
  v18 = 1;
  if (userInterfaceIdiom != 1)
  {
    v18 = v26 == 5;
  }

  v21 = [v13 alertControllerWithTitle:v14 message:v15 preferredStyle:v18];
  memset(__b, 0, sizeof(__b));
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = [v9 countByEnumeratingWithState:__b objects:v27 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(v9);
      }

      v20 = *(__b[1] + 8 * v7);
      [v21 addAction:v20];
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [v9 countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v9);
  [(ACUIViewController *)selfCopy presentViewController:v21 animated:1 completion:?];
  [(ACUIViewController *)selfCopy setTaskCompletionAssertionEnabled:0];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)showConfirmationForDeletingAccount:(id)account completion:(id)completion
{
  v24[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  enabledDataclasses = [location[0] enabledDataclasses];
  allObjects = [enabledDataclasses allObjects];
  MEMORY[0x277D82BD8](enabledDataclasses);
  v6 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"DELETE_ACCOUNT_WARNING_FORMAT" value:? table:?];
  v7 = [ACUILocalization localizedTextForDataclasses:allObjects usedAtBeginningOfSentence:0 forAccount:location[0]];
  v19 = [v6 stringWithFormat:v8, v7];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v13 localizedStringForKey:? value:? table:?];
  v24[0] = v12;
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
  v24[1] = v10;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v15 = selfCopy;
  v14 = v18;
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v17 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
  [ACUIViewController showConfirmationWithButtons:v15 title:"showConfirmationWithButtons:title:message:destructive:completion:" message:v14 destructive:? completion:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&allObjects, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)showConfirmationViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context forceAlert:(BOOL)alert completion:(id)self0
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v39 = 0;
  objc_storeStrong(&v39, title);
  v38 = 0;
  objc_storeStrong(&v38, message);
  destructiveCopy = destructive;
  indexCopy = index;
  v35 = 0;
  objc_storeStrong(&v35, context);
  alertCopy = alert;
  v33 = 0;
  objc_storeStrong(&v33, completion);
  if (selfCopy->_confirmationViewCompletion)
  {
    v32 = _ACUILogSystem();
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v45, "[ACUIViewController showConfirmationViewWithButtons:title:message:destructive:cancelButtonIndex:context:forceAlert:completion:]", 247);
      _os_log_error_impl(&dword_23DC86000, v32, v31, "%s (%d) Not showing confirmation view because another confirmation view's completion handler is still pending.", v45, 0x12u);
    }

    objc_storeStrong(&v32, 0);
    v42 = 0;
    v30 = 1;
  }

  else
  {
    v29 = _ACUILogSystem();
    v28 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_4_0(v44, "[ACUIViewController showConfirmationViewWithButtons:title:message:destructive:cancelButtonIndex:context:forceAlert:completion:]", 251);
      _os_log_debug_impl(&dword_23DC86000, v29, v28, "%s (%d) Setting confirmation view completion handler.", v44, 0x12u);
    }

    objc_storeStrong(&v29, 0);
    v10 = MEMORY[0x23EEFC830](v33);
    confirmationViewCompletion = selfCopy->_confirmationViewCompletion;
    selfCopy->_confirmationViewCompletion = v10;
    MEMORY[0x277D82BD8](confirmationViewCompletion);
    v27 = 0;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    MEMORY[0x277D82BD8](currentDevice);
    v43 = userInterfaceIdiom;
    v21 = 1;
    if (userInterfaceIdiom != 1)
    {
      v21 = v43 == 5;
    }

    if (v21 || alertCopy)
    {
      v12 = [(ACUIViewController *)selfCopy _alertViewWithButtons:location[0] title:v39 message:v38 cancelButtonIndex:indexCopy context:v35];
      v13 = v27;
      v27 = v12;
      MEMORY[0x277D82BD8](v13);
      [v27 show];
    }

    else
    {
      v14 = [(ACUIViewController *)selfCopy _actionSheetWithButtons:location[0] title:v38 destructive:destructiveCopy cancelButtonIndex:indexCopy context:v35];
      v15 = v27;
      v27 = v14;
      MEMORY[0x277D82BD8](v15);
      view = [(ACUIViewController *)selfCopy view];
      [v27 showInView:?];
      MEMORY[0x277D82BD8](view);
    }

    [(ACUIViewController *)selfCopy setTaskCompletionAssertionEnabled:0];
    v42 = MEMORY[0x277D82BE0](v27);
    v30 = 1;
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v16 = v42;

  return v16;
}

- (id)showConfirmationViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v22 = 0;
  objc_storeStrong(&v22, title);
  v21 = 0;
  objc_storeStrong(&v21, message);
  destructiveCopy = destructive;
  indexCopy = index;
  v18 = 0;
  objc_storeStrong(&v18, context);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  LOBYTE(v10) = 0;
  v16 = [(ACUIViewController *)selfCopy showConfirmationViewWithButtons:location[0] title:v22 message:v21 destructive:destructiveCopy cancelButtonIndex:indexCopy context:v18 forceAlert:v10 completion:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v16;
}

- (id)showConfirmationViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v39 = 0;
  objc_storeStrong(&v39, title);
  v38 = 0;
  objc_storeStrong(&v38, message);
  destructiveCopy = destructive;
  v36 = 0;
  objc_storeStrong(&v36, context);
  v35 = 0;
  objc_storeStrong(&v35, completion);
  v34 = [location[0] count] - 1;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v42 = userInterfaceIdiom;
  v27 = 1;
  if (userInterfaceIdiom != 1)
  {
    v27 = v42 == 5;
  }

  if (v27 && [location[0] count] == 2 && !destructiveCopy)
  {
    reverseObjectEnumerator = [location[0] reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v9 = location[0];
    location[0] = allObjects;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](reverseObjectEnumerator);
    v34 = 0;
  }

  v17 = selfCopy;
  v11 = location[0];
  v12 = v39;
  v13 = v38;
  v14 = destructiveCopy;
  v15 = v34;
  v16 = v36;
  v28 = MEMORY[0x277D85DD0];
  v29 = -1073741824;
  v30 = 0;
  v31 = __99__ACUIViewController_showConfirmationViewWithButtons_title_message_destructive_context_completion___block_invoke;
  v32 = &unk_278BFA478;
  v33 = MEMORY[0x277D82BE0](v35);
  v18 = [(ACUIViewController *)v17 showConfirmationViewWithButtons:v11 title:v12 message:v13 destructive:v14 cancelButtonIndex:v15 context:v16 completion:&v28];
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);

  return v18;
}

void __99__ACUIViewController_showConfirmationViewWithButtons_title_message_destructive_context_completion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

- (id)showAlertViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v22 = 0;
  objc_storeStrong(&v22, title);
  v21 = 0;
  objc_storeStrong(&v21, message);
  destructiveCopy = destructive;
  indexCopy = index;
  v18 = 0;
  objc_storeStrong(&v18, context);
  v17 = 0;
  objc_storeStrong(&v17, completion);
  LOBYTE(v10) = 1;
  v16 = [(ACUIViewController *)selfCopy showConfirmationViewWithButtons:location[0] title:v22 message:v21 destructive:destructiveCopy cancelButtonIndex:indexCopy context:v18 forceAlert:v10 completion:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v16;
}

- (id)showAlertViewWithButtons:(id)buttons title:(id)title message:(id)message destructive:(BOOL)destructive context:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v23 = 0;
  objc_storeStrong(&v23, title);
  v22 = 0;
  objc_storeStrong(&v22, message);
  destructiveCopy = destructive;
  v20 = 0;
  objc_storeStrong(&v20, context);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = [location[0] count] - 1;
  if ([location[0] count] == 2 && !destructiveCopy)
  {
    reverseObjectEnumerator = [location[0] reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v9 = location[0];
    location[0] = allObjects;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](reverseObjectEnumerator);
    v18 = 0;
  }

  v11 = [(ACUIViewController *)selfCopy showAlertViewWithButtons:location[0] title:v23 message:v22 destructive:destructiveCopy cancelButtonIndex:v18 context:v20 completion:v19];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)_alertViewWithButtons:(id)buttons title:(id)title message:(id)message cancelButtonIndex:(int64_t)index context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v25 = 0;
  objc_storeStrong(&v25, title);
  v24 = 0;
  objc_storeStrong(&v24, message);
  indexCopy = index;
  v22 = 0;
  objc_storeStrong(&v22, context);
  v21 = objc_alloc_init(MEMORY[0x277D75118]);
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = [v17 countByEnumeratingWithState:__b objects:v28 count:16];
  if (v18)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v18;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(v17);
      }

      v20 = *(__b[1] + 8 * v11);
      [v21 addButtonWithTitle:v20];
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v17 countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v17);
  [v21 setTitle:v25];
  [v21 setMessage:v24];
  [v21 setCancelButtonIndex:indexCopy];
  [v21 setContext:v22];
  [v21 setDelegate:selfCopy];
  v8 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_actionSheetWithButtons:(id)buttons title:(id)title destructive:(BOOL)destructive cancelButtonIndex:(int64_t)index context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v26 = 0;
  objc_storeStrong(&v26, title);
  destructiveCopy = destructive;
  indexCopy = index;
  v23 = 0;
  objc_storeStrong(&v23, context);
  v22 = objc_alloc_init(MEMORY[0x277D750D0]);
  memset(__b, 0, sizeof(__b));
  v18 = MEMORY[0x277D82BE0](location[0]);
  v19 = [v18 countByEnumeratingWithState:__b objects:v29 count:16];
  if (v19)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v19;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(v18);
      }

      v21 = *(__b[1] + 8 * v12);
      [v22 addButtonWithTitle:v21];
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [v18 countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v18);
  [v22 setCancelButtonIndex:indexCopy];
  if (destructiveCopy)
  {
    v9 = [v22 cancelButtonIndex] - 1;
  }

  else
  {
    v9 = -1;
  }

  [v22 setDestructiveButtonIndex:v9];
  [v22 setTitle:v26];
  [v22 setContext:v23];
  [v22 setDelegate:selfCopy];
  v8 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (void)confirmationView:(id)view clickedButtonAtIndex:(int64_t)index
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  indexCopy = index;
  if (selfCopy->_confirmationViewCompletion)
  {
    v8 = _ACUILogSystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_4_0(v12, "[ACUIViewController confirmationView:clickedButtonAtIndex:]", 408);
      _os_log_debug_impl(&dword_23DC86000, v8, v7, "%s (%d) Confirmative view calling completion handler.", v12, 0x12u);
    }

    objc_storeStrong(&v8, 0);
    v6 = MEMORY[0x23EEFC830](selfCopy->_confirmationViewCompletion);
    confirmationViewCompletion = selfCopy->_confirmationViewCompletion;
    selfCopy->_confirmationViewCompletion = 0;
    MEMORY[0x277D82BD8](confirmationViewCompletion);
    (v6)[2](v6, location[0], indexCopy);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  [(ACUIViewController *)selfCopy confirmationView:location[0] clickedButtonAtIndex:index];
  objc_storeStrong(location, 0);
}

- (void)actionSheet:(id)sheet didDismissWithButtonIndex:(int64_t)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sheet);
  [(ACUIViewController *)selfCopy confirmationView:location[0] clickedButtonAtIndex:index];
  objc_storeStrong(location, 0);
}

- (id)showConfirmationViewForDeletingAccount:(id)account context:(id)context completion:(id)completion
{
  v41[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v37 = 0;
  objc_storeStrong(&v37, context);
  v36 = 0;
  objc_storeStrong(&v36, completion);
  enabledDataclasses = [location[0] enabledDataclasses];
  allObjects = [enabledDataclasses allObjects];
  MEMORY[0x277D82BD8](enabledDataclasses);
  v17 = MEMORY[0x277CCACA8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v20 localizedStringForKey:@"DELETE_ACCOUNT_WARNING_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
  v18 = [ACUILocalization localizedTextForDataclasses:allObjects usedAtBeginningOfSentence:0 forAccount:location[0]];
  v34 = [v17 stringWithFormat:v19, v18];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v40 = userInterfaceIdiom;
  v23 = 1;
  if (userInterfaceIdiom != 1)
  {
    v23 = v40 == 5;
  }

  v31 = 0;
  v29 = 0;
  v27 = 0;
  v25 = 0;
  if (v23)
  {
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = 1;
    v30 = [v32 localizedStringForKey:@"DELETE" value:&stru_2850054A0 table:@"Localizable"];
    v29 = 1;
    v13 = v30;
  }

  else
  {
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = 1;
    v26 = [v28 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
    v25 = 1;
    v13 = v26;
  }

  v41[0] = v13;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v12 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
  v41[1] = v11;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](v32);
  }

  v7 = selfCopy;
  v6 = v33;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
  v24 = [ACUIViewController showConfirmationViewWithButtons:v7 title:"showConfirmationViewWithButtons:title:message:destructive:context:completion:" message:v6 destructive:? context:? completion:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&allObjects, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

- (void)startValidationWithPrompt:(id)prompt
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prompt);
  [(ACUIViewController *)selfCopy startValidationWithPrompt:location[0] userInteraction:0];
  objc_storeStrong(location, 0);
}

- (void)startValidationWithPrompt:(id)prompt userInteraction:(BOOL)interaction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prompt);
  interactionCopy = interaction;
  if (![(ACUIViewController *)selfCopy validationInProgress])
  {
    navigationItem = [(ACUIViewController *)selfCopy navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    MEMORY[0x277D82BD8](navigationItem);
    navigationItem2 = [(ACUIViewController *)selfCopy navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    MEMORY[0x277D82BD8](navigationItem2);
    if (leftBarButtonItem)
    {
      [(ACUIViewController *)selfCopy setCancelButton:leftBarButtonItem];
    }

    if (rightBarButtonItem)
    {
      [(ACUIViewController *)selfCopy setDoneButton:rightBarButtonItem];
    }

    objc_storeStrong(&rightBarButtonItem, 0);
    objc_storeStrong(&leftBarButtonItem, 0);
  }

  [(ACUIViewController *)selfCopy setValidationInProgress:1];
  navigationItem3 = [(ACUIViewController *)selfCopy navigationItem];
  v4 = [ACUISpinnerTitle alloc];
  v8 = [(ACUISpinnerTitle *)v4 initWithTitle:location[0]];
  [navigationItem3 setTitleView:v8];
  [navigationItem3 setLeftBarButtonItem:? animated:?];
  [navigationItem3 setRightBarButtonItem:0 animated:1];
  if (![*MEMORY[0x277D76620] isIgnoringInteractionEvents] && !interactionCopy)
  {
    [*MEMORY[0x277D76620] beginIgnoringInteractionEvents];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&navigationItem3, 0);
  objc_storeStrong(location, 0);
}

- (void)updateValidationPrompt:(id)prompt
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prompt);
  navigationItem = [(ACUIViewController *)selfCopy navigationItem];
  titleView = [navigationItem titleView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [ACUISpinnerTitle alloc];
    v4 = [(ACUISpinnerTitle *)v3 initWithTitle:location[0]];
    [navigationItem setTitleView:v4];
    objc_storeStrong(&v4, 0);
  }

  else
  {
    [navigationItem _setTitle:location[0] animated:1];
  }

  objc_storeStrong(&titleView, 0);
  objc_storeStrong(&navigationItem, 0);
  objc_storeStrong(location, 0);
}

- (void)stopValidationWithPrompt:(id)prompt showButtons:(BOOL)buttons
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prompt);
  buttonsCopy = buttons;
  v9 = _ACUILogSystem();
  v8 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_64(v13, "[ACUIViewController stopValidationWithPrompt:showButtons:]", 491, location[0]);
    _os_log_debug_impl(&dword_23DC86000, v9, v8, "%s (%d) ACUIViewController stopValidatingWithprompt %@", v13, 0x1Cu);
  }

  objc_storeStrong(&v9, 0);
  [(ACUIViewController *)selfCopy setValidationInProgress:0];
  navigationItem = [(ACUIViewController *)selfCopy navigationItem];
  [navigationItem setTitleView:0];
  if (buttonsCopy)
  {
    cancelButton = [(ACUIViewController *)selfCopy cancelButton];
    [navigationItem setLeftBarButtonItem:? animated:?];
    MEMORY[0x277D82BD8](cancelButton);
    doneButton = [(ACUIViewController *)selfCopy doneButton];
    [navigationItem setRightBarButtonItem:? animated:?];
    MEMORY[0x277D82BD8](doneButton);
  }

  else
  {
    [navigationItem setLeftBarButtonItems:0 animated:1];
  }

  [navigationItem _setTitle:location[0] animated:1];
  if ([*MEMORY[0x277D76620] isIgnoringInteractionEvents] == 1)
  {
    [*MEMORY[0x277D76620] endIgnoringInteractionEvents];
  }

  objc_storeStrong(&navigationItem, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setCellsChecked:(BOOL)checked
{
  selfCopy = self;
  v9 = a2;
  checkedCopy = checked;
  i = 0;
  v6 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count];
  for (i = 0; i < v6; ++i)
  {
    v3 = *(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
    v4 = [(ACUIViewController *)selfCopy indexPathForIndex:i];
    location = [v3 cellForRowAtIndexPath:?];
    MEMORY[0x277D82BD8](v4);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 1)
    {
      [location setChecked:checkedCopy];
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)reloadParentSpecifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(ACUIViewController *)self _effectiveParentController];
  identifier = [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) identifier];
  [location[0] reloadSpecifierID:? animated:?];
  MEMORY[0x277D82BD8](identifier);
  if (objc_opt_respondsToSelector())
  {
    [location[0] performSelector:sel_reloadParentSpecifier];
  }

  objc_storeStrong(location, 0);
}

- (void)reloadAllParentSpecifiers
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v5 = 1;
  if (userInterfaceIdiom != 1)
  {
    v5 = userInterfaceIdiom == 5;
  }

  [(ACUIViewController *)self reloadAllParentSpecifiersAnimated:v5];
}

- (void)reloadAllParentSpecifiersAnimated:(BOOL)animated
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  animatedCopy = animated;
  location = [(ACUIViewController *)self _effectiveParentController];
  if (location)
  {
    memset(__b, 0, sizeof(__b));
    obj = [location specifiers];
    v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(__b[1] + 8 * v5);
        [location reloadSpecifier:v10 animated:animatedCopy];
        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    if ([objc_opt_class() shouldPresentAsModalSheet] == 1 && !-[ACUIViewController isPresentedAsModalSheet](selfCopy, "isPresentedAsModalSheet") && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [location performSelector:sel_reloadAllParentSpecifiers];
    }
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)removeParentSpecifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(ACUIViewController *)self _effectiveParentController];
  v2 = *(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v8 = userInterfaceIdiom;
  v5 = 1;
  if (userInterfaceIdiom != 1)
  {
    v5 = v8 == 5;
  }

  [location[0] removeSpecifier:v2 animated:v5];
  objc_storeStrong(location, 0);
}

- (id)_effectiveParentController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  if ([(ACUIViewController *)self isPresentedAsModalSheet])
  {
    rootController = [(ACUIViewController *)selfCopy rootController];
    parentController = [rootController parentController];
    v3 = location[0];
    location[0] = parentController;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](rootController);
  }

  else
  {
    parentController2 = [(ACUIViewController *)selfCopy parentController];
    v5 = location[0];
    location[0] = parentController2;
    MEMORY[0x277D82BD8](v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  v6 = v11;

  return v6;
}

- (void)setTaskCompletionAssertionEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v8 = a2;
  enabledCopy = enabled;
  oslog = _ACUILogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (enabledCopy)
    {
      v3 = @"enabled";
    }

    else
    {
      v3 = @"disabled";
    }

    __os_log_helper_16_2_3_8_32_4_0_8_66(v10, "[ACUIViewController setTaskCompletionAssertionEnabled:]", 584, v3);
    _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "%s (%d) ACUIViewController setTaskCompletionAssertionEnabled: %{public}@", v10, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if (enabledCopy)
  {
    if (!selfCopy->_addedToTaskList)
    {
      WeakRetained = objc_loadWeakRetained((&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
      [WeakRetained addTask:selfCopy];
      MEMORY[0x277D82BD8](WeakRetained);
      selfCopy->_addedToTaskList = 1;
    }
  }

  else if (selfCopy->_addedToTaskList)
  {
    v4 = objc_loadWeakRetained((&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FD10]));
    [v4 taskFinished:selfCopy];
    MEMORY[0x277D82BD8](v4);
    selfCopy->_addedToTaskList = 0;
  }

  *MEMORY[0x277D85DE8];
}

- (ACUIAccountOperationsHelper)accountOperationsHelper
{
  if (!self->_accountOperationsHelper)
  {
    v6 = [ACUIAccountOperationsHelper alloc];
    accountStore = [(ACUIViewController *)self accountStore];
    v2 = [(ACUIAccountOperationsHelper *)v6 initWithAccountStore:?];
    accountOperationsHelper = self->_accountOperationsHelper;
    self->_accountOperationsHelper = v2;
    MEMORY[0x277D82BD8](accountOperationsHelper);
    MEMORY[0x277D82BD8](accountStore);
    [(ACUIAccountOperationsHelper *)self->_accountOperationsHelper setDelegate:self];
  }

  v4 = self->_accountOperationsHelper;

  return v4;
}

+ (id)acuiAccountStore
{
  v5 = &acuiAccountStore_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = acuiAccountStore___acuiAccountStore;

  return v2;
}

void __38__ACUIViewController_acuiAccountStore__block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v9[2] = a1;
  v9[1] = a1;
  v4 = objc_alloc(MEMORY[0x277CB8F80]);
  v3 = MEMORY[0x277CBEB98];
  v6 = ACUIVisibleAccountTypes();
  v5 = [v3 setWithArray:?];
  v1 = [v4 initWithAccountTypes:? delegate:?];
  v2 = acuiAccountStore___acuiAccountStore;
  acuiAccountStore___acuiAccountStore = v1;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v9[0] = 0;
  v8 = 0;
  [acuiAccountStore___acuiAccountStore registerSynchronouslyWithError:&v8];
  objc_storeStrong(v9, v8);
  if (v9[0])
  {
    v7 = _ACUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v10, "+[ACUIViewController acuiAccountStore]_block_invoke", 620, v9[0]);
      _os_log_error_impl(&dword_23DC86000, v7, OS_LOG_TYPE_ERROR, "%s (%d) @Error registering account monitor: %@", v10, 0x1Cu);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v9, 0);
  *MEMORY[0x277D85DE8];
}

- (id)operationsHelper:(id)helper desiredDataclassActionFromPicker:(id)picker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v7 = 0;
  objc_storeStrong(&v7, picker);
  v6 = [v7 showInViewController:selfCopy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)showActivityInProgressUIWithMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  selfCopy->_activityInProgress = 1;
  [*MEMORY[0x277D76620] beginIgnoringInteractionEvents];
  v30 = MEMORY[0x277D82BE0](*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]));
  v29 = 0;
  v28 = MEMORY[0x277D82BE0](v30);
  while (1)
  {
    superview = [v30 superview];
    v3 = v29;
    v29 = superview;
    MEMORY[0x277D82BD8](v3);
    if (!superview)
    {
      break;
    }

    v23 = &v30;
    objc_storeStrong(&v28, v30);
    objc_storeStrong(&v30, v29);
  }

  v4 = objc_alloc_init(MEMORY[0x277D758E8]);
  v13 = 0x27E30D000uLL;
  hud = selfCopy->_hud;
  selfCopy->_hud = v4;
  MEMORY[0x277D82BD8](hud);
  [*(&selfCopy->super.super.super.super.super.isa + *(v13 + 860)) setFontSize:16];
  v6 = *(&selfCopy->super.super.super.super.super.isa + *(v13 + 860));
  v21 = location;
  [v6 setText:location[0]];
  v7 = *(&selfCopy->super.super.super.super.super.isa + *(v13 + 860));
  v16 = 1;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *(&selfCopy->super.super.super.super.super.isa + *(v13 + 860));
  v20 = &v28;
  [v8 showInView:v28];
  v9 = *(&selfCopy->super.super.super.super.super.isa + *(v13 + 860));
  obj = 0;
  v10 = _NSDictionaryOfVariableBindings(&cfstr_Hud.isa, v9, 0);
  v19 = &v27;
  v27 = v10;
  v15 = 0x277CCA000uLL;
  v14 = 0;
  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-[_hud]-|" options:? metrics:? views:?];
  v18 = &v26;
  v26 = v11;
  v12 = [*(v15 + 2768) constraintsWithVisualFormat:@"H:|-[_hud]-|" options:v14 metrics:obj views:v27];
  v17 = &v25;
  v25 = v12;
  [*(v15 + 2768) activateConstraints:v26];
  [*(v15 + 2768) activateConstraints:v25];
  [(ACUIViewController *)selfCopy setTaskCompletionAssertionEnabled:v16 & 1];
  objc_storeStrong(v17, obj);
  objc_storeStrong(v18, obj);
  objc_storeStrong(v19, obj);
  objc_storeStrong(v20, obj);
  objc_storeStrong(&v29, obj);
  objc_storeStrong(&v30, obj);
  objc_storeStrong(v21, obj);
}

- (void)hideActivityInProgressUI
{
  [*MEMORY[0x277D76620] endIgnoringInteractionEvents];
  [(UIProgressHUD *)self->_hud removeFromSuperview];
  objc_storeStrong(&self->_hud, 0);
  [(ACUIViewController *)self setTaskCompletionAssertionEnabled:0];
  self->_activityInProgress = 0;
}

- (void)hideActivityInProgressUIWithDelay:(double)delay
{
  if (delay <= 0.0)
  {
    [(ACUIViewController *)self hideActivityInProgressUI];
  }

  else
  {
    [(UIProgressHUD *)self->_hud done];
    [(ACUIViewController *)self performSelector:sel_hideActivityInProgressUI withObject:self afterDelay:delay];
  }
}

- (void)operationsHelper:(id)helper willSaveAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v5 = 0;
  objc_storeStrong(&v5, account);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)operationsHelper:(id)helper didSaveAccount:(id)account withSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v23 = 0;
  objc_storeStrong(&v23, account);
  successCopy = success;
  v21 = 0;
  objc_storeStrong(&v21, error);
  accountChangeObserver = [(ACUIViewController *)selfCopy accountChangeObserver];
  v13 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](accountChangeObserver);
  if (v13)
  {
    v7 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v7;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __72__ACUIViewController_operationsHelper_didSaveAccount_withSuccess_error___block_invoke;
    v18 = &unk_278BFA4A0;
    v19 = MEMORY[0x277D82BE0](selfCopy);
    v20 = successCopy;
    dispatch_async(queue, &v14);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

uint64_t __72__ACUIViewController_operationsHelper_didSaveAccount_withSuccess_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) accountChangeObserver];
  [v3 viewController:*(a1 + 32) didFinishSavingAccountWithSuccess:*(a1 + 40) & 1];
  return MEMORY[0x277D82BD8](v3);
}

- (void)operationsHelper:(id)helper willRemoveAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v5 = 0;
  objc_storeStrong(&v5, account);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)operationsHelper:(id)helper didRemoveAccount:(id)account withSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, helper);
  v23 = 0;
  objc_storeStrong(&v23, account);
  successCopy = success;
  v21 = 0;
  objc_storeStrong(&v21, error);
  accountChangeObserver = [(ACUIViewController *)selfCopy accountChangeObserver];
  v13 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](accountChangeObserver);
  if (v13)
  {
    v7 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v7;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __74__ACUIViewController_operationsHelper_didRemoveAccount_withSuccess_error___block_invoke;
    v18 = &unk_278BFA4A0;
    v19 = MEMORY[0x277D82BE0](selfCopy);
    v20 = successCopy;
    dispatch_async(queue, &v14);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

uint64_t __74__ACUIViewController_operationsHelper_didRemoveAccount_withSuccess_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) accountChangeObserver];
  [v3 viewController:*(a1 + 32) didFinishRemovingAccountWithSuccess:*(a1 + 40) & 1];
  return MEMORY[0x277D82BD8](v3);
}

- (ACUIViewControllerAccountChangeObserver)accountChangeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_accountChangeObserver);

  return WeakRetained;
}

@end