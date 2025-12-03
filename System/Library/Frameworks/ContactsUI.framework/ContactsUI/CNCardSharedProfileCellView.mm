@interface CNCardSharedProfileCellView
+ (id)log;
- (BOOL)shouldShowMenu;
- (CNCardSharedProfileCellView)init;
- (CNCardSharedProfileCellViewDelegate)delegate;
- (id)avatarImageForActionType:(unint64_t)type;
- (id)contactDisplayName;
- (id)customMenu;
- (id)menuActions;
- (id)revertToCustomAction;
- (id)revertToPreviousAction;
- (id)sharedMenu;
- (id)sharedMenuTitle;
- (id)updateAction;
- (int64_t)sharedPhotoDisplayPreference;
- (void)avatarCacheDidUpdateForIdentifiers:(id)identifiers;
- (void)invalidateAvatarCacheEntriesForContact:(id)contact;
- (void)performFallbackAction;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setLabelTextAttributes:(id)attributes;
- (void)setPropertyItem:(id)item;
- (void)setSharedProfileStateOracle:(id)oracle;
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

- (void)avatarCacheDidUpdateForIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x1E69E9840];
  actionToPerformUponCacheInvalidation = [(CNCardSharedProfileCellView *)self actionToPerformUponCacheInvalidation];
  if (actionToPerformUponCacheInvalidation == 1)
  {
    sharedProfileStateOracle = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    v19 = 0;
    v6 = [sharedProfileStateOracle updateContactAndNicknamesForActionType:1 error:&v19];
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

  if (actionToPerformUponCacheInvalidation == 3)
  {
    sharedProfileStateOracle2 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    v17 = 0;
    v6 = [sharedProfileStateOracle2 updateContactAndNicknamesForActionType:3 error:&v17];
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

  if (actionToPerformUponCacheInvalidation != 2)
  {
LABEL_13:
    [(CNCardSharedProfileCellView *)self setActionToPerformUponCacheInvalidation:0, v15, v16];
    return;
  }

  sharedProfileStateOracle3 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  v21 = 0;
  v6 = [sharedProfileStateOracle3 updateContactAndNicknamesForActionType:2 error:&v21];
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

- (void)invalidateAvatarCacheEntriesForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = +[CNUIContactsEnvironment currentEnvironment];
    cachingLikenessRenderer = [v4 cachingLikenessRenderer];
    v6 = &unk_1F0E28E18;
    if ([cachingLikenessRenderer conformsToProtocol:v6])
    {
      v7 = cachingLikenessRenderer;
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
      v12 = contactCopy;
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

- (id)avatarImageForActionType:(unint64_t)type
{
  v25[1] = *MEMORY[0x1E69E9840];
  avatarImageRenderer = [(CNCardSharedProfileCellView *)self avatarImageRenderer];

  if (!avatarImageRenderer)
  {
    v6 = [CNAvatarImageRenderer alloc];
    v7 = +[CNAvatarImageRendererSettings defaultSettings];
    v8 = [(CNAvatarImageRenderer *)v6 initWithSettings:v7];
    [(CNCardSharedProfileCellView *)self setAvatarImageRenderer:v8];

    traitCollection = [(CNCardSharedProfileCellView *)self traitCollection];
    v10 = [traitCollection layoutDirection] == 1;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v13 = [CNAvatarImageRenderingScope scopeWithPointSize:v10 scale:0 rightToLeft:20.0 style:20.0, v12];
    [(CNCardSharedProfileCellView *)self setRenderingScope:v13];
  }

  contact = [(CNCardSharedProfileCellView *)self contact];
  v15 = [contact mutableCopy];

  sharedProfileStateOracle = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  v17 = [sharedProfileStateOracle targetProfileForActionType:type];

  thumbnailImageData = [v17 thumbnailImageData];
  [v15 setImageData:thumbnailImageData];

  thumbnailImageData2 = [v17 thumbnailImageData];
  [v15 setThumbnailImageData:thumbnailImageData2];

  avatarImageRenderer2 = [(CNCardSharedProfileCellView *)self avatarImageRenderer];
  v25[0] = v15;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  renderingScope = [(CNCardSharedProfileCellView *)self renderingScope];
  v23 = [avatarImageRenderer2 avatarImageForContacts:v21 scope:renderingScope];

  return v23;
}

- (id)contactDisplayName
{
  v3 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v3 setStyle:1000];
  [v3 setFallbackStyle:-1];
  contact = [(CNCardSharedProfileCellView *)self contact];
  v5 = [v3 stringFromContact:contact];

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
  contactDisplayName = [(CNCardSharedProfileCellView *)self contactDisplayName];
  v7 = [v3 stringWithFormat:v5, contactDisplayName];

  return v7;
}

- (id)revertToCustomAction
{
  sharedProfileStateOracle = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  effectiveStateForContact = [sharedProfileStateOracle effectiveStateForContact];

  v5 = [(CNCardSharedProfileCellView *)self avatarImageForActionType:2];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_REVERT_TO_CUSTOM_MENU_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_ASK_FOR_UPDATES" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [CNSharedProfileUpdateMenuElement elementWithTitle:v7 subtitle:v9 avatarImage:v5 selected:effectiveStateForContact == 2];

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
  sharedProfileStateOracle = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
  effectiveStateForContactIsAutoUpdate = [sharedProfileStateOracle effectiveStateForContactIsAutoUpdate];

  v5 = [(CNCardSharedProfileCellView *)self avatarImageForActionType:3];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_UPDATE_MENU_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_ALWAYS_UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
  v10 = [CNSharedProfileUpdateMenuElement elementWithTitle:v7 subtitle:v9 avatarImage:v5 selected:effectiveStateForContactIsAutoUpdate];

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
  sharedProfileStateOracle = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];

  if (sharedProfileStateOracle)
  {
    sharedProfileStateOracle2 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    availableActionTypesForEffectiveState = [sharedProfileStateOracle2 availableActionTypesForEffectiveState];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = availableActionTypesForEffectiveState;
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
            revertToCustomAction = [(CNCardSharedProfileCellView *)self revertToCustomAction];
            [v6 _cn_addNonNilObject:revertToCustomAction];
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
  sharedProfileStateOracle = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];

  if (sharedProfileStateOracle)
  {
    sharedProfileStateOracle2 = [(CNCardSharedProfileCellView *)self sharedProfileStateOracle];
    availableActionTypesForEffectiveState = [sharedProfileStateOracle2 availableActionTypesForEffectiveState];

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = availableActionTypesForEffectiveState;
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
          updateAction = [(CNCardSharedProfileCellView *)self updateAction];
        }

        else
        {
          if (![v12 isEqualToNumber:&unk_1F0D4B448])
          {
            continue;
          }

          updateAction = [(CNCardSharedProfileCellView *)self revertToPreviousAction];
        }

        v14 = updateAction;
        [v6 _cn_addNonNilObject:updateAction];
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
          sharedMenuTitle = [(CNCardSharedProfileCellView *)self sharedMenuTitle];
          v15 = [v16 menuWithTitle:sharedMenuTitle image:0 identifier:0 options:1 children:v6];
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
  sharedMenu = [(CNCardSharedProfileCellView *)self sharedMenu];
  [v3 _cn_addNonNilObject:sharedMenu];

  customMenu = [(CNCardSharedProfileCellView *)self customMenu];
  [v3 _cn_addNonNilObject:customMenu];

  return v3;
}

- (void)performFallbackAction
{
  delegate = [(CNCardSharedProfileCellView *)self delegate];
  [delegate viewDidSelectFallbackAction];
}

- (BOOL)shouldShowMenu
{
  selfCopy = self;
  v14 = *MEMORY[0x1E69E9840];
  if ([(CNCardSharedProfileCellView *)self allowsEditing])
  {
    v3 = MEMORY[0x1E695CF98];
    contact = [selfCopy contact];
    v5 = [v3 effectiveStateForContact:contact];

    if (v5 == 2)
    {
      sharedProfileStateOracle = [selfCopy sharedProfileStateOracle];
      currentNicknameHasValidVisualIdentityData = [sharedProfileStateOracle currentNicknameHasValidVisualIdentityData];

      selfCopy = [selfCopy sharedProfileStateOracle];
      LOBYTE(sharedProfileStateOracle) = [selfCopy pendingNicknameHasValidVisualIdentityData];

      LOBYTE(selfCopy) = currentNicknameHasValidVisualIdentityData | sharedProfileStateOracle;
      v7 = CNUILogContactCard();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        return selfCopy & 1;
      }

      v12 = 67109120;
      v13 = selfCopy & 1;
      v8 = "Contact has current or pending shared photo: %d";
    }

    else
    {
      if (v5 != 3)
      {
        LOBYTE(selfCopy) = 1;
        return selfCopy & 1;
      }

      sharedProfileStateOracle2 = [selfCopy sharedProfileStateOracle];
      LODWORD(selfCopy) = [sharedProfileStateOracle2 currentNicknameHasValidVisualIdentityData];

      v7 = CNUILogContactCard();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v12 = 67109120;
      v13 = selfCopy;
      v8 = "Contact has a current shared photo: %d";
    }

    _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, v8, &v12, 8u);
    goto LABEL_10;
  }

  LOBYTE(selfCopy) = 0;
  return selfCopy & 1;
}

- (void)setSharedProfileStateOracle:(id)oracle
{
  oracleCopy = oracle;
  if (self->_sharedProfileStateOracle != oracleCopy)
  {
    v9 = oracleCopy;
    objc_storeStrong(&self->_sharedProfileStateOracle, oracle);
    [(CNCardSharedProfileCellView *)self setUpChevronAndMenuIfNeeded];
    propertyItem = [(CNCardSharedProfileCellView *)self propertyItem];
    displayValue = [propertyItem displayValue];
    valueLabel = [(CNCardSharedProfileCellView *)self valueLabel];
    [valueLabel setText:displayValue];

    oracleCopy = v9;
  }
}

- (int64_t)sharedPhotoDisplayPreference
{
  objc_opt_class();
  propertyItem = [(CNCardSharedProfileCellView *)self propertyItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = propertyItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  sharedPhotoDisplayPreference = [v5 sharedPhotoDisplayPreference];
  return sharedPhotoDisplayPreference;
}

- (void)setPropertyItem:(id)item
{
  itemCopy = item;
  if (self->_propertyItem != itemCopy)
  {
    v10 = itemCopy;
    objc_storeStrong(&self->_propertyItem, item);
    displayValue = [(CNPropertyGroupItem *)v10 displayValue];
    valueLabel = [(CNCardSharedProfileCellView *)self valueLabel];
    [valueLabel setText:displayValue];

    avatarView = [(CNCardSharedProfileCellView *)self avatarView];
    contact = [(CNPropertyGroupItem *)v10 contact];
    [avatarView setContact:contact];

    itemCopy = v10;
  }
}

- (void)setLabelTextAttributes:(id)attributes
{
  v10 = [attributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  if (v10)
  {
    titleLabel = [(CNCardSharedProfileCellView *)self titleLabel];
    font = [titleLabel font];

    if (font != v10)
    {
      titleLabel2 = [(CNCardSharedProfileCellView *)self titleLabel];
      [titleLabel2 setFont:v10];
    }

    valueLabel = [(CNCardSharedProfileCellView *)self valueLabel];
    font2 = [valueLabel font];

    if (font2 != v10)
    {
      valueLabel2 = [(CNCardSharedProfileCellView *)self valueLabel];
      [valueLabel2 setFont:v10];
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
  labelStackView = [(CNCardSharedProfileCellView *)self labelStackView];
  centerYAnchor = [labelStackView centerYAnchor];
  centerYAnchor2 = [(CNCardSharedProfileCellView *)self centerYAnchor];
  v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(NSArray *)v3 addObject:v7];

  labelStackView2 = [(CNCardSharedProfileCellView *)self labelStackView];
  topAnchor = [labelStackView2 topAnchor];
  topAnchor2 = [(CNCardSharedProfileCellView *)self topAnchor];
  v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  [(NSArray *)v3 addObject:v11];

  labelStackView3 = [(CNCardSharedProfileCellView *)self labelStackView];
  bottomAnchor = [labelStackView3 bottomAnchor];
  bottomAnchor2 = [(CNCardSharedProfileCellView *)self bottomAnchor];
  v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v71 = v3;
  [(NSArray *)v3 addObject:v15];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    labelStackView4 = [(CNCardSharedProfileCellView *)self labelStackView];
    leadingAnchor = [labelStackView4 leadingAnchor];
    leadingAnchor2 = [(CNCardSharedProfileCellView *)self leadingAnchor];
    trailingAnchor = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSArray *)v3 addObject:trailingAnchor];
  }

  else
  {
    avatarView = [(CNCardSharedProfileCellView *)self avatarView];
    centerYAnchor3 = [avatarView centerYAnchor];
    centerYAnchor4 = [(CNCardSharedProfileCellView *)self centerYAnchor];
    v23 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [(NSArray *)v3 addObject:v23];

    avatarView2 = [(CNCardSharedProfileCellView *)self avatarView];
    leadingAnchor3 = [avatarView2 leadingAnchor];
    leadingAnchor4 = [(CNCardSharedProfileCellView *)self leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [(NSArray *)v3 addObject:v27];

    avatarView3 = [(CNCardSharedProfileCellView *)self avatarView];
    heightAnchor = [avatarView3 heightAnchor];
    avatarView4 = [(CNCardSharedProfileCellView *)self avatarView];
    widthAnchor = [avatarView4 widthAnchor];
    v32 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    [(NSArray *)v71 addObject:v32];

    avatarView5 = [(CNCardSharedProfileCellView *)self avatarView];
    heightAnchor2 = [avatarView5 heightAnchor];
    v35 = [heightAnchor2 constraintEqualToConstant:40.0];
    [(NSArray *)v71 addObject:v35];

    labelStackView4 = [(CNCardSharedProfileCellView *)self labelStackView];
    leadingAnchor = [labelStackView4 leadingAnchor];
    leadingAnchor2 = [(CNCardSharedProfileCellView *)self avatarView];
    trailingAnchor = [leadingAnchor2 trailingAnchor];
    v36 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    [(NSArray *)v71 addObject:v36];
  }

  menuButton = [(CNCardSharedProfileCellView *)self menuButton];
  leadingAnchor5 = [menuButton leadingAnchor];
  leadingAnchor6 = [(CNCardSharedProfileCellView *)self leadingAnchor];
  v63 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v73[0] = v63;
  menuButton2 = [(CNCardSharedProfileCellView *)self menuButton];
  trailingAnchor2 = [menuButton2 trailingAnchor];
  trailingAnchor3 = [(CNCardSharedProfileCellView *)self trailingAnchor];
  v58 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v73[1] = v58;
  menuButton3 = [(CNCardSharedProfileCellView *)self menuButton];
  topAnchor3 = [menuButton3 topAnchor];
  topAnchor4 = [(CNCardSharedProfileCellView *)self topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v73[2] = v40;
  menuButton4 = [(CNCardSharedProfileCellView *)self menuButton];
  bottomAnchor3 = [menuButton4 bottomAnchor];
  bottomAnchor4 = [(CNCardSharedProfileCellView *)self bottomAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v73[3] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
  [(NSArray *)v71 addObjectsFromArray:v45];

  if ([(CNCardSharedProfileCellView *)self shouldShowMenu])
  {
    chevronImageView = [(CNCardSharedProfileCellView *)self chevronImageView];
    leadingAnchor7 = [chevronImageView leadingAnchor];
    labelStackView5 = [(CNCardSharedProfileCellView *)self labelStackView];
    trailingAnchor4 = [labelStackView5 trailingAnchor];
    v68 = [leadingAnchor7 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
    v72[0] = v68;
    chevronImageView2 = [(CNCardSharedProfileCellView *)self chevronImageView];
    centerYAnchor5 = [chevronImageView2 centerYAnchor];
    centerYAnchor6 = [(CNCardSharedProfileCellView *)self centerYAnchor];
    v49 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v72[1] = v49;
    chevronImageView3 = [(CNCardSharedProfileCellView *)self chevronImageView];
    trailingAnchor5 = [chevronImageView3 trailingAnchor];
    trailingAnchor6 = [(CNCardSharedProfileCellView *)self trailingAnchor];
    v53 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v72[2] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
    [(NSArray *)v71 addObjectsFromArray:v54];

    labelStackView6 = chevronImageView;
  }

  else
  {
    labelStackView6 = [(CNCardSharedProfileCellView *)self labelStackView];
    leadingAnchor7 = [labelStackView6 trailingAnchor];
    labelStackView5 = [(CNCardSharedProfileCellView *)self trailingAnchor];
    trailingAnchor4 = [leadingAnchor7 constraintEqualToAnchor:labelStackView5];
    [(NSArray *)v71 addObject:trailingAnchor4];
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
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  avatarView = [(CNCardSharedProfileCellView *)self avatarView];
  isHidden = [avatarView isHidden];

  if (ab_preferredContentSizeCategoryIsAccessibilityCategory != isHidden)
  {
    avatarView2 = [(CNCardSharedProfileCellView *)self avatarView];
    [avatarView2 setHidden:ab_preferredContentSizeCategoryIsAccessibilityCategory];

    [(CNCardSharedProfileCellView *)self setupConstraints];
  }
}

- (void)startObservingAvatarCacheInvalidation
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  cachingLikenessRenderer = [v3 cachingLikenessRenderer];
  if ([cachingLikenessRenderer conformsToProtocol:&unk_1F0E28E18])
  {
    v5 = cachingLikenessRenderer;
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
    shouldShowMenu = [(CNCardSharedProfileCellView *)self shouldShowMenu];
    menuButton = [(CNCardSharedProfileCellView *)self menuButton];
    [menuButton setShowsMenuAsPrimaryAction:shouldShowMenu];

    if ([(CNCardSharedProfileCellView *)self shouldShowMenu])
    {
      objc_initWeak(&location, self);
      menuButton2 = [(CNCardSharedProfileCellView *)self menuButton];
      [menuButton2 removeTarget:self action:sel_performFallbackAction forControlEvents:0x2000];

      menuButton3 = [(CNCardSharedProfileCellView *)self menuButton];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__CNCardSharedProfileCellView_updateMenuButton__block_invoke;
      v10[3] = &unk_1E74E4F00;
      objc_copyWeak(&v11, &location);
      [menuButton3 _setMenuProvider:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
      return;
    }

    menuButton4 = [(CNCardSharedProfileCellView *)self menuButton];
    [menuButton4 _setMenuProvider:0];

    menuButton5 = [(CNCardSharedProfileCellView *)self menuButton];
    [menuButton5 addTarget:self action:sel_performFallbackAction forControlEvents:0x2000];
  }

  else
  {
    menuButton6 = [(CNCardSharedProfileCellView *)self menuButton];
    [menuButton6 removeTarget:self action:sel_performFallbackAction forControlEvents:0x2000];

    menuButton5 = [(CNCardSharedProfileCellView *)self menuButton];
    [menuButton5 _setMenuProvider:0];
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
  menuButton = [(CNCardSharedProfileCellView *)self menuButton];

  if (!menuButton)
  {
    v4 = objc_alloc_init(CNCardSharedProfileCellMenuButton);
    [(CNCardSharedProfileCellMenuButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNCardSharedProfileCellView *)self setMenuButton:v4];
  }

  menuButton2 = [(CNCardSharedProfileCellView *)self menuButton];
  [(CNCardSharedProfileCellView *)self addSubview:menuButton2];
}

- (void)setUpChevron
{
  chevronImageView = [(CNCardSharedProfileCellView *)self chevronImageView];

  if (!chevronImageView)
  {
    cnui_symbolImageForContactCardMenuChevron = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardMenuChevron];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:cnui_symbolImageForContactCardMenuChevron];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v5 setTintColor:secondaryLabelColor];

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

  chevronImageView2 = [(CNCardSharedProfileCellView *)self chevronImageView];
  [(CNCardSharedProfileCellView *)self addSubview:chevronImageView2];
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
    chevronImageView = [(CNCardSharedProfileCellView *)self chevronImageView];
    [chevronImageView removeFromSuperview];
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
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:secondaryLabelColor];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
  [v8 setFont:v10];

  [(CNCardSharedProfileCellView *)self addSubview:v8];
  [(CNCardSharedProfileCellView *)self setValueLabel:v8];
  v11 = objc_alloc(MEMORY[0x1E69DCF90]);
  titleLabel = [(CNCardSharedProfileCellView *)self titleLabel];
  v16[0] = titleLabel;
  valueLabel = [(CNCardSharedProfileCellView *)self valueLabel];
  v16[1] = valueLabel;
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

- (void)setAllowsEditing:(BOOL)editing
{
  if (self->_allowsEditing != editing)
  {
    self->_allowsEditing = editing;
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