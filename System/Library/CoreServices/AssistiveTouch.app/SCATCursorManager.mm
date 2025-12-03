@interface SCATCursorManager
- (NSString)description;
- (SCATCursorManager)initWithDisplaySource:(id)source;
- (SCATCursorManagerDelegate)delegate;
- (id)_cursorPathAndFrame:(CGRect *)frame cornerRadius:(double *)radius forElementFrame:(CGRect)elementFrame inDisplayContext:(id)context target:(id)target;
- (id)cursors;
- (id)displayContextForCursor:(id)cursor;
- (id)displayContextForCursor:(id)cursor forDisplayID:(unsigned int)d;
- (void)_path:(id *)_path frame:(CGRect *)frame cornerRadius:(double *)radius isSimpleRect:(BOOL *)rect forFocusContext:(id)context cursor:(id)cursor;
- (void)_reorderLayersIfNeededForDisplayID:(unsigned int)d;
- (void)_theme:(int64_t *)_theme level:(int64_t *)level forFocusContext:(id)context cursor:(id)cursor options:(int)options;
- (void)_updateCursor:(id)cursor withFocusContext:(id)context shouldAnimate:(BOOL)animate options:(int)options;
- (void)_updateZoom:(CGRect)zoom withElement:(id)element cursorController:(id)controller;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)beginSelectTimeoutAnimation:(double)animation;
- (void)cancelSelectTimeoutAnimationIfNeeded;
- (void)dealloc;
- (void)didUpdateSignalQuality:(int64_t)quality;
- (void)hideCursor:(BOOL)cursor animated:(BOOL)animated;
- (void)updateMainCursorWithElement:(id)element;
- (void)updateWithFocusContext:(id)context animated:(BOOL)animated options:(int)options;
@end

@implementation SCATCursorManager

- (SCATCursorManager)initWithDisplaySource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = SCATCursorManager;
  v5 = [(SCATCursorManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(SCATCursorManager *)v5 setDisplaySourceDelegate:sourceCopy];
    v7 = objc_alloc_init(SCATCursorController);
    [(SCATCursorManager *)v6 setFocusedItemCursorController:v7];
    focusedItemCursorController = [(SCATCursorManager *)v6 focusedItemCursorController];
    [focusedItemCursorController setIsFocusedItemCursorController:1];

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
  containingGroupCursorController = [(SCATCursorManager *)self containingGroupCursorController];
  [containingGroupCursorController setDelegate:0];

  [(SCATCursorManager *)self setContainingGroupCursorController:self->_containingGroupCursorController];
  menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
  [menuItemCursorController setDelegate:0];

  [(SCATCursorManager *)self setMenuItemCursorController:self->_menuItemCursorController];
  v5.receiver = self;
  v5.super_class = SCATCursorManager;
  [(SCATCursorManager *)&v5 dealloc];
}

- (NSString)description
{
  v3 = [NSNumber numberWithBool:[(SCATCursorManager *)self isCursorUIHidden]];
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  containingGroupCursorController = [(SCATCursorManager *)self containingGroupCursorController];
  menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
  v7 = [NSString stringWithFormat:@"SCATCursorManager:<%p>. HIDDEN:%@\n\tFocusCursor:%@\n\tGroupCursor:%@\n\tMenuCursor:%@\n\t", self, v3, focusedItemCursorController, containingGroupCursorController, menuItemCursorController];

  return v7;
}

- (id)displayContextForCursor:(id)cursor
{
  cursorCopy = cursor;
  menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
  v6 = [cursorCopy isEqual:menuItemCursorController];

  displaySourceDelegate = [(SCATCursorManager *)self displaySourceDelegate];
  v8 = displaySourceDelegate;
  if (v6)
  {
    [displaySourceDelegate scatFrontCursorUIContext];
  }

  else
  {
    [displaySourceDelegate scatBackCursorUIContext];
  }
  v9 = ;

  return v9;
}

- (id)displayContextForCursor:(id)cursor forDisplayID:(unsigned int)d
{
  v4 = *&d;
  cursorCopy = cursor;
  menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
  v8 = [cursorCopy isEqual:menuItemCursorController];

  displaySourceDelegate = [(SCATCursorManager *)self displaySourceDelegate];
  v10 = displaySourceDelegate;
  if (v8)
  {
    [displaySourceDelegate scatFrontCursorUIContextForDisplayID:v4];
  }

  else
  {
    [displaySourceDelegate scatBackCursorUIContextForDisplayID:v4];
  }
  v11 = ;

  return v11;
}

- (id)cursors
{
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  containingGroupCursorController = [(SCATCursorManager *)self containingGroupCursorController];
  v8[1] = containingGroupCursorController;
  menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
  v8[2] = menuItemCursorController;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (void)_updateZoom:(CGRect)zoom withElement:(id)element cursorController:(id)controller
{
  height = zoom.size.height;
  width = zoom.size.width;
  y = zoom.origin.y;
  x = zoom.origin.x;
  elementCopy = element;
  controllerCopy = controller;
  if (_AXSZoomTouchEnabled())
  {
    scatTraits = [elementCopy scatTraits];
    if ((kAXIsEditingTrait & scatTraits) != 0)
    {
      [elementCopy scatTextCursorFrame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = +[ZoomServices sharedInstance];
      v22 = [(SCATCursorManager *)self displayContextForCursor:controllerCopy];
      window = [v22 window];
      screen = [window screen];
      displayIdentity = [screen displayIdentity];
      -[UIView notifyZoomFocusDidChangeWithType:rect:contextId:displayId:](v21, "notifyZoomFocusDidChangeWithType:rect:contextId:displayId:", 3, 0, [displayIdentity displayID], v14, v16, v18, v20);

LABEL_12:
      goto LABEL_13;
    }

    v26 = scatTraits;
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
    v21 = [(SCATCursorManager *)self displayContextForCursor:controllerCopy];
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    UIAccessibilityZoomFocusChanged(3, v31, v21);
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateCursor:(id)cursor withFocusContext:(id)context shouldAnimate:(BOOL)animate options:(int)options
{
  v6 = *&options;
  animateCopy = animate;
  cursorCopy = cursor;
  contextCopy = context;
  v25 = 0;
  v24 = 0;
  [(SCATCursorManager *)self _theme:&v25 level:&v24 forFocusContext:contextCopy cursor:cursorCopy options:v6];
  v12 = 1;
  v23 = 1;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v22 = size;
  v20 = 0.0;
  if (v24)
  {
    v19 = 0;
    [(SCATCursorManager *)self _path:&v19 frame:&origin cornerRadius:&v20 isSimpleRect:&v23 forFocusContext:contextCopy cursor:cursorCopy];
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

  [cursorCopy updateTheme:v25 level:v15 path:v14 frame:v12 & 1 cornerRadius:animateCopy isSimpleRect:v6 animated:origin options:{v22, v16}];
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  if (focusedItemCursorController != cursorCopy)
  {
    goto LABEL_7;
  }

  shouldBeTrackedByZoom = [contextCopy shouldBeTrackedByZoom];

  if (shouldBeTrackedByZoom)
  {
    focusedItemCursorController = [contextCopy element];
    [(SCATCursorManager *)self _updateZoom:focusedItemCursorController withElement:cursorCopy cursorController:origin, v22];
LABEL_7:
  }
}

- (void)updateWithFocusContext:(id)context animated:(BOOL)animated options:(int)options
{
  v5 = *&options;
  animatedCopy = animated;
  contextCopy = context;
  -[SCATCursorManager _reorderLayersIfNeededForDisplayID:](self, "_reorderLayersIfNeededForDisplayID:", [contextCopy displayID]);
  if (contextCopy)
  {
    v20 = 0uLL;
    v21 = 0uLL;
    *(&v18 + 1) = 0;
    v19 = 0uLL;
    cursors = [(SCATCursorManager *)self cursors];
    v10 = [cursors countByEnumeratingWithState:&v18 objects:v26 count:16];
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
            objc_enumerationMutation(cursors);
          }

          [(SCATCursorManager *)self _updateCursor:*(*(&v18 + 1) + 8 * i) withFocusContext:contextCopy shouldAnimate:animatedCopy options:v5];
        }

        v11 = [cursors countByEnumeratingWithState:&v18 objects:v26 count:16];
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
    cursors = [(SCATCursorManager *)self cursors];
    v14 = [cursors countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(cursors);
          }

          [*(*(&v22 + 1) + 8 * j) updateLevel:0 animated:animatedCopy options:v5];
        }

        v15 = [cursors countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v15);
    }
  }
}

- (void)updateMainCursorWithElement:(id)element
{
  elementCopy = element;
  -[SCATCursorManager _reorderLayersIfNeededForDisplayID:](self, "_reorderLayersIfNeededForDisplayID:", [elementCopy scatDisplayId]);
  v6 = [SCATFocusContext adHocFocusContext:elementCopy];

  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  [(SCATCursorManager *)self _updateCursor:focusedItemCursorController withFocusContext:v6 shouldAnimate:0 options:0];
}

- (void)beginSelectTimeoutAnimation:(double)animation
{
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  cursorBackgroundLayer = [focusedItemCursorController cursorBackgroundLayer];

  v6 = [CABasicAnimation animationWithKeyPath:@"fillColor"];
  [v6 setValue:@"scatBeginSelectTimeoutAnimation" forKey:@"scatAnimationID"];
  v7 = +[AXSettings sharedInstance];
  [v7 assistiveTouchCursorColor];

  v8 = AXSAssistiveTouchCursorColor();
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v8, 0.5);
  [v6 setToValue:CopyWithAlpha];
  [v6 setDuration:animation];
  [v6 setDelegate:self];
  [v6 setRemovedOnCompletion:0];
  [cursorBackgroundLayer addAnimation:v6 forKey:@"scatBeginSelectTimeoutAnimation"];
  if (CopyWithAlpha)
  {
    CFRelease(CopyWithAlpha);
  }
}

- (void)cancelSelectTimeoutAnimationIfNeeded
{
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  cursorBackgroundLayer = [focusedItemCursorController cursorBackgroundLayer];

  [cursorBackgroundLayer removeAnimationForKey:@"scatBeginSelectTimeoutAnimation"];
}

- (void)hideCursor:(BOOL)cursor animated:(BOOL)animated
{
  animatedCopy = animated;
  cursorCopy = cursor;
  if ([(SCATCursorManager *)self isCursorUIHidden]!= cursor)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    cursors = [(SCATCursorManager *)self cursors];
    v8 = [cursors countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(cursors);
          }

          [*(*(&v12 + 1) + 8 * v11) hide:cursorCopy animate:animatedCopy];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [cursors countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(SCATCursorManager *)self setCursorUIHidden:cursorCopy];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [stop valueForKey:{@"scatAnimationID", finished}];
  v6 = [v5 isEqualToString:@"scatBeginSelectTimeoutAnimation"];

  if (v6)
  {
    focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
    cursorBackgroundLayer = [focusedItemCursorController cursorBackgroundLayer];

    v8 = [CABasicAnimation animationWithKeyPath:@"strokeColor"];
    [v8 setValue:@"scatEndSelectTimeoutAnimation" forKey:@"scatAnimationID"];
    restingStrokeColor = [cursorBackgroundLayer restingStrokeColor];
    [v8 setToValue:{objc_msgSend(restingStrokeColor, "CGColor")}];

    [v8 setDuration:0.3];
    [v8 setRemovedOnCompletion:1];
    [cursorBackgroundLayer addAnimation:v8 forKey:@"scatEndSelectTimeoutAnimation"];
  }
}

- (void)didUpdateSignalQuality:(int64_t)quality
{
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  [focusedItemCursorController didUpdateSignalQuality:quality];
}

- (void)_reorderLayersIfNeededForDisplayID:(unsigned int)d
{
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  v11[0] = focusedItemCursorController;
  containingGroupCursorController = [(SCATCursorManager *)self containingGroupCursorController];
  v11[1] = containingGroupCursorController;
  menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
  v11[2] = menuItemCursorController;
  v8 = [NSArray arrayWithObjects:v11 count:3];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D3E6C;
  v9[3] = &unk_1001D7290;
  v9[4] = self;
  dCopy = d;
  [v8 enumerateObjectsUsingBlock:v9];
}

- (void)_theme:(int64_t *)_theme level:(int64_t *)level forFocusContext:(id)context cursor:(id)cursor options:(int)options
{
  optionsCopy = options;
  contextCopy = context;
  cursorCopy = cursor;
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  v14 = [cursorCopy isEqual:focusedItemCursorController];

  if (v14)
  {
    element = [contextCopy element];
    menuElement = [contextCopy menuElement];

    if (element != menuElement)
    {
      if ((optionsCopy & 8) != 0)
      {
        unsignedIntValue = 4;
        goto LABEL_37;
      }

      element2 = [contextCopy element];
      scatOverrideCursorTheme = [element2 scatOverrideCursorTheme];

      element3 = [contextCopy element];
      v20 = element3;
      if (scatOverrideCursorTheme)
      {
        scatOverrideCursorTheme2 = [element3 scatOverrideCursorTheme];
        unsignedIntValue = [scatOverrideCursorTheme2 unsignedIntValue];

LABEL_37:
        v39 = 1;
        goto LABEL_38;
      }

      scatIndicatesOwnFocus = [element3 scatIndicatesOwnFocus];

      if ((scatIndicatesOwnFocus & 1) == 0)
      {
        if ([contextCopy selectBehavior] == 4)
        {
          unsignedIntValue = 3;
          goto LABEL_37;
        }

        if ([contextCopy selectBehavior] == 1)
        {
          v39 = 1;
          unsignedIntValue = 1;
          goto LABEL_38;
        }

        [contextCopy selectBehavior];
LABEL_36:
        unsignedIntValue = 0;
        goto LABEL_37;
      }
    }

    goto LABEL_26;
  }

  containingGroupCursorController = [(SCATCursorManager *)self containingGroupCursorController];
  v24 = [cursorCopy isEqual:containingGroupCursorController];

  if (v24)
  {
    element4 = [contextCopy element];
    scatHidesGroupCursorWhenFocused = [element4 scatHidesGroupCursorWhenFocused];

    if (scatHidesGroupCursorWhenFocused)
    {
      goto LABEL_26;
    }

    element5 = [contextCopy element];
    menuElement2 = [contextCopy menuElement];

    if (element5 == menuElement2)
    {
      goto LABEL_26;
    }

    if ([contextCopy selectBehavior] == 4)
    {
      element6 = [contextCopy element];
      scatIsAuxiliaryElement = [element6 scatIsAuxiliaryElement];
    }

    else
    {
      scatIsAuxiliaryElement = 1;
    }

    v39 = 0;
    unsignedIntValue = 0;
    if ((optionsCopy & 1) == 0 && scatIsAuxiliaryElement)
    {
      element7 = [contextCopy element];
      if ([element7 scatIndicatesOwnFocus])
      {
        element8 = [contextCopy element];
        scatIsAuxiliaryElement2 = [element8 scatIsAuxiliaryElement];

        if (!scatIsAuxiliaryElement2)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      parentGroup = [contextCopy parentGroup];
      v45 = parentGroup;
      if (parentGroup && ![parentGroup isRootGroup])
      {
        unsignedIntValue = 2;
        v39 = 1;
      }

      else
      {
        v39 = 0;
        unsignedIntValue = 0;
      }
    }
  }

  else
  {
    menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
    v32 = [cursorCopy isEqual:menuItemCursorController];

    if (!v32)
    {
      goto LABEL_36;
    }

    menuElement3 = [contextCopy menuElement];
    if (!menuElement3 || (v34 = menuElement3, -[SCATCursorManager delegate](self, "delegate"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 cursorManagerShouldHideMenuCursor:self], v35, v34, (v36 & 1) != 0))
    {
LABEL_26:
      v39 = 0;
      unsignedIntValue = 0;
      goto LABEL_38;
    }

    menuElement4 = [contextCopy menuElement];
    element9 = [contextCopy element];

    unsignedIntValue = 0;
    if (menuElement4 == element9)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }
  }

LABEL_38:
  if (level)
  {
    *level = v39;
  }

  if (_theme)
  {
    *_theme = unsignedIntValue;
  }
}

- (void)_path:(id *)_path frame:(CGRect *)frame cornerRadius:(double *)radius isSimpleRect:(BOOL *)rect forFocusContext:(id)context cursor:(id)cursor
{
  contextCopy = context;
  cursorCopy = cursor;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v48 = size;
  v16 = -[SCATCursorManager displayContextForCursor:forDisplayID:](self, "displayContextForCursor:forDisplayID:", cursorCopy, [contextCopy displayID]);
  focusedItemCursorController = [(SCATCursorManager *)self focusedItemCursorController];
  v18 = [cursorCopy isEqual:focusedItemCursorController];

  if (v18)
  {
    element = [contextCopy element];
LABEL_3:
    v30ParentGroup = element;
    goto LABEL_4;
  }

  containingGroupCursorController = [(SCATCursorManager *)self containingGroupCursorController];
  v29 = [cursorCopy isEqual:containingGroupCursorController];

  if (!v29)
  {
    menuItemCursorController = [(SCATCursorManager *)self menuItemCursorController];
    v23 = [cursorCopy isEqual:menuItemCursorController];

    if (!v23)
    {
      v30ParentGroup = 0;
LABEL_21:
      v21 = 0;
      if (!_path)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    element = [contextCopy menuElement];
    goto LABEL_3;
  }

  parentGroup = [contextCopy parentGroup];
  if ([parentGroup scatIsAuxiliaryElement])
  {
    do
    {
      v30ParentGroup = [parentGroup parentGroup];

      parentGroup = v30ParentGroup;
    }

    while (([v30ParentGroup scatIsAuxiliaryElement] & 1) != 0);
  }

  else
  {
    v30ParentGroup = parentGroup;
  }

LABEL_4:
  if (!v30ParentGroup)
  {
LABEL_16:
    LOBYTE(v23) = 0;
    goto LABEL_21;
  }

  if (![v30ParentGroup scatPath])
  {
    [v30ParentGroup scatFrame];
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
      v21 = [(SCATCursorManager *)self _cursorPathAndFrame:&origin cornerRadius:radius forElementFrame:v16 inDisplayContext:v30ParentGroup target:v33, v35, v37, v39];
      LOBYTE(v23) = 1;
      if (_path)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v21 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v30ParentGroup scatPath]);
  if ([v30ParentGroup scatPathIsInSceneReferenceSpace])
  {
    v22 = [v21 convertPathToView:v16];

    [HNDScreen convertRect:v16 toView:[HNDHandManager screenFrame:]_0()];
    LOBYTE(v23) = 0;
    origin.x = v24;
    origin.y = v25;
    v48.width = v26;
    v48.height = v27;
    v21 = v22;
    if (!_path)
    {
      goto LABEL_23;
    }

LABEL_22:
    v44 = v21;
    *_path = v21;
    goto LABEL_23;
  }

  [v30ParentGroup scatFrame];
  [HNDScreen convertRect:v16 toView:?];
  LOBYTE(v23) = 0;
  origin.x = v40;
  origin.y = v41;
  v48.width = v42;
  v48.height = v43;
  if (_path)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (rect)
  {
    *rect = v23;
  }

  if (frame)
  {
    v45 = v48;
    frame->origin = origin;
    frame->size = v45;
  }
}

- (id)_cursorPathAndFrame:(CGRect *)frame cornerRadius:(double *)radius forElementFrame:(CGRect)elementFrame inDisplayContext:(id)context target:(id)target
{
  height = elementFrame.size.height;
  width = elementFrame.size.width;
  y = elementFrame.origin.y;
  x = elementFrame.origin.x;
  contextCopy = context;
  targetCopy = target;
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

  styleProvider = [(SCATCursorManager *)self styleProvider];
  [styleProvider cursorBackgroundBorderWidth];
  v19 = v18;

  styleProvider2 = [(SCATCursorManager *)self styleProvider];
  [styleProvider2 cursorElementPadding];
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

  _screen = [contextCopy _screen];
  [_screen nativeBounds];
  v32 = sub_100042840(v23, v25, v24, v26, v28, v29, v30, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [HNDScreen convertRect:contextCopy toView:v32, v34, v36, v38];
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
    if (!frame)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v67 = v40;
  if ([targetCopy isGroup])
  {
    radiusCopy = radius;
    v50 = targetCopy;
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
          styleProvider3 = [(SCATCursorManager *)self styleProvider];
          [v56 frame];
          [styleProvider3 cursorRoundedRectCornerRadiusForSize:{v58, v59}];
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

    radius = radiusCopy;
  }

  else
  {
    v54 = 1.79769313e308;
  }

  styleProvider4 = [(SCATCursorManager *)self styleProvider];
  [styleProvider4 cursorRoundedRectCornerRadiusForSize:{v47, v48}];
  v64 = v63 - v44;

  v65 = fmin(v64, v54);
  if (radius)
  {
    *radius = v65;
  }

  v49 = [UIBezierPath bezierPathWithRoundedRect:v45 cornerRadius:v46, v47, v48, v65];
  v40 = v67;
  if (frame)
  {
LABEL_26:
    frame->origin.x = v40;
    frame->origin.y = v68;
    frame->size.width = v42;
    frame->size.height = v43;
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