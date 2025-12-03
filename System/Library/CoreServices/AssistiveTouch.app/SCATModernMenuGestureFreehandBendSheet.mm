@interface SCATModernMenuGestureFreehandBendSheet
- (BOOL)shouldUpdateMenuItem:(id)item;
- (id)makeMenuItemsIfNeeded;
- (id)menuItemStruts;
- (void)menuItem:(id)item didBecomeFocused:(BOOL)focused;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuGestureFreehandBendSheet

- (id)makeMenuItemsIfNeeded
{
  IsPad = AXDeviceIsPad();
  v4 = [NSMutableArray arrayWithCapacity:3];
  if (IsPad)
  {
    v5 = @"FREEHAND_BEND_RIGHT_TWO_LINES";
  }

  else
  {
    v5 = @"FREEHAND_BEND_RIGHT_ONE_LINE";
  }

  if (IsPad)
  {
    v6 = @"FREEHAND_BEND_LEFT_TWO_LINES";
  }

  else
  {
    v6 = @"FREEHAND_BEND_LEFT_ONE_LINE";
  }

  v7 = sub_100042B24(v5);
  v8 = sub_100042B24(v6);
  v9 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_bendRight" delegate:self title:v7 imagePrefixForTouchDependentGlyph:@"bendRight" shouldRotate:1 activateBehavior:2];
  [v4 addObject:v9];

  v10 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_bendLeft" delegate:self title:v8 imagePrefixForTouchDependentGlyph:@"bendLeft" shouldRotate:1 activateBehavior:2];
  [v4 addObject:v10];

  v11 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_straighten" delegate:self title:0 imagePrefixForTouchDependentGlyph:0 shouldRotate:1 activateBehavior:3];
  [v4 addObject:v11];

  if (IsPad)
  {
    v12 = [(SCATModernMenuGestureFreehandSheetBase *)self moveMenuItemWithPreferredNumberOfLines:1];
    [v4 addObject:v12];

    v13 = [(SCATModernMenuGestureFreehandSheetBase *)self touchToggleMenuItemWithPreferredNumberOfLines:1];
    [v4 addObject:v13];

    moveToolbarMenuItem = [(SCATModernMenuGestureFreehandSheetBase *)self moveToolbarMenuItem];
  }

  else
  {
    if (![(SCATModernMenuGestureFreehandSheetBase *)self isLandscape])
    {
      goto LABEL_12;
    }

    v15 = [(SCATModernMenuGestureFreehandSheetBase *)self moveMenuItemWithPreferredNumberOfLines:1];
    [v4 addObject:v15];

    moveToolbarMenuItem = [(SCATModernMenuGestureFreehandSheetBase *)self touchToggleMenuItemWithPreferredNumberOfLines:1];
  }

  v16 = moveToolbarMenuItem;
  [v4 addObject:moveToolbarMenuItem];

LABEL_12:

  return v4;
}

- (BOOL)shouldUpdateMenuItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = [identifier isEqualToString:@"freehand_straighten"];

  if (v6)
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate curvatureForFreehandSheet:self];
    v9 = v8;

    IsPad = AXDeviceIsPad();
    if (v9 == 0.0)
    {
      if (IsPad)
      {
        v11 = @"FREEHAND_STRAIGHT_TWO_LINES";
      }

      else
      {
        v11 = @"FREEHAND_STRAIGHT_ONE_LINE";
      }

      v12 = sub_100042B24(v11);
      v13 = @"straight";
    }

    else
    {
      if (IsPad)
      {
        v14 = @"FREEHAND_STRAIGHTEN_TWO_LINES";
      }

      else
      {
        v14 = @"FREEHAND_STRAIGHTEN_ONE_LINE";
      }

      v12 = sub_100042B24(v14);
      v15 = @"straightenFromLeft";
      if (v9 > 0.0)
      {
        v15 = @"straightenFromRight";
      }

      v13 = v15;
    }

    [itemCopy setTitle:v12];
    [itemCopy setImagePrefixForTouchDependentGlyph:v13];
    [itemCopy setDisabled:v9 == 0.0];
  }

  v18.receiver = self;
  v18.super_class = SCATModernMenuGestureFreehandBendSheet;
  v16 = [(SCATModernMenuGestureFreehandSheetBase *)&v18 shouldUpdateMenuItem:itemCopy];

  return v16;
}

- (void)menuItem:(id)item didBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  itemCopy = item;
  identifier = [itemCopy identifier];
  if ([identifier isEqualToString:@"freehand_bendRight"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightBendRight:focusedCopy];
  }

  else if ([identifier isEqualToString:@"freehand_bendLeft"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightBendLeft:focusedCopy];
  }

  else
  {
    if (![identifier isEqualToString:@"freehand_straighten"])
    {
      v9.receiver = self;
      v9.super_class = SCATModernMenuGestureFreehandBendSheet;
      [(SCATModernMenuGestureFreehandSheetBase *)&v9 menuItem:itemCopy didBecomeFocused:focusedCopy];
      goto LABEL_8;
    }

    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightStraighten:focusedCopy];
  }

LABEL_8:
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"freehand_bendRight"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate bendRightForFreehandSheet:self];
  }

  else if ([identifier isEqualToString:@"freehand_bendLeft"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate bendLeftForFreehandSheet:self];
  }

  else
  {
    if (![identifier isEqualToString:@"freehand_straighten"])
    {
      v7.receiver = self;
      v7.super_class = SCATModernMenuGestureFreehandBendSheet;
      [(SCATModernMenuGestureFreehandSheetBase *)&v7 menuItemWasActivated:activatedCopy];
      goto LABEL_8;
    }

    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate straightenForFreehandSheet:self];
  }

LABEL_8:
}

- (id)menuItemStruts
{
  if (!AXDeviceIsPad())
  {
    return 0;
  }

  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4;

  if ([(SCATModernMenuGestureFreehandSheetBase *)self isLandscape])
  {
    v6 = &off_1001E4DA0;
    v7 = &off_1001E4D88;
  }

  else
  {
    v6 = &off_1001E4DD0;
    v7 = &off_1001E4DB8;
  }

  if (v5 == 1.0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

@end