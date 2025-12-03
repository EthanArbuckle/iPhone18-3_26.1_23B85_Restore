@interface CNMeCardSharingSettingsPreferenceMenuCell
- (CNMeCardSharingSettingsPreferenceMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNMeCardSharingSettingsPreferenceMenuCellDelegate)delegate;
- (id)alwaysAskMenuTitle;
- (id)contactsOnlyMenuTitle;
- (id)menu;
- (id)titleForSharingAudience:(unint64_t)audience;
- (void)configureAccessoryView;
- (void)layoutMenuButton;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setSharingAudience:(unint64_t)audience;
- (void)updateContentConfigurationWithSecondaryText:(id)text;
- (void)updateMenuButtonStatesWithSharingAudience:(unint64_t)audience;
@end

@implementation CNMeCardSharingSettingsPreferenceMenuCell

- (CNMeCardSharingSettingsPreferenceMenuCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)alwaysAskMenuTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_AUDIENCE_ALWAYS_ASK" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (id)contactsOnlyMenuTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_AUDIENCE_CONTACTS_ONLY" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (id)menu
{
  v21[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  contactsOnlyMenuTitle = [(CNMeCardSharingSettingsPreferenceMenuCell *)self contactsOnlyMenuTitle];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__CNMeCardSharingSettingsPreferenceMenuCell_menu__block_invoke;
  v18[3] = &unk_1E74E4BD0;
  objc_copyWeak(&v19, &location);
  v5 = [v3 actionWithTitle:contactsOnlyMenuTitle image:0 identifier:0 handler:v18];

  v6 = MEMORY[0x1E69DC628];
  alwaysAskMenuTitle = [(CNMeCardSharingSettingsPreferenceMenuCell *)self alwaysAskMenuTitle];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __49__CNMeCardSharingSettingsPreferenceMenuCell_menu__block_invoke_2;
  v16 = &unk_1E74E4BD0;
  objc_copyWeak(&v17, &location);
  v8 = [v6 actionWithTitle:alwaysAskMenuTitle image:0 identifier:0 handler:&v13];

  v9 = MEMORY[0x1E69DCC60];
  v21[0] = v5;
  v21[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:{2, v13, v14, v15, v16}];
  v11 = [v9 menuWithChildren:v10];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

void __49__CNMeCardSharingSettingsPreferenceMenuCell_menu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = CNContactsUIBundle();
  v2 = [v1 localizedStringForKey:@"SHARING_AUDIENCE_CONTACTS_ONLY" value:&stru_1F0CE7398 table:@"Localized"];
  [WeakRetained updateContentConfigurationWithSecondaryText:v2];

  v3 = [WeakRetained delegate];
  [v3 sharingSettingsPreferenceMenuCell:WeakRetained didSelectSharingAudience:1];
}

void __49__CNMeCardSharingSettingsPreferenceMenuCell_menu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = CNContactsUIBundle();
  v2 = [v1 localizedStringForKey:@"SHARING_AUDIENCE_ALWAYS_ASK" value:&stru_1F0CE7398 table:@"Localized"];
  [WeakRetained updateContentConfigurationWithSecondaryText:v2];

  v3 = [WeakRetained delegate];
  [v3 sharingSettingsPreferenceMenuCell:WeakRetained didSelectSharingAudience:2];
}

- (void)updateMenuButtonStatesWithSharingAudience:(unint64_t)audience
{
  if (audience == 2)
  {
    alwaysAskMenuTitle = [(CNMeCardSharingSettingsPreferenceMenuCell *)self alwaysAskMenuTitle];
  }

  else
  {
    if (audience != 1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    alwaysAskMenuTitle = [(CNMeCardSharingSettingsPreferenceMenuCell *)self contactsOnlyMenuTitle];
  }

  v5 = alwaysAskMenuTitle;
LABEL_7:
  menuButton = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  menu = [menuButton menu];
  children = [menu children];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__CNMeCardSharingSettingsPreferenceMenuCell_updateMenuButtonStatesWithSharingAudience___block_invoke;
  v10[3] = &unk_1E74E4BA8;
  v11 = v5;
  v9 = v5;
  [children _cn_each:v10];
}

void __87__CNMeCardSharingSettingsPreferenceMenuCell_updateMenuButtonStatesWithSharingAudience___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 title];
    [v5 setState:{objc_msgSend(v6, "isEqualToString:", *(a1 + 32))}];
  }
}

- (void)updateContentConfigurationWithSecondaryText:(id)text
{
  v4 = MEMORY[0x1E69DCC28];
  textCopy = text;
  valueCellConfiguration = [v4 valueCellConfiguration];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SHARING_AUDIENCE_SECTION_HEADER_SMALL_CAPS" value:&stru_1F0CE7398 table:@"Localized"];
  [valueCellConfiguration setText:v7];

  [valueCellConfiguration setSecondaryText:textCopy];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setContentConfiguration:valueCellConfiguration];
}

- (id)titleForSharingAudience:(unint64_t)audience
{
  if (audience == 1)
  {
    v3 = @"SHARING_AUDIENCE_CONTACTS_ONLY";
    goto LABEL_5;
  }

  if (audience == 2)
  {
    v3 = @"SHARING_AUDIENCE_ALWAYS_ASK";
LABEL_5:
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];

    goto LABEL_7;
  }

  v5 = &stru_1F0CE7398;
LABEL_7:

  return v5;
}

- (void)layoutMenuButton
{
  contentView = [(CNMeCardSharingSettingsPreferenceMenuCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;

  [(CNMeCardSharingSettingsPreferenceMenuCell *)self bounds];
  v9 = v8;
  v10 = 0.0;
  if (![(CNMeCardSharingSettingsPreferenceMenuCell *)self effectiveUserInterfaceLayoutDirection])
  {
    [(CNMeCardSharingSettingsPreferenceMenuCell *)self bounds];
    v10 = v11 * 0.5;
  }

  menuButton = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [menuButton setFrame:{v10, v5, v9 * 0.5, v7}];

  popupMenuButton = [(CNMeCardSharingSettingsPreferenceMenuCell *)self popupMenuButton];
  [popupMenuButton frame];
  v15 = v14;
  v17 = v16;

  menuButton2 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [menuButton2 setAnchorPoint:{v15, v17}];

  menuButton3 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self bringSubviewToFront:menuButton3];
}

- (void)configureAccessoryView
{
  v7 = objc_alloc_init(MEMORY[0x1E69DC738]);
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [plainButtonConfiguration setIndicator:2];
  [plainButtonConfiguration setIndicatorColorTransformer:&__block_literal_global_41950];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [plainButtonConfiguration setBaseForegroundColor:secondaryLabelColor];

  [v7 setConfiguration:plainButtonConfiguration];
  [v7 sizeToFit];
  [v7 setEnabled:0];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setPopupMenuButton:v7];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setAccessoryView:v7];
  v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v5 setShowsMenuAsPrimaryAction:1];
  menu = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menu];
  [v5 setMenu:menu];

  [(CNMeCardSharingSettingsPreferenceMenuCell *)self addSubview:v5];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setMenuButton:v5];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self layoutMenuButton];
}

id __67__CNMeCardSharingSettingsPreferenceMenuCell_configureAccessoryView__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v1 = [v0 colorWithAlphaComponent:0.35];

  return v1;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CNMeCardSharingSettingsPreferenceMenuCell;
  [(CNMeCardSharingSettingsPreferenceMenuCell *)&v4 layoutSubviews];
  menuButton = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];

  if (menuButton)
  {
    [(CNMeCardSharingSettingsPreferenceMenuCell *)self layoutMenuButton];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setUserInteractionEnabled:?];
  menuButton = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [menuButton setEnabled:enabledCopy];
}

- (void)setSharingAudience:(unint64_t)audience
{
  v5 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self titleForSharingAudience:?];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self updateContentConfigurationWithSecondaryText:v5];

  [(CNMeCardSharingSettingsPreferenceMenuCell *)self updateMenuButtonStatesWithSharingAudience:audience];
}

- (CNMeCardSharingSettingsPreferenceMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNMeCardSharingSettingsPreferenceMenuCell;
  v4 = [(CNMeCardSharingSettingsPreferenceMenuCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNMeCardSharingSettingsPreferenceMenuCell *)v4 configureAccessoryView];
    v6 = v5;
  }

  return v5;
}

@end