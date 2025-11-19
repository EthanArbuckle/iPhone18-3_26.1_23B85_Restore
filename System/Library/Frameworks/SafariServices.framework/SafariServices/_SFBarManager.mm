@interface _SFBarManager
- (BOOL)anyBarIsSourceForPopover:(id)a3;
- (BOOL)barRegistration:(id)a3 canHandleLongPressForBarItem:(int64_t)a4;
- (BOOL)isBarItemEnabled:(int64_t)a3;
- (BOOL)isBarItemHidden:(int64_t)a3;
- (BOOL)isBarItemSelected:(int64_t)a3;
- (CGRect)frameForBarItem:(int64_t)a3 inCoordinateSpace:(id)a4;
- (_SFBarManager)init;
- (_SFBarManagerDelegate)delegate;
- (id)menuForBarItem:(int64_t)a3;
- (id)test_registrationForBar:(id)a3;
- (unint64_t)test_numberOfRegistrations;
- (void)_invalidateCoalescedUpdatesTimer;
- (void)_updateAllRegistrationsAnimated:(BOOL)a3;
- (void)_updateRegistrationWithToken:(id)a3 animated:(BOOL)a4;
- (void)barRegistration:(id)a3 didReceiveLongPressForBarItem:(int64_t)a4;
- (void)barRegistration:(id)a3 didReceiveTapForBarItem:(int64_t)a4;
- (void)barRegistration:(id)a3 didReceiveTouchDownForBarItem:(int64_t)a4;
- (void)performCoalescedUpdatesAnimated:(BOOL)a3 updates:(id)a4;
- (void)performCoalescedUpdatesNowAnimated:(BOOL)a3;
- (void)performWithRegistrationContainingItem:(int64_t)a3 block:(id)a4;
- (void)pulseDownloadsItem;
- (void)registerBar:(id)a3 withLayout:(int64_t)a4 persona:(int64_t)a5;
- (void)registerBar:(id)a3 withToken:(id)a4;
- (void)registerToolbar:(id)a3 withLayout:(int64_t)a4 persona:(int64_t)a5;
- (void)registerUnifiedBar:(id)a3 withPersona:(int64_t)a4;
- (void)setAllBarItemsAreDisabled:(BOOL)a3;
- (void)setBarItem:(int64_t)a3 attributedTitle:(id)a4;
- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4;
- (void)setBarItem:(int64_t)a3 hidden:(BOOL)a4;
- (void)setBarItem:(int64_t)a3 menu:(id)a4;
- (void)setBarItem:(int64_t)a3 selected:(BOOL)a4;
- (void)setBarItem:(int64_t)a3 title:(id)a4;
- (void)setCollaborationButton:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setCustomActivityImage:(id)a3 accessibilityLabel:(id)a4;
- (void)setDownloadsItemNeedsLayout;
- (void)setDownloadsItemProgress:(double)a3;
- (void)setImage:(id)a3 forBarItem:(int64_t)a4;
- (void)setState:(int64_t)a3;
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
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    barToRegistrationMap = v2->_barToRegistrationMap;
    v2->_barToRegistrationMap = v3;

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
  v2 = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateBarAnimated:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setContentMode:(int64_t)a3
{
  if (self->_contentMode != a3)
  {
    self->_contentMode = a3;
    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setCustomActivityImage:(id)a3 accessibilityLabel:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (self->_customActivityImage != v10 || (WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_customActivityImage, a3);
    v8 = [v7 copy];
    customActivityAccessibilityLabel = self->_customActivityAccessibilityLabel;
    self->_customActivityAccessibilityLabel = v8;

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (BOOL)isBarItemEnabled:(int64_t)a3
{
  if (self->_allBarItemsAreDisabled)
  {
    return 0;
  }

  v4 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
  v5 = [v4 isEnabled];

  return v5;
}

- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:?];
  v8 = [v7 isEnabled];

  if (v8 != v4)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
    [v9 setEnabled:v4];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (BOOL)isBarItemHidden:(int64_t)a3
{
  v3 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
  v4 = [v3 isHidden];

  return v4;
}

- (void)setBarItem:(int64_t)a3 hidden:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:?];
  v8 = [v7 isHidden];

  if (v8 != v4)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
    [v9 setHidden:v4];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (BOOL)isBarItemSelected:(int64_t)a3
{
  v3 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
  v4 = [v3 isSelected];

  return v4;
}

- (void)setBarItem:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:?];
  v8 = [v7 isSelected];

  if (v8 != v4)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
    [v9 setSelected:v4];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setBarItem:(int64_t)a3 menu:(id)a4
{
  v10 = a4;
  v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
  v7 = [v6 menu];
  v8 = WBSIsEqual();

  if ((v8 & 1) == 0)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
    [v9 setMenu:v10];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setBarItem:(int64_t)a3 title:(id)a4
{
  v11 = a4;
  if (v11)
  {
    v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
    v7 = [v6 title];
    v8 = [v7 isEqualToString:v11];

    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
      [v9 setAttributedTitle:0];

      v10 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
      [v10 setTitle:v11];

      [(_SFBarManager *)self _updateAllRegistrations];
    }
  }
}

- (void)setBarItem:(int64_t)a3 attributedTitle:(id)a4
{
  v11 = a4;
  if (v11)
  {
    v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
    v7 = [v6 attributedTitle];
    v8 = [v7 safari_isEqualToAttributedString:v11];

    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
      [v9 setTitle:0];

      v10 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
      [v10 setAttributedTitle:v11];

      [(_SFBarManager *)self _updateAllRegistrations];
    }
  }
}

- (void)setImage:(id)a3 forBarItem:(int64_t)a4
{
  v10 = a3;
  v6 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a4];
  v7 = [v6 image];
  v8 = WBSIsEqual();

  if ((v8 & 1) == 0)
  {
    v9 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a4];
    [v9 setImage:v10];

    [(_SFBarManager *)self _updateAllRegistrations];
  }
}

- (void)setDownloadsItemProgress:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_downloadsItemProgress = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
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
        if (objc_opt_respondsToSelector())
        {
          [v9 setProgress:11 forBarItem:a3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setCollaborationButton:(id)a3
{
  v5 = a3;
  if (self->_collaborationButton != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_collaborationButton, a3);
    [(_SFBarManager *)self _updateAllRegistrations];
    v5 = v6;
  }
}

- (void)setAllBarItemsAreDisabled:(BOOL)a3
{
  if (self->_allBarItemsAreDisabled != a3)
  {
    self->_allBarItemsAreDisabled = a3;
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
  v2 = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 pulseBarItem:11];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v7 UIBarButtonItemForItem:11];
          v9 = [v8 customView];
          [v9 setNeedsLayout];
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
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)performCoalescedUpdatesAnimated:(BOOL)a3 updates:(id)a4
{
  v6 = a4;
  if (CFAbsoluteTimeGetCurrent() - self->_lastCoalescedUpdatesTime < 0.2)
  {
    [(_SFBarManager *)self _invalidateCoalescedUpdatesTimer];
  }

  v7 = _Block_copy(v6);
  coalescedUpdatesBlock = self->_coalescedUpdatesBlock;
  self->_coalescedUpdatesBlock = v7;

  if (![(NSTimer *)self->_coalescedUpdatesTimer isValid])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___SFBarManager_performCoalescedUpdatesAnimated_updates___block_invoke;
    v12[3] = &unk_1E84966C8;
    v12[4] = self;
    v13 = a3;
    v9 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:0 repeats:v12 block:0.04];
    coalescedUpdatesTimer = self->_coalescedUpdatesTimer;
    self->_coalescedUpdatesTimer = v9;

    v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v11 addTimer:self->_coalescedUpdatesTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)performCoalescedUpdatesNowAnimated:(BOOL)a3
{
  v3 = a3;
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
      [(_SFBarManager *)self _updateAllRegistrationsAnimated:v3];
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

- (void)registerToolbar:(id)a3 withLayout:(int64_t)a4 persona:(int64_t)a5
{
  v8 = a3;
  v9 = [[SFBarRegistration alloc] initWithBar:v8 barManager:self layout:a4 persona:a5];
  [(_SFBarManager *)self registerBar:v8 withToken:v9];
}

- (void)registerBar:(id)a3 withLayout:(int64_t)a4 persona:(int64_t)a5
{
  v8 = a3;
  v9 = [[SFBarRegistration alloc] initWithBar:v8 barManager:self layout:a4 persona:a5];
  [(_SFBarManager *)self registerBar:v8 withToken:v9];
}

- (void)registerBar:(id)a3 withToken:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(_SFBarManager *)self _updateRegistrationWithToken:v6 animated:0];
  [(NSMapTable *)self->_barToRegistrationMap setObject:v6 forKey:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self willRegisterBarWithToken:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 didCompleteBarRegistrationWithToken:v6];
  }
}

- (void)registerUnifiedBar:(id)a3 withPersona:(int64_t)a4
{
  v6 = a3;
  v7 = [[SFUnifiedBarRegistration alloc] initWithBar:v6 barManager:self persona:a4];
  [(_SFBarManager *)self registerBar:v6 withToken:v7];
}

- (void)performWithRegistrationContainingItem:(int64_t)a3 block:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a4;
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
        v12 = [v11 window];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_barToRegistrationMap objectForKey:v11];
          if ([v13 containsBarItem:a3])
          {
            v16[2](v16, a3, v13, v11);
LABEL_18:

            goto LABEL_19;
          }

          if (objc_opt_respondsToSelector())
          {
            v14 = [v11 barItemTargetForAnimatingToBarItem:a3];
            v15 = v14;
            if (v14 && ([v13 containsBarItem:{objc_msgSend(v14, "integerValue")}] & 1) != 0)
            {
              v16[2](v16, [v15 integerValue], v13, v11);

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

- (CGRect)frameForBarItem:(int64_t)a3 inCoordinateSpace:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
  v39 = v6;
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
        v17 = [v16 UIBarButtonItemForItem:a3];
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
              v6 = v39;
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

        v17 = [v16 viewForBarItem:a3];
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
          v6 = v39;
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

  v6 = v39;
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

- (BOOL)anyBarIsSourceForPopover:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 sourceView];
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMapTable *)self->_barToRegistrationMap keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([v4 isDescendantOfView:*(*(&v10 + 1) + 8 * i)])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_updateAllRegistrationsAnimated:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_deferUpdateAllRegistrations)
  {
    self->_needsUpdateAllRegistrations = 1;
  }

  else
  {
    v4 = a3;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [(_SFBarManager *)self _updateRegistrationWithToken:*(*(&v10 + 1) + 8 * v9++) animated:v4];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_updateRegistrationWithToken:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v6 setContentMode:self->_contentMode];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 setState:self->_state];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 setCustomActivityImage:self->_customActivityImage accessibilityLabel:self->_customActivityAccessibilityLabel];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 setCollaborationButton:self->_collaborationButton];
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = self;
  v7 = v6;
  _SFBarItemEnumerateCases();
  [v7 updateBarAnimated:{v4, v8, 3221225472, __55___SFBarManager__updateRegistrationWithToken_animated___block_invoke, &unk_1E8493220, v9}];
}

- (id)menuForBarItem:(int64_t)a3
{
  v3 = [(NSArray *)self->_itemConfigurationMap objectAtIndexedSubscript:a3];
  v4 = [v3 menu];

  return v4;
}

- (unint64_t)test_numberOfRegistrations
{
  v2 = [(NSMapTable *)self->_barToRegistrationMap objectEnumerator];
  v3 = [v2 allObjects];
  v4 = [v3 count];

  return v4;
}

- (id)test_registrationForBar:(id)a3
{
  v3 = [(NSMapTable *)self->_barToRegistrationMap objectForKey:a3];
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

- (void)barRegistration:(id)a3 didReceiveTapForBarItem:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self didReceiveTapForBarItem:a4];
  }
}

- (BOOL)barRegistration:(id)a3 canHandleLongPressForBarItem:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained barManager:self canHandleLongPressForBarItem:a4];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  v8 = v7;

  return v8 & 1;
}

- (void)barRegistration:(id)a3 didReceiveLongPressForBarItem:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self didReceiveLongPressForBarItem:a4];
  }
}

- (void)barRegistration:(id)a3 didReceiveTouchDownForBarItem:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained barManager:self didReceiveTouchDownForBarItem:a4];
  }
}

@end