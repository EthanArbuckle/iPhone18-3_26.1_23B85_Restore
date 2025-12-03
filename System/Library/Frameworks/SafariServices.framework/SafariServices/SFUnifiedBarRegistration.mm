@interface SFUnifiedBarRegistration
- (BOOL)_isBarItemHidden:(int64_t)hidden;
- (BOOL)containsBarItem:(int64_t)item;
- (SFUnifiedBarRegistration)initWithBar:(id)bar barManager:(id)manager persona:(int64_t)persona;
- (id)_imageForBarItem:(int64_t)item;
- (id)_makeBarItemForSFBarItem:(int64_t)item;
- (id)_unifiedBarItemsForSFBarItems:(id)items;
- (id)popoverSourceInfoForItem:(int64_t)item;
- (id)unifiedBarItemForSFBarItem:(int64_t)item;
- (id)viewForBarItem:(int64_t)item;
- (int64_t)_SFBarItemForUnifiedBarItem:(id)item;
- (void)_itemReceivedTap:(id)tap;
- (void)_updateItems;
- (void)_updateItemsIfNeeded;
- (void)pulseBarItem:(int64_t)item;
- (void)setAttributedTitle:(id)title forBarItem:(int64_t)item;
- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled;
- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden;
- (void)setBarItem:(int64_t)item menu:(id)menu;
- (void)setContentMode:(int64_t)mode;
- (void)setImage:(id)image forBarItem:(int64_t)item;
- (void)setProgress:(double)progress forBarItem:(int64_t)item;
- (void)setState:(int64_t)state;
- (void)setTitle:(id)title forBarItem:(int64_t)item;
- (void)updateBarAnimated:(BOOL)animated;
@end

@implementation SFUnifiedBarRegistration

- (SFUnifiedBarRegistration)initWithBar:(id)bar barManager:(id)manager persona:(int64_t)persona
{
  barCopy = bar;
  managerCopy = manager;
  v48.receiver = self;
  v48.super_class = SFUnifiedBarRegistration;
  v10 = [(SFUnifiedBarRegistration *)&v48 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_bar, barCopy);
    objc_storeWeak(&v11->_barManager, managerCopy);
    v11->_persona = persona;
    v12 = [MEMORY[0x1E695DFA8] set];
    disabledBarItems = v11->_disabledBarItems;
    v11->_disabledBarItems = v12;

    v14 = [MEMORY[0x1E695DFA8] set];
    hiddenBarItems = v11->_hiddenBarItems;
    v11->_hiddenBarItems = v14;

    v16 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:3];
    bookmarksAndSidebarButton = v11->_bookmarksAndSidebarButton;
    v11->_bookmarksAndSidebarButton = v16;

    v18 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:0];
    backButton = v11->_backButton;
    v11->_backButton = v18;

    v20 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:1];
    forwardButton = v11->_forwardButton;
    v11->_forwardButton = v20;

    v22 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:2];
    tabGroupButton = v11->_tabGroupButton;
    v11->_tabGroupButton = v22;

    v24 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:6];
    shareButton = v11->_shareButton;
    v11->_shareButton = v24;

    v26 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:7];
    newTabButton = v11->_newTabButton;
    v11->_newTabButton = v26;

    v28 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:8];
    tabOverviewButton = v11->_tabOverviewButton;
    v11->_tabOverviewButton = v28;

    v30 = [(SFUnifiedBarRegistration *)v11 _makeBarItemForSFBarItem:12];
    cancelButton = v11->_cancelButton;
    v11->_cancelButton = v30;

    v32 = objc_alloc_init(MEMORY[0x1E69B1AF0]);
    collaborationButton = v11->_collaborationButton;
    v11->_collaborationButton = v32;

    objc_initWeak(&location, v11);
    v34 = [SFDownloadsUnifiedBarItem alloc];
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __59__SFUnifiedBarRegistration_initWithBar_barManager_persona___block_invoke;
    v45 = &unk_1E84966F0;
    objc_copyWeak(&v46, &location);
    v35 = [(SFDownloadsUnifiedBarItem *)v34 initWithAction:&v42];
    downloadsButton = v11->_downloadsButton;
    v11->_downloadsButton = v35;

    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v38 = @"trailing";
    if (!isSolariumEnabled)
    {
      v38 = 0;
    }

    v39 = v38;
    [(SFUnifiedBarItem *)v11->_downloadsButton setGroupIdentifier:v39];

    [(SFUnifiedBarRegistration *)v11 _updateItems];
    v40 = v11;
    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __59__SFUnifiedBarRegistration_initWithBar_barManager_persona___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _itemReceivedTap:v5];
  }
}

- (void)_updateItemsIfNeeded
{
  if (self->_needsUpdateItems)
  {
    [(SFUnifiedBarRegistration *)self _updateItems];
  }
}

- (void)_updateItems
{
  self->_needsUpdateItems = 0;
  persona = self->_persona;
  v4 = MEMORY[0x1E695E0F0];
  if (!persona)
  {
    contentMode = self->_contentMode;
    state = self->_state;
    v7 = &unk_1F5023F80;
    if (contentMode > 2)
    {
      v8 = &unk_1F5023FC8;
      if (state == 2)
      {
        v8 = MEMORY[0x1E695E0F0];
      }

      if (state == 1)
      {
        v9 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v9 = &unk_1F5023FE0;
      }

      if (contentMode == 6)
      {
        v7 = v9;
      }

      if (contentMode == 3)
      {
        v7 = v8;
      }

      goto LABEL_19;
    }

    if (contentMode == 1)
    {
      if (state < 3)
      {
        v7 = qword_1E8496788[state];
LABEL_19:
        v4 = v7;
        goto LABEL_20;
      }
    }

    else if (contentMode != 2)
    {
      goto LABEL_19;
    }

    v7 = &unk_1F5023FB0;
    goto LABEL_19;
  }

LABEL_20:
  leadingBarItems = self->_leadingBarItems;
  self->_leadingBarItems = v4;

  if (self->_persona)
  {
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_47;
  }

  v13 = self->_contentMode;
  v12 = self->_state;
  v14 = &unk_1F5023FF8;
  if (v13 > 3)
  {
    if (v13 != 4)
    {
      v16 = &unk_1F50240A0;
      if (v12 == 2)
      {
        v16 = &unk_1F50240B8;
      }

      v17 = &unk_1F50240D0;
      if (v12 == 1)
      {
        v17 = &unk_1F50240E8;
      }

      if (v12 == 2)
      {
        v18 = &unk_1F5024100;
      }

      else
      {
        v18 = v17;
      }

      if (v13 == 6)
      {
        v14 = v18;
      }

      if (v13 == 5)
      {
        v14 = v16;
      }

      goto LABEL_46;
    }

LABEL_41:
    v14 = &unk_1F5024088;
    goto LABEL_46;
  }

  switch(v13)
  {
    case 1:
      if (v12 < 3)
      {
        v15 = &unk_1E84967A0;
        goto LABEL_44;
      }

LABEL_45:
      v14 = &unk_1F5024040;
      break;
    case 2:
      goto LABEL_45;
    case 3:
      if (v12 < 3)
      {
        v15 = &unk_1E84967B8;
LABEL_44:
        v14 = v15[v12];
        break;
      }

      goto LABEL_41;
  }

LABEL_46:
  v11 = v14;
LABEL_47:
  trailingBarItems = self->_trailingBarItems;
  self->_trailingBarItems = v11;

  v20 = MEMORY[0x1E695DFD8];
  v21 = [(NSArray *)self->_leadingBarItems arrayByAddingObjectsFromArray:self->_trailingBarItems];
  v22 = [v20 setWithArray:v21];
  allBarItems = self->_allBarItems;
  self->_allBarItems = v22;

  v26 = [(SFUnifiedBarRegistration *)self _imageForBarItem:3];
  [(SFUnifiedBarButton *)self->_bookmarksAndSidebarButton setImage:v26];
  view = [(SFUnifiedBarButton *)self->_bookmarksAndSidebarButton view];
  [view setLargeContentImage:v26];
  if (self->_contentMode > 6uLL)
  {
    v25 = 0;
  }

  else
  {
    v25 = _WBSLocalizedString();
  }

  [view setLargeContentTitle:v25];
}

- (id)_makeBarItemForSFBarItem:(int64_t)item
{
  objc_initWeak(&location, self);
  v5 = [(SFUnifiedBarRegistration *)self _imageForBarItem:item];
  v6 = objc_alloc(MEMORY[0x1E69B1C00]);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __53__SFUnifiedBarRegistration__makeBarItemForSFBarItem___block_invoke;
  v22 = &unk_1E8496718;
  objc_copyWeak(&v23, &location);
  v7 = [v6 initWithImage:v5 action:&v19];
  view = [v7 view];
  v9 = SFAccessibilityTitleForBarItem();
  [view sf_configureLargeContentViewerWithImage:v5 title:v9];

  if (item == 2)
  {
    [v7 setShowsMenuFromSource:0];
    v10 = 0;
    v11 = 1;
  }

  else if (item == 12)
  {
    v10 = _WBSLocalizedString();
    if (v10)
    {
      [v7 setTitle:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    if (!v11)
    {
      goto LABEL_16;
    }

    [v7 setSpacingOptions:8];
    view2 = [v7 view];
    [view2 setShowsMenuAsPrimaryAction:1];
    goto LABEL_15;
  }

  if (item == 3)
  {
    [v7 setSpacingOptions:1];
  }

  if (v11)
  {
    [v7 setSpacingOptions:10];
    view2 = [v7 view];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [view2 setTintColor:labelColor];

    [view2 setShowsMenuAsPrimaryAction:1];
    titleLabel = [view2 titleLabel];
    [titleLabel setText:v10];

    [view2 updateTitleFont];
LABEL_15:
  }

LABEL_16:
  v15 = _SFAccessibilityIdentifierForBarItem();
  [v7 setAccessibilityIdentifier:v15];

  v16 = [MEMORY[0x1E69C8880] isSolariumEnabled] ^ 1;
  if (item > 0xB)
  {
    LOBYTE(v16) = 1;
  }

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = off_1E84967D0[item];
  }

  [v7 setGroupIdentifier:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v7;
}

void __53__SFUnifiedBarRegistration__makeBarItemForSFBarItem___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _itemReceivedTap:v5];
  }
}

- (id)_imageForBarItem:(int64_t)item
{
  if (item == 3)
  {
    v3 = self->_contentMode - 2;
    if (v3 > 4)
    {
      v4 = @"sidebar.leading";
    }

    else
    {
      v4 = off_1E8496830[v3];
    }
  }

  else
  {
    v4 = SFSystemImageNameForBarItem();
  }

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];

  return v5;
}

- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  disabledBarItems = self->_disabledBarItems;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  LODWORD(disabledBarItems) = [(NSMutableSet *)disabledBarItems containsObject:v8];

  if (disabledBarItems == enabledCopy)
  {
    if (item <= 1)
    {
      self->_nextUpdateShouldPinScrollPositionToTrailingEdge = 1;
    }

    v9 = self->_disabledBarItems;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:item];
    if (enabledCopy)
    {
      [(NSMutableSet *)v9 removeObject:v10];
    }

    else
    {
      [(NSMutableSet *)v9 addObject:v10];
    }

    if (item > 1 || self->_contentMode <= 3uLL && (item != 1 || ([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0))
    {
      v11 = [(SFUnifiedBarRegistration *)self unifiedBarItemForSFBarItem:item];
      [v11 setEnabled:enabledCopy];
    }
  }
}

- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(SFUnifiedBarRegistration *)self _isBarItemHidden:?]!= hidden)
  {
    hiddenBarItems = self->_hiddenBarItems;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:item];
    if (hiddenCopy)
    {
      [(NSMutableSet *)hiddenBarItems addObject:v8];
    }

    else
    {
      [(NSMutableSet *)hiddenBarItems removeObject:v8];
    }

    [(SFUnifiedBarRegistration *)self _setNeedsUpdateItems];
  }
}

- (BOOL)_isBarItemHidden:(int64_t)hidden
{
  if (hidden || self->_contentMode < 4uLL)
  {
    hiddenBarItems = self->_hiddenBarItems;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:hidden];
    if (([(NSMutableSet *)hiddenBarItems containsObject:v6]& 1) != 0)
    {
      v7 = 1;
    }

    else if (hidden <= 1 && (self->_contentMode > 3uLL || hidden == 1 && [MEMORY[0x1E69C8880] isSolariumEnabled]))
    {
      disabledBarItems = self->_disabledBarItems;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:hidden];
      v7 = [(NSMutableSet *)disabledBarItems containsObject:v9];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  if (![(NSMutableSet *)self->_disabledBarItems containsObject:&unk_1F50235D8])
  {
    return 0;
  }

  v11 = self->_disabledBarItems;

  return [(NSMutableSet *)v11 containsObject:&unk_1F50235F0];
}

void __50__SFUnifiedBarRegistration__updateEnabledBarItems__block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  LODWORD(v4) = [v4 containsObject:v5];

  if (!v4)
  {
    goto LABEL_6;
  }

  if (a2 <= 1)
  {
    if (*(*(a1 + 32) + 160) <= 3uLL)
    {
      if (a2 == 1)
      {
        v6 = [MEMORY[0x1E69C8880] isSolariumEnabled];
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    v6 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [*(a1 + 32) unifiedBarItemForSFBarItem:a2];
  [v7 setEnabled:v6];
}

- (void)updateBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SFUnifiedBarRegistration *)self _updateItemsIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_bar);
  [WeakRetained setInlineContentViewPinsScrollPositionToTrailingEdgeDuringResize:self->_nextUpdateShouldPinScrollPositionToTrailingEdge];
  v5 = objc_alloc(MEMORY[0x1E69B1C08]);
  v6 = [(SFUnifiedBarRegistration *)self _unifiedBarItemsForSFBarItems:self->_leadingBarItems];
  v7 = [(SFUnifiedBarRegistration *)self _unifiedBarItemsForSFBarItems:self->_trailingBarItems];
  v8 = [v5 initWithLeadingItems:v6 trailingItems:v7];

  [WeakRetained setItemArrangement:v8 animated:animatedCopy];
  [WeakRetained setInlineContentViewPinsScrollPositionToTrailingEdgeDuringResize:0];
  self->_nextUpdateShouldPinScrollPositionToTrailingEdge = 0;
}

- (id)_unifiedBarItemsForSFBarItems:(id)items
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFUnifiedBarRegistration__unifiedBarItemsForSFBarItems___block_invoke;
  v5[3] = &unk_1E8496768;
  v5[4] = self;
  v3 = [items safari_mapAndFilterObjectsUsingBlock:v5];

  return v3;
}

id __58__SFUnifiedBarRegistration__unifiedBarItemsForSFBarItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isBarItemHidden:{objc_msgSend(v3, "integerValue")}])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) unifiedBarItemForSFBarItem:{objc_msgSend(v3, "integerValue")}];
  }

  return v4;
}

- (int64_t)_SFBarItemForUnifiedBarItem:(id)item
{
  itemCopy = item;
  if (self->_backButton == itemCopy)
  {
    v5 = 0;
  }

  else if (self->_bookmarksAndSidebarButton == itemCopy)
  {
    v5 = 3;
  }

  else if (self->_forwardButton == itemCopy)
  {
    v5 = 1;
  }

  else if (self->_tabGroupButton == itemCopy)
  {
    v5 = 2;
  }

  else if (self->_shareButton == itemCopy)
  {
    v5 = 6;
  }

  else if (self->_newTabButton == itemCopy)
  {
    v5 = 7;
  }

  else if (self->_tabOverviewButton == itemCopy)
  {
    v5 = 8;
  }

  else if (self->_downloadsButton == itemCopy)
  {
    v5 = 11;
  }

  else if (self->_cancelButton == itemCopy)
  {
    v5 = 12;
  }

  else if (self->_collaborationButton == itemCopy)
  {
    v5 = 16;
  }

  else
  {
    v5 = 17;
  }

  return v5;
}

- (id)unifiedBarItemForSFBarItem:(int64_t)item
{
  if (item <= 0x10 && ((0x119CFu >> item) & 1) != 0)
  {
    v4 = *(&self->super.isa + qword_1D47DF9A0[item]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_itemReceivedTap:(id)tap
{
  tapCopy = tap;
  WeakRetained = objc_loadWeakRetained(&self->_barManager);
  v5 = [(SFUnifiedBarRegistration *)self _SFBarItemForUnifiedBarItem:tapCopy];

  [WeakRetained barRegistration:self didReceiveTapForBarItem:v5];
}

- (BOOL)containsBarItem:(int64_t)item
{
  allBarItems = self->_allBarItems;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  if ([(NSSet *)allBarItems containsObject:v6])
  {
    v7 = ![(SFUnifiedBarRegistration *)self _isBarItemHidden:item];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)popoverSourceInfoForItem:(int64_t)item
{
  v3 = [(SFUnifiedBarRegistration *)self unifiedBarItemForSFBarItem:item];
  view = [v3 view];

  if (view)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B1C78]) initWithView:view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewForBarItem:(int64_t)item
{
  v3 = [(SFUnifiedBarRegistration *)self unifiedBarItemForSFBarItem:item];
  view = [v3 view];

  return view;
}

- (void)setBarItem:(int64_t)item menu:(id)menu
{
  menuCopy = menu;
  v8 = [(SFUnifiedBarRegistration *)self unifiedBarItemForSFBarItem:item];
  view = [v8 view];
  [view setMenu:menuCopy];
}

- (void)setProgress:(double)progress forBarItem:(int64_t)item
{
  if (item == 11)
  {
    [(SFDownloadsUnifiedBarItem *)self->_downloadsButton setProgress:progress];
  }
}

- (void)pulseBarItem:(int64_t)item
{
  if (item == 11)
  {
    [(SFDownloadsUnifiedBarItem *)self->_downloadsButton pulse];
  }
}

- (void)setTitle:(id)title forBarItem:(int64_t)item
{
  titleCopy = title;
  if (titleCopy)
  {
    v8 = titleCopy;
    v7 = [(SFUnifiedBarRegistration *)self unifiedBarItemForSFBarItem:item];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setTitle:v8];
    }

    titleCopy = v8;
  }
}

- (void)setImage:(id)image forBarItem:(int64_t)item
{
  imageCopy = image;
  v6 = [(SFUnifiedBarRegistration *)self unifiedBarItemForSFBarItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (imageCopy)
    {
      [v6 setImage:imageCopy];
    }

    else
    {
      v7 = [(SFUnifiedBarRegistration *)self _imageForBarItem:item];
      [v6 setImage:v7];
    }
  }
}

- (void)setAttributedTitle:(id)title forBarItem:(int64_t)item
{
  titleCopy = title;
  v6 = [(SFUnifiedBarRegistration *)self unifiedBarItemForSFBarItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setAttributedTitle:titleCopy];
  }
}

- (void)setContentMode:(int64_t)mode
{
  if (self->_contentMode != mode)
  {
    self->_contentMode = mode;
    [(SFUnifiedBarRegistration *)self _updateEnabledBarItems];

    [(SFUnifiedBarRegistration *)self _setNeedsUpdateItems];
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(SFUnifiedBarRegistration *)self _setNeedsUpdateItems];
  }
}

@end