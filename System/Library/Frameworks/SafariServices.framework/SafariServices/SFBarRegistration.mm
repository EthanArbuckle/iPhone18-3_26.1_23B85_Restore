@interface SFBarRegistration
- (BOOL)_arrangedBarItemsNeedUpdate;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)containsBarItem:(int64_t)item;
- (SFBarRegistration)initWithBar:(id)bar barManager:(id)manager layout:(int64_t)layout persona:(int64_t)persona;
- (id)_UIBarButtonItemForBarItem:(int64_t)item;
- (id)_UIBarButtonItemsForArrangedBarItems:(id)items;
- (id)_effectiveArrangedBarItems;
- (id)_newBarButtonItemForSFBarItem:(int64_t)item;
- (id)popoverSourceInfoForItem:(int64_t)item;
- (int64_t)barItemForUIBarButtonItem:(id)item;
- (void)_itemReceivedLongPress:(id)press;
- (void)_itemReceivedTap:(id)tap;
- (void)_itemReceivedTouchDown:(id)down;
- (void)_updateTitlesAndMenus;
- (void)pulseBarItem:(int64_t)item;
- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled;
- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden;
- (void)setBarItem:(int64_t)item menu:(id)menu;
- (void)setBarItem:(int64_t)item selected:(BOOL)selected;
- (void)setCustomActivityImage:(id)image accessibilityLabel:(id)label;
- (void)setImage:(id)image forBarItem:(int64_t)item;
- (void)setProgress:(double)progress forBarItem:(int64_t)item;
- (void)updateArrangedUIBarButtonItemsIfNeededWithAnimation:(BOOL)animation;
@end

@implementation SFBarRegistration

- (BOOL)_arrangedBarItemsNeedUpdate
{
  if (self->_lastCommittedArrangedBarItems)
  {
    _effectiveArrangedBarItems = [(SFBarRegistration *)self _effectiveArrangedBarItems];
    v4 = ![(NSOrderedSet *)self->_lastCommittedArrangedBarItems isEqualToOrderedSet:_effectiveArrangedBarItems];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)_effectiveArrangedBarItems
{
  WeakRetained = objc_loadWeakRetained(&self->_barManager);
  delegate = [WeakRetained delegate];
  v5 = objc_opt_respondsToSelector();
  arrangedBarItems = self->_arrangedBarItems;
  if (v5)
  {
    v7 = [(NSOrderedSet *)arrangedBarItems set];
    v8 = [delegate barManager:WeakRetained visibleBarItemsForLayout:self->_layout availableItems:v7];
    if ([v7 isEqualToSet:v8])
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v11 = [(NSOrderedSet *)self->_arrangedBarItems mutableCopy];
    v10 = v11;
    if (v9)
    {
      [v11 intersectSet:v9];
    }
  }

  else
  {
    v10 = [(NSOrderedSet *)arrangedBarItems mutableCopy];
  }

  [v10 minusSet:self->_hiddenBarItems];
  v12 = [v10 copy];

  return v12;
}

- (void)_updateTitlesAndMenus
{
  if (self->_backItem)
  {
    v3 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_backItem setTitle:v3];
  }

  if (self->_forwardItem)
  {
    v4 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_forwardItem setTitle:v4];
  }

  if (self->_bookmarksItem)
  {
    v5 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_bookmarksItem setTitle:v5];
  }

  if (self->_shareItem)
  {
    v6 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_shareItem setTitle:v6];
  }

  if (self->_newTabItem)
  {
    v7 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_newTabItem setTitle:v7];
  }

  if (self->_tabExposeItem)
  {
    v8 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_tabExposeItem setTitle:v8];
  }

  if (self->_openInSafariItem)
  {
    v9 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_openInSafariItem setTitle:v9];
  }

  if (self->_reloadItem)
  {
    v10 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_reloadItem setTitle:v10];
  }

  if (self->_stopItem)
  {
    v11 = SFAccessibilityTitleForBarItem();
    [(UIBarButtonItem *)self->_stopItem setTitle:v11];
  }
}

- (SFBarRegistration)initWithBar:(id)bar barManager:(id)manager layout:(int64_t)layout persona:(int64_t)persona
{
  barCopy = bar;
  managerCopy = manager;
  v62.receiver = self;
  v62.super_class = SFBarRegistration;
  v12 = [(SFBarRegistration *)&v62 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_54;
  }

  objc_storeWeak(&v12->_bar, barCopy);
  objc_storeWeak(&v13->_barManager, managerCopy);
  v14 = MEMORY[0x1E695DFB8];
  if (persona <= 1)
  {
    if (persona)
    {
LABEL_9:
      if (layout > 1)
      {
        if (layout == 2)
        {
          v15 = &unk_1F5023D40;
          goto LABEL_27;
        }

        if (layout != 3)
        {
          goto LABEL_26;
        }

        isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
        v17 = &unk_1F5023DB8;
        v18 = &unk_1F5023DA0;
      }

      else
      {
        if (!layout)
        {
          v15 = &unk_1F5023D58;
          goto LABEL_27;
        }

        if (layout != 1)
        {
          goto LABEL_26;
        }

        isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
        v17 = &unk_1F5023D88;
        v18 = &unk_1F5023D70;
      }

      goto LABEL_23;
    }

    if (layout >= 4)
    {
LABEL_26:
      v15 = MEMORY[0x1E695E0F0];
      goto LABEL_27;
    }

    v15 = qword_1E8491098[layout];
  }

  else
  {
    if (persona != 2)
    {
      if (persona != 3)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    if (layout > 1)
    {
      if (layout == 2)
      {
        v15 = &unk_1F5023DD0;
        goto LABEL_27;
      }

      if (layout != 3)
      {
        goto LABEL_26;
      }

      isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
      v17 = &unk_1F5023E30;
      v18 = &unk_1F5023E18;
LABEL_23:
      if (isSolariumEnabled)
      {
        v15 = v18;
      }

      else
      {
        v15 = v17;
      }

      goto LABEL_27;
    }

    if (!layout)
    {
      v15 = &unk_1F5023DE8;
      goto LABEL_27;
    }

    if (layout != 1)
    {
      goto LABEL_26;
    }

    v15 = &unk_1F5023E00;
  }

LABEL_27:
  v19 = [v14 orderedSetWithArray:v15];
  arrangedBarItems = v13->_arrangedBarItems;
  v13->_arrangedBarItems = v19;

  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  hiddenBarItems = v13->_hiddenBarItems;
  v13->_hiddenBarItems = v21;

  v13->_layout = layout;
  v23 = 1;
  if (layout == 2)
  {
    v23 = 2;
  }

  if (layout == 3)
  {
    v23 = 0;
  }

  [barCopy _setItemDistribution:qword_1D47DD160[v23]];
  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022F30])
  {
    v24 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:0];
    backItem = v13->_backItem;
    v13->_backItem = v24;

    v26 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_backItem setAccessibilityIdentifier:v26];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022F48])
  {
    v27 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:1];
    forwardItem = v13->_forwardItem;
    v13->_forwardItem = v27;

    v29 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_forwardItem setAccessibilityIdentifier:v29];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022F60])
  {
    v30 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:3];
    bookmarksItem = v13->_bookmarksItem;
    v13->_bookmarksItem = v30;

    v32 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_bookmarksItem setAccessibilityIdentifier:v32];

    _SFRoundEdgeInsetsToPixels();
    [(UIBarButtonItem *)v13->_bookmarksItem _setAdditionalSelectionInsets:?];
    [(UIBarButtonItem *)v13->_bookmarksItem _sf_setTarget:v13 longPressAction:sel__itemReceivedLongPress_];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022F78])
  {
    v33 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:6];
    shareItem = v13->_shareItem;
    v13->_shareItem = v33;

    [(UIBarButtonItem *)v13->_shareItem setAccessibilityIdentifier:@"ShareButton"];
    v35 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_shareItem setAccessibilityIdentifier:v35];

    [(UIBarButtonItem *)v13->_shareItem _sf_setTarget:v13 touchDownAction:sel__itemReceivedTouchDown_ longPressAction:sel__itemReceivedLongPress_];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022F90])
  {
    v36 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:7];
    newTabItem = v13->_newTabItem;
    v13->_newTabItem = v36;

    v38 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_newTabItem setAccessibilityIdentifier:v38];

    [(UIBarButtonItem *)v13->_newTabItem _sf_setTarget:v13 longPressAction:sel__itemReceivedLongPress_];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022FA8])
  {
    v39 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:8];
    tabExposeItem = v13->_tabExposeItem;
    v13->_tabExposeItem = v39;

    v41 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_tabExposeItem setAccessibilityIdentifier:v41];

    [(UIBarButtonItem *)v13->_tabExposeItem _sf_setTarget:v13 longPressAction:sel__itemReceivedLongPress_];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022FC0])
  {
    v42 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:9];
    openInSafariItem = v13->_openInSafariItem;
    v13->_openInSafariItem = v42;

    v44 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_openInSafariItem setAccessibilityIdentifier:v44];

    [(UIBarButtonItem *)v13->_openInSafariItem _sf_setTarget:v13 longPressAction:sel__itemReceivedLongPress_];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022FD8])
  {
    v45 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:10];
    customActivityItem = v13->_customActivityItem;
    v13->_customActivityItem = v45;

    v47 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_customActivityItem setAccessibilityIdentifier:v47];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5022FF0])
  {
    v48 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:11];
    downloadsItem = v13->_downloadsItem;
    v13->_downloadsItem = v48;

    v50 = _SFAccessibilityIdentifierForBarItem();
    [(SFDownloadsBarButtonItem *)v13->_downloadsItem setAccessibilityIdentifier:v50];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5023008])
  {
    v51 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:15];
    reloadItem = v13->_reloadItem;
    v13->_reloadItem = v51;

    v53 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_reloadItem setAccessibilityIdentifier:v53];
  }

  if ([(NSOrderedSet *)v13->_arrangedBarItems containsObject:&unk_1F5023020])
  {
    v54 = [(SFBarRegistration *)v13 _newBarButtonItemForSFBarItem:14];
    stopItem = v13->_stopItem;
    v13->_stopItem = v54;

    v56 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)v13->_stopItem setAccessibilityIdentifier:v56];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFBarRegistration_initWithBar_barManager_layout_persona___block_invoke;
  block[3] = &unk_1E848F810;
  v57 = v13;
  v61 = v57;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v58 = v57;

LABEL_54:
  return v13;
}

- (id)_newBarButtonItemForSFBarItem:(int64_t)item
{
  if (item == 10)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = objc_opt_new();
    v8 = [v6 initWithImage:v7 style:0 target:self action:sel__itemReceivedTap_];

    return v8;
  }

  else if (item == 11)
  {
    v4 = [SFDownloadsBarButtonItem alloc];

    return [(SFDownloadsBarButtonItem *)v4 initWithTarget:self action:sel__itemReceivedTap_];
  }

  else
  {
    v9 = SFSystemImageNameForBarItem();
    v10 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    v11 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC78]];
    v12 = [v10 configurationWithTraitCollection:v11];

    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v12];
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v13 style:0 target:self action:sel__itemReceivedTap_];
    v15 = v14;
    if (self->_layout == 2)
    {
      [v14 _setWidth:60.0];
    }

    v16 = _SFAccessibilityIdentifierForBarItem();
    [v15 setAccessibilityIdentifier:v16];

    return v15;
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel__itemReceivedLongPress_ == action)
  {
    senderCopy = sender;
    WeakRetained = objc_loadWeakRetained(&self->_barManager);
    v9 = [(SFBarRegistration *)self barItemForUIBarButtonItem:senderCopy];

    v7 = [WeakRetained barRegistration:self canHandleLongPressForBarItem:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SFBarRegistration;
    WeakRetained = sender;
    v7 = [(SFBarRegistration *)&v12 canPerformAction:action withSender:WeakRetained];
  }

  v10 = v7;

  return v10;
}

- (void)setCustomActivityImage:(id)image accessibilityLabel:(id)label
{
  labelCopy = label;
  imageCopy = image;
  v8 = [(SFBarRegistration *)self _UIBarButtonItemForBarItem:10];
  [v8 setImage:imageCopy];

  [v8 setTitle:labelCopy];
  [v8 setAccessibilityLabel:labelCopy];
}

- (void)setImage:(id)image forBarItem:(int64_t)item
{
  imageCopy = image;
  v6 = [(SFBarRegistration *)self _UIBarButtonItemForBarItem:item];
  v7 = v6;
  if (imageCopy)
  {
    [v6 setImage:?];
  }

  else
  {
    v8 = MEMORY[0x1E69DCAB8];
    v9 = SFSystemImageNameForBarItem();
    v10 = [v8 systemImageNamed:v9];
    [v7 setImage:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_bar);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didSetBarItem:item barButtonItem:v7];
  }
}

- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = [(SFBarRegistration *)self _UIBarButtonItemForBarItem:?];
  [v8 setEnabled:enabledCopy];
  WeakRetained = objc_loadWeakRetained(&self->_bar);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didSetBarItem:item barButtonItem:v8];
  }
}

- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  arrangedBarItems = self->_arrangedBarItems;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  LODWORD(arrangedBarItems) = [(NSOrderedSet *)arrangedBarItems containsObject:v8];

  if (arrangedBarItems)
  {
    hiddenBarItems = self->_hiddenBarItems;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:item];
    LODWORD(hiddenBarItems) = [(NSMutableSet *)hiddenBarItems containsObject:v10];

    if (hiddenBarItems != hiddenCopy)
    {
      v11 = self->_hiddenBarItems;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:item];
      if (hiddenCopy)
      {
        [(NSMutableSet *)v11 addObject:v12];
      }

      else
      {
        [(NSMutableSet *)v11 removeObject:v12];
      }
    }
  }
}

- (void)updateArrangedUIBarButtonItemsIfNeededWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  if ([(SFBarRegistration *)self _arrangedBarItemsNeedUpdate])
  {
    _effectiveArrangedBarItems = [(SFBarRegistration *)self _effectiveArrangedBarItems];
    lastCommittedArrangedBarItems = self->_lastCommittedArrangedBarItems;
    self->_lastCommittedArrangedBarItems = _effectiveArrangedBarItems;

    WeakRetained = objc_loadWeakRetained(&self->_bar);
    v7 = [(SFBarRegistration *)self _UIBarButtonItemsForArrangedBarItems:self->_lastCommittedArrangedBarItems];
    [WeakRetained setItems:v7 animated:animationCopy];

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained didChangeArrangedBarItems:self];
    }
  }
}

- (BOOL)containsBarItem:(int64_t)item
{
  if (*MEMORY[0x1E69B1E98] == item)
  {
    return 0;
  }

  [(SFBarRegistration *)self updateArrangedUIBarButtonItemsIfNeededWithAnimation:0];
  lastCommittedArrangedBarItems = self->_lastCommittedArrangedBarItems;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:item];
  LOBYTE(lastCommittedArrangedBarItems) = [(NSOrderedSet *)lastCommittedArrangedBarItems containsObject:v7];

  return lastCommittedArrangedBarItems;
}

- (id)popoverSourceInfoForItem:(int64_t)item
{
  v3 = [(SFBarRegistration *)self _UIBarButtonItemForBarItem:item];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B1BE8]) initWithItem:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBarItem:(int64_t)item selected:(BOOL)selected
{
  if (item == 3)
  {
    [(UIBarButtonItem *)self->_bookmarksItem setSelected:selected];
  }
}

- (void)setBarItem:(int64_t)item menu:(id)menu
{
  menuCopy = menu;
  v8 = [(SFBarRegistration *)self UIBarButtonItemForItem:item];
  [v8 setMenu:menuCopy];

  WeakRetained = objc_loadWeakRetained(&self->_bar);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didSetBarItem:item barButtonItem:v8];
  }
}

- (void)setProgress:(double)progress forBarItem:(int64_t)item
{
  if (item == 11)
  {
    [(SFBarRegistration *)self setDownloadsItemProgress:progress];
  }
}

- (void)pulseBarItem:(int64_t)item
{
  if (item == 11)
  {
    [(SFBarRegistration *)self pulseDownloadsItem];
  }
}

- (id)_UIBarButtonItemsForArrangedBarItems:(id)items
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    if (self->_layout == 2)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    }

    else
    {
      v5 = 0;
    }

    lastObject = [itemsCopy lastObject];
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = itemsCopy;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = -[SFBarRegistration _UIBarButtonItemForBarItem:](self, "_UIBarButtonItemForBarItem:", [v14 integerValue]);
          [array addObject:v15];

          if (v5 && ([v14 isEqual:lastObject] & 1) == 0)
          {
            [array addObject:v5];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v6 = [array copy];
    itemsCopy = v17;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)_UIBarButtonItemForBarItem:(int64_t)item
{
  v3 = 0;
  if (item > 6)
  {
    if (item <= 9)
    {
      if (item == 7)
      {
        v5 = 96;
      }

      else if (item == 8)
      {
        v5 = 112;
      }

      else
      {
        v5 = 120;
      }
    }

    else if (item > 13)
    {
      if (item == 14)
      {
        v5 = 144;
      }

      else
      {
        if (item != 15)
        {
          goto LABEL_35;
        }

        v5 = 136;
      }
    }

    else if (item == 10)
    {
      v5 = 128;
    }

    else
    {
      if (item != 11)
      {
        goto LABEL_35;
      }

      v5 = 80;
    }

LABEL_33:
    flexibleSpaceItem = *(&self->super.super.isa + v5);
    goto LABEL_34;
  }

  if ((item & 0x8000000000000000) == 0)
  {
    if (item > 2)
    {
      if (item == 3)
      {
        v5 = 72;
      }

      else
      {
        if (item != 6)
        {
          goto LABEL_35;
        }

        v5 = 104;
      }
    }

    else if (item)
    {
      if (item != 1)
      {
        goto LABEL_35;
      }

      v5 = 88;
    }

    else
    {
      v5 = 64;
    }

    goto LABEL_33;
  }

  if ((item + 101) < 2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:0 style:0 target:0 action:0];
    [v3 setWidth:44.0];
    goto LABEL_35;
  }

  if (item == -103)
  {
    flexibleSpaceItem = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
  }

  else
  {
    if (item != -102)
    {
      goto LABEL_35;
    }

    flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
  }

LABEL_34:
  v3 = flexibleSpaceItem;
LABEL_35:

  return v3;
}

- (int64_t)barItemForUIBarButtonItem:(id)item
{
  itemCopy = item;
  if (self->_backItem == itemCopy)
  {
    v5 = 0;
  }

  else if (self->_forwardItem == itemCopy)
  {
    v5 = 1;
  }

  else if (self->_bookmarksItem == itemCopy)
  {
    v5 = 3;
  }

  else if (self->_shareItem == itemCopy)
  {
    v5 = 6;
  }

  else if (self->_newTabItem == itemCopy)
  {
    v5 = 7;
  }

  else if (self->_tabExposeItem == itemCopy)
  {
    v5 = 8;
  }

  else if (self->_openInSafariItem == itemCopy)
  {
    v5 = 9;
  }

  else if (self->_customActivityItem == itemCopy)
  {
    v5 = 10;
  }

  else if (self->_downloadsItem == itemCopy)
  {
    v5 = 11;
  }

  else if (self->_reloadItem == itemCopy)
  {
    v5 = 15;
  }

  else if (self->_stopItem == itemCopy)
  {
    v5 = 14;
  }

  else
  {
    v5 = 17;
  }

  return v5;
}

- (void)_itemReceivedTouchDown:(id)down
{
  downCopy = down;
  WeakRetained = objc_loadWeakRetained(&self->_barManager);
  v5 = [(SFBarRegistration *)self barItemForUIBarButtonItem:downCopy];

  [WeakRetained barRegistration:self didReceiveTouchDownForBarItem:v5];
}

- (void)_itemReceivedTap:(id)tap
{
  tapCopy = tap;
  WeakRetained = objc_loadWeakRetained(&self->_barManager);
  v5 = [(SFBarRegistration *)self barItemForUIBarButtonItem:tapCopy];

  [WeakRetained barRegistration:self didReceiveTapForBarItem:v5];
}

- (void)_itemReceivedLongPress:(id)press
{
  pressCopy = press;
  WeakRetained = objc_loadWeakRetained(&self->_barManager);
  v5 = [(SFBarRegistration *)self barItemForUIBarButtonItem:pressCopy];

  [WeakRetained barRegistration:self didReceiveLongPressForBarItem:v5];
}

@end