@interface CNUIFavoritesEntryPicker
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (CNUIFavoritesEntryPicker)initWithContact:(id)a3;
- (CNUIFavoritesEntryPickerDelegate)delegate;
- (id)menuProviderForContextMenuInteraction:(id)a3;
- (id)viewController;
- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4;
- (void)didSelectActionItem:(id)a3 dismissController:(BOOL)a4;
- (void)setUpActionsController;
@end

@implementation CNUIFavoritesEntryPicker

- (CNUIFavoritesEntryPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v9 = a4;
  v5 = [(CNUIFavoritesEntryPicker *)self actionMenuHelper];
  v6 = [(CNUIFavoritesEntryPicker *)self contextMenuInteraction];
  [v5 updateWithMenuItems:v9 contextMenuInteraction:v6];

  v7 = [(CNUIFavoritesEntryPicker *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(CNUIFavoritesEntryPicker *)self delegate];
    [v8 favoritesEntryPicker:self didUpdateWithMenu:v9];
  }
}

- (void)didSelectActionItem:(id)a3 dismissController:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CNUIFavoritesEntryPicker *)self alertController];

  if (v7)
  {
    v8 = [(CNUIFavoritesEntryPicker *)self alertController];
    [v8 dismissViewControllerAnimated:1 completion:0];

    [(CNUIFavoritesEntryPicker *)self setAlertController:0];
  }

  v9 = v6;
  v10 = v9;
  if (![v9 isSuggested])
  {
    goto LABEL_6;
  }

  v10 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v11 = MEMORY[0x1E695CE98];
  v12 = [v9 contactProperty];
  v13 = [v12 key];
  v14 = [v11 descriptorsForRequiredKeysForPropertyKey:v13];
  v15 = [v9 curateActionWithContext:v10 withKeysToFetch:v14];

  if (v15)
  {

    v10 = v15;
LABEL_6:
    v16 = [MEMORY[0x1E695CE98] favoritesEntryForUserActionItem:v10];
    v17 = [objc_opt_class() log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v16 contactProperty];
      v24 = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_199A75000, v17, OS_LOG_TYPE_INFO, "Did select favorites entry with contact property %@ with action item %@", &v24, 0x16u);
    }

    v19 = [(CNUIFavoritesEntryPicker *)self delegate];
    v20 = objc_opt_respondsToSelector();

    v21 = [(CNUIFavoritesEntryPicker *)self delegate];
    v22 = v21;
    if (v20)
    {
      [v21 favoritesEntryPicker:self didPickEntry:v16 dismissPicker:v4];
    }

    else
    {
      [v21 favoritesEntryPicker:self didPickEntry:v16];
    }

    if (v4)
    {
      [(CNUIFavoritesEntryPicker *)self setActionsController:0];
      [(CNUIFavoritesEntryPicker *)self setActionMenuHelper:0];
    }

    goto LABEL_14;
  }

  v23 = [objc_opt_class() log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412290;
    v25 = v9;
    _os_log_error_impl(&dword_199A75000, v23, OS_LOG_TYPE_ERROR, "Failed to curate suggestion for action item %@", &v24, 0xCu);
  }

  if (v4)
  {
    [(CNUIFavoritesEntryPicker *)self setActionsController:0];
    [(CNUIFavoritesEntryPicker *)self setActionMenuHelper:0];
  }

LABEL_14:
}

- (void)setUpActionsController
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [CNContactActionsController alloc];
  v4 = [(CNUIFavoritesEntryPicker *)self contact];
  v5 = *MEMORY[0x1E695C150];
  v15[0] = *MEMORY[0x1E695C178];
  v15[1] = v5;
  v6 = *MEMORY[0x1E695C170];
  v15[2] = *MEMORY[0x1E695C1B8];
  v15[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v8 = [(CNContactActionsController *)v3 initWithContact:v4 actionTypes:v7];
  [(CNUIFavoritesEntryPicker *)self setActionsController:v8];

  v9 = [(CNUIFavoritesEntryPicker *)self actionsController];
  [v9 setShouldUseOutlinedActionGlyphStyle:1];

  v10 = [(CNUIFavoritesEntryPicker *)self actionsController];
  [v10 setDisplayMenuIconAtTopLevel:1];

  v11 = [(CNUIFavoritesEntryPicker *)self actionsController];
  [v11 setGenerateFavoritesListItemsOnly:1];

  v12 = [(CNUIFavoritesEntryPicker *)self actionsController];
  [v12 setDisplayDefaultAppsSectionedMenus:0];

  v13 = [(CNUIFavoritesEntryPicker *)self actionsController];
  [v13 setDelegate:self];

  v14 = [(CNUIFavoritesEntryPicker *)self actionsController];
  [v14 retrieveModels];
}

- (id)menuProviderForContextMenuInteraction:(id)a3
{
  [(CNUIFavoritesEntryPicker *)self setContextMenuInteraction:a3];
  v4 = objc_alloc_init(CNActionMenuHelper);
  [(CNUIFavoritesEntryPicker *)self setActionMenuHelper:v4];

  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
  v7 = [(CNUIFavoritesEntryPicker *)self actionMenuHelper];
  [v7 setMenuTitle:v6];

  [(CNUIFavoritesEntryPicker *)self setUpActionsController];
  v8 = [(CNUIFavoritesEntryPicker *)self actionMenuHelper];
  v9 = [v8 menuProviderWithActionBlock:&__block_literal_global_25_40877];

  return v9;
}

- (id)viewController
{
  v31[4] = *MEMORY[0x1E69E9840];
  v3 = [(CNUIFavoritesEntryPicker *)self alertController];

  if (v3)
  {
    v4 = [(CNUIFavoritesEntryPicker *)self alertController];
  }

  else
  {
    v5 = *MEMORY[0x1E695C150];
    v31[0] = *MEMORY[0x1E695C178];
    v31[1] = v5;
    v6 = *MEMORY[0x1E695C170];
    v31[2] = *MEMORY[0x1E695C1B8];
    v31[3] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    v8 = [(CNUIFavoritesEntryPicker *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CNUIFavoritesEntryPicker *)self delegate];
      v11 = [v10 actionTypesForFavoritesEntryPicker:self];

      v7 = v11;
    }

    v12 = [CNContactActionsController alloc];
    v13 = [(CNUIFavoritesEntryPicker *)self contact];
    v14 = [(CNContactActionsController *)v12 initWithContact:v13 actionTypes:v7];
    [(CNUIFavoritesEntryPicker *)self setActionsController:v14];

    v15 = [(CNUIFavoritesEntryPicker *)self actionsController];
    [v15 setDelegate:self];

    v16 = [(CNUIFavoritesEntryPicker *)self actionsController];
    [v16 setGenerateFavoritesListItemsOnly:1];

    v17 = [(CNUIFavoritesEntryPicker *)self actionsController];
    [v17 setDisplayDefaultAppsSectionedMenus:0];

    v18 = MEMORY[0x1E69DC650];
    v19 = CNContactsUIBundle();
    v20 = [v19 localizedStringForKey:@"PHONE_ACTION_ADD_TO_FAVORITES" value:&stru_1F0CE7398 table:@"Localized"];
    v4 = [v18 alertControllerWithTitle:v20 message:0 preferredStyle:0];

    v21 = [(CNUIFavoritesEntryPicker *)self actionsController];
    v22 = [v21 viewController];
    [v4 setContentViewController:v22];

    objc_initWeak(&location, self);
    v23 = MEMORY[0x1E69DC648];
    v24 = CNContactsUIBundle();
    v25 = [v24 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __42__CNUIFavoritesEntryPicker_viewController__block_invoke;
    v28[3] = &unk_1E74E4B28;
    objc_copyWeak(&v29, &location);
    v26 = [v23 actionWithTitle:v25 style:1 handler:v28];
    [v4 addAction:v26];

    [(CNUIFavoritesEntryPicker *)self setAlertController:v4];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __42__CNUIFavoritesEntryPicker_viewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlertController:0];
}

- (CNUIFavoritesEntryPicker)initWithContact:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIFavoritesEntryPicker;
  v6 = [(CNUIFavoritesEntryPicker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
  }

  return v7;
}

+ (id)log
{
  if (log_cn_once_token_1_40899 != -1)
  {
    dispatch_once(&log_cn_once_token_1_40899, &__block_literal_global_40900);
  }

  v3 = log_cn_once_object_1_40901;

  return v3;
}

uint64_t __31__CNUIFavoritesEntryPicker_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIFavoritesEntryPicker");
  v1 = log_cn_once_object_1_40901;
  log_cn_once_object_1_40901 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)descriptorForRequiredKeys
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = +[CNContactActionsController descriptorForRequiredKeys];
  [v2 addObject:v3];

  v4 = [MEMORY[0x1E695CE98] descriptorsForRequiredKeysForPropertyKey:0];
  [v2 addObjectsFromArray:v4];

  v5 = MEMORY[0x1E695CD58];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUIFavoritesEntryPicker descriptorForRequiredKeys]"];
  v7 = [v5 descriptorWithKeyDescriptors:v2 description:v6];

  return v7;
}

@end