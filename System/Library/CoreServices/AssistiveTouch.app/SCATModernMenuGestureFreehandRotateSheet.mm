@interface SCATModernMenuGestureFreehandRotateSheet
- (BOOL)shouldUpdateMenuItem:(id)item;
- (id)elementProvider;
- (id)makeMenuItemsIfNeeded;
- (id)menuItemStruts;
- (void)didActivateMultipleMenuItemsElement:(id)element;
- (void)menuItem:(id)item didBecomeFocused:(BOOL)focused;
- (void)menuItemWasActivated:(id)activated;
- (void)multipleMenuItemsElement:(id)element didBecomeHighlighted:(BOOL)highlighted;
@end

@implementation SCATModernMenuGestureFreehandRotateSheet

- (id)makeMenuItemsIfNeeded
{
  providerElements = self->_providerElements;
  self->_providerElements = 0;

  IsPad = AXDeviceIsPad();
  v5 = IsPad == 0;
  if (IsPad)
  {
    v6 = @"FREEHAND_ROTATE_CCW_TWO_LINES";
  }

  else
  {
    v6 = @"FREEHAND_ROTATE_CCW_ONE_LINE";
  }

  if (v5)
  {
    v7 = @"FREEHAND_ROTATE_CW_ONE_LINE";
  }

  else
  {
    v7 = @"FREEHAND_ROTATE_CW_TWO_LINES";
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_100042B24(v6);
  v10 = sub_100042B24(v7);
  v11 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate_ccw" delegate:self title:v9 imagePrefixForTouchDependentGlyph:@"rotateCCW" shouldRotate:1 activateBehavior:2];
  [(SCATModernMenuGestureFreehandRotateSheet *)self setRotateCCWItem:v11];

  v12 = sub_100042B24(@"FREEHAND_ROTATE_CCW_SPOKEN");
  rotateCCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
  [rotateCCWItem setAccessibilityLabel:v12];

  rotateCCWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
  [rotateCCWItem2 setPreferredNumberOfTitleLines:v8];

  v15 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate_cw" delegate:self title:v10 imagePrefixForTouchDependentGlyph:@"rotateCW" shouldRotate:1 activateBehavior:2];
  [(SCATModernMenuGestureFreehandRotateSheet *)self setRotateCWItem:v15];

  v16 = sub_100042B24(@"FREEHAND_ROTATE_CW_SPOKEN");
  rotateCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
  [rotateCWItem setAccessibilityLabel:v16];

  rotateCWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
  [rotateCWItem2 setPreferredNumberOfTitleLines:v8];

  if (AXDeviceIsPad())
  {
    v19 = sub_100042B24(@"FREEHAND_ROTATE_90_CCW");
    v20 = AXFormatInteger();
    v21 = [NSString stringWithFormat:v19, v20];

    v22 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate_90_ccw" delegate:self title:v21 imagePrefixForTouchDependentGlyph:@"rotateCCW90" shouldRotate:1 activateBehavior:3];
    [(SCATModernMenuGestureFreehandRotateSheet *)self setRotate90CCWItem:v22];

    v23 = sub_100042B24(@"FREEHAND_ROTATE_90_CCW_SPOKEN");
    v24 = AXFormatInteger();
    v25 = [NSString stringWithFormat:v23, v24];

    rotate90CCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CCWItem];
    [rotate90CCWItem setAccessibilityLabel:v25];

    v27 = sub_100042B24(@"FREEHAND_ROTATE_90_CW");
    v28 = AXFormatInteger();
    v29 = [NSString stringWithFormat:v27, v28];

    v30 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate_90_cw" delegate:self title:v29 imagePrefixForTouchDependentGlyph:@"rotateCW90" shouldRotate:1 activateBehavior:3];
    [(SCATModernMenuGestureFreehandRotateSheet *)self setRotate90CWItem:v30];

    v31 = sub_100042B24(@"FREEHAND_ROTATE_90_CW_SPOKEN");
    v32 = AXFormatInteger();
    v33 = [NSString stringWithFormat:v31, v32];

    rotate90CWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CWItem];
    [rotate90CWItem setAccessibilityLabel:v33];
  }

  else
  {
    v35 = sub_100042B24(@"FREEHAND_ROTATE_90");
    v36 = AXFormatInteger();
    v33 = [NSString stringWithFormat:v35, v36];

    rotate90CWItem = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_90Degrees" delegate:self title:v33 activateBehavior:3];
    [(SCATModernMenuGestureFreehandRotateSheet *)self setRotate90Item:rotate90CWItem];
  }

  v37 = +[NSMutableArray array];
  if (AXDeviceIsPad())
  {
    rotateCWItem3 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [v37 addObject:rotateCWItem3];

    rotate90CWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CWItem];
    [v37 addObject:rotate90CWItem2];

    rotateCCWItem3 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [v37 addObject:rotateCCWItem3];

    rotate90CCWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CCWItem];
    [v37 addObject:rotate90CCWItem2];

    v42 = [(SCATModernMenuGestureFreehandSheetBase *)self moveMenuItemWithPreferredNumberOfLines:2];
    [v37 addObject:v42];

    v43 = [(SCATModernMenuGestureFreehandSheetBase *)self touchToggleMenuItemWithPreferredNumberOfLines:2];
    [v37 addObject:v43];

    moveToolbarMenuItem = [(SCATModernMenuGestureFreehandSheetBase *)self moveToolbarMenuItem];
  }

  else
  {
    rotateCCWItem4 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [v37 addObject:rotateCCWItem4];

    rotateCWItem4 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [v37 addObject:rotateCWItem4];

    rotate90Item = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90Item];
    [v37 addObject:rotate90Item];

    if (![(SCATModernMenuGestureFreehandSheetBase *)self isLandscape])
    {
      goto LABEL_18;
    }

    v48 = [(SCATModernMenuGestureFreehandSheetBase *)self moveMenuItemWithPreferredNumberOfLines:1];
    [v37 addObject:v48];

    moveToolbarMenuItem = [(SCATModernMenuGestureFreehandSheetBase *)self touchToggleMenuItemWithPreferredNumberOfLines:1];
  }

  v49 = moveToolbarMenuItem;
  [v37 addObject:moveToolbarMenuItem];

LABEL_18:

  return v37;
}

- (id)elementProvider
{
  if (AXDeviceIsPad())
  {
    v31.receiver = self;
    v31.super_class = SCATModernMenuGestureFreehandRotateSheet;
    elementProvider = [(SCATModernMenuGestureFreehandSheetBase *)&v31 elementProvider];
    goto LABEL_20;
  }

  providerElements = self->_providerElements;
  if (!providerElements)
  {
    v5 = [NSMutableArray arrayWithCapacity:4];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(SCATModernMenuSheet *)self menuItems];
    v6 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = v6;
    v8 = *v28;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        rotate90Item = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90Item];

        if (v10 != rotate90Item)
        {
          scatElement = [v10 scatElement];
          [(NSArray *)v5 axSafelyAddObject:scatElement];

          rotateCCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];

          if (v10 == rotateCCWItem)
          {
            v15 = objc_alloc_init(SCATMultipleMenuItemsElement);
            [(SCATMultipleMenuItemsElement *)v15 setIdentifier:@"freehand_rotate_90_ccw"];
            [(SCATMultipleMenuItemsElement *)v15 setDelegate:self];
            rotateCCWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
            v33 = rotateCCWItem2;
            v17 = &v33;
            v18 = @"FREEHAND_ROTATE_90_CCW_SPOKEN";
          }

          else
          {
            rotateCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];

            if (v10 != rotateCWItem)
            {
              continue;
            }

            v15 = objc_alloc_init(SCATMultipleMenuItemsElement);
            [(SCATMultipleMenuItemsElement *)v15 setIdentifier:@"freehand_rotate_90_cw"];
            [(SCATMultipleMenuItemsElement *)v15 setDelegate:self];
            rotateCCWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
            v32 = rotateCCWItem2;
            v17 = &v32;
            v18 = @"FREEHAND_ROTATE_90_CW_SPOKEN";
          }

          rotate90Item2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90Item];
          v17[1] = rotate90Item2;
          v20 = [NSArray arrayWithObjects:v17 count:2];
          [(SCATMultipleMenuItemsElement *)v15 setMenuItems:v20];

          v21 = sub_100042B24(v18);
          v22 = AXFormatInteger();
          v23 = [NSString stringWithFormat:v21, v22];

          [(SCATMultipleMenuItemsElement *)v15 setAccessibilityLabel:v23];
          [(NSArray *)v5 addObject:v15];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (!v7)
      {
LABEL_17:

        v24 = self->_providerElements;
        self->_providerElements = v5;

        providerElements = self->_providerElements;
        break;
      }
    }
  }

  elementProvider = [(NSArray *)providerElements count];
  if (elementProvider)
  {
    elementProvider = [[SCATStaticElementProvider alloc] initWithElements:self->_providerElements];
  }

LABEL_20:

  return elementProvider;
}

- (void)menuItem:(id)item didBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  itemCopy = item;
  identifier = [itemCopy identifier];
  if ([identifier isEqualToString:@"freehand_rotate_ccw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightRotateCCW:focusedCopy];
  }

  else if ([identifier isEqualToString:@"freehand_rotate_cw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightRotateCW:focusedCopy];
  }

  else if ([identifier isEqualToString:@"freehand_rotate_90_ccw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightRotateCCW90:focusedCopy];
  }

  else
  {
    if (![identifier isEqualToString:@"freehand_rotate_90_cw"])
    {
      v9.receiver = self;
      v9.super_class = SCATModernMenuGestureFreehandRotateSheet;
      [(SCATModernMenuGestureFreehandSheetBase *)&v9 menuItem:itemCopy didBecomeFocused:focusedCopy];
      goto LABEL_10;
    }

    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightRotateCW90:focusedCopy];
  }

LABEL_10:
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier isEqualToString:@"freehand_rotate_ccw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate rotateCounterclockwiseForFreehandSheet:self];
LABEL_5:

    goto LABEL_6;
  }

  if ([identifier isEqualToString:@"freehand_rotate_cw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate rotateClockwiseForFreehandSheet:self];
    goto LABEL_5;
  }

  if ([identifier isEqualToString:@"freehand_rotate_90_ccw"])
  {
    delegate2 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate2 rotate90CounterclockwiseForFreehandSheet:self];

    rotateCCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [rotateCCWItem updateItem];

    rotateCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [rotateCWItem updateItem];

    rotate90CWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CWItem];
  }

  else
  {
    if (![identifier isEqualToString:@"freehand_rotate_90_cw"])
    {
      v15.receiver = self;
      v15.super_class = SCATModernMenuGestureFreehandRotateSheet;
      [(SCATModernMenuGestureFreehandSheetBase *)&v15 menuItemWasActivated:activatedCopy];
      goto LABEL_6;
    }

    delegate3 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate3 rotate90ClockwiseForFreehandSheet:self];

    rotateCCWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [rotateCCWItem2 updateItem];

    rotateCWItem2 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [rotateCWItem2 updateItem];

    rotate90CWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CCWItem];
  }

  v14 = rotate90CWItem;
  [rotate90CWItem updateItem];

LABEL_6:
}

- (void)multipleMenuItemsElement:(id)element didBecomeHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  elementCopy = element;
  identifier = [elementCopy identifier];
  if ([identifier isEqualToString:@"freehand_rotate_90_ccw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightRotateCCW90:highlightedCopy];
LABEL_5:

    goto LABEL_7;
  }

  if ([identifier isEqualToString:@"freehand_rotate_90_cw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate freehandSheet:self didHighlightRotateCW90:highlightedCopy];
    goto LABEL_5;
  }

  _AXAssert();
LABEL_7:
}

- (void)didActivateMultipleMenuItemsElement:(id)element
{
  elementCopy = element;
  identifier = [elementCopy identifier];
  if ([identifier isEqualToString:@"freehand_rotate_90_ccw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate rotate90CounterclockwiseForFreehandSheet:self];
LABEL_5:

    goto LABEL_7;
  }

  if ([identifier isEqualToString:@"freehand_rotate_90_cw"])
  {
    delegate = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [delegate rotate90ClockwiseForFreehandSheet:self];
    goto LABEL_5;
  }

  v8 = elementCopy;
  _AXAssert();
LABEL_7:
  rotateCCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
  [rotateCCWItem updateItem];

  rotateCWItem = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
  [rotateCWItem updateItem];
}

- (BOOL)shouldUpdateMenuItem:(id)item
{
  v4.receiver = self;
  v4.super_class = SCATModernMenuGestureFreehandRotateSheet;
  return [(SCATModernMenuGestureFreehandSheetBase *)&v4 shouldUpdateMenuItem:item];
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
    v6 = &off_1001E4E48;
    v7 = &off_1001E4E30;
  }

  else
  {
    v6 = &off_1001E4E78;
    v7 = &off_1001E4E60;
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