@interface CNCardSharedProfileCellView
+ (id)log;
- (BOOL)shouldShowMenu;
- (CNCardSharedProfileCellView)init;
- (CNCardSharedProfileCellViewDelegate)delegate;
- (id)avatarImageForActionType:(unint64_t)a3;
- (id)contactDisplayName;
- (id)customMenu;
- (id)menuActions;
- (id)revertToCustomAction;
- (id)revertToPreviousAction;
- (id)sharedMenu;
- (id)sharedMenuTitle;
- (id)updateAction;
- (int64_t)sharedPhotoDisplayPreference;
- (void)avatarCacheDidUpdateForIdentifiers:(id)a3;
- (void)invalidateAvatarCacheEntriesForContact:(id)a3;
- (void)performFallbackAction;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setLabelTextAttributes:(id)a3;
- (void)setPropertyItem:(id)a3;
- (void)setSharedProfileStateOracle:(id)a3;
- (void)setUpAvatarView;
- (void)setUpChevron;
- (void)setUpChevronAndMenuIfNeeded;
- (void)setUpLabels;
- (void)setUpMenuButton;
- (void)setupConstraints;
- (void)setupViews;
- (void)startObservingAvatarCacheInvalidation;
- (void)updateConstraints;
- (void)updateMenuButton;
@end

@implementation CNCardSharedProfileCellView

- (CNCardSharedProfileCellViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)avatarCacheDidUpdateForIdentifiers:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(CNCardSharedProfileCellView *)self actionToPerformUponCacheInvalidation];
  if (v4 == 1)
  {
    v12 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    v19 = 0;
    v6 = [v12 updateContactAndNicknamesForActionType:1 error:&v19];
    v7 = v19;

    if (v6)
    {
      v9 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v10 = __66__CNCardSharedProfileCellView_avatarCacheDidUpdateForIdentifiers___block_invoke_72;
      goto LABEL_12;
    }

    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v7;
      v14 = "Failed to update contact for Revert to Previous action: %@";
      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v11 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    v17 = 0;
    v6 = [v11 updateContactAndNicknamesForActionType:3 error:&v17];
    v7 = v17;

    if (v6)
    {
      v9 = &v15;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v10 = __66__CNCardSharedProfileCellView_avatarCacheDidUpdateForIdentifiers___block_invoke_73;
LABEL_12:
      v9[2] = v10;
      v9[3] = &unk_1E74E6A88;
      v9[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v9);

      goto LABEL_13;
    }

    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v7;
      v14 = "Error updating contact for update action type: %@";
LABEL_20:
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v4 != 2)
  {
LABEL_13:
    [(CNCardSharedProfileCellView *)self setActionToPerformUponCacheInvalidation:0, v15, v16];
    return;
  }

  v5 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  v21 = 0;
  v6 = [v5 updateContactAndNicknamesForActionType:2 error:&v21];
  v7 = v21;

  if (v6)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Failed to update contact for Revert to Custom action: %@", buf, 0xCu);
    }

    v9 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v10 = __66__CNCardSharedProfileCellView_avatarCacheDidUpdateForIdentifiers___block_invoke;
    goto LABEL_12;
  }

LABEL_18:
}

void __66__CNCardSharedProfileCellView_avatarCacheDidUpdateForIdentifiers___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 viewDidSelectDisplayPreference:2];
}

void __66__CNCardSharedProfileCellView_avatarCacheDidUpdateForIdentifiers___block_invoke_72(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 viewDidSelectDisplayPreference:2];
}

void __66__CNCardSharedProfileCellView_avatarCacheDidUpdateForIdentifiers___block_invoke_73(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 viewDidSelectDisplayPreference:1];
}

- (void)invalidateAvatarCacheEntriesForContact:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[CNUIContactsEnvironment currentEnvironment];
    v5 = [v4 cachingLikenessRenderer];
    v6 = &unk_1F0E28E18;
    if ([v5 conformsToProtocol:v6])
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = dispatch_get_global_queue(25, 0);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__CNCardSharedProfileCellView_invalidateAvatarCacheEntriesForContact___block_invoke;
      v10[3] = &unk_1E74E77C0;
      v11 = v8;
      v12 = v3;
      dispatch_async(v9, v10);
    }
  }
}

void __70__CNCardSharedProfileCellView_invalidateAvatarCacheEntriesForContact___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 updateContactsWithIdentifiers:v3];
}

- (id)avatarImageForActionType:(unint64_t)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = [(CNCardSharedProfileCellView *)self avatarImageRenderer];

  if (!v5)
  {
    v6 = [CNAvatarImageRenderer alloc];
    v7 = +[CNAvatarImageRendererSettings defaultSettings];
    v8 = [(CNAvatarImageRenderer *)v6 initWithSettings:v7];
    [(CNCardSharedProfileCellView *)self setAvatarImageRenderer:v8];

    v9 = [(CNCardSharedProfileCellView *)self traitCollection];
    v10 = [v9 layoutDirection] == 1;

    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 scale];
    v13 = [CNAvatarImageRenderingScope scopeWithPointSize:v10 scale:0 rightToLeft:20.0 style:20.0, v12];
    [(CNCardSharedProfileCellView *)self setRenderingScope:v13];
  }

  v14 = [(CNCardSharedProfileCellView *)self contact];
  v15 = [v14 mutableCopy];

  v16 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  v17 = [v16 targetProfileForActionType:a3];

  v18 = [v17 thumbnailImageData];
  [v15 setImageData:v18];

  v19 = [v17 thumbnailImageData];
  [v15 setThumbnailImageData:v19];

  v20 = [(CNCardSharedProfileCellView *)self avatarImageRenderer];
  v25[0] = v15;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v22 = [(CNCardSharedProfileCellView *)self renderingScope];
  v23 = [v20 avatarImageForContacts:v21 scope:v22];

  return v23;
}

- (id)contactDisplayName
{
  v3 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v3 setStyle:1000];
  [v3 setFallbackStyle:-1];
  v4 = [(CNCardSharedProfileCellView *)self contact];
  v5 = [v3 stringFromContact:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F0CE7398;
  }

  v7 = v6;

  return v6;
}

- (id)sharedMenuTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_SHARED_MENU_TITLE_%@" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [(CNCardSharedProfileCellView *)self contactDisplayName];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (id)revertToCustomAction
{
  v3 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  v4 = [v3 effectiveStateForContact];

  v5 = [(CNCardSharedProfileCellView *)self avatarImageForActionType:2];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_REVERT_TO_CUSTOM_MENU_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_ASK_FOR_UPDATES" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [CNSharedProfileUpdateMenuElement elementWithTitle:v7 subtitle:v9 avatarImage:v5 selected:v4 == 2];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__CNCardSharedProfileCellView_revertToCustomAction__block_invoke;
  v12[3] = &unk_1E74E24B8;
  v12[4] = self;
  [v10 setPrimaryActionHandler:v12];

  return v10;
}

void __51__CNCardSharedProfileCellView_revertToCustomAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActionToPerformUponCacheInvalidation:2];
  v2 = *(a1 + 32);
  v4 = [v2 sharedProfileStateOracle];
  v3 = [v4 contact];
  [v2 invalidateAvatarCacheEntriesForContact:v3];
}

- (id)revertToPreviousAction
{
  v3 = [(CNCardSharedProfileCellView *)self avatarImageForActionType:1];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_REVERT_TO_PREVIOUS_MENU_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_ASK_FOR_UPDATES" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = [CNSharedProfileUpdateMenuElement elementWithTitle:v5 subtitle:v7 avatarImage:v3 selected:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CNCardSharedProfileCellView_revertToPreviousAction__block_invoke;
  v10[3] = &unk_1E74E24B8;
  v10[4] = self;
  [v8 setPrimaryActionHandler:v10];

  return v8;
}

void __53__CNCardSharedProfileCellView_revertToPreviousAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActionToPerformUponCacheInvalidation:1];
  v2 = *(a1 + 32);
  v4 = [v2 sharedProfileStateOracle];
  v3 = [v4 contact];
  [v2 invalidateAvatarCacheEntriesForContact:v3];
}

- (id)updateAction
{
  v3 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  v4 = [v3 effectiveStateForContactIsAutoUpdate];

  v5 = [(CNCardSharedProfileCellView *)self avatarImageForActionType:3];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_UPDATE_MENU_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_ALWAYS_UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [CNSharedProfileUpdateMenuElement elementWithTitle:v7 subtitle:v9 avatarImage:v5 selected:v4];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__CNCardSharedProfileCellView_updateAction__block_invoke;
  v12[3] = &unk_1E74E24B8;
  v12[4] = self;
  [v10 setPrimaryActionHandler:v12];

  return v10;
}

void __43__CNCardSharedProfileCellView_updateAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActionToPerformUponCacheInvalidation:3];
  v2 = *(a1 + 32);
  v4 = [v2 sharedProfileStateOracle];
  v3 = [v4 contact];
  [v2 invalidateAvatarCacheEntriesForContact:v3];
}

- (id)customMenu
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];

  if (v3)
  {
    v4 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    v5 = [v4 availableActionTypesForEffectiveState];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v15 + 1) + 8 * i) isEqualToNumber:{&unk_1F0D4B460, v15}])
          {
            v12 = [(CNCardSharedProfileCellView *)self revertToCustomAction];
            [v6 _cn_addNonNilObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 image:0 identifier:0 options:1 children:v6];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)sharedMenu
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];

  if (v3)
  {
    v4 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    v5 = [v4 availableActionTypesForEffectiveState];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v20;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isEqualToNumber:{&unk_1F0D4B430, v19}])
        {
          v13 = [(CNCardSharedProfileCellView *)self updateAction];
        }

        else
        {
          if (![v12 isEqualToNumber:&unk_1F0D4B448])
          {
            continue;
          }

          v13 = [(CNCardSharedProfileCellView *)self revertToPreviousAction];
        }

        v14 = v13;
        [v6 _cn_addNonNilObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v9)
      {
LABEL_14:

        if ((*(*MEMORY[0x1E6996530] + 16))())
        {
          v15 = 0;
        }

        else
        {
          v16 = MEMORY[0x1E69DCC60];
          v17 = [(CNCardSharedProfileCellView *)self sharedMenuTitle];
          v15 = [v16 menuWithTitle:v17 image:0 identifier:0 options:1 children:v6];
        }

        goto LABEL_19;
      }
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id)menuActions
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v4 = [(CNCardSharedProfileCellView *)self sharedMenu];
  [v3 _cn_addNonNilObject:v4];

  v5 = [(CNCardSharedProfileCellView *)self customMenu];
  [v3 _cn_addNonNilObject:v5];

  return v3;
}

- (void)performFallbackAction
{
  v2 = [(CNCardSharedProfileCellView *)self delegate];
  [v2 viewDidSelectFallbackAction];
}

- (BOOL)shouldShowMenu
{
  v2 = self;
  v14 = *MEMORY[0x1E69E9840];
  if ([(CNCardSharedProfileCellView *)self allowsEditing])
  {
    v3 = MEMORY[0x1E695CF98];
    v4 = [v2 contact];
    v5 = [v3 effectiveStateForContact:v4];

    if (v5 == 2)
    {
      v9 = [v2 sharedProfileStateOracle];
      v10 = [v9 currentNicknameHasValidVisualIdentityData];

      v2 = [v2 sharedProfileStateOracle];
      LOBYTE(v9) = [v2 pendingNicknameHasValidVisualIdentityData];

      LOBYTE(v2) = v10 | v9;
      v7 = CNUILogContactCard();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        return v2 & 1;
      }

      v12 = 67109120;
      v13 = v2 & 1;
      v8 = "Contact has current or pending shared photo: %d";
    }

    else
    {
      if (v5 != 3)
      {
        LOBYTE(v2) = 1;
        return v2 & 1;
      }

      v6 = [v2 sharedProfileStateOracle];
      LODWORD(v2) = [v6 currentNicknameHasValidVisualIdentityData];

      v7 = CNUILogContactCard();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v12 = 67109120;
      v13 = v2;
      v8 = "Contact has a current shared photo: %d";
    }

    _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, v8, &v12, 8u);
    goto LABEL_10;
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

- (void)setSharedProfileStateOracle:(id)a3
{
  v5 = a3;
  if (self->_sharedProfileStateOracle != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_sharedProfileStateOracle, a3);
    [(CNCardSharedProfileCellView *)self setUpChevronAndMenuIfNeeded];
    v6 = [(CNCardSharedProfileCellView *)self propertyItem];
    v7 = [v6 displayValue];
    v8 = [(CNCardSharedProfileCellView *)self valueLabel];
    [v8 setText:v7];

    v5 = v9;
  }
}

- (int64_t)sharedPhotoDisplayPreference
{
  objc_opt_class();
  v3 = [(CNCardSharedProfileCellView *)self propertyItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 sharedPhotoDisplayPreference];
  return v6;
}

- (void)setPropertyItem:(id)a3
{
  v5 = a3;
  if (self->_propertyItem != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_propertyItem, a3);
    v6 = [(CNPropertyGroupItem *)v10 displayValue];
    v7 = [(CNCardSharedProfileCellView *)self valueLabel];
    [v7 setText:v6];

    v8 = [(CNCardSharedProfileCellView *)self avatarView];
    v9 = [(CNPropertyGroupItem *)v10 contact];
    [v8 setContact:v9];

    v5 = v10;
  }
}

- (void)setLabelTextAttributes:(id)a3
{
  v10 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v10)
  {
    v4 = [(CNCardSharedProfileCellView *)self titleLabel];
    v5 = [v4 font];

    if (v5 != v10)
    {
      v6 = [(CNCardSharedProfileCellView *)self titleLabel];
      [v6 setFont:v10];
    }

    v7 = [(CNCardSharedProfileCellView *)self valueLabel];
    v8 = [v7 font];

    if (v8 != v10)
    {
      v9 = [(CNCardSharedProfileCellView *)self valueLabel];
      [v9 setFont:v10];
    }
  }
}

- (void)setupConstraints
{
  v73[4] = *MEMORY[0x1E69E9840];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  }

  v3 = objc_opt_new();
  v4 = [(CNCardSharedProfileCellView *)self labelStackView];
  v5 = [v4 centerYAnchor];
  v6 = [(CNCardSharedProfileCellView *)self centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [(NSArray *)v3 addObject:v7];

  v8 = [(CNCardSharedProfileCellView *)self labelStackView];
  v9 = [v8 topAnchor];
  v10 = [(CNCardSharedProfileCellView *)self topAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];
  [(NSArray *)v3 addObject:v11];

  v12 = [(CNCardSharedProfileCellView *)self labelStackView];
  v13 = [v12 bottomAnchor];
  v14 = [(CNCardSharedProfileCellView *)self bottomAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
  v71 = v3;
  [(NSArray *)v3 addObject:v15];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v16 = [(CNCardSharedProfileCellView *)self labelStackView];
    v17 = [v16 leadingAnchor];
    v18 = [(CNCardSharedProfileCellView *)self leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [(NSArray *)v3 addObject:v19];
  }

  else
  {
    v20 = [(CNCardSharedProfileCellView *)self avatarView];
    v21 = [v20 centerYAnchor];
    v22 = [(CNCardSharedProfileCellView *)self centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [(NSArray *)v3 addObject:v23];

    v24 = [(CNCardSharedProfileCellView *)self avatarView];
    v25 = [v24 leadingAnchor];
    v26 = [(CNCardSharedProfileCellView *)self leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [(NSArray *)v3 addObject:v27];

    v28 = [(CNCardSharedProfileCellView *)self avatarView];
    v29 = [v28 heightAnchor];
    v30 = [(CNCardSharedProfileCellView *)self avatarView];
    v31 = [v30 widthAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [(NSArray *)v71 addObject:v32];

    v33 = [(CNCardSharedProfileCellView *)self avatarView];
    v34 = [v33 heightAnchor];
    v35 = [v34 constraintEqualToConstant:40.0];
    [(NSArray *)v71 addObject:v35];

    v16 = [(CNCardSharedProfileCellView *)self labelStackView];
    v17 = [v16 leadingAnchor];
    v18 = [(CNCardSharedProfileCellView *)self avatarView];
    v19 = [v18 trailingAnchor];
    v36 = [v17 constraintEqualToSystemSpacingAfterAnchor:v19 multiplier:1.0];
    [(NSArray *)v71 addObject:v36];
  }

  v69 = [(CNCardSharedProfileCellView *)self menuButton];
  v67 = [v69 leadingAnchor];
  v65 = [(CNCardSharedProfileCellView *)self leadingAnchor];
  v63 = [v67 constraintEqualToAnchor:v65];
  v73[0] = v63;
  v61 = [(CNCardSharedProfileCellView *)self menuButton];
  v60 = [v61 trailingAnchor];
  v59 = [(CNCardSharedProfileCellView *)self trailingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v73[1] = v58;
  v37 = [(CNCardSharedProfileCellView *)self menuButton];
  v38 = [v37 topAnchor];
  v39 = [(CNCardSharedProfileCellView *)self topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v73[2] = v40;
  v41 = [(CNCardSharedProfileCellView *)self menuButton];
  v42 = [v41 bottomAnchor];
  v43 = [(CNCardSharedProfileCellView *)self bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  v73[3] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
  [(NSArray *)v71 addObjectsFromArray:v45];

  if ([(CNCardSharedProfileCellView *)self shouldShowMenu])
  {
    v70 = [(CNCardSharedProfileCellView *)self chevronImageView];
    v46 = [v70 leadingAnchor];
    v47 = [(CNCardSharedProfileCellView *)self labelStackView];
    v48 = [v47 trailingAnchor];
    v68 = [v46 constraintEqualToSystemSpacingAfterAnchor:v48 multiplier:1.0];
    v72[0] = v68;
    v66 = [(CNCardSharedProfileCellView *)self chevronImageView];
    v64 = [v66 centerYAnchor];
    v62 = [(CNCardSharedProfileCellView *)self centerYAnchor];
    v49 = [v64 constraintEqualToAnchor:v62];
    v72[1] = v49;
    v50 = [(CNCardSharedProfileCellView *)self chevronImageView];
    v51 = [v50 trailingAnchor];
    v52 = [(CNCardSharedProfileCellView *)self trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    v72[2] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
    [(NSArray *)v71 addObjectsFromArray:v54];

    v55 = v70;
  }

  else
  {
    v55 = [(CNCardSharedProfileCellView *)self labelStackView];
    v46 = [v55 trailingAnchor];
    v47 = [(CNCardSharedProfileCellView *)self trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [(NSArray *)v71 addObject:v48];
  }

  constraints = self->_constraints;
  self->_constraints = v71;
  v57 = v71;

  [MEMORY[0x1E696ACD8] activateConstraints:v57];
}

- (void)updateConstraints
{
  v7.receiver = self;
  v7.super_class = CNCardSharedProfileCellView;
  [(CNCardSharedProfileCellView *)&v7 updateConstraints];
  v3 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v4 = [(CNCardSharedProfileCellView *)self avatarView];
  v5 = [v4 isHidden];

  if (v3 != v5)
  {
    v6 = [(CNCardSharedProfileCellView *)self avatarView];
    [v6 setHidden:v3];

    [(CNCardSharedProfileCellView *)self setupConstraints];
  }
}

- (void)startObservingAvatarCacheInvalidation
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [v3 cachingLikenessRenderer];
  if ([v4 conformsToProtocol:&unk_1F0E28E18])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  v6 = v7;
  if (v7)
  {
    [v7 addDelegate:self];
    v6 = v7;
  }
}

- (void)updateMenuButton
{
  if ([(CNCardSharedProfileCellView *)self allowsEditing])
  {
    v3 = [(CNCardSharedProfileCellView *)self shouldShowMenu];
    v4 = [(CNCardSharedProfileCellView *)self menuButton];
    [v4 setShowsMenuAsPrimaryAction:v3];

    if ([(CNCardSharedProfileCellView *)self shouldShowMenu])
    {
      objc_initWeak(&location, self);
      v5 = [(CNCardSharedProfileCellView *)self menuButton];
      [v5 removeTarget:self action:sel_performFallbackAction forControlEvents:0x2000];

      v6 = [(CNCardSharedProfileCellView *)self menuButton];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__CNCardSharedProfileCellView_updateMenuButton__block_invoke;
      v10[3] = &unk_1E74E4F00;
      objc_copyWeak(&v11, &location);
      [v6 _setMenuProvider:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
      return;
    }

    v8 = [(CNCardSharedProfileCellView *)self menuButton];
    [v8 _setMenuProvider:0];

    v9 = [(CNCardSharedProfileCellView *)self menuButton];
    [v9 addTarget:self action:sel_performFallbackAction forControlEvents:0x2000];
  }

  else
  {
    v7 = [(CNCardSharedProfileCellView *)self menuButton];
    [v7 removeTarget:self action:sel_performFallbackAction forControlEvents:0x2000];

    v9 = [(CNCardSharedProfileCellView *)self menuButton];
    [v9 _setMenuProvider:0];
  }
}

id __47__CNCardSharedProfileCellView_updateMenuButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x1E69DCC60];
  v3 = [WeakRetained menuActions];
  v4 = [v2 menuWithChildren:v3];

  return v4;
}

- (void)setUpMenuButton
{
  v3 = [(CNCardSharedProfileCellView *)self menuButton];

  if (!v3)
  {
    v4 = objc_alloc_init(CNCardSharedProfileCellMenuButton);
    [(CNCardSharedProfileCellMenuButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNCardSharedProfileCellView *)self setMenuButton:v4];
  }

  v5 = [(CNCardSharedProfileCellView *)self menuButton];
  [(CNCardSharedProfileCellView *)self addSubview:v5];
}

- (void)setUpChevron
{
  v3 = [(CNCardSharedProfileCellView *)self chevronImageView];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardMenuChevron];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v5 setTintColor:v6];

    if ([(CNCardSharedProfileCellView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v7 = 7;
    }

    else
    {
      v7 = 8;
    }

    [v5 setContentMode:v7];
    [(CNCardSharedProfileCellView *)self setChevronImageView:v5];
  }

  v8 = [(CNCardSharedProfileCellView *)self chevronImageView];
  [(CNCardSharedProfileCellView *)self addSubview:v8];
}

- (void)setUpChevronAndMenuIfNeeded
{
  [(CNCardSharedProfileCellView *)self updateMenuButton];
  if ([(CNCardSharedProfileCellView *)self shouldShowMenu])
  {
    [(CNCardSharedProfileCellView *)self setUpChevron];

    [(CNCardSharedProfileCellView *)self setupConstraints];
  }

  else
  {
    v3 = [(CNCardSharedProfileCellView *)self chevronImageView];
    [v3 removeFromSuperview];
  }
}

- (void)setUpLabels
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_CONTACT_CARD_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [v3 setText:v5];

  [v3 setNumberOfLines:0];
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 setFont:v7];

  [(CNCardSharedProfileCellView *)self addSubview:v3];
  [(CNCardSharedProfileCellView *)self setTitleLabel:v3];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setText:&stru_1F0CE7398];
  [v8 setNumberOfLines:0];
  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:v9];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  [v8 setFont:v10];

  [(CNCardSharedProfileCellView *)self addSubview:v8];
  [(CNCardSharedProfileCellView *)self setValueLabel:v8];
  v11 = objc_alloc(MEMORY[0x1E69DCF90]);
  v12 = [(CNCardSharedProfileCellView *)self titleLabel];
  v16[0] = v12;
  v13 = [(CNCardSharedProfileCellView *)self valueLabel];
  v16[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v15 = [v11 initWithArrangedSubviews:v14];

  [v15 setAxis:1];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNCardSharedProfileCellView *)self addSubview:v15];
  [(CNCardSharedProfileCellView *)self setLabelStackView:v15];
}

- (void)setUpAvatarView
{
  v3 = objc_alloc_init(CNAvatarView);
  [(CNAvatarView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNCardSharedProfileCellView *)self addSubview:v3];
  [(CNCardSharedProfileCellView *)self setAvatarView:v3];
}

- (void)setupViews
{
  [(CNCardSharedProfileCellView *)self setUpAvatarView];
  [(CNCardSharedProfileCellView *)self setUpLabels];
  [(CNCardSharedProfileCellView *)self setUpMenuButton];

  [(CNCardSharedProfileCellView *)self setUpChevronAndMenuIfNeeded];
}

- (void)setAllowsEditing:(BOOL)a3
{
  if (self->_allowsEditing != a3)
  {
    self->_allowsEditing = a3;
    [(CNCardSharedProfileCellView *)self updateMenuButton];
  }
}

- (CNCardSharedProfileCellView)init
{
  v6.receiver = self;
  v6.super_class = CNCardSharedProfileCellView;
  v2 = [(CNCardSharedProfileCellView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(CNCardSharedProfileCellView *)v2 setupViews];
    [(CNCardSharedProfileCellView *)v3 setupConstraints];
    [(CNCardSharedProfileCellView *)v3 startObservingAvatarCacheInvalidation];
    v4 = v3;
  }

  return v3;
}

+ (id)log
{
  if (log_cn_once_token_1_9789 != -1)
  {
    dispatch_once(&log_cn_once_token_1_9789, &__block_literal_global_9790);
  }

  v3 = log_cn_once_object_1_9791;

  return v3;
}

uint64_t __34__CNCardSharedProfileCellView_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNCardSharedProfileCellContentView");
  v1 = log_cn_once_object_1_9791;
  log_cn_once_object_1_9791 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end