@interface CNSensitiveContentHelpButtonView
- (CNSensitiveContentHelpButtonView)initWithManager:(id)a3;
- (CNSensitiveContentHelpButtonViewDelegate)delegate;
- (id)hidePhotoAction;
- (int64_t)menuOptions;
- (void)addHidePhotoActionIfNeeded;
- (void)configureButton;
- (void)configureConstraints;
- (void)configureVibrancyView;
- (void)didAskForMoreHelp:(id)a3;
- (void)didBlockContact:(id)a3;
- (void)hideContent;
- (void)presentMoreHelpMenu;
@end

@implementation CNSensitiveContentHelpButtonView

- (CNSensitiveContentHelpButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didAskForMoreHelp:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69CA908]);
  v4 = [(CNSensitiveContentHelpButtonView *)self delegate];
  [v4 sensitiveContentHelpButtonView:self didRequestToPresentMoreHelp:v5];
}

- (void)didBlockContact:(id)a3
{
  v4 = [(CNSensitiveContentHelpButtonView *)self delegate];
  [v4 sensitiveContentHelpButtonView:self didRequestToBlockContact:1];
}

- (void)addHidePhotoActionIfNeeded
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNSensitiveContentHelpButtonView *)self delegate];
  v4 = [v3 canSensitiveContentHelpButtonViewHidePhoto:self];

  v5 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 actions];
    v8 = [(CNSensitiveContentHelpButtonView *)self hidePhotoAction];
    v9 = [v7 _cn_containsObject:v8];

    if (v9)
    {
      return;
    }

    v6 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
    v10 = [(CNSensitiveContentHelpButtonView *)self hidePhotoAction];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
    v13 = [v12 actions];
    v14 = [v11 arrayByAddingObjectsFromArray:v13];
    [v6 _setActions:v14];
  }

  else
  {
    v10 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
    v11 = [v10 actions];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__CNSensitiveContentHelpButtonView_addHidePhotoActionIfNeeded__block_invoke;
    v15[3] = &unk_1E74E3290;
    v15[4] = self;
    v12 = [v11 _cn_filter:v15];
    [v6 _setActions:v12];
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

  v4 = [(CNSensitiveContentHelpButtonView *)self moreHelpMenu];
  [v4 setMenuDelegate:self];

  [(CNSensitiveContentHelpButtonView *)self addHidePhotoActionIfNeeded];
  v5 = [(CNSensitiveContentHelpButtonView *)self delegate];
  [v5 sensitiveContentHelpButtonView:self didRequestToPresentMenu:self->_moreHelpMenu];
}

- (int64_t)menuOptions
{
  v3 = [(CNSensitiveContentHelpButtonView *)self sensitiveContentAnalysisManager];
  v4 = [v3 canShowBlockContactUI];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNSensitiveContentHelpButtonView *)self delegate];
  v6 = [v5 canSensitiveContentHelpButtonBlockContact:self];

  return v6;
}

- (void)hideContent
{
  v3 = [(CNSensitiveContentHelpButtonView *)self delegate];
  [v3 sensitiveContentHelpButtonView:self didSetContentHidden:1];
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
  v36 = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  v35 = [v36 topAnchor];
  v34 = [(CNSensitiveContentHelpButtonView *)self topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v37[0] = v33;
  v32 = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  v31 = [v32 bottomAnchor];
  v30 = [(CNSensitiveContentHelpButtonView *)self bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v37[1] = v29;
  v28 = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  v27 = [v28 leadingAnchor];
  v26 = [(CNSensitiveContentHelpButtonView *)self leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v37[2] = v25;
  v24 = [(CNSensitiveContentHelpButtonView *)self vibrancyView];
  v22 = [v24 trailingAnchor];
  v21 = [(CNSensitiveContentHelpButtonView *)self trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v37[3] = v20;
  v19 = [(CNSensitiveContentHelpButtonView *)self button];
  v18 = [v19 topAnchor];
  v17 = [(CNSensitiveContentHelpButtonView *)self topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v37[4] = v16;
  v15 = [(CNSensitiveContentHelpButtonView *)self button];
  v14 = [v15 bottomAnchor];
  v13 = [(CNSensitiveContentHelpButtonView *)self bottomAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v37[5] = v3;
  v4 = [(CNSensitiveContentHelpButtonView *)self button];
  v5 = [v4 leadingAnchor];
  v6 = [(CNSensitiveContentHelpButtonView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v37[6] = v7;
  v8 = [(CNSensitiveContentHelpButtonView *)self button];
  v9 = [v8 trailingAnchor];
  v10 = [(CNSensitiveContentHelpButtonView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v37[7] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:8];
  [v23 activateConstraints:v12];
}

- (void)configureVibrancyView
{
  v7 = [MEMORY[0x1E69DC730] effectWithStyle:16];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
  [(UIVisualEffectView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(UIVisualEffectView *)v3 layer];
  [v4 setMasksToBounds:1];

  v5 = [(UIVisualEffectView *)v3 layer];
  [v5 setCornerRadius:18.0];

  vibrancyView = self->_vibrancyView;
  self->_vibrancyView = v3;
}

- (void)configureButton
{
  v9 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [v9 setCornerStyle:4];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v9 setBaseForegroundColor:v3];

  [v9 setButtonSize:2];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SENSITIVE_CONTENT_HELP_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [v9 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
  [v9 setImage:v6];

  [v9 setImagePadding:2.0];
  [v9 setContentInsets:{6.0, 10.0, 6.0, 10.0}];
  v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v9 primaryAction:0];
  [(UIButton *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)v7 addTarget:self action:sel_didTapButton forControlEvents:64];
  button = self->_button;
  self->_button = v7;
}

- (CNSensitiveContentHelpButtonView)initWithManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNSensitiveContentHelpButtonView;
  v6 = [(CNSensitiveContentHelpButtonView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sensitiveContentAnalysisManager, a3);
    [(CNSensitiveContentHelpButtonView *)v7 configureButton];
    [(CNSensitiveContentHelpButtonView *)v7 configureVibrancyView];
    v8 = [(UIVisualEffectView *)v7->_vibrancyView contentView];
    [v8 addSubview:v7->_button];

    [(CNSensitiveContentHelpButtonView *)v7 addSubview:v7->_vibrancyView];
    [(CNSensitiveContentHelpButtonView *)v7 configureConstraints];
    v9 = v7;
  }

  return v7;
}

@end