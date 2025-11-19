@interface AAUIOBTableWelcomeController
- (AAUIOBTableWelcomeController)initWithViewModel:(id)a3;
- (AAUIOBTableWelcomeControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)_helpLinkFooterView;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)_addHelpLinkWithViewModel:(id)a3;
- (void)_addPrimaryButtonWithViewModel:(id)a3;
- (void)_addSecondaryButtonWithViewModel:(id)a3;
- (void)_addSecondaryViewWithViewModel:(id)a3;
- (void)_delegate_tableViewControllerDidTapSecondaryButton;
- (void)_delegate_tableWelcomeViewControllerDidTapPrimaryButton;
- (void)_openHelpLink;
- (void)_setupTableViewWithViewModel:(id)a3;
- (void)viewDidLoad;
@end

@implementation AAUIOBTableWelcomeController

- (AAUIOBTableWelcomeController)initWithViewModel:(id)a3
{
  v5 = a3;
  v6 = [v5 title];
  v7 = [v5 detailText];
  v8 = [v5 image];
  v11.receiver = self;
  v11.super_class = AAUIOBTableWelcomeController;
  v9 = -[OBTableWelcomeController initWithTitle:detailText:icon:adoptTableViewScrollView:](&v11, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v6, v7, v8, [v5 adoptTableViewScrollView]);

  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
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

- (void)_setupTableViewWithViewModel:(id)a3
{
  v4 = objc_alloc(MEMORY[0x1E69DD020]);
  v5 = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel tableViewStyle];
  v6 = [v4 initWithFrame:v5 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v6];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = *MEMORY[0x1E69DE3D0];
  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setRowHeight:v8];

  v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setBackgroundColor:v11];
}

- (void)_addHelpLinkWithViewModel:(id)a3
{
  v8 = a3;
  if (+[AAUIFeatureFlags isSolariumEnabled])
  {
    v4 = [v8 helpLinkTitle];

    if (v4)
    {
      v5 = [MEMORY[0x1E69B7D20] accessoryButton];
      v6 = [v8 helpLinkTitle];
      [v5 setTitle:v6 forState:0];

      [v5 addTarget:self action:sel__openHelpLink forControlEvents:64];
      v7 = [(AAUIOBTableWelcomeController *)self headerView];
      [v7 addAccessoryButton:v5];
    }
  }
}

- (void)_addSecondaryViewWithViewModel:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 secondaryView];

  if (v5)
  {
    v6 = [v4 secondaryView];
    v7 = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    [v7 addSubview:v6];

    v17 = MEMORY[0x1E696ACD8];
    v20 = [v6 leadingAnchor];
    v21 = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    v19 = [v21 leadingAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v16 = [v6 trailingAnchor];
    v8 = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    v9 = [v8 trailingAnchor];
    v10 = [v16 constraintEqualToAnchor:v9];
    v22[1] = v10;
    v11 = [v6 topAnchor];
    v12 = [(AAUIOBTableWelcomeController *)self secondaryContentView];
    v13 = [v12 topAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:20.0];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    [v17 activateConstraints:v15];
  }
}

- (void)_addPrimaryButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 primaryButton];

  if (v4)
  {
    v5 = [MEMORY[0x1E69B7D00] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v5;

    v7 = self->_primaryButton;
    v8 = [v10 primaryButton];
    [(OBTrayButton *)v7 setTitle:v8 forState:0];

    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__delegate_tableWelcomeViewControllerDidTapPrimaryButton forControlEvents:64];
    v9 = [(AAUIOBTableWelcomeController *)self buttonTray];
    [v9 addButton:self->_primaryButton];
  }
}

- (void)_addSecondaryButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 secondaryButton];

  if (v4)
  {
    v5 = [MEMORY[0x1E69B7D38] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = v5;

    v7 = self->_secondaryButton;
    v8 = [v10 secondaryButton];
    [(OBTrayButton *)v7 setTitle:v8 forState:0];

    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__delegate_tableViewControllerDidTapSecondaryButton forControlEvents:64];
    v9 = [(AAUIOBTableWelcomeController *)self buttonTray];
    [v9 addButton:self->_secondaryButton];
  }
}

- (void)_delegate_tableWelcomeViewControllerDidTapPrimaryButton
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AAUIOBTableWelcomeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 tableWelcomeViewControllerDidTapPrimaryButton];
  }
}

- (void)_delegate_tableViewControllerDidTapSecondaryButton
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AAUIOBTableWelcomeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 tableWelcomeViewControllerDidTapSecondaryButton];
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

    v6 = [MEMORY[0x1E69B7D20] accessoryButton];
    v7 = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkTitle];
    [v6 setTitle:v7 forState:0];

    [v6 addTarget:self action:sel__openHelpLink forControlEvents:64];
    [(UIView *)self->_helpLinkFooterView addSubview:v6];
    v8 = [v6 bottomAnchor];
    v9 = [(UIView *)self->_helpLinkFooterView bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:0.0];
    v16[0] = v10;
    v11 = [v6 centerXAnchor];
    v12 = [(UIView *)self->_helpLinkFooterView centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

    [MEMORY[0x1E696ACD8] activateConstraints:v14];
    helpLinkFooterView = self->_helpLinkFooterView;
  }

  return helpLinkFooterView;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [v6 numberOfSections];

  if (v7 - 1 != a4)
  {
    goto LABEL_4;
  }

  v8 = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkTitle];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = +[AAUIFeatureFlags isSolariumEnabled];

  if (!v10)
  {
    v8 = [(AAUIOBTableWelcomeController *)self _helpLinkFooterView];
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

LABEL_5:

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = [AAUIFeatureFlags isSolariumEnabled:a3];
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
    v4 = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkURL];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Help link was tapped, URL is: %@", &v9, 0xCu);
  }

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = MEMORY[0x1E695DFF8];
  v7 = [(AAUIOBTableWelcomeControllerViewModelProtocol *)self->_viewModel helpLinkURL];
  v8 = [v6 URLWithString:v7];
  [v5 openURL:v8 withCompletionHandler:0];
}

- (AAUIOBTableWelcomeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end