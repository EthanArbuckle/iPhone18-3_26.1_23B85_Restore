@interface CNGroupIdentityInlineActionsViewController
- (BOOL)contactInlineActionsViewController:(id)controller canPerformGroupActionOfType:(id)type;
- (BOOL)contactInlineActionsViewController:(id)controller overrideEnabledStateForActionOfType:(id)type;
- (BOOL)contactInlineActionsViewController:(id)controller shouldOverrideEnabledStateForActionOfType:(id)type;
- (BOOL)contactInlineActionsViewController:(id)controller shouldPresentDisambiguationUIForActionOfType:(id)type;
- (BOOL)shouldOverrideEnabledStateForActionItem:(id)item;
- (CNGroupIdentityInlineActionsViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration;
- (CNGroupIdentityInlineActionsViewControllerDelegate)delegate;
- (double)actionsViewHeightThatFits:(CGSize)fits;
- (id)actionsContainerView;
- (id)actionsView;
- (id)contactInlineActionsViewController:(id)controller overrideImageForActionOfType:(id)type;
- (id)contactInlineActionsViewController:(id)controller overrideTitleForActionOfType:(id)type;
- (id)viewForActionAtIndex:(unint64_t)index;
- (int64_t)style;
- (void)contactInlineActionsViewController:(id)controller didPerformActionOfType:(id)type fromDisambiguation:(BOOL)disambiguation;
- (void)contactInlineActionsViewController:(id)controller didSelectActionOfType:(id)type;
- (void)contactInlineActionsViewController:(id)controller willPresentDisambiguationUIForActionType:(id)type;
- (void)setGroup:(id)group;
- (void)setupActionsView;
- (void)updateActionsViewForUpdatedActionItem:(id)item;
- (void)viewDidLoad;
@end

@implementation CNGroupIdentityInlineActionsViewController

- (CNGroupIdentityInlineActionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)contactInlineActionsViewController:(id)controller overrideEnabledStateForActionOfType:(id)type
{
  typeCopy = type;
  configuration = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  actionsPerType = [configuration actionsPerType];
  v8 = [actionsPerType objectForKeyedSubscript:typeCopy];

  LOBYTE(configuration) = [v8 overrideEnabledState];
  return configuration;
}

- (BOOL)contactInlineActionsViewController:(id)controller shouldOverrideEnabledStateForActionOfType:(id)type
{
  typeCopy = type;
  configuration = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  actionsPerType = [configuration actionsPerType];
  v8 = [actionsPerType objectForKeyedSubscript:typeCopy];

  LOBYTE(self) = [(CNGroupIdentityInlineActionsViewController *)self shouldOverrideEnabledStateForActionItem:v8];
  return self;
}

- (id)contactInlineActionsViewController:(id)controller overrideTitleForActionOfType:(id)type
{
  typeCopy = type;
  configuration = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  actionsPerType = [configuration actionsPerType];
  v8 = [actionsPerType objectForKeyedSubscript:typeCopy];

  title = [v8 title];

  return title;
}

- (id)contactInlineActionsViewController:(id)controller overrideImageForActionOfType:(id)type
{
  typeCopy = type;
  configuration = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  actionsPerType = [configuration actionsPerType];
  v8 = [actionsPerType objectForKeyedSubscript:typeCopy];

  image = [v8 image];

  return image;
}

- (BOOL)contactInlineActionsViewController:(id)controller shouldPresentDisambiguationUIForActionOfType:(id)type
{
  typeCopy = type;
  configuration = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  actionsPerType = [configuration actionsPerType];
  v8 = [actionsPerType objectForKeyedSubscript:typeCopy];

  LOBYTE(configuration) = [v8 shouldPresentDisambiguationUI];
  return configuration;
}

- (BOOL)contactInlineActionsViewController:(id)controller canPerformGroupActionOfType:(id)type
{
  typeCopy = type;
  configuration = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  actionsPerType = [configuration actionsPerType];
  v8 = [actionsPerType objectForKeyedSubscript:typeCopy];

  if (v8)
  {
    actionBlock = [v8 actionBlock];
    v10 = actionBlock != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)contactInlineActionsViewController:(id)controller didSelectActionOfType:(id)type
{
  typeCopy = type;
  configuration = [(CNGroupIdentityInlineActionsViewController *)self configuration];
  actionsPerType = [configuration actionsPerType];
  v7 = [actionsPerType objectForKeyedSubscript:typeCopy];

  if (v7)
  {
    actionBlock = [v7 actionBlock];

    if (actionBlock)
    {
      actionBlock2 = [v7 actionBlock];
      (actionBlock2)[2](actionBlock2, typeCopy);
    }
  }
}

- (void)contactInlineActionsViewController:(id)controller willPresentDisambiguationUIForActionType:(id)type
{
  typeCopy = type;
  delegate = [(CNGroupIdentityInlineActionsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNGroupIdentityInlineActionsViewController *)self delegate];
    [delegate2 groupIdentityInlineActionsViewController:self willPresentDisambiguationUIForActionType:typeCopy];
  }
}

- (void)contactInlineActionsViewController:(id)controller didPerformActionOfType:(id)type fromDisambiguation:(BOOL)disambiguation
{
  disambiguationCopy = disambiguation;
  typeCopy = type;
  delegate = [(CNGroupIdentityInlineActionsViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNGroupIdentityInlineActionsViewController *)self delegate];
    [delegate2 groupIdentityInlineActionsViewController:self didPerformActionOfType:typeCopy fromDisambiguation:disambiguationCopy];
  }
}

- (double)actionsViewHeightThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  actionsView = [inlineActionsViewController actionsView];
  [actionsView sizeThatFits:{width, height}];
  v8 = v7;

  return v8;
}

- (void)setupActionsView
{
  v24[4] = *MEMORY[0x1E69E9840];
  inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  view = [inlineActionsViewController view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  inlineActionsViewController2 = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  [(CNGroupIdentityInlineActionsViewController *)self addChildViewController:inlineActionsViewController2];

  view2 = [(CNGroupIdentityInlineActionsViewController *)self view];
  [view2 addSubview:view];

  topAnchor = [view topAnchor];
  view3 = [(CNGroupIdentityInlineActionsViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v20;
  leadingAnchor = [view leadingAnchor];
  view4 = [(CNGroupIdentityInlineActionsViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v16;
  trailingAnchor = [view trailingAnchor];
  view5 = [(CNGroupIdentityInlineActionsViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v10;
  bottomAnchor = [view bottomAnchor];
  view6 = [(CNGroupIdentityInlineActionsViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v15];
}

- (int64_t)style
{
  inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  viewStyle = [inlineActionsViewController viewStyle];

  return viewStyle;
}

- (BOOL)shouldOverrideEnabledStateForActionItem:(id)item
{
  itemCopy = item;
  group = [(CNGroupIdentityInlineActionsViewController *)self group];
  contacts = [group contacts];
  v7 = [contacts count];

  allActionTypes = [MEMORY[0x1E6996BE8] allActionTypes];
  actionType = [itemCopy actionType];
  v10 = [allActionTypes _cn_containsObject:actionType];

  if (v7 <= 1 && (v10 & 1) != 0)
  {
    shouldOverrideEnabledState = 0;
  }

  else
  {
    shouldOverrideEnabledState = [itemCopy shouldOverrideEnabledState];
  }

  return shouldOverrideEnabledState;
}

- (void)updateActionsViewForUpdatedActionItem:(id)item
{
  itemCopy = item;
  if ([(CNGroupIdentityInlineActionsViewController *)self shouldOverrideEnabledStateForActionItem:?])
  {
    inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
    actionType = [itemCopy actionType];
    v6 = [inlineActionsViewController existingActionItemForType:actionType];

    if (v6)
    {
      [v6 setDisabled:{objc_msgSend(itemCopy, "overrideEnabledState") ^ 1}];
      actionsView = [(CNGroupIdentityInlineActionsViewController *)self actionsView];
      [actionsView updateActionItem:v6];
    }
  }
}

- (id)actionsView
{
  inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  actionsView = [inlineActionsViewController actionsView];

  return actionsView;
}

- (id)actionsContainerView
{
  inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  actionsView = [inlineActionsViewController actionsView];
  containerView = [actionsView containerView];

  return containerView;
}

- (id)viewForActionAtIndex:(unint64_t)index
{
  inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
  actionsView = [inlineActionsViewController actionsView];
  containerView = [actionsView containerView];

  arrangedSubviews = [containerView arrangedSubviews];
  v8 = [arrangedSubviews count];

  if (v8 <= index)
  {
    v10 = 0;
  }

  else
  {
    arrangedSubviews2 = [containerView arrangedSubviews];
    v10 = [arrangedSubviews2 objectAtIndex:index];
  }

  return v10;
}

- (void)setGroup:(id)group
{
  groupCopy = group;
  contacts = [(CNGroupIdentity *)self->_group contacts];
  contacts2 = [groupCopy contacts];
  v7 = [contacts _cn_isIdenticalToArray:contacts2];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_group, group);
    contacts3 = [groupCopy contacts];
    inlineActionsViewController = [(CNGroupIdentityInlineActionsViewController *)self inlineActionsViewController];
    [inlineActionsViewController setContacts:contacts3];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNGroupIdentityInlineActionsViewController;
  [(CNGroupIdentityInlineActionsViewController *)&v3 viewDidLoad];
  [(CNGroupIdentityInlineActionsViewController *)self setupActionsView];
}

- (CNGroupIdentityInlineActionsViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration
{
  identityCopy = identity;
  configurationCopy = configuration;
  v31.receiver = self;
  v31.super_class = CNGroupIdentityInlineActionsViewController;
  v9 = [(CNGroupIdentityInlineActionsViewController *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_group, identity);
    objc_storeStrong(&v10->_configuration, configuration);
    v11 = objc_alloc_init(CNContactInlineActionsViewController);
    inlineActionsViewController = v10->_inlineActionsViewController;
    v10->_inlineActionsViewController = v11;

    -[CNContactInlineActionsViewController setViewStyle:](v10->_inlineActionsViewController, "setViewStyle:", [configurationCopy actionViewStyle]);
    geminiChannelIdentifier = [configurationCopy geminiChannelIdentifier];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setGeminiChannelIdentifier:geminiChannelIdentifier];

    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setDelegate:v10];
    allActionTypes = [MEMORY[0x1E6996BE8] allActionTypes];
    allSupportedActionTypes = [MEMORY[0x1E6996BE8] allSupportedActionTypes];
    -[CNContactInlineActionsViewController setDisplaysUnavailableActionTypes:](v10->_inlineActionsViewController, "setDisplaysUnavailableActionTypes:", [configurationCopy displaysUnavailableActionTypes]);
    supportedActionTypes = [configurationCopy supportedActionTypes];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __93__CNGroupIdentityInlineActionsViewController_initWithGroupIdentity_actionsViewConfiguration___block_invoke;
    v28[3] = &unk_1E74E5B78;
    v29 = allActionTypes;
    v30 = allSupportedActionTypes;
    v17 = allSupportedActionTypes;
    v18 = allActionTypes;
    v19 = [supportedActionTypes _cn_filter:v28];

    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setSupportedActionTypes:v19];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setObjectViewControllerDelegate:v10];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setDisplaysTitles:1];
    contacts = [identityCopy contacts];
    [(CNContactInlineActionsViewController *)v10->_inlineActionsViewController setContacts:contacts];

    actionsPerType = [configurationCopy actionsPerType];
    allValues = [actionsPerType allValues];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __93__CNGroupIdentityInlineActionsViewController_initWithGroupIdentity_actionsViewConfiguration___block_invoke_2;
    v26[3] = &unk_1E74E49E8;
    v23 = v10;
    v27 = v23;
    [allValues _cn_each:v26];

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