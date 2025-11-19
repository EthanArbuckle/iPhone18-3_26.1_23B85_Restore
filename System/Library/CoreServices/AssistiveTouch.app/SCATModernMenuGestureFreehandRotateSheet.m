@interface SCATModernMenuGestureFreehandRotateSheet
- (BOOL)shouldUpdateMenuItem:(id)a3;
- (id)elementProvider;
- (id)makeMenuItemsIfNeeded;
- (id)menuItemStruts;
- (void)didActivateMultipleMenuItemsElement:(id)a3;
- (void)menuItem:(id)a3 didBecomeFocused:(BOOL)a4;
- (void)menuItemWasActivated:(id)a3;
- (void)multipleMenuItemsElement:(id)a3 didBecomeHighlighted:(BOOL)a4;
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
  v13 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
  [v13 setAccessibilityLabel:v12];

  v14 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
  [v14 setPreferredNumberOfTitleLines:v8];

  v15 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate_cw" delegate:self title:v10 imagePrefixForTouchDependentGlyph:@"rotateCW" shouldRotate:1 activateBehavior:2];
  [(SCATModernMenuGestureFreehandRotateSheet *)self setRotateCWItem:v15];

  v16 = sub_100042B24(@"FREEHAND_ROTATE_CW_SPOKEN");
  v17 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
  [v17 setAccessibilityLabel:v16];

  v18 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
  [v18 setPreferredNumberOfTitleLines:v8];

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

    v26 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CCWItem];
    [v26 setAccessibilityLabel:v25];

    v27 = sub_100042B24(@"FREEHAND_ROTATE_90_CW");
    v28 = AXFormatInteger();
    v29 = [NSString stringWithFormat:v27, v28];

    v30 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_rotate_90_cw" delegate:self title:v29 imagePrefixForTouchDependentGlyph:@"rotateCW90" shouldRotate:1 activateBehavior:3];
    [(SCATModernMenuGestureFreehandRotateSheet *)self setRotate90CWItem:v30];

    v31 = sub_100042B24(@"FREEHAND_ROTATE_90_CW_SPOKEN");
    v32 = AXFormatInteger();
    v33 = [NSString stringWithFormat:v31, v32];

    v34 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CWItem];
    [v34 setAccessibilityLabel:v33];
  }

  else
  {
    v35 = sub_100042B24(@"FREEHAND_ROTATE_90");
    v36 = AXFormatInteger();
    v33 = [NSString stringWithFormat:v35, v36];

    v34 = [SCATModernMenuGestureFreehandItem itemWithIdentifier:@"freehand_90Degrees" delegate:self title:v33 activateBehavior:3];
    [(SCATModernMenuGestureFreehandRotateSheet *)self setRotate90Item:v34];
  }

  v37 = +[NSMutableArray array];
  if (AXDeviceIsPad())
  {
    v38 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [v37 addObject:v38];

    v39 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CWItem];
    [v37 addObject:v39];

    v40 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [v37 addObject:v40];

    v41 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CCWItem];
    [v37 addObject:v41];

    v42 = [(SCATModernMenuGestureFreehandSheetBase *)self moveMenuItemWithPreferredNumberOfLines:2];
    [v37 addObject:v42];

    v43 = [(SCATModernMenuGestureFreehandSheetBase *)self touchToggleMenuItemWithPreferredNumberOfLines:2];
    [v37 addObject:v43];

    v44 = [(SCATModernMenuGestureFreehandSheetBase *)self moveToolbarMenuItem];
  }

  else
  {
    v45 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [v37 addObject:v45];

    v46 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [v37 addObject:v46];

    v47 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90Item];
    [v37 addObject:v47];

    if (![(SCATModernMenuGestureFreehandSheetBase *)self isLandscape])
    {
      goto LABEL_18;
    }

    v48 = [(SCATModernMenuGestureFreehandSheetBase *)self moveMenuItemWithPreferredNumberOfLines:1];
    [v37 addObject:v48];

    v44 = [(SCATModernMenuGestureFreehandSheetBase *)self touchToggleMenuItemWithPreferredNumberOfLines:1];
  }

  v49 = v44;
  [v37 addObject:v44];

LABEL_18:

  return v37;
}

- (id)elementProvider
{
  if (AXDeviceIsPad())
  {
    v31.receiver = self;
    v31.super_class = SCATModernMenuGestureFreehandRotateSheet;
    v3 = [(SCATModernMenuGestureFreehandSheetBase *)&v31 elementProvider];
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
        v11 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90Item];

        if (v10 != v11)
        {
          v12 = [v10 scatElement];
          [(NSArray *)v5 axSafelyAddObject:v12];

          v13 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];

          if (v10 == v13)
          {
            v15 = objc_alloc_init(SCATMultipleMenuItemsElement);
            [(SCATMultipleMenuItemsElement *)v15 setIdentifier:@"freehand_rotate_90_ccw"];
            [(SCATMultipleMenuItemsElement *)v15 setDelegate:self];
            v16 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
            v33 = v16;
            v17 = &v33;
            v18 = @"FREEHAND_ROTATE_90_CCW_SPOKEN";
          }

          else
          {
            v14 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];

            if (v10 != v14)
            {
              continue;
            }

            v15 = objc_alloc_init(SCATMultipleMenuItemsElement);
            [(SCATMultipleMenuItemsElement *)v15 setIdentifier:@"freehand_rotate_90_cw"];
            [(SCATMultipleMenuItemsElement *)v15 setDelegate:self];
            v16 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
            v32 = v16;
            v17 = &v32;
            v18 = @"FREEHAND_ROTATE_90_CW_SPOKEN";
          }

          v19 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90Item];
          v17[1] = v19;
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

  v3 = [(NSArray *)providerElements count];
  if (v3)
  {
    v3 = [[SCATStaticElementProvider alloc] initWithElements:self->_providerElements];
  }

LABEL_20:

  return v3;
}

- (void)menuItem:(id)a3 didBecomeFocused:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  if ([v7 isEqualToString:@"freehand_rotate_ccw"])
  {
    v8 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v8 freehandSheet:self didHighlightRotateCCW:v4];
  }

  else if ([v7 isEqualToString:@"freehand_rotate_cw"])
  {
    v8 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v8 freehandSheet:self didHighlightRotateCW:v4];
  }

  else if ([v7 isEqualToString:@"freehand_rotate_90_ccw"])
  {
    v8 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v8 freehandSheet:self didHighlightRotateCCW90:v4];
  }

  else
  {
    if (![v7 isEqualToString:@"freehand_rotate_90_cw"])
    {
      v9.receiver = self;
      v9.super_class = SCATModernMenuGestureFreehandRotateSheet;
      [(SCATModernMenuGestureFreehandSheetBase *)&v9 menuItem:v6 didBecomeFocused:v4];
      goto LABEL_10;
    }

    v8 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v8 freehandSheet:self didHighlightRotateCW90:v4];
  }

LABEL_10:
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"freehand_rotate_ccw"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 rotateCounterclockwiseForFreehandSheet:self];
LABEL_5:

    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"freehand_rotate_cw"])
  {
    v6 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v6 rotateClockwiseForFreehandSheet:self];
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"freehand_rotate_90_ccw"])
  {
    v7 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v7 rotate90CounterclockwiseForFreehandSheet:self];

    v8 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [v8 updateItem];

    v9 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [v9 updateItem];

    v10 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CWItem];
  }

  else
  {
    if (![v5 isEqualToString:@"freehand_rotate_90_cw"])
    {
      v15.receiver = self;
      v15.super_class = SCATModernMenuGestureFreehandRotateSheet;
      [(SCATModernMenuGestureFreehandSheetBase *)&v15 menuItemWasActivated:v4];
      goto LABEL_6;
    }

    v11 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v11 rotate90ClockwiseForFreehandSheet:self];

    v12 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
    [v12 updateItem];

    v13 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
    [v13 updateItem];

    v10 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotate90CCWItem];
  }

  v14 = v10;
  [v10 updateItem];

LABEL_6:
}

- (void)multipleMenuItemsElement:(id)a3 didBecomeHighlighted:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [v8 identifier];
  if ([v6 isEqualToString:@"freehand_rotate_90_ccw"])
  {
    v7 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v7 freehandSheet:self didHighlightRotateCCW90:v4];
LABEL_5:

    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"freehand_rotate_90_cw"])
  {
    v7 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v7 freehandSheet:self didHighlightRotateCW90:v4];
    goto LABEL_5;
  }

  _AXAssert();
LABEL_7:
}

- (void)didActivateMultipleMenuItemsElement:(id)a3
{
  v9 = a3;
  v4 = [v9 identifier];
  if ([v4 isEqualToString:@"freehand_rotate_90_ccw"])
  {
    v5 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v5 rotate90CounterclockwiseForFreehandSheet:self];
LABEL_5:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"freehand_rotate_90_cw"])
  {
    v5 = [(SCATModernMenuGestureFreehandSheetBase *)self delegate];
    [v5 rotate90ClockwiseForFreehandSheet:self];
    goto LABEL_5;
  }

  v8 = v9;
  _AXAssert();
LABEL_7:
  v6 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCCWItem];
  [v6 updateItem];

  v7 = [(SCATModernMenuGestureFreehandRotateSheet *)self rotateCWItem];
  [v7 updateItem];
}

- (BOOL)shouldUpdateMenuItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCATModernMenuGestureFreehandRotateSheet;
  return [(SCATModernMenuGestureFreehandSheetBase *)&v4 shouldUpdateMenuItem:a3];
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