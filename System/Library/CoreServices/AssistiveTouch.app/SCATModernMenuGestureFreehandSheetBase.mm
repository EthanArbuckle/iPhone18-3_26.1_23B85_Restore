@interface SCATModernMenuGestureFreehandSheetBase
- (BOOL)isLandscape;
- (BOOL)shouldUpdateMenuItem:(id)item;
- (SCATModernMenuGestureFreehandSheetDelegate)delegate;
- (id)_imageNameForPrefix:(id)prefix;
- (id)_titleForLocalizableString:(id)string state:(BOOL)state;
- (id)autoPressLiftItems;
- (id)bendMenuItemWithPreferredNumberOfLines:(unint64_t)lines;
- (id)elementProvider;
- (id)moveMenuItemWithPreferredNumberOfLines:(unint64_t)lines;
- (id)moveToolbarMenuItem;
- (id)pathMenuItems;
- (id)rotateMenuItemWithPreferredNumberOfLines:(unint64_t)lines;
- (id)touchToggleMenuItemWithPreferredNumberOfLines:(unint64_t)lines;
- (void)didChangeOrientation;
- (void)menuItem:(id)item didBecomeFocused:(BOOL)focused;
- (void)menuItemWasActivated:(id)activated;
- (void)pushFreehandSheetOfClass:(Class)class;
- (void)setMenuItems:(id)items;
@end

@implementation SCATModernMenuGestureFreehandSheetBase

- (id)pathMenuItems
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v4 = [(SCATModernMenuGestureFreehandSheetBase *)self moveMenuItemWithPreferredNumberOfLines:1];
  [v3 addObject:v4];

  v5 = [(SCATModernMenuGestureFreehandSheetBase *)self rotateMenuItemWithPreferredNumberOfLines:1];
  [v3 addObject:v5];

  v6 = [(SCATModernMenuGestureFreehandSheetBase *)self bendMenuItemWithPreferredNumberOfLines:1];
  [v3 addObject:v6];

  return v3;
}

- (id)moveMenuItemWithPreferredNumberOfLines:(unint64_t)lines
{
  if (lines == 2)
  {
    v5 = @"FREEHAND_MOVE_TWO_LINES";
  }

  else
  {
    v5 = @"FREEHAND_MOVE_ONE_LINE";
  }

  v6 = sub_100042B24(v5);
  v7 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_move" delegate:self title:v6 imagePrefixForTouchDependentGlyph:@"move" shouldRotate:1 activateBehavior:2];
  [v7 setPreferredNumberOfTitleLines:lines];

  return v7;
}

- (id)rotateMenuItemWithPreferredNumberOfLines:(unint64_t)lines
{
  if (lines == 2)
  {
    v5 = @"FREEHAND_ROTATE_TWO_LINES";
  }

  else
  {
    v5 = @"FREEHAND_ROTATE_ONE_LINE";
  }

  v6 = sub_100042B24(v5);
  v7 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate" delegate:self title:v6 imagePrefixForTouchDependentGlyph:@"rotate" shouldRotate:1 activateBehavior:2];
  [v7 setPreferredNumberOfTitleLines:lines];

  return v7;
}

- (id)bendMenuItemWithPreferredNumberOfLines:(unint64_t)lines
{
  if (lines == 2)
  {
    v5 = @"FREEHAND_BEND_TWO_LINES";
  }

  else
  {
    v5 = @"FREEHAND_BEND_ONE_LINE";
  }

  v6 = sub_100042B24(v5);
  v7 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_bend" delegate:self title:v6 imagePrefixForTouchDependentGlyph:@"bend" shouldRotate:1 activateBehavior:2];
  [v7 setPreferredNumberOfTitleLines:lines];

  return v7;
}

- (id)touchToggleMenuItemWithPreferredNumberOfLines:(unint64_t)lines
{
  v4 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_touch_toggle" delegate:self title:0 activateBehavior:3];
  [v4 setPreferredNumberOfTitleLines:lines];

  return v4;
}

- (id)moveToolbarMenuItem
{
  v3 = sub_100042B24(@"FREEHAND_MOVE_MENU");
  v4 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_move_menu" delegate:self title:v3 activateBehavior:3];

  return v4;
}

- (id)autoPressLiftItems
{
  v3 = [NSMutableArray arrayWithCapacity:2];
  v4 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_auto_press_toggle" delegate:self title:0 activateBehavior:3];
  [v3 addObject:v4];

  v5 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_auto_lift_toggle" delegate:self title:0 activateBehavior:3];
  [v3 addObject:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) updateItem];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)pushFreehandSheetOfClass:(Class)class
{
  v4 = [class alloc];
  menu = [(SCATModernMenuSheet *)self menu];
  v8 = [v4 initWithMenu:menu];

  delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
  [v8 setDelegate:delegate];

  menu2 = [(SCATModernMenuSheet *)self menu];
  [menu2 pushSheet:v8];
}

- (BOOL)isLandscape
{
  v2 = +[SCATScannerManager sharedManager];
  isLandscape = [v2 isLandscape];

  return isLandscape;
}

- (id)_imageNameForPrefix:(id)prefix
{
  prefixCopy = prefix;
  delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
  LODWORD(self) = [delegate isTouchOnForFreehandSheet:self];

  if (self)
  {
    v6 = @"SCATIcon_freehand_%@TouchOn";
  }

  else
  {
    v6 = @"SCATIcon_freehand_%@TouchOff";
  }

  prefixCopy = [NSString stringWithFormat:v6, prefixCopy];

  return prefixCopy;
}

- (id)_titleForLocalizableString:(id)string state:(BOOL)state
{
  stateCopy = state;
  v5 = sub_100042B24(string);
  if (stateCopy)
  {
    v6 = @"FREEHAND_ON";
  }

  else
  {
    v6 = @"FREEHAND_OFF";
  }

  v7 = sub_100042B24(v6);
  v8 = [NSString stringWithFormat:v5, v7];

  return v8;
}

- (BOOL)shouldUpdateMenuItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  if ([identifier isEqualToString:@"freehand_touch_toggle"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    v7 = [delegate isTouchOnForFreehandSheet:self];

    if ([itemCopy preferredNumberOfTitleLines] == 2)
    {
      v8 = @"FREEHAND_TOUCH_STATE_TWO_LINES";
    }

    else
    {
      v8 = @"FREEHAND_TOUCH_STATE_ONE_LINE";
    }

    v9 = [(SCATModernMenuGestureFreehandSheetBase *)self _titleForLocalizableString:v8 state:v7];
    [itemCopy setTitle:v9];

    v10 = @"SCATIcon_freehand_touchOff";
    v11 = @"SCATIcon_freehand_touchOn";
    goto LABEL_10;
  }

  if ([identifier isEqualToString:@"freehand_auto_press_toggle"])
  {
    delegate2 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    v7 = [delegate2 isAutoPressOnForFreehandSheet:self];

    v13 = [(SCATModernMenuGestureFreehandSheetBase *)self _titleForLocalizableString:@"FREEHAND_AUTO_PRESS_STATE" state:v7];
    [itemCopy setTitle:v13];

    v10 = @"SCATIcon_freehand_autoPressOff";
    v11 = @"SCATIcon_freehand_autoPressOn";
LABEL_10:
    if (v7)
    {
      v16 = v11;
    }

    else
    {
      v16 = v10;
    }

    [itemCopy setImageName:v16];
LABEL_14:
    v17 = 1;
    goto LABEL_15;
  }

  if ([identifier isEqualToString:@"freehand_auto_lift_toggle"])
  {
    delegate3 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    v7 = [delegate3 isAutoLiftOnForFreehandSheet:self];

    v15 = [(SCATModernMenuGestureFreehandSheetBase *)self _titleForLocalizableString:@"FREEHAND_AUTO_LIFT_STATE" state:v7];
    [itemCopy setTitle:v15];

    v10 = @"SCATIcon_freehand_autoLiftOff";
    v11 = @"SCATIcon_freehand_autoLiftOn";
    goto LABEL_10;
  }

  if ([identifier isEqualToString:@"freehand_move_menu"])
  {
    menu = [(SCATModernMenuSheet *)self menu];
    if ([menu dockPosition] == 1)
    {
      v20 = @"SCATIcon_freehand_menuBottom";
    }

    else
    {
      v20 = @"SCATIcon_freehand_menuTop";
    }

    [itemCopy setImageName:v20];

    goto LABEL_14;
  }

  imagePrefixForTouchDependentGlyph = [itemCopy imagePrefixForTouchDependentGlyph];
  v17 = imagePrefixForTouchDependentGlyph != 0;
  if (imagePrefixForTouchDependentGlyph)
  {
    v22 = [(SCATModernMenuGestureFreehandSheetBase *)self _imageNameForPrefix:imagePrefixForTouchDependentGlyph];
    [itemCopy setImageName:v22];
  }

  if ([itemCopy shouldRotate])
  {
    delegate4 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate4 angleForFreehandSheet:self];
    v25 = v24;

    [itemCopy setIconImageAngle:v25 + 1.57079633];
    v17 = 1;
  }

LABEL_15:
  return v17;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"freehand_move"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate moveForFreehandSheet:self];
LABEL_24:

    goto LABEL_25;
  }

  if ([identifier isEqualToString:@"freehand_rotate"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate rotateForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([identifier isEqualToString:@"freehand_bend"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate bendForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([identifier isEqualToString:@"freehand_touch_toggle"])
  {
    delegate2 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate2 toggleTouchForFreehandSheet:self];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    delegate = [(SCATModernMenuSheet *)self menuItems];
    v8 = [delegate countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(delegate);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (v12 != activatedCopy)
          {
            [v12 updateItem];
          }
        }

        v9 = [delegate countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    goto LABEL_24;
  }

  if ([identifier isEqualToString:@"freehand_auto_press_toggle"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate autoPressToggledForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([identifier isEqualToString:@"freehand_auto_lift_toggle"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate autoLiftToggledForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([identifier isEqualToString:@"freehand_move_menu"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate moveToolbarForFreehandSheet:self];
    goto LABEL_24;
  }

  v14.receiver = self;
  v14.super_class = SCATModernMenuGestureFreehandSheetBase;
  [(SCATModernMenuSheet *)&v14 menuItemWasActivated:activatedCopy];
LABEL_25:
  if ([(SCATModernMenuSheet *)self isBackItemIdentifier:identifier])
  {
    delegate3 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate3 didPopFreehandSheet:self];
  }
}

- (void)menuItem:(id)item didBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  identifier = [item identifier];
  if ([identifier isEqualToString:@"freehand_move"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightMove:focusedCopy];
  }

  else if ([identifier isEqualToString:@"freehand_rotate"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightRotate:focusedCopy];
  }

  else
  {
    if (![identifier isEqualToString:@"freehand_bend"])
    {
      goto LABEL_8;
    }

    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightBend:focusedCopy];
  }

LABEL_8:
}

- (void)setMenuItems:(id)items
{
  itemsCopy = items;
  menuItems = [(SCATModernMenuSheet *)self menuItems];
  v15.receiver = self;
  v15.super_class = SCATModernMenuGestureFreehandSheetBase;
  [(SCATModernMenuSheet *)&v15 setMenuItems:itemsCopy];
  if (menuItems != itemsCopy)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = menuItems;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) setDelegate:{0, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (id)elementProvider
{
  v3 = [NSMutableArray arrayWithCapacity:4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  menuItems = [(SCATModernMenuSheet *)self menuItems];
  v5 = [menuItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(menuItems);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isDisabled] & 1) == 0)
        {
          scatElement = [v9 scatElement];
          [v3 axSafelyAddObject:scatElement];
        }
      }

      v6 = [menuItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [[SCATStaticElementProvider alloc] initWithElements:v3];

  return v11;
}

- (void)didChangeOrientation
{
  v2.receiver = self;
  v2.super_class = SCATModernMenuGestureFreehandSheetBase;
  [(SCATModernMenuSheet *)&v2 didChangeOrientation];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (SCATModernMenuGestureFreehandSheetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end