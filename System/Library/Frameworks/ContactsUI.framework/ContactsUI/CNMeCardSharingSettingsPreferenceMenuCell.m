@interface CNMeCardSharingSettingsPreferenceMenuCell
- (CNMeCardSharingSettingsPreferenceMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNMeCardSharingSettingsPreferenceMenuCellDelegate)delegate;
- (id)alwaysAskMenuTitle;
- (id)contactsOnlyMenuTitle;
- (id)menu;
- (id)titleForSharingAudience:(unint64_t)a3;
- (void)configureAccessoryView;
- (void)layoutMenuButton;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setSharingAudience:(unint64_t)a3;
- (void)updateContentConfigurationWithSecondaryText:(id)a3;
- (void)updateMenuButtonStatesWithSharingAudience:(unint64_t)a3;
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
  v4 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self contactsOnlyMenuTitle];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__CNMeCardSharingSettingsPreferenceMenuCell_menu__block_invoke;
  v18[3] = &unk_1E74E4BD0;
  objc_copyWeak(&v19, &location);
  v5 = [v3 actionWithTitle:v4 image:0 identifier:0 handler:v18];

  v6 = MEMORY[0x1E69DC628];
  v7 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self alwaysAskMenuTitle];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __49__CNMeCardSharingSettingsPreferenceMenuCell_menu__block_invoke_2;
  v16 = &unk_1E74E4BD0;
  objc_copyWeak(&v17, &location);
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:&v13];

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

- (void)updateMenuButtonStatesWithSharingAudience:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self alwaysAskMenuTitle];
  }

  else
  {
    if (a3 != 1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self contactsOnlyMenuTitle];
  }

  v5 = v4;
LABEL_7:
  v6 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  v7 = [v6 menu];
  v8 = [v7 children];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__CNMeCardSharingSettingsPreferenceMenuCell_updateMenuButtonStatesWithSharingAudience___block_invoke;
  v10[3] = &unk_1E74E4BA8;
  v11 = v5;
  v9 = v5;
  [v8 _cn_each:v10];
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

- (void)updateContentConfigurationWithSecondaryText:(id)a3
{
  v4 = MEMORY[0x1E69DCC28];
  v5 = a3;
  v8 = [v4 valueCellConfiguration];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SHARING_AUDIENCE_SECTION_HEADER_SMALL_CAPS" value:&stru_1F0CE7398 table:@"Localized"];
  [v8 setText:v7];

  [v8 setSecondaryText:v5];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setContentConfiguration:v8];
}

- (id)titleForSharingAudience:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = @"SHARING_AUDIENCE_CONTACTS_ONLY";
    goto LABEL_5;
  }

  if (a3 == 2)
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
  v3 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self contentView];
  [v3 frame];
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

  v12 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [v12 setFrame:{v10, v5, v9 * 0.5, v7}];

  v13 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self popupMenuButton];
  [v13 frame];
  v15 = v14;
  v17 = v16;

  v18 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [v18 setAnchorPoint:{v15, v17}];

  v19 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self bringSubviewToFront:v19];
}

- (void)configureAccessoryView
{
  v7 = objc_alloc_init(MEMORY[0x1E69DC738]);
  v3 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v3 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [v3 setIndicator:2];
  [v3 setIndicatorColorTransformer:&__block_literal_global_41950];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v3 setBaseForegroundColor:v4];

  [v7 setConfiguration:v3];
  [v7 sizeToFit];
  [v7 setEnabled:0];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setPopupMenuButton:v7];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setAccessoryView:v7];
  v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v5 setShowsMenuAsPrimaryAction:1];
  v6 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menu];
  [v5 setMenu:v6];

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
  v3 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];

  if (v3)
  {
    [(CNMeCardSharingSettingsPreferenceMenuCell *)self layoutMenuButton];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self setUserInteractionEnabled:?];
  v5 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self menuButton];
  [v5 setEnabled:v3];
}

- (void)setSharingAudience:(unint64_t)a3
{
  v5 = [(CNMeCardSharingSettingsPreferenceMenuCell *)self titleForSharingAudience:?];
  [(CNMeCardSharingSettingsPreferenceMenuCell *)self updateContentConfigurationWithSecondaryText:v5];

  [(CNMeCardSharingSettingsPreferenceMenuCell *)self updateMenuButtonStatesWithSharingAudience:a3];
}

- (CNMeCardSharingSettingsPreferenceMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNMeCardSharingSettingsPreferenceMenuCell;
  v4 = [(CNMeCardSharingSettingsPreferenceMenuCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNMeCardSharingSettingsPreferenceMenuCell *)v4 configureAccessoryView];
    v6 = v5;
  }

  return v5;
}

@end