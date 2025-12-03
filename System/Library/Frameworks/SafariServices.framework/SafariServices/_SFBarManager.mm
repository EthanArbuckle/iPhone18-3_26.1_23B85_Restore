@interface _SFBarManager
- (BOOL)anyBarIsSourceForPopover:(id)popover;
- (BOOL)barRegistration:(id)registration canHandleLongPressForBarItem:(int64_t)item;
- (BOOL)isBarItemEnabled:(int64_t)enabled;
- (BOOL)isBarItemHidden:(int64_t)hidden;
- (BOOL)isBarItemSelected:(int64_t)selected;
- (CGRect)frameForBarItem:(int64_t)item inCoordinateSpace:(id)space;
- (_SFBarManager)init;
- (_SFBarManagerDelegate)delegate;
- (id)menuForBarItem:(int64_t)item;
- (id)test_registrationForBar:(id)bar;
- (unint64_t)test_numberOfRegistrations;
- (void)_invalidateCoalescedUpdatesTimer;
- (void)_updateAllRegistrationsAnimated:(BOOL)animated;
- (void)_updateRegistrationWithToken:(id)token animated:(BOOL)animated;
- (void)barRegistration:(id)registration didReceiveLongPressForBarItem:(int64_t)item;
- (void)barRegistration:(id)registration didReceiveTapForBarItem:(int64_t)item;
- (void)barRegistration:(id)registration didReceiveTouchDownForBarItem:(int64_t)item;
- (void)performCoalescedUpdatesAnimated:(BOOL)animated updates:(id)updates;
- (void)performCoalescedUpdatesNowAnimated:(BOOL)animated;
- (void)performWithRegistrationContainingItem:(int64_t)item block:(id)block;
- (void)pulseDownloadsItem;
- (void)registerBar:(id)bar withLayout:(int64_t)layout persona:(int64_t)persona;
- (void)registerBar:(id)bar withToken:(id)token;
- (void)registerToolbar:(id)toolbar withLayout:(int64_t)layout persona:(int64_t)persona;
- (void)registerUnifiedBar:(id)bar withPersona:(int64_t)persona;
- (void)setAllBarItemsAreDisabled:(BOOL)disabled;
- (void)setBarItem:(int64_t)item attributedTitle:(id)title;
- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled;
- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden;
- (void)setBarItem:(int64_t)item menu:(id)menu;
- (void)setBarItem:(int64_t)item selected:(BOOL)selected;
- (void)setBarItem:(int64_t)item title:(id)title;
- (void)setCollaborationButton:(id)button;
- (void)setContentMode:(int64_t)mode;
- (void)setCustomActivityImage:(id)image accessibilityLabel:(id)label;
- (void)setDownloadsItemNeedsLayout;
- (void)setDownloadsItemProgress:(double)progress;
- (void)setImage:(id)image forBarItem:(int64_t)item;
- (void)setState:(int64_t)state;
- (void)visibleBarItemsNeedUpdate;
@end

@implementation _SFBarManager

- (_SFBarManager)init
{
  v14.receiver = self;
  v14.super_class = _SFBarManager;
  v2 = [(_SFBarManager *)&v14 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    barToRegistrationMap = v2->_barToRegistrationMap;
    v2->_barToRegistrationMap = weakToStrongObjectsMapTable;

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:17];
    v6 = v5;
    if (v5 && [v5 count] <= 0x10)
    {
      do
      {
        v7 = objc_alloc_init(_SFBarItemConfiguration);
        [v6 addObject:v7];
      }

      while ([v6 count] < 0x11);
    }

    v8 = [v6 copy];

    itemConfigurationMap = v2->_itemConfigurationMap;
    v2->_itemConfigurationMap = v8;

    v10 = [(NSArray *)v2->_itemConfigurationMap objectAtIndexedSubscript:0];
    [v10 setEnabled:0];

    v11 = [(NSArray *)v2->_itemConfigurationMap objectAtIndexedSubscript:1];
    [v11 setEnabled:0];

    v2->_downloadsItemProgress = -2.0;
    v12 = v2;
  }

  return v2;
}

- (_SFBarManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)visibleBarItemsNeedUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateBarAnimated:0];
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setContentMode:(int64_t)mode
{
  if (self->_contentMode != mode)
  {
    self->_contentMode = mode;
    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setCustomActivityImage:(id)image accessibilityLabel:(id)label
{
  imageCopy = image;
  labelCopy = label;
  if (self->_customActivityImage != imageCopy || (WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_customActivityImage, image);
    v8 = [labelCopy copy];
    customActivityAccessibilityLabel = self->_customActivityAccessibilityLabel;
    self->_customActivityAccessibilityLabel = v8;

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (BOOL)isBarItemEnabled:(int64_t)enabled
{
  if (self->_allBarItemsAreDisabled)
  {
    return 0;
  }

  v4 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:enabled];
  isEnabled = [v4 isEnabled];

  return isEnabled;
}

- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:?];
  isEnabled = [v7 isEnabled];

  if (isEnabled != enabledCopy)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
    [v9 setEnabled:enabledCopy];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (BOOL)isBarItemHidden:(int64_t)hidden
{
  v3 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:hidden];
  isHidden = [v3 isHidden];

  return isHidden;
}

- (void)setBarItem:(int64_t)item hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v7 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:?];
  isHidden = [v7 isHidden];

  if (isHidden != hiddenCopy)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
    [v9 setHidden:hiddenCopy];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (BOOL)isBarItemSelected:(int64_t)selected
{
  v3 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:selected];
  isSelected = [v3 isSelected];

  return isSelected;
}

- (void)setBarItem:(int64_t)item selected:(BOOL)selected
{
  selectedCopy = selected;
  v7 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:?];
  isSelected = [v7 isSelected];

  if (isSelected != selectedCopy)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
    [v9 setSelected:selectedCopy];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setBarItem:(int64_t)item menu:(id)menu
{
  menuCopy = menu;
  v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
  menu = [v6 menu];
  v8 = WBSIsEqual();

  if ((v8 & 1) == 0)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
    [v9 setMenu:menuCopy];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setBarItem:(int64_t)item title:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
    title = [v6 title];
    v8 = [title isEqualToString:titleCopy];

    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
      [v9 setAttributedTitle:0];

      v10 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
      [v10 setTitle:titleCopy];

      [(_SFBarManager *)self _updateAllRegistrations];
    }
  }
}

- (void)setBarItem:(int64_t)item attributedTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
    attributedTitle = [v6 attributedTitle];
    v8 = [attributedTitle safari_isEqualToAttributedString:titleCopy];

    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
      [v9 setTitle:0];

      v10 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
      [v10 setAttributedTitle:titleCopy];

      [(_SFBarManager *)self _updateAllRegistrations];
    }
  }
}

- (void)setImage:(id)image forBarItem:(int64_t)item
{
  imageCopy = image;
  v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
  image = [v6 image];
  v8 = WBSIsEqual();

  if ((v8 & 1) == 0)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
    [v9 setImage:imageCopy];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setDownloadsItemProgress:(double)progress
{
  v15 = *MEMORY[0x1E69E9840];
  self->_downloadsItemProgress = progress;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 setProgress:11 forBarItem:progress];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setCollaborationButton:(id)button
{
  buttonCopy = button;
  if (self->_collaborationButton != buttonCopy)
  {
    v6 = buttonCopy;
    objc_storeStrong(&self->_collaborationButton, button);
    [(_SFBarManager *)self _updateAllRegistrations];
    buttonCopy = v6;
  }
}

- (void)setAllBarItemsAreDisabled:(BOOL)disabled
{
  if (self->_allBarItemsAreDisabled != disabled)
  {
    self->_allBarItemsAreDisabled = disabled;
    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)pulseDownloadsItem
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  objectEnumerator = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 pulseBarItem:11];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setDownloadsItemNeedsLayout
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v7 UIBarButtonItemForItem:11];
          customView = [v8 customView];
          [customView setNeedsLayout];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_11;
          }

          v8 = [v7 viewForBarItem:11];
          [v8 setNeedsLayout];
        }

LABEL_11:
        ++v6;
      }

      while (v4 != v6);
      v4 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)performCoalescedUpdatesAnimated:(BOOL)animated updates:(id)updates
{
  updatesCopy = updates;
  if (CFAbsoluteTimeGetCurrent() - self->_lastCoalescedUpdatesTime < 0.2)
  {
    [(_SFBarManager *)self _invalidateCoalescedUpdatesTimer];
  }

  v7 = _Block_copy(updatesCopy);
  coalescedUpdatesBlock = self->_coalescedUpdatesBlock;
  self->_coalescedUpdatesBlock = v7;

  if (![(NSTimer *)self->_coalescedUpdatesTimer isValid])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___SFBarManager_performCoalescedUpdatesAnimated_updates___block_invoke;
    v12[3] = &unk_1E84966C8;
    v12[4] = self;
    animatedCopy = animated;
    v9 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:0 repeats:v12 block:0.04];
    coalescedUpdatesTimer = self->_coalescedUpdatesTimer;
    self->_coalescedUpdatesTimer = v9;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_coalescedUpdatesTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)performCoalescedUpdatesNowAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = _Block_copy(self->_coalescedUpdatesBlock);
  [(_SFBarManager *)self _invalidateCoalescedUpdatesTimer];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = v8;
  self->_lastCoalescedUpdatesTime = Current;
  if (v8)
  {
    deferUpdateAllRegistrations = self->_deferUpdateAllRegistrations;
    self->_deferUpdateAllRegistrations = 1;
    (*(v8 + 2))(v8);
    v6 = v8;
    self->_deferUpdateAllRegistrations = deferUpdateAllRegistrations;
    if (self->_needsUpdateAllRegistrations)
    {
      self->_needsUpdateAllRegistrations = 0;
      [(_SFBarManager *)self _updateAllRegistrationsAnimated:animatedCopy];
      v6 = v8;
    }
  }
}

- (void)_invalidateCoalescedUpdatesTimer
{
  [(NSTimer *)self->_coalescedUpdatesTimer invalidate];
  coalescedUpdatesTimer = self->_coalescedUpdatesTimer;
  self->_coalescedUpdatesTimer = 0;

  coalescedUpdatesBlock = self->_coalescedUpdatesBlock;
  self->_coalescedUpdatesBlock = 0;
}

- (void)registerToolbar:(id)toolbar withLayout:(int64_t)layout persona:(int64_t)persona
{
  toolbarCopy = toolbar;
  v9 = [[SFBarRegistration alloc] initWithBar:toolbarCopy barManager:self layout:layout persona:persona];
  [(_SFBarManager *)self registerBar:toolbarCopy withToken:v9];
}

- (void)registerBar:(id)bar withLayout:(int64_t)layout persona:(int64_t)persona
{
  barCopy = bar;
  v9 = [[SFBarRegistration alloc] initWithBar:barCopy barManager:self layout:layout persona:persona];
  [(_SFBarManager *)self registerBar:barCopy withToken:v9];
}

- (void)registerBar:(id)bar withToken:(id)token
{
  barCopy = bar;
  tokenCopy = token;
  [(_SFBarManager *)self _updateRegistrationWithToken:tokenCopy animated:0];
  [(NSMapTable *)self->_barToRegistrationMap setObject:tokenCopy forKey:barCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self willRegisterBarWithToken:tokenCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [barCopy didCompleteBarRegistrationWithToken:tokenCopy];
  }
}

- (void)registerUnifiedBar:(id)bar withPersona:(int64_t)persona
{
  barCopy = bar;
  v7 = [[SFUnifiedBarRegistration alloc] initWithBar:barCopy barManager:self persona:persona];
  [(_SFBarManager *)self registerBar:barCopy withToken:v7];
}

- (void)performWithRegistrationContainingItem:(int64_t)item block:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_barToRegistrationMap;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        window = [v11 window];

        if (window)
        {
          v13 = [(NSMapTable *)self->_barToRegistrationMap objectForKey:v11];
          if ([v13 containsBarItem:item])
          {
            blockCopy[2](blockCopy, item, v13, v11);
LABEL_18:

            goto LABEL_19;
          }

          if (objc_opt_respondsToSelector())
          {
            v14 = [v11 barItemTargetForAnimatingToBarItem:item];
            v15 = v14;
            if (v14 && ([v13 containsBarItem:{objc_msgSend(v14, "integerValue")}] & 1) != 0)
            {
              blockCopy[2](blockCopy, [v15 integerValue], v13, v11);

              goto LABEL_18;
            }
          }
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

- (CGRect)frameForBarItem:(int64_t)item inCoordinateSpace:(id)space
{
  v46 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(NSMapTable *)self->_barToRegistrationMap keyEnumerator];
  v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  if (!v7)
  {
    goto LABEL_20;
  }

  v12 = v7;
  v39 = spaceCopy;
  v13 = *v42;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v42 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v41 + 1) + 8 * i);
      v16 = [(NSMapTable *)self->_barToRegistrationMap objectForKey:v15, v39];
      if (objc_opt_respondsToSelector())
      {
        v17 = [v16 UIBarButtonItemForItem:item];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v15;
            [v18 _frameOfBarButtonItem:v17];
            x = v47.origin.x;
            y = v47.origin.y;
            width = v47.size.width;
            height = v47.size.height;
            v50.origin.x = v8;
            v50.origin.y = v9;
            v50.size.width = v10;
            v50.size.height = v11;
            if (!CGRectEqualToRect(v47, v50))
            {
              spaceCopy = v39;
              [v18 convertRect:v39 toCoordinateSpace:{x, y, width, height}];
              v8 = v31;
              v9 = v32;
              v10 = v33;
              v11 = v34;

              goto LABEL_19;
            }
          }
        }
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_14;
        }

        v17 = [v16 viewForBarItem:item];
        [v17 bounds];
        v23 = v48.origin.x;
        v24 = v48.origin.y;
        v25 = v48.size.width;
        v26 = v48.size.height;
        v51.origin.x = v8;
        v51.origin.y = v9;
        v51.size.width = v10;
        v51.size.height = v11;
        if (!CGRectEqualToRect(v48, v51))
        {
          spaceCopy = v39;
          [v17 convertRect:v39 toCoordinateSpace:{v23, v24, v25, v26}];
          v8 = v27;
          v9 = v28;
          v10 = v29;
          v11 = v30;
LABEL_19:

          goto LABEL_20;
        }
      }

LABEL_14:
    }

    v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  spaceCopy = v39;
LABEL_20:

  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (BOOL)anyBarIsSourceForPopover:(id)popover
{
  v15 = *MEMORY[0x1E69E9840];
  sourceView = [popover sourceView];
  if (sourceView)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    keyEnumerator = [(NSMapTable *)self->_barToRegistrationMap keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          if ([sourceView isDescendantOfView:*(*(&v10 + 1) + 8 * i)])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_updateAllRegistrationsAnimated:(BOOL)animated
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_deferUpdateAllRegistrations)
  {
    self->_needsUpdateAllRegistrations = 1;
  }

  else
  {
    animatedCopy = animated;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    objectEnumerator = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
    v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [(_SFBarManager *)self _updateRegistrationWithToken:*(*(&v10 + 1) + 8 * v9++) animated:animatedCopy];
        }

        while (v7 != v9);
        v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_updateRegistrationWithToken:(id)token animated:(BOOL)animated
{
  animatedCopy = animated;
  tokenCopy = token;
  if (objc_opt_respondsToSelector())
  {
    [tokenCopy setContentMode:self->_contentMode];
  }

  if (objc_opt_respondsToSelector())
  {
    [tokenCopy setState:self->_state];
  }

  if (objc_opt_respondsToSelector())
  {
    [tokenCopy setCustomActivityImage:self->_customActivityImage accessibilityLabel:self->_customActivityAccessibilityLabel];
  }

  if (objc_opt_respondsToSelector())
  {
    [tokenCopy setCollaborationButton:self->_collaborationButton];
  }

  v8 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v7 = tokenCopy;
  _SFBarItemEnumerateCases();
  [v7 updateBarAnimated:{animatedCopy, v8, 3221225472, __55___SFBarManager__updateRegistrationWithToken_animated___block_invoke, &unk_1E8493220, selfCopy}];
}

- (id)menuForBarItem:(int64_t)item
{
  v3 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:item];
  menu = [v3 menu];

  return menu;
}

- (unint64_t)test_numberOfRegistrations
{
  objectEnumerator = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v4 = [allObjects count];

  return v4;
}

- (id)test_registrationForBar:(id)bar
{
  v3 = [(NSMapTable *)self->_barToRegistrationMap objectForKey:bar];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)barRegistration:(id)registration didReceiveTapForBarItem:(int64_t)item
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self didReceiveTapForBarItem:item];
  }
}

- (BOOL)barRegistration:(id)registration canHandleLongPressForBarItem:(int64_t)item
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained barManager:self canHandleLongPressForBarItem:item];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  v8 = v7;

  return v8 & 1;
}

- (void)barRegistration:(id)registration didReceiveLongPressForBarItem:(int64_t)item
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self didReceiveLongPressForBarItem:item];
  }
}

- (void)barRegistration:(id)registration didReceiveTouchDownForBarItem:(int64_t)item
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self didReceiveTouchDownForBarItem:item];
  }
}

@end