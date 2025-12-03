@interface CNSensitiveContentHelpButtonView
- (CNSensitiveContentHelpButtonView)initWithManager:(id)manager;
- (CNSensitiveContentHelpButtonViewDelegate)delegate;
- (id)hidePhotoAction;
- (int64_t)menuOptions;
- (void)addHidePhotoActionIfNeeded;
- (void)configureButton;
- (void)configureConstraints;
- (void)configureVibrancyView;
- (void)didAskForMoreHelp:(id)help;
- (void)didBlockContact:(id)contact;
- (void)hideContent;
- (void)presentMoreHelpMenu;
@end

@implementation CNSensitiveContentHelpButtonView

- (CNSensitiveContentHelpButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didAskForMoreHelp:(id)help
{
  v5 = objc_alloc_init(MEMORY[0x1E69CA908]);
  delegate = [(CNSensitiveContentHelpButtonView *)self delegate];
  [delegate sensitiveContentHelpButtonView:self didRequestToPresentMoreHelp:v5];
}

- (void)didBlockContact:(id)contact
{
  delegate = [(CNSensitiveContentHelpButtonView *)self delegate];
  [delegate sensitiveContentHelpButtonView:self didRequestToBlockContact:1];
}

- (void)addHidePhotoActionIfNeeded
{
  v16[1] = *MEMORY[0x1E69E9840];
  delegate = [(CNSensitiveContentHelpButtonView *)self delegate];
  v4 = [delegate canSensitiveContentHelpButtonViewHidePhoto:self];

  moreHelpMenu = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
  moreHelpMenu2 = moreHelpMenu;
  if (v4)
  {
    actions = [moreHelpMenu actions];
    hidePhotoAction = [(CNSensitiveContentHelpButtonView *)self hidePhotoAction];
    v9 = [actions _cn_containsObject:hidePhotoAction];

    if (v9)
    {
      return;
    }

    moreHelpMenu2 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
    hidePhotoAction2 = [(CNSensitiveContentHelpButtonView *)self hidePhotoAction];
    v16[0] = hidePhotoAction2;
    actions3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    moreHelpMenu3 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
    actions2 = [moreHelpMenu3 actions];
    v14 = [actions3 arrayByAddingObjectsFromArray:actions2];
    [moreHelpMenu2 _setActions:v14];
  }

  else
  {
    hidePhotoAction2 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
    actions3 = [hidePhotoAction2 actions];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__CNSensitiveContentHelpButtonView_addHidePhotoActionIfNeeded__block_invoke;
    v15[3] = &unk_1E74E3290;
    v15[4] = self;
    moreHelpMenu3 = [actions3 _cn_filter:v15];
    [moreHelpMenu2 _setActions:moreHelpMenu3];
  }
}

BOOL __62__CNSensitiveContentHelpButtonView_addHidePhotoActionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hidePhotoAction];

  return v4 != v3;
}

- (void)presentMoreHelpMenu
{
  v3 = [MEMORY[0x1E69CA8F8] menuWithOptions:{-[CNSensitiveContentHelpButtonView menuOptions](self, "menuOptions")}];
  [(CNSensitiveContentHelpButtonView *)self setMoreHelpMenu:v3];

  moreHelpMenu = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
  [moreHelpMenu setMenuDelegate:self];

  [(CNSensitiveContentHelpButtonView *)self addHidePhotoActionIfNeeded];
  delegate = [(CNSensitiveContentHelpButtonView *)self delegate];
  [delegate sensitiveContentHelpButtonView:self didRequestToPresentMenu:self->_moreHelpMenu];
}

- (int64_t)menuOptions
{
  sensitiveContentAnalysisManager = [(CNSensitiveContentHelpButtonView *)self sensitiveContentAnalysisManager];
  canShowBlockContactUI = [sensitiveContentAnalysisManager canShowBlockContactUI];

  if (!canShowBlockContactUI)
  {
    return 0;
  }

  delegate = [(CNSensitiveContentHelpButtonView *)self delegate];
  v6 = [delegate canSensitiveContentHelpButtonBlockContact:self];

  return v6;
}

- (void)hideContent
{
  delegate = [(CNSensitiveContentHelpButtonView *)self delegate];
  [delegate sensitiveContentHelpButtonView:self didSetContentHidden:1];
}

- (id)hidePhotoAction
{
  v3 = MEMORY[0x1E69DC648];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SENSITIVE_CONTENT_ACTION_HIDE_PHOTO_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CNSensitiveContentHelpButtonView_hidePhotoAction__block_invoke;
  v8[3] = &unk_1E74E6C28;
  v8[4] = self;
  v6 = [v3 actionWithTitle:v5 style:0 handler:v8];

  return v6;
}

- (void)configureConstraints
{
  v37[8] = *MEMORY[0x1E69E9840];
  v23 = MEMORY[0x1E696ACD8];
  vibrancyView = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  topAnchor = [vibrancyView topAnchor];
  topAnchor2 = [(CNSensitiveContentHelpButtonView *)self topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v37[0] = v33;
  vibrancyView2 = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  bottomAnchor = [vibrancyView2 bottomAnchor];
  bottomAnchor2 = [(CNSensitiveContentHelpButtonView *)self bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v37[1] = v29;
  vibrancyView3 = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  leadingAnchor = [vibrancyView3 leadingAnchor];
  leadingAnchor2 = [(CNSensitiveContentHelpButtonView *)self leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v37[2] = v25;
  vibrancyView4 = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  trailingAnchor = [vibrancyView4 trailingAnchor];
  trailingAnchor2 = [(CNSensitiveContentHelpButtonView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v37[3] = v20;
  button = [(CNSensitiveContentHelpButtonView *)self button];
  topAnchor3 = [button topAnchor];
  topAnchor4 = [(CNSensitiveContentHelpButtonView *)self topAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v37[4] = v16;
  button2 = [(CNSensitiveContentHelpButtonView *)self button];
  bottomAnchor3 = [button2 bottomAnchor];
  bottomAnchor4 = [(CNSensitiveContentHelpButtonView *)self bottomAnchor];
  v3 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v37[5] = v3;
  button3 = [(CNSensitiveContentHelpButtonView *)self button];
  leadingAnchor3 = [button3 leadingAnchor];
  leadingAnchor4 = [(CNSensitiveContentHelpButtonView *)self leadingAnchor];
  v7 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v37[6] = v7;
  button4 = [(CNSensitiveContentHelpButtonView *)self button];
  trailingAnchor3 = [button4 trailingAnchor];
  trailingAnchor4 = [(CNSensitiveContentHelpButtonView *)self trailingAnchor];
  v11 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v37[7] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:8];
  [v23 activateConstraints:v12];
}

- (void)configureVibrancyView
{
  v7 = [MEMORY[0x1E69DC730] effectWithStyle:16];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
  [(UIVisualEffectView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(UIVisualEffectView *)v3 layer];
  [layer setMasksToBounds:1];

  layer2 = [(UIVisualEffectView *)v3 layer];
  [layer2 setCornerRadius:18.0];

  vibrancyView = self->_vibrancyView;
  self->_vibrancyView = v3;
}

- (void)configureButton
{
  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [grayButtonConfiguration setCornerStyle:4];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [grayButtonConfiguration setBaseForegroundColor:whiteColor];

  [grayButtonConfiguration setButtonSize:2];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SENSITIVE_CONTENT_HELP_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [grayButtonConfiguration setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
  [grayButtonConfiguration setImage:v6];

  [grayButtonConfiguration setImagePadding:2.0];
  [grayButtonConfiguration setContentInsets:{6.0, 10.0, 6.0, 10.0}];
  v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:grayButtonConfiguration primaryAction:0];
  [(UIButton *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)v7 addTarget:self action:sel_didTapButton forControlEvents:64];
  button = self->_button;
  self->_button = v7;
}

- (CNSensitiveContentHelpButtonView)initWithManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = CNSensitiveContentHelpButtonView;
  v6 = [(CNSensitiveContentHelpButtonView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sensitiveContentAnalysisManager, manager);
    [(CNSensitiveContentHelpButtonView *)v7 configureButton];
    [(CNSensitiveContentHelpButtonView *)v7 configureVibrancyView];
    contentView = [(UIVisualEffectView *)v7->_vibrancyView contentView];
    [contentView addSubview:v7->_button];

    [(CNSensitiveContentHelpButtonView *)v7 addSubview:v7->_vibrancyView];
    [(CNSensitiveContentHelpButtonView *)v7 configureConstraints];
    v9 = v7;
  }

  return v7;
}

@end