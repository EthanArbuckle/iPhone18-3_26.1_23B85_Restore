@interface CNContactInlineActionsViewController
+ (id)descriptorForRequiredKeys;
+ (id)os_log;
- (BOOL)isGroupActionsView;
- (BOOL)shouldShowDisambiguationForAction:(id)action;
- (CNActionsView)actionsView;
- (CNContact)contact;
- (CNContactInlineActionsViewController)initWithActionListDataSource:(id)source environment:(id)environment;
- (CNContactInlineActionsViewController)initWithContactActionsContext:(id)context;
- (CNContactInlineActionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNContactInlineActionsViewControllerDelegate)delegate;
- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate;
- (double)throttleDelay;
- (id)actionImageTextStyleForViewStyle:(int64_t)style;
- (id)allModelsObservable;
- (id)existingActionItemForType:(id)type;
- (id)makeActionItemForType:(id)type;
- (id)retrieveModelsForType:(id)type;
- (void)checkinLaunchTasksForUndiscoverableActionsForContact:(id)contact;
- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu;
- (void)dealloc;
- (void)didSelectAction:(id)action;
- (void)didSelectAction:(id)action withSourceView:(id)view longPress:(BOOL)press;
- (void)didSelectActionType:(id)type withSourceView:(id)view longPress:(BOOL)press;
- (void)discoverAvailableActionTypes;
- (void)displayActionForType:(id)type withDefaultAction:(id)action enabled:(BOOL)enabled;
- (void)displayAdditionalActionItems:(id)items;
- (void)displayAllSupportedTypesDisabled;
- (void)generateActionsControllerForActionType:(id)type;
- (void)loadCachedActions;
- (void)loadView;
- (void)notifyDelegateOfDisambiguationForActionType:(id)type;
- (void)notifyDelegateOfPerformedActionType:(id)type fromDisambiguation:(BOOL)disambiguation;
- (void)performAction:(id)action;
- (void)performGroupActionForType:(id)type;
- (void)processModels:(id)models;
- (void)removeActionForType:(id)type;
- (void)removeVisibleActionItems:(id)items;
- (void)reset;
- (void)setActionTypesInterspace:(double)interspace;
- (void)setContact:(id)contact;
- (void)setContacts:(id)contacts;
- (void)setDisplaysTitles:(BOOL)titles;
- (void)setDisplaysUnavailableActionTypes:(BOOL)types;
- (void)setPosterTintColor:(id)color;
- (void)setSupportedActionTypes:(id)types;
- (void)setViewStyle:(int64_t)style;
- (void)setupGroupActions;
- (void)setupSingleContactActions;
- (void)updateActionItem:(id)item withDefaultAction:(id)action;
- (void)updateDesiredTitleFontSizeIfNeeded;
- (void)updateVisibleActionItems:(id)items;
- (void)viewDidLoad;
@end

@implementation CNContactInlineActionsViewController

- (CNActionsView)actionsView
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsView);

  return WeakRetained;
}

- (CNContactInlineActionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->objectViewControllerDelegate);

  return WeakRetained;
}

- (id)actionImageTextStyleForViewStyle:(int64_t)style
{
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v3 = MEMORY[0x1E69DDDC8];
  }

  else
  {
    v3 = MEMORY[0x1E69DDCF8];
  }

  return *v3;
}

- (void)notifyDelegateOfDisambiguationForActionType:(id)type
{
  typeCopy = type;
  delegate = [(CNContactInlineActionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactInlineActionsViewController *)self delegate];
    [delegate2 contactInlineActionsViewController:self willPresentDisambiguationUIForActionType:typeCopy];
  }
}

- (void)notifyDelegateOfPerformedActionType:(id)type fromDisambiguation:(BOOL)disambiguation
{
  disambiguationCopy = disambiguation;
  typeCopy = type;
  delegate = [(CNContactInlineActionsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNContactInlineActionsViewController *)self delegate];
    [delegate2 contactInlineActionsViewController:self didPerformActionOfType:typeCopy fromDisambiguation:disambiguationCopy];
  }
}

- (BOOL)isGroupActionsView
{
  contact = [(CNContactInlineActionsViewController *)self contact];
  if (contact)
  {
    v4 = 0;
  }

  else
  {
    contacts = [(CNContactInlineActionsViewController *)self contacts];
    v4 = [contacts count] > 1;
  }

  return v4;
}

- (void)performGroupActionForType:(id)type
{
  typeCopy = type;
  if ([(CNContactInlineActionsViewController *)self isGroupActionsView])
  {
    delegate = [(CNContactInlineActionsViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(CNContactInlineActionsViewController *)self delegate];
      [delegate2 contactInlineActionsViewController:self didSelectActionOfType:typeCopy];

      [(CNContactInlineActionsViewController *)self notifyDelegateOfPerformedActionType:typeCopy fromDisambiguation:0];
    }
  }
}

- (void)setupGroupActions
{
  supportedActionTypes = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__CNContactInlineActionsViewController_setupGroupActions__block_invoke;
  v4[3] = &unk_1E74E6A60;
  v4[4] = self;
  [supportedActionTypes _cn_each:v4];
}

void __57__CNContactInlineActionsViewController_setupGroupActions__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    v6 = [v5 contactInlineActionsViewController:*(a1 + 32) canPerformGroupActionOfType:v7];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) displayActionForType:v7 withDefaultAction:0 enabled:v6];
}

- (BOOL)shouldShowDisambiguationForAction:(id)action
{
  actionCopy = action;
  if ([(CNContactInlineActionsViewController *)self isGroupActionsView])
  {
    v5 = 0;
  }

  else
  {
    delegate = [(CNContactInlineActionsViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(CNContactInlineActionsViewController *)self delegate];
      type = [actionCopy type];
      v5 = [delegate2 contactInlineActionsViewController:self shouldPresentDisambiguationUIForActionOfType:type];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)generateActionsControllerForActionType:(id)type
{
  v18[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  actionsController = [(CNContactInlineActionsViewController *)self actionsController];
  [actionsController cancelModels];

  delegate = [(CNContactInlineActionsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[CNContactInlineActionsViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 contactInlineActionsViewController:self shouldPresentDisambiguationUIForActionOfType:typeCopy], v8, v9))
  {
    v10 = [CNContactActionsController alloc];
    contact = [(CNContactInlineActionsViewController *)self contact];
    actionListDataSource = [(CNContactInlineActionsViewController *)self actionListDataSource];
    v18[0] = typeCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14 = [(CNContactActionsController *)v10 initWithContact:contact dataSource:actionListDataSource actionTypes:v13];
    [(CNContactInlineActionsViewController *)self setActionsController:v14];

    actionsController2 = [(CNContactInlineActionsViewController *)self actionsController];
    [actionsController2 setShouldUseOutlinedActionGlyphStyle:1];

    actionsController3 = [(CNContactInlineActionsViewController *)self actionsController];
    [actionsController3 setDisplayNonDefaultAppsMenuTitle:1];

    actionsController4 = [(CNContactInlineActionsViewController *)self actionsController];
    [actionsController4 setDelegate:self];
  }
}

- (void)performAction:(id)action
{
  v48 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  delegate = [(CNContactInlineActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[CNContactInlineActionsViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), -[__CFString type](actionCopy, "type"), v8 = objc_claimAutoreleasedReturnValue(), -[__CFString contactProperty](actionCopy, "contactProperty"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v7 contactInlineActionsViewController:self shouldPerformActionOfType:v8 withContactProperty:v9], v9, v8, v7, v10))
  {
    v11 = objc_opt_class();
    if (v11 == objc_opt_class())
    {
      v16 = CNUILogContactCard();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v44 = 138412546;
        selfCopy = v37;
        v46 = 2048;
        v47 = actionCopy;
        _os_log_fault_impl(&dword_199A75000, v16, OS_LOG_TYPE_FAULT, " CNContactInlineActionsViewController encountered an  unexpected base CNUIUserActionItem - action %@(%p)", &v44, 0x16u);
      }

      goto LABEL_28;
    }

    delegate2 = [(CNContactInlineActionsViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate3 = [(CNContactInlineActionsViewController *)self delegate];
      type = [(__CFString *)actionCopy type];
      [delegate3 contactInlineActionsViewController:self willPerformActionOfType:type];
    }

    v16 = objc_alloc_init(MEMORY[0x1E6996BD0]);
    geminiChannelIdentifier = [(CNContactInlineActionsViewController *)self geminiChannelIdentifier];
    if (geminiChannelIdentifier && (v18 = geminiChannelIdentifier, -[CNContactInlineActionsViewController geminiChannelIdentifier](self, "geminiChannelIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 length], v19, v18, v20))
    {
      geminiChannelIdentifier2 = [(CNContactInlineActionsViewController *)self geminiChannelIdentifier];
      [v16 setChannelIdentifier:geminiChannelIdentifier2];
    }

    else
    {
      delegate4 = [(CNContactInlineActionsViewController *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if ((v23 & 1) == 0)
      {
LABEL_12:
        contactProperty = [(__CFString *)actionCopy contactProperty];
        contact = [contactProperty contact];
        identifier = [contact identifier];
        v29 = identifier;
        v30 = @"Unknown Contact identifier";
        if (identifier)
        {
          v30 = identifier;
        }

        v31 = v30;

        delegate5 = [(CNContactInlineActionsViewController *)self delegate];
        if (delegate5)
        {
          delegate6 = [(CNContactInlineActionsViewController *)self delegate];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
        }

        else
        {
          v35 = @"No delegate";
        }

        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
        {
          type2 = [(__CFString *)actionCopy type];
          v44 = 138543618;
          selfCopy = type2;
          v46 = 2114;
          v47 = v31;
          _os_log_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEFAULT, "CNContactInlineActionsViewController performing action: %{public}@ for: %{public}@", &v44, 0x16u);
        }

        os_log2 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEFAULT))
        {
          v44 = 138543362;
          selfCopy = v35;
          _os_log_impl(&dword_199A75000, os_log2, OS_LOG_TYPE_DEFAULT, "  Delegate: %{public}@", &v44, 0xCu);
        }

        os_log3 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEFAULT))
        {
          v44 = 138543362;
          selfCopy = self;
          _os_log_impl(&dword_199A75000, os_log3, OS_LOG_TYPE_DEFAULT, "  View Controller: %{public}@", &v44, 0xCu);
        }

        os_log4 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v44) = 0;
          _os_log_impl(&dword_199A75000, os_log4, OS_LOG_TYPE_DEFAULT, "End performing action logging", &v44, 2u);
        }

        v43 = [(__CFString *)actionCopy performActionWithContext:v16];
LABEL_28:

        goto LABEL_29;
      }

      geminiChannelIdentifier2 = [(CNContactInlineActionsViewController *)self delegate];
      geminiDataSource = [geminiChannelIdentifier2 geminiDataSource];
      channelIdentifier = [geminiDataSource channelIdentifier];
      [v16 setChannelIdentifier:channelIdentifier];
    }

    goto LABEL_12;
  }

LABEL_29:
}

- (void)didSelectAction:(id)action
{
  actionCopy = action;
  actionsControllerPresentation = [(CNContactInlineActionsViewController *)self actionsControllerPresentation];
  presentedViewController = [actionsControllerPresentation presentedViewController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CNContactInlineActionsViewController_didSelectAction___block_invoke;
  v10[3] = &unk_1E74E6A88;
  v10[4] = self;
  [presentedViewController dismissViewControllerAnimated:1 completion:v10];

  [(CNContactInlineActionsViewController *)self performAction:actionCopy];
  type = [actionCopy type];
  actionListDataSource = [(CNContactInlineActionsViewController *)self actionListDataSource];
  contact = [(CNContactInlineActionsViewController *)self contact];
  [actionListDataSource consumer:self didSelectItem:actionCopy forContact:contact actionType:type];

  [(CNContactInlineActionsViewController *)self notifyDelegateOfPerformedActionType:type fromDisambiguation:1];
  [(CNContactInlineActionsViewController *)self setActionsController:0];
}

- (void)didSelectAction:(id)action withSourceView:(id)view longPress:(BOOL)press
{
  pressCopy = press;
  viewCopy = view;
  type = [action type];
  [(CNContactInlineActionsViewController *)self didSelectActionType:type withSourceView:viewCopy longPress:pressCopy];
}

- (void)didSelectActionType:(id)type withSourceView:(id)view longPress:(BOOL)press
{
  typeCopy = type;
  isGroupActionsView = [(CNContactInlineActionsViewController *)self isGroupActionsView];
  if (!isGroupActionsView)
  {
    if (press)
    {
      [(CNContactInlineActionsViewController *)self generateActionsControllerForActionType:typeCopy];
      actionsController = [(CNContactInlineActionsViewController *)self actionsController];
      [actionsController retrieveModels];

      isGroupActionsView = [(CNContactInlineActionsViewController *)self notifyDelegateOfDisambiguationForActionType:typeCopy];
      goto LABEL_12;
    }

    defaultActionPerType = [(CNContactInlineActionsViewController *)self defaultActionPerType];
    v11 = [defaultActionPerType objectForKeyedSubscript:typeCopy];

    if (v11)
    {
      defaultActionPerType2 = [(CNContactInlineActionsViewController *)self defaultActionPerType];
      v13 = [defaultActionPerType2 objectForKeyedSubscript:typeCopy];
      [(CNContactInlineActionsViewController *)self performAction:v13];
    }

    else
    {
      delegate = [(CNContactInlineActionsViewController *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
LABEL_11:
        isGroupActionsView = [(CNContactInlineActionsViewController *)self notifyDelegateOfPerformedActionType:typeCopy fromDisambiguation:0];
        goto LABEL_12;
      }

      defaultActionPerType2 = [(CNContactInlineActionsViewController *)self delegate];
      [defaultActionPerType2 contactInlineActionsViewController:self didSelectActionOfType:typeCopy];
    }

    goto LABEL_11;
  }

  v8 = typeCopy;
  if (press)
  {
    goto LABEL_13;
  }

  isGroupActionsView = [(CNContactInlineActionsViewController *)self performGroupActionForType:typeCopy];
LABEL_12:
  v8 = typeCopy;
LABEL_13:

  MEMORY[0x1EEE66BB8](isGroupActionsView, v8);
}

- (void)reset
{
  actionItems = [(CNContactInlineActionsViewController *)self actionItems];
  v4 = [actionItems isEqual:MEMORY[0x1E695E0F0]];

  if ((v4 & 1) == 0)
  {
    actionsView = [(CNContactInlineActionsViewController *)self actionsView];
    [actionsView resetActions];

    [(CNContactInlineActionsViewController *)self setActionItems:MEMORY[0x1E695E0F0]];
    v6 = MEMORY[0x1E695E0F8];

    [(CNContactInlineActionsViewController *)self setDefaultActionPerType:v6];
  }
}

- (id)existingActionItemForType:(id)type
{
  typeCopy = type;
  actionItems = [(CNContactInlineActionsViewController *)self actionItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__CNContactInlineActionsViewController_existingActionItemForType___block_invoke;
  v9[3] = &unk_1E74E6A38;
  v10 = typeCopy;
  v6 = typeCopy;
  v7 = [actionItems _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __66__CNContactInlineActionsViewController_existingActionItemForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)updateActionItem:(id)item withDefaultAction:(id)action
{
  itemCopy = item;
  if ([(CNContactInlineActionsViewController *)self displaysTitles])
  {
    actionListDataSource = [(CNContactInlineActionsViewController *)self actionListDataSource];
    type = [itemCopy type];
    v7 = [actionListDataSource consumer:self localizedButtonDisplayNameForActionType:type];

    [itemCopy setTitle:v7];
    delegate = [(CNContactInlineActionsViewController *)self delegate];
    LOBYTE(type) = objc_opt_respondsToSelector();

    if (type)
    {
      delegate2 = [(CNContactInlineActionsViewController *)self delegate];
      type2 = [itemCopy type];
      v11 = [delegate2 contactInlineActionsViewController:self overrideTitleForActionOfType:type2];

      if (v11)
      {
        [itemCopy setTitle:v11];
      }
    }
  }
}

- (id)makeActionItemForType:(id)type
{
  typeCopy = type;
  v5 = [(CNContactInlineActionsViewController *)self actionImageTextStyleForViewStyle:[(CNContactInlineActionsViewController *)self viewStyle]];
  v6 = [MEMORY[0x1E69DCAB8] cnui_userActionSymbolImageForActionType:typeCopy scale:-1 withColor:0 compatibleWithTextStyle:v5];
  delegate = [(CNContactInlineActionsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNContactInlineActionsViewController *)self delegate];
    v10 = [delegate2 contactInlineActionsViewController:self overrideImageForActionOfType:typeCopy];

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;

    v6 = v12;
  }

  v13 = [[CNActionItem alloc] initWithImage:v6 type:typeCopy];

  return v13;
}

- (void)removeActionForType:(id)type
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNContactInlineActionsViewController *)self existingActionItemForType:type];
  if (v4)
  {
    actionItems = [(CNContactInlineActionsViewController *)self actionItems];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CNContactInlineActionsViewController_removeActionForType___block_invoke;
    v9[3] = &unk_1E74E6A38;
    v6 = v4;
    v10 = v6;
    v7 = [actionItems _cn_filter:v9];
    [(CNContactInlineActionsViewController *)self setActionItems:v7];

    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(CNContactInlineActionsViewController *)self removeVisibleActionItems:v8];
  }
}

- (void)displayActionForType:(id)type withDefaultAction:(id)action enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v23[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  actionCopy = action;
  v10 = [(CNContactInlineActionsViewController *)self existingActionItemForType:typeCopy];
  v11 = v10;
  if (!v10)
  {
    v11 = [(CNContactInlineActionsViewController *)self makeActionItemForType:typeCopy];
  }

  [v11 setDisabled:!enabledCopy];
  delegate = [(CNContactInlineActionsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CNContactInlineActionsViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate3 = [(CNContactInlineActionsViewController *)self delegate];
      v16 = [delegate3 contactInlineActionsViewController:self shouldOverrideEnabledStateForActionOfType:typeCopy];

      if (v16)
      {
        delegate4 = [(CNContactInlineActionsViewController *)self delegate];
        v18 = [delegate4 contactInlineActionsViewController:self overrideEnabledStateForActionOfType:typeCopy];

        [v11 setDisabled:v18 ^ 1u];
      }
    }
  }

  else
  {
  }

  [(CNContactInlineActionsViewController *)self updateActionItem:v11 withDefaultAction:actionCopy];
  if (v10)
  {
    v23[0] = v11;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(CNContactInlineActionsViewController *)self updateVisibleActionItems:v19];
  }

  else
  {
    actionItems = [(CNContactInlineActionsViewController *)self actionItems];
    v21 = [actionItems arrayByAddingObject:v11];
    [(CNContactInlineActionsViewController *)self setActionItems:v21];

    v22 = v11;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [(CNContactInlineActionsViewController *)self displayAdditionalActionItems:v19];
  }
}

- (void)processModels:(id)models
{
  modelsCopy = models;
  defaultActionPerType = [(CNContactInlineActionsViewController *)self defaultActionPerType];
  v6 = [defaultActionPerType mutableCopy];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __54__CNContactInlineActionsViewController_processModels___block_invoke;
  v13 = &unk_1E74E6A10;
  v7 = v6;
  v14 = v7;
  selfCopy = self;
  [modelsCopy _cn_each:&v10];

  [(CNContactInlineActionsViewController *)self setDefaultActionPerType:v7, v10, v11, v12, v13];
  delegate = [(CNContactInlineActionsViewController *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNContactInlineActionsViewController *)self delegate];
    [delegate2 contactInlineActionsViewControllerDidProcessModels:self];
  }
}

void __54__CNContactInlineActionsViewController_processModels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 defaultAction];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v18];

  v7 = [v5 isEmpty];
  v8 = *(a1 + 40);
  if (!v7)
  {
    v11 = [v5 defaultAction];
    [v8 displayActionForType:v18 withDefaultAction:v11 enabled:1];

    v12 = [*(a1 + 40) environment];
    v13 = [v12 launchCheckinRegistrar];

    if ([v18 isEqual:*MEMORY[0x1E695C178]])
    {
      v14 = 16;
    }

    else if ([v18 isEqual:*MEMORY[0x1E695C170]])
    {
      v14 = 32;
    }

    else
    {
      if (![v18 isEqual:*MEMORY[0x1E695C150]])
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = 8;
    }

    [v13 checkInLaunchTasks:v14];
    goto LABEL_12;
  }

  v9 = [*(a1 + 40) displaysUnavailableActionTypes];
  v10 = *(a1 + 40);
  if (v9)
  {
    [v10 displayActionForType:v18 withDefaultAction:0 enabled:0];
  }

  else
  {
    [v10 removeActionForType:v18];
  }

LABEL_13:
  v15 = [v5 defaultAction];
  v16 = [*(a1 + 40) actionsView];
  v17 = [v16 actionViewForType:v18];
  [v17 setShowsMenuAsPrimaryAction:v15 == 0];
}

- (void)discoverAvailableActionTypes
{
  v34[2] = *MEMORY[0x1E69E9840];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    contact = [(CNContactInlineActionsViewController *)self contact];
    shortDebugDescription = [contact shortDebugDescription];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = shortDebugDescription;
    _os_log_debug_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEBUG, "%@ canceling previous action discovering requests, contact now is %@", buf, 0x16u);
  }

  tokens = [(CNContactInlineActionsViewController *)self tokens];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke;
  v26[3] = &unk_1E74E6998;
  v26[4] = self;
  [tokens enumerateObjectsUsingBlock:v26];

  [(CNContactInlineActionsViewController *)self setTokens:MEMORY[0x1E695E0F0]];
  contact2 = [(CNContactInlineActionsViewController *)self contact];
  LOBYTE(tokens) = contact2 == 0;

  if ((tokens & 1) == 0)
  {
    array = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v32 = __Block_byref_object_copy__64153;
    v33 = __Block_byref_object_dispose__64154;
    v34[0] = 0;
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
    {
      contact3 = [(CNContactInlineActionsViewController *)self contact];
      shortDebugDescription2 = [contact3 shortDebugDescription];
      *v27 = 138412546;
      selfCopy = self;
      v29 = 2112;
      v30 = shortDebugDescription2;
      _os_log_debug_impl(&dword_199A75000, os_log2, OS_LOG_TYPE_DEBUG, "%@ subscribing action discovering requests for contact %@.", v27, 0x16u);
    }

    allModelsObservable = [(CNContactInlineActionsViewController *)self allModelsObservable];
    schedulerProvider = [(CNContactInlineActionsViewController *)self schedulerProvider];
    backgroundScheduler = [schedulerProvider backgroundScheduler];
    v11 = [allModelsObservable subscribeOn:backgroundScheduler];
    v12 = MEMORY[0x1E69967A0];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke_42;
    v22 = &unk_1E74E69E8;
    objc_copyWeak(&v24, &location);
    v23 = buf;
    v13 = [v12 observerWithResultBlock:&v19];
    v14 = [v11 subscribe:{v13, v19, v20, v21, v22}];

    [array addObject:v14];
    objc_storeWeak((*&buf[8] + 40), v14);
    [(CNContactInlineActionsViewController *)self setTokens:array];

    objc_destroyWeak(&v24);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

void __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) schedulerProvider];
  v5 = [v4 backgroundScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke_2;
  v7[3] = &unk_1E74E6A88;
  v8 = v3;
  v6 = v3;
  [v5 performBlock:v7];
}

void __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke_2_43;
  aBlock[3] = &unk_1E74E69C0;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x1E6996818] mainThreadScheduler];
  [v6 performBlock:v5];

  objc_destroyWeak(&v10);
}

void __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke_2_43(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (v2)
  {
    v3 = [WeakRetained tokens];
    v4 = [v3 containsObject:v2];

    if (v4)
    {
      [WeakRetained processModels:*(a1 + 32)];
    }
  }
}

- (void)loadCachedActions
{
  supportedActionTypes = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CNContactInlineActionsViewController_loadCachedActions__block_invoke;
  v6[3] = &unk_1E74E6970;
  v6[4] = self;
  v4 = [supportedActionTypes _cn_map:v6];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:supportedActionTypes];
  [(CNContactInlineActionsViewController *)self processModels:v5];
}

id __57__CNContactInlineActionsViewController_loadCachedActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionListDataSource];
  v6 = *(a1 + 32);
  v7 = [v6 contact];
  v8 = [v5 consumer:v6 currentActionModelForContact:v7 actionType:v4];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x1E6996BF0] emptyModel];
  }

  v10 = v9;

  return v10;
}

- (id)allModelsObservable
{
  supportedActionTypes = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CNContactInlineActionsViewController_allModelsObservable__block_invoke;
  v14[3] = &unk_1E74E6928;
  v14[4] = self;
  v4 = [supportedActionTypes _cn_map:v14];

  v5 = MEMORY[0x1E6996798];
  schedulerProvider = [(CNContactInlineActionsViewController *)self schedulerProvider];
  v7 = [v5 merge:v4 schedulerProvider:schedulerProvider];

  v8 = [v7 scan:&__block_literal_global_38_64161 seed:MEMORY[0x1E695E0F8]];
  [(CNContactInlineActionsViewController *)self throttleDelay];
  v10 = v9;
  schedulerProvider2 = [(CNContactInlineActionsViewController *)self schedulerProvider];
  v12 = [v8 throttle:schedulerProvider2 schedulerProvider:v10];

  return v12;
}

id __59__CNContactInlineActionsViewController_allModelsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionListDataSource];
  v5 = [*(a1 + 32) contact];
  v6 = [v4 consumer:0 actionModelsForContact:v5 actionType:v3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CNContactInlineActionsViewController_allModelsObservable__block_invoke_2;
  v10[3] = &unk_1E74E6900;
  v11 = v3;
  v7 = v3;
  v8 = [v6 map:v10];

  return v8;
}

id __59__CNContactInlineActionsViewController_allModelsObservable__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

id __59__CNContactInlineActionsViewController_allModelsObservable__block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7[0] = a2;
  v2 = MEMORY[0x1E695DF20];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)retrieveModelsForType:(id)type
{
  [(CNContactInlineActionsViewController *)self generateActionsControllerForActionType:type];
  actionsController = [(CNContactInlineActionsViewController *)self actionsController];
  [actionsController retrieveModels];

  return [(CNContactInlineActionsViewController *)self actionsController];
}

- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  controllerCopy = controller;
  menuCopy = menu;
  if (menuCopy)
  {
    actionsController = [(CNContactInlineActionsViewController *)self actionsController];

    if (actionsController == controllerCopy)
    {
      actionsView = [(CNContactInlineActionsViewController *)self actionsView];
      actionTypes = [controllerCopy actionTypes];
      firstObject = [actionTypes firstObject];
      v11 = [actionsView actionViewForType:firstObject];

      [v11 updateWithMenuItems:menuCopy];
      if ([menuCopy count])
      {
        delegate = [(CNContactInlineActionsViewController *)self delegate];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          delegate2 = [(CNContactInlineActionsViewController *)self delegate];
          [delegate2 contactInlineActionsViewControllerDidProcessModels:self];
        }
      }
    }
  }
}

- (void)updateVisibleActionItems:(id)items
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__CNContactInlineActionsViewController_updateVisibleActionItems___block_invoke;
  v3[3] = &unk_1E74E68D8;
  v3[4] = self;
  [items enumerateObjectsUsingBlock:v3];
}

void __65__CNContactInlineActionsViewController_updateVisibleActionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionsView];
  [v4 updateActionItem:v3];
}

- (void)displayAdditionalActionItems:(id)items
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__CNContactInlineActionsViewController_displayAdditionalActionItems___block_invoke;
  v3[3] = &unk_1E74E68D8;
  v3[4] = self;
  [items enumerateObjectsUsingBlock:v3];
}

void __69__CNContactInlineActionsViewController_displayAdditionalActionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionsView];
  [v4 addActionItem:v3];
}

- (void)removeVisibleActionItems:(id)items
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__CNContactInlineActionsViewController_removeVisibleActionItems___block_invoke;
  v3[3] = &unk_1E74E68D8;
  v3[4] = self;
  [items enumerateObjectsUsingBlock:v3];
}

void __65__CNContactInlineActionsViewController_removeVisibleActionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionsView];
  [v4 removeActionItem:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNContactInlineActionsViewController;
  [(CNContactInlineActionsViewController *)&v4 viewDidLoad];
  [(CNContactInlineActionsViewController *)self updateDesiredTitleFontSizeIfNeeded];
  actionItems = [(CNContactInlineActionsViewController *)self actionItems];
  [(CNContactInlineActionsViewController *)self displayAdditionalActionItems:actionItems];
}

- (void)loadView
{
  v7 = objc_alloc_init(CNActionsView);
  supportedActionTypes = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  [(CNActionsView *)v7 setSortedActionTypes:supportedActionTypes];

  [(CNActionsView *)v7 setActionsDelegate:self];
  [(CNContactInlineActionsViewController *)self actionTypesInterspace];
  [(CNActionsView *)v7 setSpacing:?];
  [(CNActionsView *)v7 setStyle:[(CNContactInlineActionsViewController *)self viewStyle]];
  [(CNContactInlineActionsViewController *)self setView:v7];
  [(CNContactInlineActionsViewController *)self setActionsView:v7];
  supportedActionTypes2 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v5 = [supportedActionTypes2 count];

  if (!v5)
  {
    actionsView = [(CNContactInlineActionsViewController *)self actionsView];
    [actionsView setHidden:1];
  }
}

- (double)throttleDelay
{
  displaysUnavailableActionTypes = [(CNContactInlineActionsViewController *)self displaysUnavailableActionTypes];
  result = 0.025;
  if (!displaysUnavailableActionTypes)
  {
    return 0.0;
  }

  return result;
}

- (void)setViewStyle:(int64_t)style
{
  self->_viewStyle = style;
  actionsView = [(CNContactInlineActionsViewController *)self actionsView];
  [actionsView setStyle:style];
}

- (void)setSupportedActionTypes:(id)types
{
  v18 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if (([typesCopy isEqual:self->_supportedActionTypes] & 1) == 0)
  {
    v5 = [typesCopy copy];
    supportedActionTypes = self->_supportedActionTypes;
    self->_supportedActionTypes = v5;

    [(CNContactInlineActionsViewController *)self reset];
    supportedActionTypes = [(CNContactInlineActionsViewController *)self supportedActionTypes];
    v8 = [supportedActionTypes count] == 0;
    actionsView = [(CNContactInlineActionsViewController *)self actionsView];
    [actionsView setHidden:v8];

    actionsView2 = [(CNContactInlineActionsViewController *)self actionsView];
    [actionsView2 setSortedActionTypes:typesCopy];

    if ([(CNContactInlineActionsViewController *)self displaysUnavailableActionTypes])
    {
      [(CNContactInlineActionsViewController *)self displayAllSupportedTypesDisabled];
    }

    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      contact = [(CNContactInlineActionsViewController *)self contact];
      shortDebugDescription = [contact shortDebugDescription];
      v14 = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = shortDebugDescription;
      _os_log_debug_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEBUG, "%@ just got new supportedActionTypes, contact is %@. Will discover action types…", &v14, 0x16u);
    }

    [(CNContactInlineActionsViewController *)self discoverAvailableActionTypes];
  }
}

- (void)setActionTypesInterspace:(double)interspace
{
  self->_actionTypesInterspace = interspace;
  actionsView = [(CNContactInlineActionsViewController *)self actionsView];
  [actionsView setSpacing:interspace];
}

- (void)checkinLaunchTasksForUndiscoverableActionsForContact:(id)contact
{
  contactCopy = contact;
  environment = [(CNContactInlineActionsViewController *)self environment];
  launchCheckinRegistrar = [environment launchCheckinRegistrar];

  emailAddresses = [contactCopy emailAddresses];
  v7 = [emailAddresses count];

  phoneNumbers = [contactCopy phoneNumbers];

  v9 = [phoneNumbers count];
  v10 = 32 * (v7 == 0);
  if (!v9 || (-[CNContactInlineActionsViewController environment](self, "environment"), v11 = objc_claimAutoreleasedReturnValue(), [v11 actionDiscoveringEnvironment], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "capabilities"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "areTelephonyCallsSupported"), v13, v12, v11, (v14 & 1) == 0))
  {
    v10 |= 8uLL;
  }

  if (v7 | v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 | 0x10;
  }

  v16 = launchCheckinRegistrar;
  if (v15)
  {
    [launchCheckinRegistrar checkInLaunchTasks:?];
    v16 = launchCheckinRegistrar;
  }
}

- (void)setupSingleContactActions
{
  v14 = *MEMORY[0x1E69E9840];
  [(CNContactInlineActionsViewController *)self reset];
  if ([(CNContactInlineActionsViewController *)self displaysUnavailableActionTypes])
  {
    [(CNContactInlineActionsViewController *)self displayAllSupportedTypesDisabled];
  }

  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    contact = [(CNContactInlineActionsViewController *)self contact];
    shortDebugDescription = [contact shortDebugDescription];
    actionListDataSource = [(CNContactInlineActionsViewController *)self actionListDataSource];
    v8 = 138412802;
    selfCopy = self;
    v10 = 2112;
    v11 = shortDebugDescription;
    v12 = 2112;
    v13 = actionListDataSource;
    _os_log_debug_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEBUG, "%@ just got new contact %@, dataSource is %@. Will discover action types…", &v8, 0x20u);
  }

  [(CNContactInlineActionsViewController *)self loadCachedActions];
  [(CNContactInlineActionsViewController *)self discoverAvailableActionTypes];
  contact2 = [(CNContactInlineActionsViewController *)self contact];
  [(CNContactInlineActionsViewController *)self checkinLaunchTasksForUndiscoverableActionsForContact:contact2];
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  if (self->_contacts != contactsCopy)
  {
    v6 = contactsCopy;
    objc_storeStrong(&self->_contacts, contacts);
    if ([(NSArray *)v6 count]< 2)
    {
      [(CNContactInlineActionsViewController *)self setupSingleContactActions];
    }

    else
    {
      [(CNContactInlineActionsViewController *)self setupGroupActions];
    }

    contactsCopy = v6;
  }
}

- (CNContact)contact
{
  contacts = [(CNContactInlineActionsViewController *)self contacts];
  if ([contacts count] > 1)
  {
    firstObject = 0;
  }

  else
  {
    contacts2 = [(CNContactInlineActionsViewController *)self contacts];
    firstObject = [contacts2 firstObject];
  }

  return firstObject;
}

- (void)setContact:(id)contact
{
  v8 = *MEMORY[0x1E69E9840];
  if (contact)
  {
    contactCopy = contact;
    v4 = MEMORY[0x1E695DEC8];
    contactCopy2 = contact;
    v6 = [v4 arrayWithObjects:&contactCopy count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [(CNContactInlineActionsViewController *)self setContacts:v6, contactCopy, v8];
}

- (void)setDisplaysTitles:(BOOL)titles
{
  titlesCopy = titles;
  contact = [(CNContactInlineActionsViewController *)self contact];

  if (contact)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"You must call %@ before a contact is set", v9}];
  }

  if (self->_displaysTitles != titlesCopy)
  {
    self->_displaysTitles = titlesCopy;

    [(CNContactInlineActionsViewController *)self updateDesiredTitleFontSizeIfNeeded];
  }
}

- (void)displayAllSupportedTypesDisabled
{
  supportedActionTypes = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v3 = [supportedActionTypes _cn_map:&__block_literal_global_25_64173];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:supportedActionTypes];
  [(CNContactInlineActionsViewController *)self processModels:v4];
}

- (void)setPosterTintColor:(id)color
{
  colorCopy = color;
  if (self->_posterTintColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_posterTintColor, color);
    actionsView = [(CNContactInlineActionsViewController *)self actionsView];
    [actionsView setPosterTintColor:v7];

    colorCopy = v7;
  }
}

- (void)updateDesiredTitleFontSizeIfNeeded
{
  v28[1] = *MEMORY[0x1E69E9840];
  actionsView = [(CNContactInlineActionsViewController *)self actionsView];
  titleFont = [actionsView titleFont];

  if (!titleFont)
  {
    actionsView2 = [(CNContactInlineActionsViewController *)self actionsView];

    if (actionsView2)
    {
      if (-[CNContactInlineActionsViewController displaysTitles](self, "displaysTitles") && -[CNContactInlineActionsViewController displaysUnavailableActionTypes](self, "displaysUnavailableActionTypes") && ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {
        supportedActionTypes = [(CNContactInlineActionsViewController *)self supportedActionTypes];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __74__CNContactInlineActionsViewController_updateDesiredTitleFontSizeIfNeeded__block_invoke;
        v24[3] = &unk_1E74E6890;
        v24[4] = self;
        v7 = [supportedActionTypes _cn_map:v24];

        longestString = [MEMORY[0x1E6996840] LongestString];
        v9 = [v7 _cn_reduce:longestString];

        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
        if (v11 <= 320.0)
        {
          v12 = 46.0;
        }

        else
        {
          v12 = 66.0;
        }

        v13 = +[CNActionView defaultTitleFont];
        v14 = *MEMORY[0x1E69DB648];
        v27 = *MEMORY[0x1E69DB648];
        v15 = +[CNActionView defaultTitleFont];
        v28[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        [v9 boundingRectWithSize:0 options:v16 attributes:0 context:{1.79769313e308, 1.79769313e308}];
        v18 = v17;

        if (v12 < v18)
        {
          v19 = [v13 fontWithSize:12.0];

          v25 = v14;
          v26 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          [v9 boundingRectWithSize:0 options:v20 attributes:0 context:{1.79769313e308, 1.79769313e308}];
          v22 = v21;

          if (v12 >= v22)
          {
            v13 = v19;
          }

          else
          {
            v13 = [v19 fontWithSize:10.0];
          }
        }

        actionsView3 = [(CNContactInlineActionsViewController *)self actionsView];
        [actionsView3 setTitleFont:v13];
      }
    }
  }
}

__CFString *__74__CNContactInlineActionsViewController_updateDesiredTitleFontSizeIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionListDataSource];
  v6 = [v5 consumer:*(a1 + 32) localizedButtonDisplayNameForActionType:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1F0CE7398;
  }

  v8 = v7;

  return v7;
}

- (void)setDisplaysUnavailableActionTypes:(BOOL)types
{
  typesCopy = types;
  contact = [(CNContactInlineActionsViewController *)self contact];

  if (contact)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"You must call %@ before a contact is set", v9}];
  }

  self->_displaysUnavailableActionTypes = typesCopy;
  if (typesCopy)
  {
    [(CNContactInlineActionsViewController *)self updateDesiredTitleFontSizeIfNeeded];

    [(CNContactInlineActionsViewController *)self displayAllSupportedTypesDisabled];
  }
}

- (void)dealloc
{
  tokens = [(CNContactInlineActionsViewController *)self tokens];
  [tokens enumerateObjectsUsingBlock:&__block_literal_global_10_64183];

  v4.receiver = self;
  v4.super_class = CNContactInlineActionsViewController;
  [(CNContactInlineActionsViewController *)&v4 dealloc];
}

- (CNContactInlineActionsViewController)initWithActionListDataSource:(id)source environment:(id)environment
{
  sourceCopy = source;
  environmentCopy = environment;
  v23.receiver = self;
  v23.super_class = CNContactInlineActionsViewController;
  v9 = [(CNContactInlineActionsViewController *)&v23 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionListDataSource, source);
    allSupportedActionTypes = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
    v12 = [allSupportedActionTypes copy];
    supportedActionTypes = v10->_supportedActionTypes;
    v10->_supportedActionTypes = v12;

    actionItems = v10->_actionItems;
    v15 = MEMORY[0x1E695E0F0];
    v10->_actionItems = MEMORY[0x1E695E0F0];

    tokens = v10->_tokens;
    v10->_tokens = v15;

    defaultActionPerType = v10->_defaultActionPerType;
    v10->_defaultActionPerType = MEMORY[0x1E695E0F8];

    ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v19 = 8.0;
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      v19 = 16.0;
    }

    v10->_actionTypesInterspace = v19;
    v10->_displaysUnavailableActionTypes = 0;
    v10->_displaysTitles = 0;
    defaultSchedulerProvider = [environmentCopy defaultSchedulerProvider];
    schedulerProvider = v10->_schedulerProvider;
    v10->_schedulerProvider = defaultSchedulerProvider;

    objc_storeStrong(&v10->_environment, environment);
  }

  return v10;
}

- (CNContactInlineActionsViewController)initWithContactActionsContext:(id)context
{
  contextCopy = context;
  dataSource = [contextCopy dataSource];
  environment = [contextCopy environment];

  v7 = [(CNContactInlineActionsViewController *)self initWithActionListDataSource:dataSource environment:environment];
  return v7;
}

- (CNContactInlineActionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [CNUIContactsEnvironment currentEnvironment:name];
  v6 = objc_alloc(MEMORY[0x1E6996BE8]);
  actionDiscoveringEnvironment = [v5 actionDiscoveringEnvironment];
  v8 = [v6 initWithDiscoveringEnvironment:actionDiscoveringEnvironment];

  v9 = [(CNContactInlineActionsViewController *)self initWithActionListDataSource:v8 environment:v5];
  return v9;
}

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  descriptorForRequiredKeys = [MEMORY[0x1E6996BE8] descriptorForRequiredKeys];
  v8[0] = descriptorForRequiredKeys;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactInlineActionsViewController descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_64196 != -1)
  {
    dispatch_once(&os_log_cn_once_token_1_64196, &__block_literal_global_64197);
  }

  v3 = os_log_cn_once_object_1_64198;

  return v3;
}

uint64_t __46__CNContactInlineActionsViewController_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNContactInlineActionsViewController");
  v1 = os_log_cn_once_object_1_64198;
  os_log_cn_once_object_1_64198 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end