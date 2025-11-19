@interface CNGroupIdentityInlineActionsViewController
- (BOOL)contactInlineActionsViewController:(id)a3 canPerformGroupActionOfType:(id)a4;
- (BOOL)contactInlineActionsViewController:(id)a3 overrideEnabledStateForActionOfType:(id)a4;
- (BOOL)contactInlineActionsViewController:(id)a3 shouldOverrideEnabledStateForActionOfType:(id)a4;
- (BOOL)contactInlineActionsViewController:(id)a3 shouldPresentDisambiguationUIForActionOfType:(id)a4;
- (BOOL)shouldOverrideEnabledStateForActionItem:(id)a3;
- (CNGroupIdentityInlineActionsViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4;
- (CNGroupIdentityInlineActionsViewControllerDelegate)delegate;
- (double)actionsViewHeightThatFits:(CGSize)a3;
- (id)actionsContainerView;
- (id)actionsView;
- (id)contactInlineActionsViewController:(id)a3 overrideImageForActionOfType:(id)a4;
- (id)contactInlineActionsViewController:(id)a3 overrideTitleForActionOfType:(id)a4;
- (id)viewForActionAtIndex:(unint64_t)a3;
- (int64_t)style;
- (void)contactInlineActionsViewController:(id)a3 didPerformActionOfType:(id)a4 fromDisambiguation:(BOOL)a5;
- (void)contactInlineActionsViewController:(id)a3 didSelectActionOfType:(id)a4;
- (void)contactInlineActionsViewController:(id)a3 willPresentDisambiguationUIForActionType:(id)a4;
- (void)setGroup:(id)a3;
- (void)setupActionsView;
- (void)updateActionsViewForUpdatedActionItem:(id)a3;
- (void)viewDidLoad;
@end

@implementation CNGroupIdentityInlineActionsViewController

- (CNGroupIdentityInlineActionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)contactInlineActionsViewController:(id)a3 overrideEnabledStateForActionOfType:(id)a4
{
  v5 = a4;
  v6 = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  v7 = [v6 actionsPerType];
  v8 = [v7 objectForKeyedSubscript:v5];

  LOBYTE(v6) = [v8 overrideEnabledState];
  return v6;
}

- (BOOL)contactInlineActionsViewController:(id)a3 shouldOverrideEnabledStateForActionOfType:(id)a4
{
  v5 = a4;
  v6 = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  v7 = [v6 actionsPerType];
  v8 = [v7 objectForKeyedSubscript:v5];

  LOBYTE(self) = [(CNGroupIdentityInlineActionsViewController *)self shouldOverrideEnabledStateForActionItem:v8];
  return self;
}

- (id)contactInlineActionsViewController:(id)a3 overrideTitleForActionOfType:(id)a4
{
  v5 = a4;
  v6 = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  v7 = [v6 actionsPerType];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [v8 title];

  return v9;
}

- (id)contactInlineActionsViewController:(id)a3 overrideImageForActionOfType:(id)a4
{
  v5 = a4;
  v6 = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  v7 = [v6 actionsPerType];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [v8 image];

  return v9;
}

- (BOOL)contactInlineActionsViewController:(id)a3 shouldPresentDisambiguationUIForActionOfType:(id)a4
{
  v5 = a4;
  v6 = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  v7 = [v6 actionsPerType];
  v8 = [v7 objectForKeyedSubscript:v5];

  LOBYTE(v6) = [v8 shouldPresentDisambiguationUI];
  return v6;
}

- (BOOL)contactInlineActionsViewController:(id)a3 canPerformGroupActionOfType:(id)a4
{
  v5 = a4;
  v6 = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  v7 = [v6 actionsPerType];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 actionBlock];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)contactInlineActionsViewController:(id)a3 didSelectActionOfType:(id)a4
{
  v10 = a4;
  v5 = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  v6 = [v5 actionsPerType];
  v7 = [v6 objectForKeyedSubscript:v10];

  if (v7)
  {
    v8 = [v7 actionBlock];

    if (v8)
    {
      v9 = [v7 actionBlock];
      (v9)[2](v9, v10);
    }
  }
}

- (void)contactInlineActionsViewController:(id)a3 willPresentDisambiguationUIForActionType:(id)a4
{
  v8 = a4;
  v5 = [(CNGroupIdentityInlineActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNGroupIdentityInlineActionsViewController *)self delegate];
    [v7 groupIdentityInlineActionsViewController:self willPresentDisambiguationUIForActionType:v8];
  }
}

- (void)contactInlineActionsViewController:(id)a3 didPerformActionOfType:(id)a4 fromDisambiguation:(BOOL)a5
{
  v5 = a5;
  v10 = a4;
  v7 = [(CNGroupIdentityInlineActionsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNGroupIdentityInlineActionsViewController *)self delegate];
    [v9 groupIdentityInlineActionsViewController:self didPerformActionOfType:v10 fromDisambiguation:v5];
  }
}

- (double)actionsViewHeightThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  v6 = [v5 actionsView];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;

  return v8;
}

- (void)setupActionsView
{
  v24[4] = *MEMORY[0x1E69E9840];
  v3 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  v4 = [v3 view];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  [(CNGroupIdentityInlineActionsViewController *)self addChildViewController:v5];

  v6 = [(CNGroupIdentityInlineActionsViewController *)self view];
  [v6 addSubview:v4];

  v22 = [v4 topAnchor];
  v23 = [(CNGroupIdentityInlineActionsViewController *)self view];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v18 = [v4 leadingAnchor];
  v19 = [(CNGroupIdentityInlineActionsViewController *)self view];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v24[1] = v16;
  v7 = [v4 trailingAnchor];
  v8 = [(CNGroupIdentityInlineActionsViewController *)self view];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v24[2] = v10;
  v11 = [v4 bottomAnchor];
  v12 = [(CNGroupIdentityInlineActionsViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v24[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v15];
}

- (int64_t)style
{
  v2 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  v3 = [v2 viewStyle];

  return v3;
}

- (BOOL)shouldOverrideEnabledStateForActionItem:(id)a3
{
  v4 = a3;
  v5 = [(CNGroupIdentityInlineActionsViewController *)self group];
  v6 = [v5 contacts];
  v7 = [v6 count];

  v8 = [MEMORY[0x1E6996BE8] allActionTypes];
  v9 = [v4 actionType];
  v10 = [v8 _cn_containsObject:v9];

  if (v7 <= 1 && (v10 & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v4 shouldOverrideEnabledState];
  }

  return v11;
}

- (void)updateActionsViewForUpdatedActionItem:(id)a3
{
  v8 = a3;
  if ([(CNGroupIdentityInlineActionsViewController *)self shouldOverrideEnabledStateForActionItem:?])
  {
    v4 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
    v5 = [v8 actionType];
    v6 = [v4 existingActionItemForType:v5];

    if (v6)
    {
      [v6 setDisabled:{objc_msgSend(v8, "overrideEnabledState") ^ 1}];
      v7 = [(CNGroupIdentityInlineActionsViewController *)self actionsView];
      [v7 updateActionItem:v6];
    }
  }
}

- (id)actionsView
{
  v2 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  v3 = [v2 actionsView];

  return v3;
}

- (id)actionsContainerView
{
  v2 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  v3 = [v2 actionsView];
  v4 = [v3 containerView];

  return v4;
}

- (id)viewForActionAtIndex:(unint64_t)a3
{
  v4 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  v5 = [v4 actionsView];
  v6 = [v5 containerView];

  v7 = [v6 arrangedSubviews];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v10 = 0;
  }

  else
  {
    v9 = [v6 arrangedSubviews];
    v10 = [v9 objectAtIndex:a3];
  }

  return v10;
}

- (void)setGroup:(id)a3
{
  v10 = a3;
  v5 = [(CNGroupIdentity *)self->_group contacts];
  v6 = [v10 contacts];
  v7 = [v5 _cn_isIdenticalToArray:v6];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_group, a3);
    v8 = [v10 contacts];
    v9 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
    [v9 setContacts:v8];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNGroupIdentityInlineActionsViewController;
  [(CNGroupIdentityInlineActionsViewController *)&v3 viewDidLoad];
  [(CNGroupIdentityInlineActionsViewController *)self setupActionsView];
}

- (CNGroupIdentityInlineActionsViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = CNGroupIdentityInlineActionsViewController;
  v9 = [(CNGroupIdentityInlineActionsViewController *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_group, a3);
    objc_storeStrong(&v10->_configuration, a4);
    v11 = objc_alloc_init(CNContactInlineActionsViewController);
    inlineActionsViewController = v10->_inlineActionsViewController;
    v10->_inlineActionsViewController = v11;

    -[CNContactInlineActionsViewController setViewStyle:](v10->_inlineActionsViewController, "setViewStyle:", [v8 actionViewStyle]);
    v13 = [v8 geminiChannelIdentifier];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setGeminiChannelIdentifier:v13];

    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setDelegate:v10];
    v14 = [MEMORY[0x1E6996BE8] allActionTypes];
    v15 = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
    -[CNContactInlineActionsViewController setDisplaysUnavailableActionTypes:](v10->_inlineActionsViewController, "setDisplaysUnavailableActionTypes:", [v8 displaysUnavailableActionTypes]);
    v16 = [v8 supportedActionTypes];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __93__CNGroupIdentityInlineActionsViewController_initWithGroupIdentity_actionsViewConfiguration___block_invoke;
    v28[3] = &unk_1E74E5B78;
    v29 = v14;
    v30 = v15;
    v17 = v15;
    v18 = v14;
    v19 = [v16 _cn_filter:v28];

    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setSupportedActionTypes:v19];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setObjectViewControllerDelegate:v10];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setDisplaysTitles:1];
    v20 = [v7 contacts];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setContacts:v20];

    v21 = [v8 actionsPerType];
    v22 = [v21 allValues];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __93__CNGroupIdentityInlineActionsViewController_initWithGroupIdentity_actionsViewConfiguration___block_invoke_2;
    v26[3] = &unk_1E74E49E8;
    v23 = v10;
    v27 = v23;
    [v22 _cn_each:v26];

    v24 = v23;
  }

  return v10;
}

uint64_t __93__CNGroupIdentityInlineActionsViewController_initWithGroupIdentity_actionsViewConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _cn_containsObject:v3])
  {
    v4 = [*(a1 + 40) _cn_containsObject:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end