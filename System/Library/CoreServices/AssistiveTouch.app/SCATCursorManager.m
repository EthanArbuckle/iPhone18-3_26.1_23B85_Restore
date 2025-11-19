@interface SCATCursorManager
- (NSString)description;
- (SCATCursorManager)initWithDisplaySource:(id)a3;
- (SCATCursorManagerDelegate)delegate;
- (id)_cursorPathAndFrame:(CGRect *)a3 cornerRadius:(double *)a4 forElementFrame:(CGRect)a5 inDisplayContext:(id)a6 target:(id)a7;
- (id)cursors;
- (id)displayContextForCursor:(id)a3;
- (id)displayContextForCursor:(id)a3 forDisplayID:(unsigned int)a4;
- (void)_path:(id *)a3 frame:(CGRect *)a4 cornerRadius:(double *)a5 isSimpleRect:(BOOL *)a6 forFocusContext:(id)a7 cursor:(id)a8;
- (void)_reorderLayersIfNeededForDisplayID:(unsigned int)a3;
- (void)_theme:(int64_t *)a3 level:(int64_t *)a4 forFocusContext:(id)a5 cursor:(id)a6 options:(int)a7;
- (void)_updateCursor:(id)a3 withFocusContext:(id)a4 shouldAnimate:(BOOL)a5 options:(int)a6;
- (void)_updateZoom:(CGRect)a3 withElement:(id)a4 cursorController:(id)a5;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)beginSelectTimeoutAnimation:(double)a3;
- (void)cancelSelectTimeoutAnimationIfNeeded;
- (void)dealloc;
- (void)didUpdateSignalQuality:(int64_t)a3;
- (void)hideCursor:(BOOL)a3 animated:(BOOL)a4;
- (void)updateMainCursorWithElement:(id)a3;
- (void)updateWithFocusContext:(id)a3 animated:(BOOL)a4 options:(int)a5;
@end

@implementation SCATCursorManager

- (SCATCursorManager)initWithDisplaySource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SCATCursorManager;
  v5 = [(SCATCursorManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(SCATCursorManager *)v5 setDisplaySourceDelegate:v4];
    v7 = objc_alloc_init(SCATCursorController);
    [(SCATCursorManager *)v6 setFocusedItemCursorController:v7];
    v8 = [(SCATCursorManager *)v6 focusedItemCursorController];
    [v8 setIsFocusedItemCursorController:1];

    [(SCATCursorController *)v7 setDelegate:v6];
    v9 = objc_alloc_init(SCATCursorController);

    [(SCATCursorManager *)v6 setContainingGroupCursorController:v9];
    [(SCATCursorController *)v9 setDelegate:v6];
    v10 = objc_alloc_init(SCATCursorController);

    [(SCATCursorManager *)v6 setMenuItemCursorController:v10];
    [(SCATCursorController *)v10 setDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(SCATCursorManager *)self setFocusedItemCursorController:self->_focusedItemCursorController];
  v3 = [(SCATCursorManager *)self containingGroupCursorController];
  [v3 setDelegate:0];

  [(SCATCursorManager *)self setContainingGroupCursorController:self->_containingGroupCursorController];
  v4 = [(SCATCursorManager *)self menuItemCursorController];
  [v4 setDelegate:0];

  [(SCATCursorManager *)self setMenuItemCursorController:self->_menuItemCursorController];
  v5.receiver = self;
  v5.super_class = SCATCursorManager;
  [(SCATCursorManager *)&v5 dealloc];
}

- (NSString)description
{
  v3 = [NSNumber numberWithBool:[(SCATCursorManager *)self isCursorUIHidden]];
  v4 = [(SCATCursorManager *)self focusedItemCursorController];
  v5 = [(SCATCursorManager *)self containingGroupCursorController];
  v6 = [(SCATCursorManager *)self menuItemCursorController];
  v7 = [NSString stringWithFormat:@"SCATCursorManager:<%p>. HIDDEN:%@\n\tFocusCursor:%@\n\tGroupCursor:%@\n\tMenuCursor:%@\n\t", self, v3, v4, v5, v6];

  return v7;
}

- (id)displayContextForCursor:(id)a3
{
  v4 = a3;
  v5 = [(SCATCursorManager *)self menuItemCursorController];
  v6 = [v4 isEqual:v5];

  v7 = [(SCATCursorManager *)self displaySourceDelegate];
  v8 = v7;
  if (v6)
  {
    [v7 scatFrontCursorUIContext];
  }

  else
  {
    [v7 scatBackCursorUIContext];
  }
  v9 = ;

  return v9;
}

- (id)displayContextForCursor:(id)a3 forDisplayID:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(SCATCursorManager *)self menuItemCursorController];
  v8 = [v6 isEqual:v7];

  v9 = [(SCATCursorManager *)self displaySourceDelegate];
  v10 = v9;
  if (v8)
  {
    [v9 scatFrontCursorUIContextForDisplayID:v4];
  }

  else
  {
    [v9 scatBackCursorUIContextForDisplayID:v4];
  }
  v11 = ;

  return v11;
}

- (id)cursors
{
  v3 = [(SCATCursorManager *)self focusedItemCursorController];
  v4 = [(SCATCursorManager *)self containingGroupCursorController];
  v8[1] = v4;
  v5 = [(SCATCursorManager *)self menuItemCursorController];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (void)_updateZoom:(CGRect)a3 withElement:(id)a4 cursorController:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29 = a4;
  v11 = a5;
  if (_AXSZoomTouchEnabled())
  {
    v12 = [v29 scatTraits];
    if ((kAXIsEditingTrait & v12) != 0)
    {
      [v29 scatTextCursorFrame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = +[ZoomServices sharedInstance];
      v22 = [(SCATCursorManager *)self displayContextForCursor:v11];
      v23 = [v22 window];
      v24 = [v23 screen];
      v25 = [v24 displayIdentity];
      -[UIView notifyZoomFocusDidChangeWithType:rect:contextId:displayId:](v21, "notifyZoomFocusDidChangeWithType:rect:contextId:displayId:", 3, 0, [v25 displayID], v14, v16, v18, v20);

LABEL_12:
      goto LABEL_13;
    }

    v26 = v12;
    if (AXDeviceIsPhoneIdiom())
    {
      if (width <= 250.0 || (kAXButtonTrait & v26) != 0)
      {
        if (width <= 100.0 && height <= 100.0)
        {
          goto LABEL_11;
        }

        AX_CGRectGetCenter();
        x = v27 + -2.5;
        y = v28 + -2.5;
      }

      width = 5.0;
      height = 5.0;
    }

LABEL_11:
    v21 = [(SCATCursorManager *)self displayContextForCursor:v11];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    UIAccessibilityZoomFocusChanged(3, v31, v21);
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateCursor:(id)a3 withFocusContext:(id)a4 shouldAnimate:(BOOL)a5 options:(int)a6
{
  v6 = *&a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v25 = 0;
  v24 = 0;
  [(SCATCursorManager *)self _theme:&v25 level:&v24 forFocusContext:v11 cursor:v10 options:v6];
  v12 = 1;
  v23 = 1;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v22 = size;
  v20 = 0.0;
  if (v24)
  {
    v19 = 0;
    [(SCATCursorManager *)self _path:&v19 frame:&origin cornerRadius:&v20 isSimpleRect:&v23 forFocusContext:v11 cursor:v10];
    v14 = v19;
    v15 = v24;
    v16 = v20;
    v12 = v23;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = 0.0;
  }

  [v10 updateTheme:v25 level:v15 path:v14 frame:v12 & 1 cornerRadius:v7 isSimpleRect:v6 animated:origin options:{v22, v16}];
  v17 = [(SCATCursorManager *)self focusedItemCursorController];
  if (v17 != v10)
  {
    goto LABEL_7;
  }

  v18 = [v11 shouldBeTrackedByZoom];

  if (v18)
  {
    v17 = [v11 element];
    [(SCATCursorManager *)self _updateZoom:v17 withElement:v10 cursorController:origin, v22];
LABEL_7:
  }
}

- (void)updateWithFocusContext:(id)a3 animated:(BOOL)a4 options:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v8 = a3;
  -[SCATCursorManager _reorderLayersIfNeededForDisplayID:](self, "_reorderLayersIfNeededForDisplayID:", [v8 displayID]);
  if (v8)
  {
    v20 = 0uLL;
    v21 = 0uLL;
    *(&v18 + 1) = 0;
    v19 = 0uLL;
    v9 = [(SCATCursorManager *)self cursors];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(SCATCursorManager *)self _updateCursor:*(*(&v18 + 1) + 8 * i) withFocusContext:v8 shouldAnimate:v6 options:v5];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v9 = [(SCATCursorManager *)self cursors];
    v14 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v22 + 1) + 8 * j) updateLevel:0 animated:v6 options:v5];
        }

        v15 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v15);
    }
  }
}

- (void)updateMainCursorWithElement:(id)a3
{
  v4 = a3;
  -[SCATCursorManager _reorderLayersIfNeededForDisplayID:](self, "_reorderLayersIfNeededForDisplayID:", [v4 scatDisplayId]);
  v6 = [SCATFocusContext adHocFocusContext:v4];

  v5 = [(SCATCursorManager *)self focusedItemCursorController];
  [(SCATCursorManager *)self _updateCursor:v5 withFocusContext:v6 shouldAnimate:0 options:0];
}

- (void)beginSelectTimeoutAnimation:(double)a3
{
  v5 = [(SCATCursorManager *)self focusedItemCursorController];
  v10 = [v5 cursorBackgroundLayer];

  v6 = [CABasicAnimation animationWithKeyPath:@"fillColor"];
  [v6 setValue:@"scatBeginSelectTimeoutAnimation" forKey:@"scatAnimationID"];
  v7 = +[AXSettings sharedInstance];
  [v7 assistiveTouchCursorColor];

  v8 = AXSAssistiveTouchCursorColor();
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v8, 0.5);
  [v6 setToValue:CopyWithAlpha];
  [v6 setDuration:a3];
  [v6 setDelegate:self];
  [v6 setRemovedOnCompletion:0];
  [v10 addAnimation:v6 forKey:@"scatBeginSelectTimeoutAnimation"];
  if (CopyWithAlpha)
  {
    CFRelease(CopyWithAlpha);
  }
}

- (void)cancelSelectTimeoutAnimationIfNeeded
{
  v2 = [(SCATCursorManager *)self focusedItemCursorController];
  v3 = [v2 cursorBackgroundLayer];

  [v3 removeAnimationForKey:@"scatBeginSelectTimeoutAnimation"];
}

- (void)hideCursor:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SCATCursorManager *)self isCursorUIHidden]!= a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(SCATCursorManager *)self cursors];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11) hide:v5 animate:v4];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(SCATCursorManager *)self setCursorUIHidden:v5];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [a3 valueForKey:{@"scatAnimationID", a4}];
  v6 = [v5 isEqualToString:@"scatBeginSelectTimeoutAnimation"];

  if (v6)
  {
    v7 = [(SCATCursorManager *)self focusedItemCursorController];
    v10 = [v7 cursorBackgroundLayer];

    v8 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
    [v8 setValue:@"scatEndSelectTimeoutAnimation" forKey:@"scatAnimationID"];
    v9 = [v10 restingStrokeColor];
    [v8 setToValue:{objc_msgSend(v9, "CGColor")}];

    [v8 setDuration:0.3];
    [v8 setRemovedOnCompletion:1];
    [v10 addAnimation:v8 forKey:@"scatEndSelectTimeoutAnimation"];
  }
}

- (void)didUpdateSignalQuality:(int64_t)a3
{
  v4 = [(SCATCursorManager *)self focusedItemCursorController];
  [v4 didUpdateSignalQuality:a3];
}

- (void)_reorderLayersIfNeededForDisplayID:(unsigned int)a3
{
  v5 = [(SCATCursorManager *)self focusedItemCursorController];
  v11[0] = v5;
  v6 = [(SCATCursorManager *)self containingGroupCursorController];
  v11[1] = v6;
  v7 = [(SCATCursorManager *)self menuItemCursorController];
  v11[2] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:3];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D3E6C;
  v9[3] = &unk_1001D7290;
  v9[4] = self;
  v10 = a3;
  [v8 enumerateObjectsUsingBlock:v9];
}

- (void)_theme:(int64_t *)a3 level:(int64_t *)a4 forFocusContext:(id)a5 cursor:(id)a6 options:(int)a7
{
  v7 = a7;
  v46 = a5;
  v12 = a6;
  v13 = [(SCATCursorManager *)self focusedItemCursorController];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v15 = [v46 element];
    v16 = [v46 menuElement];

    if (v15 != v16)
    {
      if ((v7 & 8) != 0)
      {
        v22 = 4;
        goto LABEL_37;
      }

      v17 = [v46 element];
      v18 = [v17 scatOverrideCursorTheme];

      v19 = [v46 element];
      v20 = v19;
      if (v18)
      {
        v21 = [v19 scatOverrideCursorTheme];
        v22 = [v21 unsignedIntValue];

LABEL_37:
        v39 = 1;
        goto LABEL_38;
      }

      v40 = [v19 scatIndicatesOwnFocus];

      if ((v40 & 1) == 0)
      {
        if ([v46 selectBehavior] == 4)
        {
          v22 = 3;
          goto LABEL_37;
        }

        if ([v46 selectBehavior] == 1)
        {
          v39 = 1;
          v22 = 1;
          goto LABEL_38;
        }

        [v46 selectBehavior];
LABEL_36:
        v22 = 0;
        goto LABEL_37;
      }
    }

    goto LABEL_26;
  }

  v23 = [(SCATCursorManager *)self containingGroupCursorController];
  v24 = [v12 isEqual:v23];

  if (v24)
  {
    v25 = [v46 element];
    v26 = [v25 scatHidesGroupCursorWhenFocused];

    if (v26)
    {
      goto LABEL_26;
    }

    v27 = [v46 element];
    v28 = [v46 menuElement];

    if (v27 == v28)
    {
      goto LABEL_26;
    }

    if ([v46 selectBehavior] == 4)
    {
      v29 = [v46 element];
      v30 = [v29 scatIsAuxiliaryElement];
    }

    else
    {
      v30 = 1;
    }

    v39 = 0;
    v22 = 0;
    if ((v7 & 1) == 0 && v30)
    {
      v41 = [v46 element];
      if ([v41 scatIndicatesOwnFocus])
      {
        v42 = [v46 element];
        v43 = [v42 scatIsAuxiliaryElement];

        if (!v43)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      v44 = [v46 parentGroup];
      v45 = v44;
      if (v44 && ![v44 isRootGroup])
      {
        v22 = 2;
        v39 = 1;
      }

      else
      {
        v39 = 0;
        v22 = 0;
      }
    }
  }

  else
  {
    v31 = [(SCATCursorManager *)self menuItemCursorController];
    v32 = [v12 isEqual:v31];

    if (!v32)
    {
      goto LABEL_36;
    }

    v33 = [v46 menuElement];
    if (!v33 || (v34 = v33, -[SCATCursorManager delegate](self, "delegate"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 cursorManagerShouldHideMenuCursor:self], v35, v34, (v36 & 1) != 0))
    {
LABEL_26:
      v39 = 0;
      v22 = 0;
      goto LABEL_38;
    }

    v37 = [v46 menuElement];
    v38 = [v46 element];

    v22 = 0;
    if (v37 == v38)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }
  }

LABEL_38:
  if (a4)
  {
    *a4 = v39;
  }

  if (a3)
  {
    *a3 = v22;
  }
}

- (void)_path:(id *)a3 frame:(CGRect *)a4 cornerRadius:(double *)a5 isSimpleRect:(BOOL *)a6 forFocusContext:(id)a7 cursor:(id)a8
{
  v13 = a7;
  v14 = a8;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v48 = size;
  v16 = -[SCATCursorManager displayContextForCursor:forDisplayID:](self, "displayContextForCursor:forDisplayID:", v14, [v13 displayID]);
  v17 = [(SCATCursorManager *)self focusedItemCursorController];
  v18 = [v14 isEqual:v17];

  if (v18)
  {
    v19 = [v13 element];
LABEL_3:
    v20 = v19;
    goto LABEL_4;
  }

  v28 = [(SCATCursorManager *)self containingGroupCursorController];
  v29 = [v14 isEqual:v28];

  if (!v29)
  {
    v31 = [(SCATCursorManager *)self menuItemCursorController];
    v23 = [v14 isEqual:v31];

    if (!v23)
    {
      v20 = 0;
LABEL_21:
      v21 = 0;
      if (!a3)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v19 = [v13 menuElement];
    goto LABEL_3;
  }

  v30 = [v13 parentGroup];
  if ([v30 scatIsAuxiliaryElement])
  {
    do
    {
      v20 = [v30 parentGroup];

      v30 = v20;
    }

    while (([v20 scatIsAuxiliaryElement] & 1) != 0);
  }

  else
  {
    v20 = v30;
  }

LABEL_4:
  if (!v20)
  {
LABEL_16:
    LOBYTE(v23) = 0;
    goto LABEL_21;
  }

  if (![v20 scatPath])
  {
    [v20 scatFrame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v49.origin.x = CGRectZero.origin.x;
    v49.origin.y = CGRectZero.origin.y;
    v49.size.width = CGRectZero.size.width;
    v49.size.height = CGRectZero.size.height;
    v50.origin.x = v33;
    v50.origin.y = v35;
    v50.size.width = v37;
    v50.size.height = v39;
    if (!CGRectEqualToRect(v49, v50))
    {
      v21 = [(SCATCursorManager *)self _cursorPathAndFrame:&origin cornerRadius:a5 forElementFrame:v16 inDisplayContext:v20 target:v33, v35, v37, v39];
      LOBYTE(v23) = 1;
      if (a3)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v21 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v20 scatPath]);
  if ([v20 scatPathIsInSceneReferenceSpace])
  {
    v22 = [v21 convertPathToView:v16];

    [HNDScreen convertRect:v16 toView:[HNDHandManager screenFrame:]_0()];
    LOBYTE(v23) = 0;
    origin.x = v24;
    origin.y = v25;
    v48.width = v26;
    v48.height = v27;
    v21 = v22;
    if (!a3)
    {
      goto LABEL_23;
    }

LABEL_22:
    v44 = v21;
    *a3 = v21;
    goto LABEL_23;
  }

  [v20 scatFrame];
  [HNDScreen convertRect:v16 toView:?];
  LOBYTE(v23) = 0;
  origin.x = v40;
  origin.y = v41;
  v48.width = v42;
  v48.height = v43;
  if (a3)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (a6)
  {
    *a6 = v23;
  }

  if (a4)
  {
    v45 = v48;
    a4->origin = origin;
    a4->size = v45;
  }
}

- (id)_cursorPathAndFrame:(CGRect *)a3 cornerRadius:(double *)a4 forElementFrame:(CGRect)a5 inDisplayContext:(id)a6 target:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a6;
  v16 = a7;
  v82.origin.x = CGRectZero.origin.x;
  v82.origin.y = CGRectZero.origin.y;
  v82.size.width = CGRectZero.size.width;
  v82.size.height = CGRectZero.size.height;
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  if (CGRectEqualToRect(v75, v82))
  {
    _AXAssert();
  }

  v17 = [(SCATCursorManager *)self styleProvider];
  [v17 cursorBackgroundBorderWidth];
  v19 = v18;

  v20 = [(SCATCursorManager *)self styleProvider];
  [v20 cursorElementPadding];
  v22 = v21;

  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  v77 = CGRectInset(v76, -v22, -v22);
  v23 = v77.origin.x;
  v24 = v77.size.width;
  if (v77.size.height >= 40.0)
  {
    v25 = v77.origin.y;
  }

  else
  {
    v25 = v77.origin.y - (40.0 - v77.size.height) * 0.5;
  }

  if (v77.size.height >= 40.0)
  {
    v26 = v77.size.height;
  }

  else
  {
    v26 = 40.0;
  }

  v27 = [v15 _screen];
  [v27 nativeBounds];
  v32 = sub_100042840(v23, v25, v24, v26, v28, v29, v30, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [HNDScreen convertRect:v15 toView:v32, v34, v36, v38];
  v40 = v39;
  v68 = v41;
  v42 = v78.size.width;
  v43 = v78.size.height;
  v44 = v19 * 0.5;
  v78.origin.x = 0.0;
  v78.origin.y = 0.0;
  v79 = CGRectInset(v78, v44, v44);
  v80 = CGRectIntegral(v79);
  v45 = v80.origin.x;
  v46 = v80.origin.y;
  v47 = v80.size.width;
  v48 = v80.size.height;
  if (CGRectIsEmpty(v80) || (v81.origin.x = v45, v81.origin.y = v46, v81.size.width = v47, v81.size.height = v48, CGRectIsInfinite(v81)) || !CGFloatIsValid())
  {
    v49 = 0;
    goto LABEL_25;
  }

  v49 = 0;
  if (!CGFloatIsValid() || v47 <= 0.0 || v48 <= 0.0)
  {
LABEL_25:
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v67 = v40;
  if ([v16 isGroup])
  {
    v66 = a4;
    v50 = v16;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v51 = [v50 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v70;
      v54 = 1.79769313e308;
      do
      {
        for (i = 0; i != v52; i = i + 1)
        {
          if (*v70 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v69 + 1) + 8 * i);
          v57 = [(SCATCursorManager *)self styleProvider];
          [v56 frame];
          [v57 cursorRoundedRectCornerRadiusForSize:{v58, v59}];
          v54 = fmin(v54, v60 - v44);
        }

        v52 = [v50 countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v52);
    }

    else
    {
      v54 = 1.79769313e308;
    }

    a4 = v66;
  }

  else
  {
    v54 = 1.79769313e308;
  }

  v62 = [(SCATCursorManager *)self styleProvider];
  [v62 cursorRoundedRectCornerRadiusForSize:{v47, v48}];
  v64 = v63 - v44;

  v65 = fmin(v64, v54);
  if (a4)
  {
    *a4 = v65;
  }

  v49 = [UIBezierPath bezierPathWithRoundedRect:v45 cornerRadius:v46, v47, v48, v65];
  v40 = v67;
  if (a3)
  {
LABEL_26:
    a3->origin.x = v40;
    a3->origin.y = v68;
    a3->size.width = v42;
    a3->size.height = v43;
  }

LABEL_27:

  return v49;
}

- (SCATCursorManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end