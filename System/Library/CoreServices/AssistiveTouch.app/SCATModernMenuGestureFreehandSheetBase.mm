@interface SCATModernMenuGestureFreehandSheetBase
- (BOOL)isLandscape;
- (BOOL)shouldUpdateMenuItem:(id)a3;
- (SCATModernMenuGestureFreehandSheetDelegate)delegate;
- (id)_imageNameForPrefix:(id)a3;
- (id)_titleForLocalizableString:(id)a3 state:(BOOL)a4;
- (id)autoPressLiftItems;
- (id)bendMenuItemWithPreferredNumberOfLines:(unint64_t)a3;
- (id)elementProvider;
- (id)moveMenuItemWithPreferredNumberOfLines:(unint64_t)a3;
- (id)moveToolbarMenuItem;
- (id)pathMenuItems;
- (id)rotateMenuItemWithPreferredNumberOfLines:(unint64_t)a3;
- (id)touchToggleMenuItemWithPreferredNumberOfLines:(unint64_t)a3;
- (void)didChangeOrientation;
- (void)menuItem:(id)a3 didBecomeFocused:(BOOL)a4;
- (void)menuItemWasActivated:(id)a3;
- (void)pushFreehandSheetOfClass:(Class)a3;
- (void)setMenuItems:(id)a3;
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

- (id)moveMenuItemWithPreferredNumberOfLines:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"FREEHAND_MOVE_TWO_LINES";
  }

  else
  {
    v5 = @"FREEHAND_MOVE_ONE_LINE";
  }

  v6 = sub_100042B24(v5);
  v7 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_move" delegate:self title:v6 imagePrefixForTouchDependentGlyph:@"move" shouldRotate:1 activateBehavior:2];
  [v7 setPreferredNumberOfTitleLines:a3];

  return v7;
}

- (id)rotateMenuItemWithPreferredNumberOfLines:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"FREEHAND_ROTATE_TWO_LINES";
  }

  else
  {
    v5 = @"FREEHAND_ROTATE_ONE_LINE";
  }

  v6 = sub_100042B24(v5);
  v7 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate" delegate:self title:v6 imagePrefixForTouchDependentGlyph:@"rotate" shouldRotate:1 activateBehavior:2];
  [v7 setPreferredNumberOfTitleLines:a3];

  return v7;
}

- (id)bendMenuItemWithPreferredNumberOfLines:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"FREEHAND_BEND_TWO_LINES";
  }

  else
  {
    v5 = @"FREEHAND_BEND_ONE_LINE";
  }

  v6 = sub_100042B24(v5);
  v7 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_bend" delegate:self title:v6 imagePrefixForTouchDependentGlyph:@"bend" shouldRotate:1 activateBehavior:2];
  [v7 setPreferredNumberOfTitleLines:a3];

  return v7;
}

- (id)touchToggleMenuItemWithPreferredNumberOfLines:(unint64_t)a3
{
  v4 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_touch_toggle" delegate:self title:0 activateBehavior:3];
  [v4 setPreferredNumberOfTitleLines:a3];

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

- (void)pushFreehandSheetOfClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [(SCATModernMenuSheet *)self menu];
  v8 = [v4 initWithMenu:v5];

  v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
  [v8 setDelegate:v6];

  v7 = [(SCATModernMenuSheet *)self menu];
  [v7 pushSheet:v8];
}

- (BOOL)isLandscape
{
  v2 = +[SCATScannerManager sharedManager];
  v3 = [v2 isLandscape];

  return v3;
}

- (id)_imageNameForPrefix:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
  LODWORD(self) = [v5 isTouchOnForFreehandSheet:self];

  if (self)
  {
    v6 = @"SCATIcon_freehand_%@TouchOn";
  }

  else
  {
    v6 = @"SCATIcon_freehand_%@TouchOff";
  }

  v7 = [NSString stringWithFormat:v6, v4];

  return v7;
}

- (id)_titleForLocalizableString:(id)a3 state:(BOOL)a4
{
  v4 = a4;
  v5 = sub_100042B24(a3);
  if (v4)
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

- (BOOL)shouldUpdateMenuItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"freehand_touch_toggle"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    v7 = [v6 isTouchOnForFreehandSheet:self];

    if ([v4 preferredNumberOfTitleLines] == 2)
    {
      v8 = @"FREEHAND_TOUCH_STATE_TWO_LINES";
    }

    else
    {
      v8 = @"FREEHAND_TOUCH_STATE_ONE_LINE";
    }

    v9 = [(SCATModernMenuGestureFreehandSheetBase *)self _titleForLocalizableString:v8 state:v7];
    [v4 setTitle:v9];

    v10 = @"SCATIcon_freehand_touchOff";
    v11 = @"SCATIcon_freehand_touchOn";
    goto LABEL_10;
  }

  if ([v5 isEqualToString:@"freehand_auto_press_toggle"])
  {
    v12 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    v7 = [v12 isAutoPressOnForFreehandSheet:self];

    v13 = [(SCATModernMenuGestureFreehandSheetBase *)self _titleForLocalizableString:@"FREEHAND_AUTO_PRESS_STATE" state:v7];
    [v4 setTitle:v13];

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

    [v4 setImageName:v16];
LABEL_14:
    v17 = 1;
    goto LABEL_15;
  }

  if ([v5 isEqualToString:@"freehand_auto_lift_toggle"])
  {
    v14 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    v7 = [v14 isAutoLiftOnForFreehandSheet:self];

    v15 = [(SCATModernMenuGestureFreehandSheetBase *)self _titleForLocalizableString:@"FREEHAND_AUTO_LIFT_STATE" state:v7];
    [v4 setTitle:v15];

    v10 = @"SCATIcon_freehand_autoLiftOff";
    v11 = @"SCATIcon_freehand_autoLiftOn";
    goto LABEL_10;
  }

  if ([v5 isEqualToString:@"freehand_move_menu"])
  {
    v19 = [(SCATModernMenuSheet *)self menu];
    if ([v19 dockPosition] == 1)
    {
      v20 = @"SCATIcon_freehand_menuBottom";
    }

    else
    {
      v20 = @"SCATIcon_freehand_menuTop";
    }

    [v4 setImageName:v20];

    goto LABEL_14;
  }

  v21 = [v4 imagePrefixForTouchDependentGlyph];
  v17 = v21 != 0;
  if (v21)
  {
    v22 = [(SCATModernMenuGestureFreehandSheetBase *)self _imageNameForPrefix:v21];
    [v4 setImageName:v22];
  }

  if ([v4 shouldRotate])
  {
    v23 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v23 angleForFreehandSheet:self];
    v25 = v24;

    [v4 setIconImageAngle:v25 + 1.57079633];
    v17 = 1;
  }

LABEL_15:
  return v17;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"freehand_move"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 moveForFreehandSheet:self];
LABEL_24:

    goto LABEL_25;
  }

  if ([v5 isEqualToString:@"freehand_rotate"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 rotateForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([v5 isEqualToString:@"freehand_bend"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 bendForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([v5 isEqualToString:@"freehand_touch_toggle"])
  {
    v7 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v7 toggleTouchForFreehandSheet:self];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(SCATModernMenuSheet *)self menuItems];
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (v12 != v4)
          {
            [v12 updateItem];
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    goto LABEL_24;
  }

  if ([v5 isEqualToString:@"freehand_auto_press_toggle"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 autoPressToggledForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([v5 isEqualToString:@"freehand_auto_lift_toggle"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 autoLiftToggledForFreehandSheet:self];
    goto LABEL_24;
  }

  if ([v5 isEqualToString:@"freehand_move_menu"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 moveToolbarForFreehandSheet:self];
    goto LABEL_24;
  }

  v14.receiver = self;
  v14.super_class = SCATModernMenuGestureFreehandSheetBase;
  [(SCATModernMenuSheet *)&v14 menuItemWasActivated:v4];
LABEL_25:
  if ([(SCATModernMenuSheet *)self isBackItemIdentifier:v5])
  {
    v13 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v13 didPopFreehandSheet:self];
  }
}

- (void)menuItem:(id)a3 didBecomeFocused:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 identifier];
  if ([v7 isEqualToString:@"freehand_move"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 freehandSheet:self didHighlightMove:v4];
  }

  else if ([v7 isEqualToString:@"freehand_rotate"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 freehandSheet:self didHighlightRotate:v4];
  }

  else
  {
    if (![v7 isEqualToString:@"freehand_bend"])
    {
      goto LABEL_8;
    }

    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 freehandSheet:self didHighlightBend:v4];
  }

LABEL_8:
}

- (void)setMenuItems:(id)a3
{
  v4 = a3;
  v5 = [(SCATModernMenuSheet *)self menuItems];
  v15.receiver = self;
  v15.super_class = SCATModernMenuGestureFreehandSheetBase;
  [(SCATModernMenuSheet *)&v15 setMenuItems:v4];
  if (v5 != v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
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
  v4 = [(SCATModernMenuSheet *)self menuItems];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isDisabled] & 1) == 0)
        {
          v10 = [v9 scatElement];
          [v3 axSafelyAddObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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