@interface CNContactInlineActionsViewController
+ (id)descriptorForRequiredKeys;
+ (id)os_log;
- (BOOL)isGroupActionsView;
- (BOOL)shouldShowDisambiguationForAction:(id)a3;
- (CNActionsView)actionsView;
- (CNContact)contact;
- (CNContactInlineActionsViewController)initWithActionListDataSource:(id)a3 environment:(id)a4;
- (CNContactInlineActionsViewController)initWithContactActionsContext:(id)a3;
- (CNContactInlineActionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNContactInlineActionsViewControllerDelegate)delegate;
- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate;
- (double)throttleDelay;
- (id)actionImageTextStyleForViewStyle:(int64_t)a3;
- (id)allModelsObservable;
- (id)existingActionItemForType:(id)a3;
- (id)makeActionItemForType:(id)a3;
- (id)retrieveModelsForType:(id)a3;
- (void)checkinLaunchTasksForUndiscoverableActionsForContact:(id)a3;
- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4;
- (void)dealloc;
- (void)didSelectAction:(id)a3;
- (void)didSelectAction:(id)a3 withSourceView:(id)a4 longPress:(BOOL)a5;
- (void)didSelectActionType:(id)a3 withSourceView:(id)a4 longPress:(BOOL)a5;
- (void)discoverAvailableActionTypes;
- (void)displayActionForType:(id)a3 withDefaultAction:(id)a4 enabled:(BOOL)a5;
- (void)displayAdditionalActionItems:(id)a3;
- (void)displayAllSupportedTypesDisabled;
- (void)generateActionsControllerForActionType:(id)a3;
- (void)loadCachedActions;
- (void)loadView;
- (void)notifyDelegateOfDisambiguationForActionType:(id)a3;
- (void)notifyDelegateOfPerformedActionType:(id)a3 fromDisambiguation:(BOOL)a4;
- (void)performAction:(id)a3;
- (void)performGroupActionForType:(id)a3;
- (void)processModels:(id)a3;
- (void)removeActionForType:(id)a3;
- (void)removeVisibleActionItems:(id)a3;
- (void)reset;
- (void)setActionTypesInterspace:(double)a3;
- (void)setContact:(id)a3;
- (void)setContacts:(id)a3;
- (void)setDisplaysTitles:(BOOL)a3;
- (void)setDisplaysUnavailableActionTypes:(BOOL)a3;
- (void)setPosterTintColor:(id)a3;
- (void)setSupportedActionTypes:(id)a3;
- (void)setViewStyle:(int64_t)a3;
- (void)setupGroupActions;
- (void)setupSingleContactActions;
- (void)updateActionItem:(id)a3 withDefaultAction:(id)a4;
- (void)updateDesiredTitleFontSizeIfNeeded;
- (void)updateVisibleActionItems:(id)a3;
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

- (id)actionImageTextStyleForViewStyle:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v3 = MEMORY[0x1E69DDDC8];
  }

  else
  {
    v3 = MEMORY[0x1E69DDCF8];
  }

  return *v3;
}

- (void)notifyDelegateOfDisambiguationForActionType:(id)a3
{
  v7 = a3;
  v4 = [(CNContactInlineActionsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactInlineActionsViewController *)self delegate];
    [v6 contactInlineActionsViewController:self willPresentDisambiguationUIForActionType:v7];
  }
}

- (void)notifyDelegateOfPerformedActionType:(id)a3 fromDisambiguation:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(CNContactInlineActionsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNContactInlineActionsViewController *)self delegate];
    [v8 contactInlineActionsViewController:self didPerformActionOfType:v9 fromDisambiguation:v4];
  }
}

- (BOOL)isGroupActionsView
{
  v3 = [(CNContactInlineActionsViewController *)self contact];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CNContactInlineActionsViewController *)self contacts];
    v4 = [v5 count] > 1;
  }

  return v4;
}

- (void)performGroupActionForType:(id)a3
{
  v7 = a3;
  if ([(CNContactInlineActionsViewController *)self isGroupActionsView])
  {
    v4 = [(CNContactInlineActionsViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNContactInlineActionsViewController *)self delegate];
      [v6 contactInlineActionsViewController:self didSelectActionOfType:v7];

      [(CNContactInlineActionsViewController *)self notifyDelegateOfPerformedActionType:v7 fromDisambiguation:0];
    }
  }
}

- (void)setupGroupActions
{
  v3 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__CNContactInlineActionsViewController_setupGroupActions__block_invoke;
  v4[3] = &unk_1E74E6A60;
  v4[4] = self;
  [v3 _cn_each:v4];
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

- (BOOL)shouldShowDisambiguationForAction:(id)a3
{
  v4 = a3;
  if ([(CNContactInlineActionsViewController *)self isGroupActionsView])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CNContactInlineActionsViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNContactInlineActionsViewController *)self delegate];
      v9 = [v4 type];
      v5 = [v8 contactInlineActionsViewController:self shouldPresentDisambiguationUIForActionOfType:v9];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)generateActionsControllerForActionType:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactInlineActionsViewController *)self actionsController];
  [v5 cancelModels];

  v6 = [(CNContactInlineActionsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[CNContactInlineActionsViewController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 contactInlineActionsViewController:self shouldPresentDisambiguationUIForActionOfType:v4], v8, v9))
  {
    v10 = [CNContactActionsController alloc];
    v11 = [(CNContactInlineActionsViewController *)self contact];
    v12 = [(CNContactInlineActionsViewController *)self actionListDataSource];
    v18[0] = v4;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14 = [(CNContactActionsController *)v10 initWithContact:v11 dataSource:v12 actionTypes:v13];
    [(CNContactInlineActionsViewController *)self setActionsController:v14];

    v15 = [(CNContactInlineActionsViewController *)self actionsController];
    [v15 setShouldUseOutlinedActionGlyphStyle:1];

    v16 = [(CNContactInlineActionsViewController *)self actionsController];
    [v16 setDisplayNonDefaultAppsMenuTitle:1];

    v17 = [(CNContactInlineActionsViewController *)self actionsController];
    [v17 setDelegate:self];
  }
}

- (void)performAction:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactInlineActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[CNContactInlineActionsViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), -[__CFString type](v4, "type"), v8 = objc_claimAutoreleasedReturnValue(), -[__CFString contactProperty](v4, "contactProperty"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v7 contactInlineActionsViewController:self shouldPerformActionOfType:v8 withContactProperty:v9], v9, v8, v7, v10))
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
        v45 = v37;
        v46 = 2048;
        v47 = v4;
        _os_log_fault_impl(&dword_199A75000, v16, OS_LOG_TYPE_FAULT, " CNContactInlineActionsViewController encountered an  unexpected base CNUIUserActionItem - action %@(%p)", &v44, 0x16u);
      }

      goto LABEL_28;
    }

    v12 = [(CNContactInlineActionsViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(CNContactInlineActionsViewController *)self delegate];
      v15 = [(__CFString *)v4 type];
      [v14 contactInlineActionsViewController:self willPerformActionOfType:v15];
    }

    v16 = objc_alloc_init(MEMORY[0x1E6996BD0]);
    v17 = [(CNContactInlineActionsViewController *)self geminiChannelIdentifier];
    if (v17 && (v18 = v17, -[CNContactInlineActionsViewController geminiChannelIdentifier](self, "geminiChannelIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 length], v19, v18, v20))
    {
      v21 = [(CNContactInlineActionsViewController *)self geminiChannelIdentifier];
      [v16 setChannelIdentifier:v21];
    }

    else
    {
      v22 = [(CNContactInlineActionsViewController *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if ((v23 & 1) == 0)
      {
LABEL_12:
        v26 = [(__CFString *)v4 contactProperty];
        v27 = [v26 contact];
        v28 = [v27 identifier];
        v29 = v28;
        v30 = @"Unknown Contact identifier";
        if (v28)
        {
          v30 = v28;
        }

        v31 = v30;

        v32 = [(CNContactInlineActionsViewController *)self delegate];
        if (v32)
        {
          v33 = [(CNContactInlineActionsViewController *)self delegate];
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
        }

        else
        {
          v35 = @"No delegate";
        }

        v38 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [(__CFString *)v4 type];
          v44 = 138543618;
          v45 = v39;
          v46 = 2114;
          v47 = v31;
          _os_log_impl(&dword_199A75000, v38, OS_LOG_TYPE_DEFAULT, "CNContactInlineActionsViewController performing action: %{public}@ for: %{public}@", &v44, 0x16u);
        }

        v40 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v44 = 138543362;
          v45 = v35;
          _os_log_impl(&dword_199A75000, v40, OS_LOG_TYPE_DEFAULT, "  Delegate: %{public}@", &v44, 0xCu);
        }

        v41 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v44 = 138543362;
          v45 = self;
          _os_log_impl(&dword_199A75000, v41, OS_LOG_TYPE_DEFAULT, "  View Controller: %{public}@", &v44, 0xCu);
        }

        v42 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v44) = 0;
          _os_log_impl(&dword_199A75000, v42, OS_LOG_TYPE_DEFAULT, "End performing action logging", &v44, 2u);
        }

        v43 = [(__CFString *)v4 performActionWithContext:v16];
LABEL_28:

        goto LABEL_29;
      }

      v21 = [(CNContactInlineActionsViewController *)self delegate];
      v24 = [v21 geminiDataSource];
      v25 = [v24 channelIdentifier];
      [v16 setChannelIdentifier:v25];
    }

    goto LABEL_12;
  }

LABEL_29:
}

- (void)didSelectAction:(id)a3
{
  v4 = a3;
  v5 = [(CNContactInlineActionsViewController *)self actionsControllerPresentation];
  v6 = [v5 presentedViewController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CNContactInlineActionsViewController_didSelectAction___block_invoke;
  v10[3] = &unk_1E74E6A88;
  v10[4] = self;
  [v6 dismissViewControllerAnimated:1 completion:v10];

  [(CNContactInlineActionsViewController *)self performAction:v4];
  v7 = [v4 type];
  v8 = [(CNContactInlineActionsViewController *)self actionListDataSource];
  v9 = [(CNContactInlineActionsViewController *)self contact];
  [v8 consumer:self didSelectItem:v4 forContact:v9 actionType:v7];

  [(CNContactInlineActionsViewController *)self notifyDelegateOfPerformedActionType:v7 fromDisambiguation:1];
  [(CNContactInlineActionsViewController *)self setActionsController:0];
}

- (void)didSelectAction:(id)a3 withSourceView:(id)a4 longPress:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 type];
  [(CNContactInlineActionsViewController *)self didSelectActionType:v9 withSourceView:v8 longPress:v5];
}

- (void)didSelectActionType:(id)a3 withSourceView:(id)a4 longPress:(BOOL)a5
{
  v16 = a3;
  v7 = [(CNContactInlineActionsViewController *)self isGroupActionsView];
  if (!v7)
  {
    if (a5)
    {
      [(CNContactInlineActionsViewController *)self generateActionsControllerForActionType:v16];
      v9 = [(CNContactInlineActionsViewController *)self actionsController];
      [v9 retrieveModels];

      v7 = [(CNContactInlineActionsViewController *)self notifyDelegateOfDisambiguationForActionType:v16];
      goto LABEL_12;
    }

    v10 = [(CNContactInlineActionsViewController *)self defaultActionPerType];
    v11 = [v10 objectForKeyedSubscript:v16];

    if (v11)
    {
      v12 = [(CNContactInlineActionsViewController *)self defaultActionPerType];
      v13 = [v12 objectForKeyedSubscript:v16];
      [(CNContactInlineActionsViewController *)self performAction:v13];
    }

    else
    {
      v14 = [(CNContactInlineActionsViewController *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
LABEL_11:
        v7 = [(CNContactInlineActionsViewController *)self notifyDelegateOfPerformedActionType:v16 fromDisambiguation:0];
        goto LABEL_12;
      }

      v12 = [(CNContactInlineActionsViewController *)self delegate];
      [v12 contactInlineActionsViewController:self didSelectActionOfType:v16];
    }

    goto LABEL_11;
  }

  v8 = v16;
  if (a5)
  {
    goto LABEL_13;
  }

  v7 = [(CNContactInlineActionsViewController *)self performGroupActionForType:v16];
LABEL_12:
  v8 = v16;
LABEL_13:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)reset
{
  v3 = [(CNContactInlineActionsViewController *)self actionItems];
  v4 = [v3 isEqual:MEMORY[0x1E695E0F0]];

  if ((v4 & 1) == 0)
  {
    v5 = [(CNContactInlineActionsViewController *)self actionsView];
    [v5 resetActions];

    [(CNContactInlineActionsViewController *)self setActionItems:MEMORY[0x1E695E0F0]];
    v6 = MEMORY[0x1E695E0F8];

    [(CNContactInlineActionsViewController *)self setDefaultActionPerType:v6];
  }
}

- (id)existingActionItemForType:(id)a3
{
  v4 = a3;
  v5 = [(CNContactInlineActionsViewController *)self actionItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__CNContactInlineActionsViewController_existingActionItemForType___block_invoke;
  v9[3] = &unk_1E74E6A38;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __66__CNContactInlineActionsViewController_existingActionItemForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)updateActionItem:(id)a3 withDefaultAction:(id)a4
{
  v12 = a3;
  if ([(CNContactInlineActionsViewController *)self displaysTitles])
  {
    v5 = [(CNContactInlineActionsViewController *)self actionListDataSource];
    v6 = [v12 type];
    v7 = [v5 consumer:self localizedButtonDisplayNameForActionType:v6];

    [v12 setTitle:v7];
    v8 = [(CNContactInlineActionsViewController *)self delegate];
    LOBYTE(v6) = objc_opt_respondsToSelector();

    if (v6)
    {
      v9 = [(CNContactInlineActionsViewController *)self delegate];
      v10 = [v12 type];
      v11 = [v9 contactInlineActionsViewController:self overrideTitleForActionOfType:v10];

      if (v11)
      {
        [v12 setTitle:v11];
      }
    }
  }
}

- (id)makeActionItemForType:(id)a3
{
  v4 = a3;
  v5 = [(CNContactInlineActionsViewController *)self actionImageTextStyleForViewStyle:[(CNContactInlineActionsViewController *)self viewStyle]];
  v6 = [MEMORY[0x1E69DCAB8] cnui_userActionSymbolImageForActionType:v4 scale:-1 withColor:0 compatibleWithTextStyle:v5];
  v7 = [(CNContactInlineActionsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNContactInlineActionsViewController *)self delegate];
    v10 = [v9 contactInlineActionsViewController:self overrideImageForActionOfType:v4];

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

  v13 = [[CNActionItem alloc] initWithImage:v6 type:v4];

  return v13;
}

- (void)removeActionForType:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNContactInlineActionsViewController *)self existingActionItemForType:a3];
  if (v4)
  {
    v5 = [(CNContactInlineActionsViewController *)self actionItems];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CNContactInlineActionsViewController_removeActionForType___block_invoke;
    v9[3] = &unk_1E74E6A38;
    v6 = v4;
    v10 = v6;
    v7 = [v5 _cn_filter:v9];
    [(CNContactInlineActionsViewController *)self setActionItems:v7];

    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(CNContactInlineActionsViewController *)self removeVisibleActionItems:v8];
  }
}

- (void)displayActionForType:(id)a3 withDefaultAction:(id)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(CNContactInlineActionsViewController *)self existingActionItemForType:v8];
  v11 = v10;
  if (!v10)
  {
    v11 = [(CNContactInlineActionsViewController *)self makeActionItemForType:v8];
  }

  [v11 setDisabled:!v5];
  v12 = [(CNContactInlineActionsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(CNContactInlineActionsViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(CNContactInlineActionsViewController *)self delegate];
      v16 = [v15 contactInlineActionsViewController:self shouldOverrideEnabledStateForActionOfType:v8];

      if (v16)
      {
        v17 = [(CNContactInlineActionsViewController *)self delegate];
        v18 = [v17 contactInlineActionsViewController:self overrideEnabledStateForActionOfType:v8];

        [v11 setDisabled:v18 ^ 1u];
      }
    }
  }

  else
  {
  }

  [(CNContactInlineActionsViewController *)self updateActionItem:v11 withDefaultAction:v9];
  if (v10)
  {
    v23[0] = v11;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(CNContactInlineActionsViewController *)self updateVisibleActionItems:v19];
  }

  else
  {
    v20 = [(CNContactInlineActionsViewController *)self actionItems];
    v21 = [v20 arrayByAddingObject:v11];
    [(CNContactInlineActionsViewController *)self setActionItems:v21];

    v22 = v11;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [(CNContactInlineActionsViewController *)self displayAdditionalActionItems:v19];
  }
}

- (void)processModels:(id)a3
{
  v4 = a3;
  v5 = [(CNContactInlineActionsViewController *)self defaultActionPerType];
  v6 = [v5 mutableCopy];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __54__CNContactInlineActionsViewController_processModels___block_invoke;
  v13 = &unk_1E74E6A10;
  v7 = v6;
  v14 = v7;
  v15 = self;
  [v4 _cn_each:&v10];

  [(CNContactInlineActionsViewController *)self setDefaultActionPerType:v7, v10, v11, v12, v13];
  v8 = [(CNContactInlineActionsViewController *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(CNContactInlineActionsViewController *)self delegate];
    [v9 contactInlineActionsViewControllerDidProcessModels:self];
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
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(CNContactInlineActionsViewController *)self contact];
    v16 = [v15 shortDebugDescription];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "%@ canceling previous action discovering requests, contact now is %@", buf, 0x16u);
  }

  v4 = [(CNContactInlineActionsViewController *)self tokens];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke;
  v26[3] = &unk_1E74E6998;
  v26[4] = self;
  [v4 enumerateObjectsUsingBlock:v26];

  [(CNContactInlineActionsViewController *)self setTokens:MEMORY[0x1E695E0F0]];
  v5 = [(CNContactInlineActionsViewController *)self contact];
  LOBYTE(v4) = v5 == 0;

  if ((v4 & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v32 = __Block_byref_object_copy__64153;
    v33 = __Block_byref_object_dispose__64154;
    v34[0] = 0;
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(CNContactInlineActionsViewController *)self contact];
      v18 = [v17 shortDebugDescription];
      *v27 = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v18;
      _os_log_debug_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEBUG, "%@ subscribing action discovering requests for contact %@.", v27, 0x16u);
    }

    v8 = [(CNContactInlineActionsViewController *)self allModelsObservable];
    v9 = [(CNContactInlineActionsViewController *)self schedulerProvider];
    v10 = [v9 backgroundScheduler];
    v11 = [v8 subscribeOn:v10];
    v12 = MEMORY[0x1E69967A0];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __68__CNContactInlineActionsViewController_discoverAvailableActionTypes__block_invoke_42;
    v22 = &unk_1E74E69E8;
    objc_copyWeak(&v24, &location);
    v23 = buf;
    v13 = [v12 observerWithResultBlock:&v19];
    v14 = [v11 subscribe:{v13, v19, v20, v21, v22}];

    [v6 addObject:v14];
    objc_storeWeak((*&buf[8] + 40), v14);
    [(CNContactInlineActionsViewController *)self setTokens:v6];

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
  v3 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CNContactInlineActionsViewController_loadCachedActions__block_invoke;
  v6[3] = &unk_1E74E6970;
  v6[4] = self;
  v4 = [v3 _cn_map:v6];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3];
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
  v3 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CNContactInlineActionsViewController_allModelsObservable__block_invoke;
  v14[3] = &unk_1E74E6928;
  v14[4] = self;
  v4 = [v3 _cn_map:v14];

  v5 = MEMORY[0x1E6996798];
  v6 = [(CNContactInlineActionsViewController *)self schedulerProvider];
  v7 = [v5 merge:v4 schedulerProvider:v6];

  v8 = [v7 scan:&__block_literal_global_38_64161 seed:MEMORY[0x1E695E0F8]];
  [(CNContactInlineActionsViewController *)self throttleDelay];
  v10 = v9;
  v11 = [(CNContactInlineActionsViewController *)self schedulerProvider];
  v12 = [v8 throttle:v11 schedulerProvider:v10];

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

- (id)retrieveModelsForType:(id)a3
{
  [(CNContactInlineActionsViewController *)self generateActionsControllerForActionType:a3];
  v4 = [(CNContactInlineActionsViewController *)self actionsController];
  [v4 retrieveModels];

  return [(CNContactInlineActionsViewController *)self actionsController];
}

- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(CNContactInlineActionsViewController *)self actionsController];

    if (v7 == v15)
    {
      v8 = [(CNContactInlineActionsViewController *)self actionsView];
      v9 = [v15 actionTypes];
      v10 = [v9 firstObject];
      v11 = [v8 actionViewForType:v10];

      [v11 updateWithMenuItems:v6];
      if ([v6 count])
      {
        v12 = [(CNContactInlineActionsViewController *)self delegate];
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = [(CNContactInlineActionsViewController *)self delegate];
          [v14 contactInlineActionsViewControllerDidProcessModels:self];
        }
      }
    }
  }
}

- (void)updateVisibleActionItems:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__CNContactInlineActionsViewController_updateVisibleActionItems___block_invoke;
  v3[3] = &unk_1E74E68D8;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __65__CNContactInlineActionsViewController_updateVisibleActionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionsView];
  [v4 updateActionItem:v3];
}

- (void)displayAdditionalActionItems:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__CNContactInlineActionsViewController_displayAdditionalActionItems___block_invoke;
  v3[3] = &unk_1E74E68D8;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __69__CNContactInlineActionsViewController_displayAdditionalActionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionsView];
  [v4 addActionItem:v3];
}

- (void)removeVisibleActionItems:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__CNContactInlineActionsViewController_removeVisibleActionItems___block_invoke;
  v3[3] = &unk_1E74E68D8;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
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
  v3 = [(CNContactInlineActionsViewController *)self actionItems];
  [(CNContactInlineActionsViewController *)self displayAdditionalActionItems:v3];
}

- (void)loadView
{
  v7 = objc_alloc_init(CNActionsView);
  v3 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  [(CNActionsView *)v7 setSortedActionTypes:v3];

  [(CNActionsView *)v7 setActionsDelegate:self];
  [(CNContactInlineActionsViewController *)self actionTypesInterspace];
  [(CNActionsView *)v7 setSpacing:?];
  [(CNActionsView *)v7 setStyle:[(CNContactInlineActionsViewController *)self viewStyle]];
  [(CNContactInlineActionsViewController *)self setView:v7];
  [(CNContactInlineActionsViewController *)self setActionsView:v7];
  v4 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(CNContactInlineActionsViewController *)self actionsView];
    [v6 setHidden:1];
  }
}

- (double)throttleDelay
{
  v2 = [(CNContactInlineActionsViewController *)self displaysUnavailableActionTypes];
  result = 0.025;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (void)setViewStyle:(int64_t)a3
{
  self->_viewStyle = a3;
  v4 = [(CNContactInlineActionsViewController *)self actionsView];
  [v4 setStyle:a3];
}

- (void)setSupportedActionTypes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isEqual:self->_supportedActionTypes] & 1) == 0)
  {
    v5 = [v4 copy];
    supportedActionTypes = self->_supportedActionTypes;
    self->_supportedActionTypes = v5;

    [(CNContactInlineActionsViewController *)self reset];
    v7 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
    v8 = [v7 count] == 0;
    v9 = [(CNContactInlineActionsViewController *)self actionsView];
    [v9 setHidden:v8];

    v10 = [(CNContactInlineActionsViewController *)self actionsView];
    [v10 setSortedActionTypes:v4];

    if ([(CNContactInlineActionsViewController *)self displaysUnavailableActionTypes])
    {
      [(CNContactInlineActionsViewController *)self displayAllSupportedTypesDisabled];
    }

    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(CNContactInlineActionsViewController *)self contact];
      v13 = [v12 shortDebugDescription];
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v13;
      _os_log_debug_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEBUG, "%@ just got new supportedActionTypes, contact is %@. Will discover action types…", &v14, 0x16u);
    }

    [(CNContactInlineActionsViewController *)self discoverAvailableActionTypes];
  }
}

- (void)setActionTypesInterspace:(double)a3
{
  self->_actionTypesInterspace = a3;
  v4 = [(CNContactInlineActionsViewController *)self actionsView];
  [v4 setSpacing:a3];
}

- (void)checkinLaunchTasksForUndiscoverableActionsForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactInlineActionsViewController *)self environment];
  v17 = [v5 launchCheckinRegistrar];

  v6 = [v4 emailAddresses];
  v7 = [v6 count];

  v8 = [v4 phoneNumbers];

  v9 = [v8 count];
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

  v16 = v17;
  if (v15)
  {
    [v17 checkInLaunchTasks:?];
    v16 = v17;
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

  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(CNContactInlineActionsViewController *)self contact];
    v6 = [v5 shortDebugDescription];
    v7 = [(CNContactInlineActionsViewController *)self actionListDataSource];
    v8 = 138412802;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "%@ just got new contact %@, dataSource is %@. Will discover action types…", &v8, 0x20u);
  }

  [(CNContactInlineActionsViewController *)self loadCachedActions];
  [(CNContactInlineActionsViewController *)self discoverAvailableActionTypes];
  v4 = [(CNContactInlineActionsViewController *)self contact];
  [(CNContactInlineActionsViewController *)self checkinLaunchTasksForUndiscoverableActionsForContact:v4];
}

- (void)setContacts:(id)a3
{
  v5 = a3;
  if (self->_contacts != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contacts, a3);
    if ([(NSArray *)v6 count]< 2)
    {
      [(CNContactInlineActionsViewController *)self setupSingleContactActions];
    }

    else
    {
      [(CNContactInlineActionsViewController *)self setupGroupActions];
    }

    v5 = v6;
  }
}

- (CNContact)contact
{
  v3 = [(CNContactInlineActionsViewController *)self contacts];
  if ([v3 count] > 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(CNContactInlineActionsViewController *)self contacts];
    v5 = [v4 firstObject];
  }

  return v5;
}

- (void)setContact:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [(CNContactInlineActionsViewController *)self setContacts:v6, v7, v8];
}

- (void)setDisplaysTitles:(BOOL)a3
{
  v3 = a3;
  v6 = [(CNContactInlineActionsViewController *)self contact];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"You must call %@ before a contact is set", v9}];
  }

  if (self->_displaysTitles != v3)
  {
    self->_displaysTitles = v3;

    [(CNContactInlineActionsViewController *)self updateDesiredTitleFontSizeIfNeeded];
  }
}

- (void)displayAllSupportedTypesDisabled
{
  v5 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
  v3 = [v5 _cn_map:&__block_literal_global_25_64173];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v5];
  [(CNContactInlineActionsViewController *)self processModels:v4];
}

- (void)setPosterTintColor:(id)a3
{
  v5 = a3;
  if (self->_posterTintColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_posterTintColor, a3);
    v6 = [(CNContactInlineActionsViewController *)self actionsView];
    [v6 setPosterTintColor:v7];

    v5 = v7;
  }
}

- (void)updateDesiredTitleFontSizeIfNeeded
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactInlineActionsViewController *)self actionsView];
  v4 = [v3 titleFont];

  if (!v4)
  {
    v5 = [(CNContactInlineActionsViewController *)self actionsView];

    if (v5)
    {
      if (-[CNContactInlineActionsViewController displaysTitles](self, "displaysTitles") && -[CNContactInlineActionsViewController displaysUnavailableActionTypes](self, "displaysUnavailableActionTypes") && ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
      {
        v6 = [(CNContactInlineActionsViewController *)self supportedActionTypes];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __74__CNContactInlineActionsViewController_updateDesiredTitleFontSizeIfNeeded__block_invoke;
        v24[3] = &unk_1E74E6890;
        v24[4] = self;
        v7 = [v6 _cn_map:v24];

        v8 = [MEMORY[0x1E6996840] LongestString];
        v9 = [v7 _cn_reduce:v8];

        v10 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v10 bounds];
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

        v23 = [(CNContactInlineActionsViewController *)self actionsView];
        [v23 setTitleFont:v13];
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

- (void)setDisplaysUnavailableActionTypes:(BOOL)a3
{
  v3 = a3;
  v6 = [(CNContactInlineActionsViewController *)self contact];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"You must call %@ before a contact is set", v9}];
  }

  self->_displaysUnavailableActionTypes = v3;
  if (v3)
  {
    [(CNContactInlineActionsViewController *)self updateDesiredTitleFontSizeIfNeeded];

    [(CNContactInlineActionsViewController *)self displayAllSupportedTypesDisabled];
  }
}

- (void)dealloc
{
  v3 = [(CNContactInlineActionsViewController *)self tokens];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_10_64183];

  v4.receiver = self;
  v4.super_class = CNContactInlineActionsViewController;
  [(CNContactInlineActionsViewController *)&v4 dealloc];
}

- (CNContactInlineActionsViewController)initWithActionListDataSource:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = CNContactInlineActionsViewController;
  v9 = [(CNContactInlineActionsViewController *)&v23 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionListDataSource, a3);
    v11 = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
    v12 = [v11 copy];
    supportedActionTypes = v10->_supportedActionTypes;
    v10->_supportedActionTypes = v12;

    actionItems = v10->_actionItems;
    v15 = MEMORY[0x1E695E0F0];
    v10->_actionItems = MEMORY[0x1E695E0F0];

    tokens = v10->_tokens;
    v10->_tokens = v15;

    defaultActionPerType = v10->_defaultActionPerType;
    v10->_defaultActionPerType = MEMORY[0x1E695E0F8];

    v18 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v19 = 8.0;
    if (v18)
    {
      v19 = 16.0;
    }

    v10->_actionTypesInterspace = v19;
    v10->_displaysUnavailableActionTypes = 0;
    v10->_displaysTitles = 0;
    v20 = [v8 defaultSchedulerProvider];
    schedulerProvider = v10->_schedulerProvider;
    v10->_schedulerProvider = v20;

    objc_storeStrong(&v10->_environment, a4);
  }

  return v10;
}

- (CNContactInlineActionsViewController)initWithContactActionsContext:(id)a3
{
  v4 = a3;
  v5 = [v4 dataSource];
  v6 = [v4 environment];

  v7 = [(CNContactInlineActionsViewController *)self initWithActionListDataSource:v5 environment:v6];
  return v7;
}

- (CNContactInlineActionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [CNUIContactsEnvironment currentEnvironment:a3];
  v6 = objc_alloc(MEMORY[0x1E6996BE8]);
  v7 = [v5 actionDiscoveringEnvironment];
  v8 = [v6 initWithDiscoveringEnvironment:v7];

  v9 = [(CNContactInlineActionsViewController *)self initWithActionListDataSource:v8 environment:v5];
  return v9;
}

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E6996BE8] descriptorForRequiredKeys];
  v8[0] = v3;
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