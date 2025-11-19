@interface CNContactView
+ (BOOL)isFixedValueProperty:(id)a3;
+ (BOOL)isMultiValueProperty:(id)a3;
+ (id)addFieldCardProperties;
+ (id)allCardProperties;
+ (id)allImageProperties;
+ (id)cellIdentifierForActions;
+ (id)cellIdentifierForCardNamePickingGroup;
+ (id)cellIdentifierForClass:(Class)a3;
+ (id)cellIdentifierForContactContainerEditingGroup;
+ (id)cellIdentifierForDefaultAppGroup;
+ (id)cellIdentifierForDropdownMenuActions;
+ (id)cellIdentifierForEditingProperty:(id)a3;
+ (id)cellIdentifierForEditingPropertyItem:(id)a3;
+ (id)cellIdentifierForFaceTimeGroup;
+ (id)cellIdentifierForGameCenterGroup;
+ (id)cellIdentifierForGroupMembershipEditingGroup;
+ (id)cellIdentifierForGroupMembershipGroup;
+ (id)cellIdentifierForGroupMembershipPlaceholderGroup;
+ (id)cellIdentifierForLinkedCardsEditingGroup;
+ (id)cellIdentifierForLinkedCardsGroup;
+ (id)cellIdentifierForLinkedCardsPlaceholderGroup;
+ (id)cellIdentifierForMeCardSharedProfileGroup;
+ (id)cellIdentifierForProperty:(id)a3;
+ (id)cellIdentifierForPropertyPlaceholder;
+ (id)cellIdentifierForSNaPGroup;
+ (id)cellIdentifierForSharedProfileBanner;
+ (id)cellIdentifierForSplitActions;
+ (id)cellIdentifierForStaticIdentityEditingGroup;
+ (id)cellIdentifierForStaticIdentityGroup;
+ (id)cellIdentifierForStaticIdentityPlaceholderGroup;
+ (id)defaultCardProperties;
+ (id)namePropertiesForContact:(id)a3;
+ (id)optionalCardProperties;
+ (id)requiredNameProperties;
- (CGSize)oldSize;
- (CNContactHeaderView)defaultHeaderView;
- (CNContactView)initWithFrame:(CGRect)a3 style:(int64_t)a4 contact:(id)a5;
- (UIEdgeInsets)separatorInsetForCell:(id)a3;
- (void)_cnui_applyContactStyle;
- (void)applyCellAppearance:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)registerContactCellClass:(Class)a3;
- (void)setAttributesFromContactView:(id)a3 runningInContactsAppOniPad:(BOOL)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setNeedsUpdateVisibleCells;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFontColors;
- (void)updateFontSizes;
- (void)updateTableViewMetrics;
- (void)updateVisibleCellsIfNeeded;
@end

@implementation CNContactView

- (CGSize)oldSize
{
  width = self->_oldSize.width;
  height = self->_oldSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CNContactView;
  [(CNContactView *)&v11 touchesBegan:v6 withEvent:v7];
  v8 = [(CNContactView *)self firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(CNContactView *)self superview];
    [v10 touchesBegan:v6 withEvent:v7];
  }
}

- (UIEdgeInsets)separatorInsetForCell:(id)a3
{
  v4 = a3;
  v5 = [v4 contentView];
  v6 = [v4 contentView];
  v7 = [v6 layoutMarginsGuide];
  [v7 layoutFrame];
  [v5 convertRect:v4 toView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  MinX = CGRectGetMinX(v31);
  [v4 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v21;
  v32.size.height = v23;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  v25 = MaxX - CGRectGetMaxX(v33);
  if ([(CNContactView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v26 = v25;
  }

  else
  {
    v26 = MinX;
  }

  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  result.right = v29;
  result.bottom = v28;
  result.left = v26;
  result.top = v27;
  return result;
}

- (void)applyCellAppearance:(id)a3
{
  v24 = a3;
  [v24 _cnui_applyContactStyle];
  v4 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v24;
    v6 = [(CNContactView *)self actionTextAttributes];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    [v5 setActionsColor:v7];

    v8 = [v5 labelLabel];
    [v8 setNumberOfLines:v4 ^ 1];

    v9 = [v5 valueLabel];

    [v9 setNumberOfLines:v4 ^ 1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [(CNContactView *)self separatorColor];
    [v24 setEditorSeparatorColor:v9];
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v24;
    v11 = [v10 labelButton];
    v12 = [v11 titleLabel];
    [v12 setNumberOfLines:v4 ^ 1];

    if (v4)
    {
      v13 = 0;
    }

    else
    {
      v13 = 4;
    }

    v14 = [v10 labelButton];
    v15 = [v14 titleLabel];
    [v15 setLineBreakMode:v13];

    [v10 setVseparatorHidden:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v24;
    v17 = [v16 valueLabel];
    [v17 setNumberOfLines:0];

    [v16 setShouldUseMapTiles:{-[CNContactView shouldUseMapTiles](self, "shouldUseMapTiles")}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v24 label];
    [v18 setNumberOfLines:v4 ^ 1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = MEMORY[0x1E69DB878];
    v20 = *MEMORY[0x1E69DDCF8];
    v21 = v24;
    v22 = [v19 ab_preferredFontForTextStyle:v20];
    v23 = [v21 textField];

    [v23 setFont:v22];
  }

  if ([v24 isSelected])
  {
    [v24 setSelected:0 animated:0];
    [v24 setSelected:1 animated:0];
  }

  if ([(CNContactView *)self isEditing])
  {
    [(CNContactView *)self separatorInsetForCell:v24];
    [v24 setSeparatorInset:?];
  }

  [v24 setNeedsUpdateConstraints];
}

- (void)updateFontSizes
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactView *)self defaultHeaderView];
  [v3 updateFontSizes];

  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v5 _scaledValueForValue:44.0];
  [(CNContactView *)self setEstimatedRowHeight:?];

  v11 = @"ABTextStyleAttributeName";
  v6 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v7 = *MEMORY[0x1E69DDD80];
  if (v6)
  {
    v7 = v4;
  }

  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [self cn_updateDictionaryForKey:@"labelTextAttributes" withChanges:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__CNContactView_updateFontSizes__block_invoke;
  v10[3] = &unk_1E74E6A60;
  v10[4] = self;
  v9 = _Block_copy(v10);
  v9[2](v9, @"labelTextAttributes");
  v9[2](v9, @"valueTextAttributes");
  v9[2](v9, @"actionTextAttributes");
}

void __32__CNContactView_updateFontSizes__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) valueForKey:v3];
  v5 = [v4 objectForKeyedSubscript:@"ABTextStyleAttributeName"];
  if (v5)
  {
    v6 = *(a1 + 32);
    v9 = *MEMORY[0x1E69DB648];
    v7 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:v5];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v6 cn_updateDictionaryForKey:v3 withChanges:v8];
  }
}

- (void)updateVisibleCellsIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactView *)self superview];

  if (v3 && self->_needsUpdateVisibleCells)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(CNContactView *)self visibleCells];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CNContactView *)self applyCellAppearance:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    self->_needsUpdateVisibleCells = 0;
  }
}

- (void)setNeedsUpdateVisibleCells
{
  if (!self->_needsUpdateVisibleCells)
  {
    block[7] = v2;
    block[8] = v3;
    self->_needsUpdateVisibleCells = 1;
    v4 = *MEMORY[0x1E695E480];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__CNContactView_setNeedsUpdateVisibleCells__block_invoke;
    block[3] = &unk_1E74E29D8;
    block[4] = self;
    v5 = CFRunLoopObserverCreateWithHandler(v4, 0x20uLL, 0, 0, block);
    if (v5)
    {
      v6 = v5;
      Main = CFRunLoopGetMain();
      CFRunLoopAddObserver(Main, v6, *MEMORY[0x1E695E8E0]);
      CFRelease(v6);
    }
  }
}

- (void)updateFontColors
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69DB650];
  v3 = v11;
  v4 = +[CNContactStyle currentStyle];
  v5 = [v4 textColor];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [self cn_updateDictionaryForKey:@"labelTextAttributes" withChanges:v6];

  v9 = v3;
  v7 = [(UIView *)self tintColorOverride];
  v10 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [self cn_updateDictionaryForKey:@"actionTextAttributes" withChanges:v8];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = CNContactView;
  [(CNContactView *)&v3 layoutMarginsDidChange];
  [(CNContactView *)self setNeedsUpdateVisibleCells];
}

- (void)layoutSubviews
{
  kdebug_trace();
  v41.receiver = self;
  v41.super_class = CNContactView;
  [(CNContactView *)&v41 layoutSubviews];
  [(CNContactView *)self oldSize];
  v4 = v3;
  v6 = v5;
  [(CNContactView *)self frame];
  if (v4 != v8 || v6 != v7)
  {
    [(CNContactView *)self setNeedsUpdateVisibleCells];
    [(CNContactView *)self frame];
    [(CNContactView *)self setOldSize:v10, v11];
  }

  v12 = [(UIView *)self _cnui_contactStyle];
  v13 = [v12 usesInsetPlatterStyle];

  if (v13)
  {
    v14 = [(UIView *)self _cnui_contactStyle];
    [v14 sectionMaximumPlatterWidth];
    v16 = v15;

    [(CNContactView *)self bounds];
    v18 = (v17 - v16) * 0.5;
    if (v18 >= 0.0)
    {
      [(CNContactView *)self safeAreaInsets];
      v21 = v18 - v25;
      [(CNContactView *)self safeAreaInsets];
      v24 = v18 - v26;
    }

    else
    {
      v19 = [(UIView *)self _cnui_contactStyle];
      [v19 sectionContentInset];
      v21 = v20 * 0.5;
      v22 = [(UIView *)self _cnui_contactStyle];
      [v22 sectionContentInset];
      v24 = v23 * 0.5;
    }

    [(CNContactView *)self _sectionContentInset];
    if ((v21 != v30 || v27 != 0.0 || v24 != v29 || v28 != 0.0) && ([(CNContactView *)self isEditing]& 1) == 0)
    {
      v31 = +[CNUIContactsEnvironment currentEnvironment];
      v32 = [v31 runningInContactsAppOniPad];

      if (v32)
      {
        [(CNContactView *)self setLayoutMargins:0.0, v21, 0.0, v24];
        [(CNContactView *)self separatorInset];
        v34 = v33;
        [(CNContactView *)self separatorInset];
        [(CNContactView *)self setSeparatorInset:v34, v21];
      }

      else
      {
        if ([(CNContactView *)self isSiri])
        {
          v35 = *MEMORY[0x1E69DDCE0];
          v36 = *(MEMORY[0x1E69DDCE0] + 8);
          v37 = *(MEMORY[0x1E69DDCE0] + 16);
          v38 = *(MEMORY[0x1E69DDCE0] + 24);
          v39 = self;
        }

        else
        {
          v35 = 0.0;
          v37 = 0.0;
          v39 = self;
          v36 = v21;
          v38 = v24;
        }

        [(CNContactView *)v39 _setSectionContentInset:v35, v36, v37, v38];
      }

      v40 = [(UIView *)self _cnui_contactStyle];
      [v40 sectionCornerRadius];
      [(CNContactView *)self _setSectionCornerRadius:?];
    }
  }

  kdebug_trace();
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CNContactView;
  [(CNContactView *)&v3 tintColorDidChange];
  [(CNContactView *)self updateFontColors];
  [(CNContactView *)self setNeedsUpdateVisibleCells];
}

- (void)setBackgroundColor:(id)a3
{
  v10.receiver = self;
  v10.super_class = CNContactView;
  v4 = a3;
  [(CNContactView *)&v10 setBackgroundColor:v4];
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 featureFlags];
  v7 = [v6 isFeatureEnabled:29];

  if (v7)
  {
    v8 = +[CNUIColorRepository contactCardEditModeBackgroundColor];
    [(CNContactView *)self setTableHeaderBackgroundColor:v8];
  }

  v9 = [(CNContactView *)self defaultHeaderView];
  [v9 setBackgroundColor:v4];
}

- (void)setAttributesFromContactView:(id)a3 runningInContactsAppOniPad:(BOOL)a4
{
  v18 = a3;
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:29];

  if (v8)
  {
    v9 = +[CNUIColorRepository contactCardEditModeBackgroundColor];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v9 = [v18 backgroundColor];
  }

  v10 = v9;
  [(CNContactView *)self setBackgroundColor:v9];

LABEL_6:
  v11 = [v18 separatorColor];

  if (v11)
  {
    v12 = [v18 separatorColor];
    [(CNContactView *)self setSeparatorColor:v12];
  }

  v13 = [v18 sectionBackgroundColor];
  [(CNContactView *)self setSectionBackgroundColor:v13];

  v14 = [v18 selectedCellBackgroundColor];
  [(CNContactView *)self setSelectedCellBackgroundColor:v14];

  v15 = [v18 labelTextAttributes];
  [(CNContactView *)self setLabelTextAttributes:v15];

  v16 = [v18 valueTextAttributes];
  [(CNContactView *)self setValueTextAttributes:v16];

  v17 = [v18 actionTextAttributes];
  [(CNContactView *)self setActionTextAttributes:v17];
}

- (void)registerContactCellClass:(Class)a3
{
  v5 = [objc_opt_class() cellIdentifierForClass:a3];
  [(CNContactView *)self registerClass:a3 forCellReuseIdentifier:v5];
}

- (CNContactHeaderView)defaultHeaderView
{
  v3 = [(CNContactView *)self customHeaderView];
  if (v3)
  {
    v4 = v3;
    goto LABEL_3;
  }

  v7 = [(CNContactView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNContactView *)self delegate];
    v4 = [v9 viewForHeaderInTableView:self];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      goto LABEL_4;
    }

LABEL_3:
    v5 = 0;
LABEL_4:

    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)updateTableViewMetrics
{
  v6 = [(UIView *)self _cnui_contactStyle];
  v3 = [v6 usesInsetPlatterStyle];
  v4 = 0.0;
  if (v3)
  {
    v5 = [(CNContactView *)self isEditing];
    v4 = 16.0;
    if (v5)
    {
      v4 = 0.0;
    }
  }

  [(CNContactView *)self setSectionHeaderHeight:v4];
}

- (void)setEditing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactView;
  [(CNContactView *)&v4 setEditing:a3];
  [(CNContactView *)self updateTableViewMetrics];
}

- (void)_cnui_applyContactStyle
{
  v7.receiver = self;
  v7.super_class = CNContactView;
  [(UITableView *)&v7 _cnui_applyContactStyle];
  v3 = [(UIView *)self _cnui_contactStyle];
  v4 = [v3 backgroundColor];

  if (v4)
  {
    v5 = [(UIView *)self _cnui_contactStyle];
    v6 = [v5 backgroundColor];
    [(CNContactView *)self setBackgroundColor:v6];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNContactView;
  [(CNMaskingTableView *)&v5 traitCollectionDidChange:a3];
  v4 = [(CNContactView *)self traitCollection];
  -[CNContactView setCellLayoutMarginsFollowReadableWidth:](self, "setCellLayoutMarginsFollowReadableWidth:", [v4 userInterfaceIdiom] == 1);
}

- (CNContactView)initWithFrame:(CGRect)a3 style:(int64_t)a4 contact:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v37[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v31.receiver = self;
  v31.super_class = CNContactView;
  v13 = [(CNContactView *)&v31 initWithFrame:a4 style:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contact, a5);
    [(CNContactView *)v14 _setCellsSelfSize:1];
    [(CNContactView *)v14 setKeyboardDismissMode:2];
    [(CNContactView *)v14 setAllowsSelectionDuringEditing:1];
    [(CNContactView *)v14 setSectionFooterHeight:0.0];
    [(CNContactView *)v14 _setTopPadding:0.0];
    [(CNContactView *)v14 _setBottomPadding:0.0];
    [(CNContactView *)v14 setRestorationIdentifier:@"ContactTableView"];
    [(CNContactView *)v14 _setIgnoreCopyFilterForTableAnimations:1];
    [(CNContactView *)v14 setShouldUseMapTiles:1];
    [(CNContactView *)v14 setRowHeight:*MEMORY[0x1E69DE3D0]];
    [(CNContactView *)v14 updateTableViewMetrics];
    v15 = *MEMORY[0x1E69DDCF8];
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v16 _scaledValueForValue:44.0];
    [(CNContactView *)v14 setEstimatedRowHeight:?];

    v17 = [(CNContactView *)v14 traitCollection];
    -[CNContactView setCellLayoutMarginsFollowReadableWidth:](v14, "setCellLayoutMarginsFollowReadableWidth:", [v17 userInterfaceIdiom] == 1);

    v36 = @"ABTextStyleAttributeName";
    v18 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v19 = *MEMORY[0x1E69DDD80];
    if (v18)
    {
      v19 = v15;
    }

    v37[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [(CNContactView *)v14 setLabelTextAttributes:v20];

    v34 = @"ABTextStyleAttributeName";
    v35 = v15;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [(CNContactView *)v14 setValueTextAttributes:v21];

    v32 = @"ABTextStyleAttributeName";
    v33 = v15;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [(CNContactView *)v14 setActionTextAttributes:v22];

    [(CNContactView *)v14 updateFontSizes];
    [(CNContactView *)v14 updateFontColors];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    [(CNContactView *)v14 registerContactCellClass:objc_opt_class()];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [(CNContactView *)v14 registerClass:v23 forHeaderFooterViewReuseIdentifier:v25];

    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [(CNContactView *)v14 registerClass:v26 forHeaderFooterViewReuseIdentifier:v28];

    v29 = v14;
  }

  return v14;
}

+ (BOOL)isFixedValueProperty:(id)a3
{
  v3 = isFixedValueProperty__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isFixedValueProperty__onceToken, &__block_literal_global_141);
  }

  v5 = [isFixedValueProperty__fixedValueProperties containsObject:v4];

  return v5;
}

void __38__CNContactView_isFixedValueProperty___block_invoke()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C3F8];
  v9[0] = *MEMORY[0x1E695C1E0];
  v9[1] = v0;
  v9[2] = *MEMORY[0x1E695C320];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v2 = isFixedValueProperty__fixedValueProperties;
  isFixedValueProperty__fixedValueProperties = v1;

  v3 = isFixedValueProperty__fixedValueProperties;
  v4 = +[CNContactView nameProperties];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = isFixedValueProperty__fixedValueProperties;
  isFixedValueProperty__fixedValueProperties = v5;

  v7 = [isFixedValueProperty__fixedValueProperties arrayByAddingObject:*MEMORY[0x1E695C370]];
  v8 = isFixedValueProperty__fixedValueProperties;
  isFixedValueProperty__fixedValueProperties = v7;
}

+ (BOOL)isMultiValueProperty:(id)a3
{
  v3 = isMultiValueProperty__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isMultiValueProperty__onceToken, &__block_literal_global_139);
  }

  v5 = [isMultiValueProperty__singleValueProperties containsObject:v4];

  return v5 ^ 1;
}

void __38__CNContactView_isMultiValueProperty___block_invoke()
{
  v10[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C3F8];
  v10[0] = *MEMORY[0x1E695C1E0];
  v10[1] = v0;
  v1 = *MEMORY[0x1E695C200];
  v10[2] = *MEMORY[0x1E695C320];
  v10[3] = v1;
  v10[4] = *MEMORY[0x1E695C3C8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  v3 = isMultiValueProperty__singleValueProperties;
  isMultiValueProperty__singleValueProperties = v2;

  v4 = isMultiValueProperty__singleValueProperties;
  v5 = +[CNContactView nameProperties];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = isMultiValueProperty__singleValueProperties;
  isMultiValueProperty__singleValueProperties = v6;

  v8 = [isMultiValueProperty__singleValueProperties arrayByAddingObject:*MEMORY[0x1E695C370]];
  v9 = isMultiValueProperty__singleValueProperties;
  isMultiValueProperty__singleValueProperties = v8;
}

+ (id)allImageProperties
{
  if (allImageProperties_onceToken != -1)
  {
    dispatch_once(&allImageProperties_onceToken, &__block_literal_global_137);
  }

  v3 = allImageProperties_properties;

  return v3;
}

void __35__CNContactView_allImageProperties__block_invoke()
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C400];
  v6[0] = *MEMORY[0x1E695C278];
  v6[1] = v0;
  v1 = *MEMORY[0x1E695C280];
  v6[2] = *MEMORY[0x1E695C238];
  v6[3] = v1;
  v2 = *MEMORY[0x1E695C1E8];
  v6[4] = *MEMORY[0x1E695C298];
  v6[5] = v2;
  v3 = *MEMORY[0x1E695C1D0];
  v6[6] = *MEMORY[0x1E695C2E8];
  v6[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v5 = allImageProperties_properties;
  allImageProperties_properties = v4;
}

+ (id)optionalCardProperties
{
  if (optionalCardProperties_onceToken != -1)
  {
    dispatch_once(&optionalCardProperties_onceToken, &__block_literal_global_135);
  }

  v3 = optionalCardProperties_properties;

  return v3;
}

void __39__CNContactView_optionalCardProperties__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C1F0];
  v5[0] = @"birthdays";
  v5[1] = v0;
  v1 = *MEMORY[0x1E695C3D0];
  v5[2] = *MEMORY[0x1E695C3A8];
  v5[3] = v1;
  v2 = *MEMORY[0x1E695C320];
  v5[4] = *MEMORY[0x1E695C2B0];
  v5[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v4 = optionalCardProperties_properties;
  optionalCardProperties_properties = v3;
}

+ (id)defaultCardProperties
{
  if (defaultCardProperties_onceToken != -1)
  {
    dispatch_once(&defaultCardProperties_onceToken, &__block_literal_global_133);
  }

  v3 = defaultCardProperties_properties;

  return v3;
}

void __38__CNContactView_defaultCardProperties__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C208];
  v4[0] = *MEMORY[0x1E695C330];
  v4[1] = v0;
  v1 = *MEMORY[0x1E695C360];
  v4[2] = *MEMORY[0x1E695C418];
  v4[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v3 = defaultCardProperties_properties;
  defaultCardProperties_properties = v2;
}

+ (id)addFieldCardProperties
{
  if (addFieldCardProperties_onceToken != -1)
  {
    dispatch_once(&addFieldCardProperties_onceToken, &__block_literal_global_131_13931);
  }

  v3 = addFieldCardProperties_properties;

  return v3;
}

void __39__CNContactView_addFieldCardProperties__block_invoke()
{
  v7 = [MEMORY[0x1E695DF70] array];
  if ([getIPPronounPickerViewControllerClass() canDisplayPronounPicker])
  {
    v0 = [getIPPronounPickerViewControllerClass() shouldDisplayPronounPickerByDefault] ^ 1;
  }

  else
  {
    v0 = 0;
  }

  v1 = [MEMORY[0x1E69966E8] currentEnvironment];
  v2 = [v1 featureFlags];
  v3 = [v2 isFeatureEnabled:23];

  if (v3)
  {
    v4 = v0 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [v7 addObject:*MEMORY[0x1E695C1C0]];
  }

  v5 = [v7 copy];
  v6 = addFieldCardProperties_properties;
  addFieldCardProperties_properties = v5;
}

+ (id)allCardProperties
{
  if (allCardProperties_onceToken != -1)
  {
    dispatch_once(&allCardProperties_onceToken, &__block_literal_global_123);
  }

  v3 = allCardProperties_properties;

  return v3;
}

void __34__CNContactView_allCardProperties__block_invoke()
{
  v17[13] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = *MEMORY[0x1E695C330];
  v17[0] = *MEMORY[0x1E695C200];
  v17[1] = v1;
  v2 = *MEMORY[0x1E695C1E0];
  v17[2] = *MEMORY[0x1E695C208];
  v17[3] = v2;
  v3 = *MEMORY[0x1E695C418];
  v17[4] = *MEMORY[0x1E695C3F8];
  v17[5] = v3;
  v17[6] = *MEMORY[0x1E695C360];
  v17[7] = @"birthdays";
  v4 = *MEMORY[0x1E695C3A8];
  v17[8] = *MEMORY[0x1E695C1F0];
  v17[9] = v4;
  v5 = *MEMORY[0x1E695C2B0];
  v17[10] = *MEMORY[0x1E695C3D0];
  v17[11] = v5;
  v17[12] = *MEMORY[0x1E695C320];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:13];
  [v0 addObjectsFromArray:v6];

  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:23];

  if (v9)
  {
    v10 = [v0 _cn_indexOfFirstObjectPassingTest:&__block_literal_global_127];
    [v0 _cn_insertNonNilObject:*MEMORY[0x1E695C1C0] atIndex:v10 + 1];
  }

  v11 = [MEMORY[0x1E69966E8] currentEnvironment];
  v12 = [v11 featureFlags];
  v13 = [v12 isFeatureEnabled:27];

  if (v13)
  {
    v14 = [v0 _cn_indexOfFirstObjectPassingTest:&__block_literal_global_129];
    [v0 _cn_insertNonNilObject:*MEMORY[0x1E695C3C8] atIndex:v14];
  }

  v15 = [v0 copy];
  v16 = allCardProperties_properties;
  allCardProperties_properties = v15;
}

+ (id)requiredNameProperties
{
  if (requiredNameProperties_onceToken != -1)
  {
    dispatch_once(&requiredNameProperties_onceToken, &__block_literal_global_109);
  }

  v3 = requiredNameProperties_properties;

  return v3;
}

void __39__CNContactView_requiredNameProperties__block_invoke()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DF20];
  v1 = CNContactsUIBundle();
  v2 = [v1 pathForResource:@"ABCardDisplay" ofType:@"plist"];
  v3 = [v0 dictionaryWithContentsOfFile:v2];

  v4 = [v3 objectForKey:@"_LOCALIZABLE_"];
  v5 = [v4 objectForKey:@"ShouldShowPhoneticNamesByDefault"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = *MEMORY[0x1E695C348];
    v19 = *MEMORY[0x1E695C240];
    v20 = v7;
    v8 = *MEMORY[0x1E695C340];
    v21 = *MEMORY[0x1E695C230];
    v22 = v8;
    v9 = *MEMORY[0x1E695C358];
    v23 = *MEMORY[0x1E695C328];
    v24 = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v19;
    v12 = 6;
  }

  else
  {
    v13 = *MEMORY[0x1E695C230];
    v16 = *MEMORY[0x1E695C240];
    v17 = v13;
    v18 = *MEMORY[0x1E695C328];
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v16;
    v12 = 3;
  }

  v14 = [v10 arrayWithObjects:v11 count:{v12, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25}];
  v15 = requiredNameProperties_properties;
  requiredNameProperties_properties = v14;
}

+ (id)namePropertiesForContact:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695CD80];
  if (v3)
  {
    v5 = [MEMORY[0x1E695CD80] nameOrderForContact:v3];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695CD58]);
    v5 = [v4 nameOrderForContact:v6];
  }

  if (v5 == 1)
  {
    if (namePropertiesForContact__onceToken != -1)
    {
      dispatch_once(&namePropertiesForContact__onceToken, &__block_literal_global_13957);
    }

    v7 = &namePropertiesForContact__firstProperties;
  }

  else
  {
    if (namePropertiesForContact__onceToken_105 != -1)
    {
      dispatch_once(&namePropertiesForContact__onceToken_105, &__block_literal_global_107);
    }

    v7 = &namePropertiesForContact__lastProperties;
  }

  v8 = *v7;
  v9 = *v7;

  return v8;
}

void __42__CNContactView_namePropertiesForContact___block_invoke_2()
{
  v10[16] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C230];
  v10[0] = *MEMORY[0x1E695C300];
  v10[1] = v0;
  v1 = *MEMORY[0x1E695C398];
  v10[2] = *MEMORY[0x1E695C340];
  v10[3] = v1;
  v2 = *MEMORY[0x1E695C240];
  v10[4] = *MEMORY[0x1E695C390];
  v10[5] = v2;
  v3 = *MEMORY[0x1E695C3A0];
  v10[6] = *MEMORY[0x1E695C348];
  v10[7] = v3;
  v4 = *MEMORY[0x1E695C350];
  v10[8] = *MEMORY[0x1E695C2F0];
  v10[9] = v4;
  v5 = *MEMORY[0x1E695C310];
  v10[10] = *MEMORY[0x1E695C308];
  v10[11] = v5;
  v6 = *MEMORY[0x1E695C1F8];
  v10[12] = *MEMORY[0x1E695C2C8];
  v10[13] = v6;
  v7 = *MEMORY[0x1E695C358];
  v10[14] = *MEMORY[0x1E695C328];
  v10[15] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:16];
  v9 = namePropertiesForContact__lastProperties;
  namePropertiesForContact__lastProperties = v8;
}

void __42__CNContactView_namePropertiesForContact___block_invoke()
{
  v10[16] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C240];
  v10[0] = *MEMORY[0x1E695C300];
  v10[1] = v0;
  v1 = *MEMORY[0x1E695C3A0];
  v10[2] = *MEMORY[0x1E695C348];
  v10[3] = v1;
  v2 = *MEMORY[0x1E695C350];
  v10[4] = *MEMORY[0x1E695C2F0];
  v10[5] = v2;
  v3 = *MEMORY[0x1E695C340];
  v10[6] = *MEMORY[0x1E695C230];
  v10[7] = v3;
  v4 = *MEMORY[0x1E695C390];
  v10[8] = *MEMORY[0x1E695C398];
  v10[9] = v4;
  v5 = *MEMORY[0x1E695C310];
  v10[10] = *MEMORY[0x1E695C308];
  v10[11] = v5;
  v6 = *MEMORY[0x1E695C1F8];
  v10[12] = *MEMORY[0x1E695C2C8];
  v10[13] = v6;
  v7 = *MEMORY[0x1E695C358];
  v10[14] = *MEMORY[0x1E695C328];
  v10[15] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:16];
  v9 = namePropertiesForContact__firstProperties;
  namePropertiesForContact__firstProperties = v8;
}

+ (id)cellIdentifierForClass:(Class)a3
{
  v3 = MEMORY[0x1E696AEC0];
  Name = class_getName(a3);

  return [v3 stringWithCString:Name encoding:1];
}

+ (id)cellIdentifierForEditingProperty:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:*MEMORY[0x1E695C330]] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C418]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C360]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C320]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"birthdays") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C1F0]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C3D0]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C2B0]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C1E0]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C3A8]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0)
  {
    v8 = [a1 nameProperties];
    v9 = [v8 containsObject:v4];

    if ((v9 & 1) == 0)
    {
      [v4 isEqualToString:*MEMORY[0x1E695C3C8]];
    }
  }

  v5 = objc_opt_class();
  v6 = [objc_opt_class() cellIdentifierForClass:v5];

  return v6;
}

+ (id)cellIdentifierForEditingPropertyItem:(id)a3
{
  v3 = a3;
  v4 = [v3 property];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695C1C0]];

  if (v5)
  {
    objc_opt_class();
    v6 = v3;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 shouldShowLanguageLabel];
    v9 = objc_opt_class();
    v10 = [objc_opt_class() cellIdentifierForClass:v9];
  }

  else
  {
    v11 = objc_opt_class();
    v8 = [v3 property];
    v10 = [v11 cellIdentifierForEditingProperty:v8];
  }

  v12 = v10;

  return v12;
}

+ (id)cellIdentifierForProperty:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E695C330]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C360]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3D0]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C2B0]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C320]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1E0]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3A8]) & 1) == 0)
  {
    [v3 isEqualToString:*MEMORY[0x1E695C3C8]];
  }

  v4 = objc_opt_class();
  v5 = [objc_opt_class() cellIdentifierForClass:v4];

  return v5;
}

+ (id)cellIdentifierForSharedProfileBanner
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForMeCardSharedProfileGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForSNaPGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForCardNamePickingGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForGameCenterGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForContactContainerEditingGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForStaticIdentityPlaceholderGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForStaticIdentityEditingGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForStaticIdentityGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForGroupMembershipPlaceholderGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForGroupMembershipEditingGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForGroupMembershipGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForLinkedCardsPlaceholderGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForLinkedCardsEditingGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForLinkedCardsGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForDefaultAppGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForFaceTimeGroup
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForPropertyPlaceholder
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForDropdownMenuActions
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForSplitActions
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

+ (id)cellIdentifierForActions
{
  v3 = objc_opt_class();

  return [a1 cellIdentifierForClass:v3];
}

@end