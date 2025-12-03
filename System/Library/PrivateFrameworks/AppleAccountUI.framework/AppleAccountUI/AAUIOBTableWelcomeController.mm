@interface AAUIOBTableWelcomeController
- (AAUIOBTableWelcomeController)initWithViewModel:(id)model;
- (AAUIOBTableWelcomeControllerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)_helpLinkFooterView;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)_addHelpLinkWithViewModel:(id)model;
- (void)_addPrimaryButtonWithViewModel:(id)model;
- (void)_addSecondaryButtonWithViewModel:(id)model;
- (void)_addSecondaryViewWithViewModel:(id)model;
- (void)_delegate_tableViewControllerDidTapSecondaryButton;
- (void)_delegate_tableWelcomeViewControllerDidTapPrimaryButton;
- (void)_openHelpLink;
- (void)_setupTableViewWithViewModel:(id)model;
- (void)viewDidLoad;
@end

@implementation AAUIOBTableWelcomeController

- (AAUIOBTableWelcomeController)initWithViewModel:(id)model
{
  modelCopy = model;
  title = [modelCopy title];
  detailText = [modelCopy detailText];
  image = [modelCopy image];
  v11.receiver = self;
  v11.super_class = AAUIOBTableWelcomeController;
  v9 = -[OBTableWelcomeController initWithTitle:detailText:icon:adoptTableViewScrollView:](&v11, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, title, detailText, image, [modelCopy adoptTableViewScrollView]);

  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    [(AAUIOBTableWelcomeController *)v9 _addHelpLinkWithViewModel:v9->_viewModel];
    [(AAUIOBTableWelcomeController *)v9 _addSecondaryViewWithViewModel:v9->_viewModel];
    [(AAUIOBTableWelcomeController *)v9 _addPrimaryButtonWithViewModel:v9->_viewModel];
    [(AAUIOBTableWelcomeController *)v9 _addSecondaryButtonWithViewModel:v9->_viewModel];
    [(AAUIOBTableWelcomeController *)v9 setModalInPresentation:1];
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUIOBTableWelcomeController;
  [(OBTableWelcomeController *)&v3 viewDidLoad];
  [(AAUIOBTableWelcomeController *)self _setupTableViewWithViewModel:self->_viewModel];
}

- (void)_setupTableViewWithViewModel:(id)model
{
  v4 = objc_alloc(MEMORY[0x1E69DD020]);
  tableViewStyle = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel tableViewStyle];
  v6 = [v4 initWithFrame:tableViewStyle style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v6];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = *MEMORY[0x1E69DE3D0];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:v8];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setBackgroundColor:systemBackgroundColor];
}

- (void)_addHelpLinkWithViewModel:(id)model
{
  modelCopy = model;
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    helpLinkTitle = [modelCopy helpLinkTitle];

    if (helpLinkTitle)
    {
      accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
      helpLinkTitle2 = [modelCopy helpLinkTitle];
      [accessoryButton setTitle:helpLinkTitle2 forState:0];

      [accessoryButton addTarget:self action:sel__openHelpLink forControlEvents:64];
      headerView = [(AAUIOBTableWelcomeController *)self headerView];
      [headerView addAccessoryButton:accessoryButton];
    }
  }
}

- (void)_addSecondaryViewWithViewModel:(id)model
{
  v22[3] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  secondaryView = [modelCopy secondaryView];

  if (secondaryView)
  {
    secondaryView2 = [modelCopy secondaryView];
    secondaryContentView = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    [secondaryContentView addSubview:secondaryView2];

    v17 = MEMORY[0x1E696ACD8];
    leadingAnchor = [secondaryView2 leadingAnchor];
    secondaryContentView2 = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    leadingAnchor2 = [secondaryContentView2 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[0] = v18;
    trailingAnchor = [secondaryView2 trailingAnchor];
    secondaryContentView3 = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    trailingAnchor2 = [secondaryContentView3 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[1] = v10;
    topAnchor = [secondaryView2 topAnchor];
    secondaryContentView4 = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    topAnchor2 = [secondaryContentView4 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    [v17 activateConstraints:v15];
  }
}

- (void)_addPrimaryButtonWithViewModel:(id)model
{
  modelCopy = model;
  primaryButton = [modelCopy primaryButton];

  if (primaryButton)
  {
    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = boldButton;

    v7 = self->_primaryButton;
    primaryButton2 = [modelCopy primaryButton];
    [(OBTrayButton *)v7 setTitle:primaryButton2 forState:0];

    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__delegate_tableWelcomeViewControllerDidTapPrimaryButton forControlEvents:64];
    buttonTray = [(AAUIOBTableWelcomeController *)self buttonTray];
    [buttonTray addButton:self->_primaryButton];
  }
}

- (void)_addSecondaryButtonWithViewModel:(id)model
{
  modelCopy = model;
  secondaryButton = [modelCopy secondaryButton];

  if (secondaryButton)
  {
    linkButton = [MEMORY[0x1E69B7D38] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = linkButton;

    v7 = self->_secondaryButton;
    secondaryButton2 = [modelCopy secondaryButton];
    [(OBTrayButton *)v7 setTitle:secondaryButton2 forState:0];

    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__delegate_tableViewControllerDidTapSecondaryButton forControlEvents:64];
    buttonTray = [(AAUIOBTableWelcomeController *)self buttonTray];
    [buttonTray addButton:self->_secondaryButton];
  }
}

- (void)_delegate_tableWelcomeViewControllerDidTapPrimaryButton
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIOBTableWelcomeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableWelcomeViewControllerDidTapPrimaryButton];
  }
}

- (void)_delegate_tableViewControllerDidTapSecondaryButton
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(AAUIOBTableWelcomeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableWelcomeViewControllerDidTapSecondaryButton];
  }
}

- (id)_helpLinkFooterView
{
  v16[2] = *MEMORY[0x1E69E9840];
  helpLinkFooterView = self->_helpLinkFooterView;
  if (!helpLinkFooterView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_helpLinkFooterView;
    self->_helpLinkFooterView = v4;

    accessoryButton = [MEMORY[0x1E69B7D20] accessoryButton];
    helpLinkTitle = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkTitle];
    [accessoryButton setTitle:helpLinkTitle forState:0];

    [accessoryButton addTarget:self action:sel__openHelpLink forControlEvents:64];
    [(UIView *)self->_helpLinkFooterView addSubview:accessoryButton];
    bottomAnchor = [accessoryButton bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_helpLinkFooterView bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v16[0] = v10;
    centerXAnchor = [accessoryButton centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_helpLinkFooterView centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

    [MEMORY[0x1E696ACD8] activateConstraints:v14];
    helpLinkFooterView = self->_helpLinkFooterView;
  }

  return helpLinkFooterView;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  tableView = [(OBTableWelcomeController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections - 1 != section)
  {
    goto LABEL_4;
  }

  helpLinkTitle = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkTitle];
  if (!helpLinkTitle)
  {
    goto LABEL_5;
  }

  v9 = helpLinkTitle;
  v10 = +[AAUIFeatureFlags isSolariumEnabled];

  if (!v10)
  {
    helpLinkTitle = [(AAUIOBTableWelcomeController *)self _helpLinkFooterView];
  }

  else
  {
LABEL_4:
    helpLinkTitle = 0;
  }

LABEL_5:

  return helpLinkTitle;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = [AAUIFeatureFlags isSolariumEnabled:view];
  result = 40.0;
  if (v4)
  {
    return 15.0;
  }

  return result;
}

- (void)_openHelpLink
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    helpLinkURL = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkURL];
    v9 = 138412290;
    v10 = helpLinkURL;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Help link was tapped, URL is: %@", &v9, 0xCu);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = MEMORY[0x1E695DFF8];
  helpLinkURL2 = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkURL];
  v8 = [v6 URLWithString:helpLinkURL2];
  [mEMORY[0x1E69DC668] openURL:v8 withCompletionHandler:0];
}

- (AAUIOBTableWelcomeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end