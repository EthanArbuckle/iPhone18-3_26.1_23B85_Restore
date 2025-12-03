@interface CRLiOSCanvasViewControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_crlaxAccessibilityFocusIsInMiniFormatter;
- (BOOL)_crlaxIsEditMenuAllowedToAppear;
- (BOOL)accessibilityPerformEscape;
- (CRLCanvasInteractiveCanvasControllerAccessibility)_crlaxInteractiveCanvasController;
- (NSArray)crlaxEditMenuItems;
- (SEL)crlaxSelectorForEditMenuItemName:(id)name;
- (id)accessibilityCustomActions;
- (id)crlaxBasicEditMenuItemNames;
- (id)crlaxWindow;
- (void)crlaxCancelEyeDropperMode;
- (void)crlaxEnterQuickSelect;
- (void)showEditMenuForSelectionPath:(id)path;
@end

@implementation CRLiOSCanvasViewControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)crlaxCancelEyeDropperMode
{
  if ([(CRLiOSCanvasViewControllerAccessibility *)self crlaxIsInEyeDropperMode])
  {
    v4 = +[NSBundle mainBundle];
    v3 = [v4 localizedStringForKey:@"Eye dropper mode canceled" value:0 table:0];
    CRLAccessibilityPostHighPriorityAnnouncementNotification(self, v3);
  }
}

- (NSArray)crlaxEditMenuItems
{
  if ([(CRLiOSCanvasViewControllerAccessibility *)self _crlaxIsEditMenuAllowedToAppear])
  {
    _crlaxInteractiveCanvasController = [(CRLiOSCanvasViewControllerAccessibility *)self _crlaxInteractiveCanvasController];
    crlaxEditorController = [_crlaxInteractiveCanvasController crlaxEditorController];
    crlaxSelectionPath = [crlaxEditorController crlaxSelectionPath];

    if (crlaxSelectionPath)
    {
      v6 = +[NSMutableArray array];
      crlaxBasicEditMenuItemNames = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxBasicEditMenuItemNames];
      [v6 addObjectsFromArray:crlaxBasicEditMenuItemNames];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000DC36C;
      v11[3] = &unk_10183AE00;
      v11[4] = self;
      v8 = v6;
      v12 = v8;
      v13 = crlaxSelectionPath;
      if (__CRLAccessibilityPerformSafeBlock(v11))
      {
        abort();
      }

      if ([v8 count])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)crlaxWindow
{
  crlaxTarget = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  view = [crlaxTarget view];
  window = [view window];

  return window;
}

- (void)showEditMenuForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = +[UIMenuController sharedMenuController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DC498;
  v7[3] = &unk_10183AE28;
  v8 = pathCopy;
  selfCopy = self;
  v6 = pathCopy;
  [v5 crlaxPerformBlockPreventingMakingVisible:v7];
}

- (BOOL)accessibilityPerformEscape
{
  crlaxTarget = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  isCurrentlyInQuickSelectMode = [crlaxTarget isCurrentlyInQuickSelectMode];

  if (!isCurrentlyInQuickSelectMode)
  {
    return 0;
  }

  crlaxTarget2 = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  [crlaxTarget2 leaveQuickSelectModeIfNeeded];

  crlaxTarget3 = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  LOBYTE(crlaxTarget2) = [crlaxTarget3 isCurrentlyInQuickSelectMode];

  return crlaxTarget2 ^ 1;
}

- (CRLCanvasInteractiveCanvasControllerAccessibility)_crlaxInteractiveCanvasController
{
  v8 = 0;
  crlaxTarget = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  interactiveCanvasController = [crlaxTarget interactiveCanvasController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, interactiveCanvasController, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxBasicEditMenuItemNames
{
  v2 = +[NSMutableArray array];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Cut" value:0 table:0];
  [v2 addObject:v4];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Copy" value:0 table:0];
  [v2 addObject:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Paste" value:0 table:0];
  [v2 addObject:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Delete" value:0 table:0];
  [v2 addObject:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Duplicate" value:0 table:0];
  [v2 addObject:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Lock" value:0 table:0];
  [v2 addObject:v14];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Unlock" value:0 table:0];
  [v2 addObject:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Back" value:0 table:0];
  [v2 addObject:v18];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Front" value:0 table:0];
  [v2 addObject:v20];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Select" value:0 table:0];
  [v2 addObject:v22];

  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"Select All" value:0 table:0];
  [v2 addObject:v24];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"Deselect All" value:0 table:0];
  [v2 addObject:v26];

  v27 = [v2 copy];

  return v27;
}

- (SEL)crlaxSelectorForEditMenuItemName:(id)name
{
  nameCopy = name;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Cut" value:0 table:0];
  v6 = [nameCopy isEqualToString:v5];

  if (v6)
  {
    v7 = "cut:";
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Copy" value:0 table:0];
    v10 = [nameCopy isEqualToString:v9];

    if (v10)
    {
      v7 = "copy:";
    }

    else
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Paste" value:0 table:0];
      v13 = [nameCopy isEqualToString:v12];

      if (v13)
      {
        v7 = "paste:";
      }

      else
      {
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"Delete" value:0 table:0];
        v16 = [nameCopy isEqualToString:v15];

        if (v16)
        {
          v7 = "delete:";
        }

        else
        {
          v17 = +[NSBundle mainBundle];
          v18 = [v17 localizedStringForKey:@"Duplicate" value:0 table:0];
          v19 = [nameCopy isEqualToString:v18];

          if (v19)
          {
            v7 = "duplicate:";
          }

          else
          {
            v20 = +[NSBundle mainBundle];
            v21 = [v20 localizedStringForKey:@"Lock" value:0 table:0];
            v22 = [nameCopy isEqualToString:v21];

            if (v22)
            {
              v7 = "lock:";
            }

            else
            {
              v23 = +[NSBundle mainBundle];
              v24 = [v23 localizedStringForKey:@"Unlock" value:0 table:0];
              v25 = [nameCopy isEqualToString:v24];

              if (v25)
              {
                v7 = "unlock:";
              }

              else
              {
                v26 = +[NSBundle mainBundle];
                v27 = [v26 localizedStringForKey:@"Back" value:0 table:0];
                v28 = [nameCopy isEqualToString:v27];

                if (v28)
                {
                  v7 = "sendToBack:";
                }

                else
                {
                  v29 = +[NSBundle mainBundle];
                  v30 = [v29 localizedStringForKey:@"Front" value:0 table:0];
                  v31 = [nameCopy isEqualToString:v30];

                  if (v31)
                  {
                    v7 = "bringToFront:";
                  }

                  else
                  {
                    v32 = +[NSBundle mainBundle];
                    v33 = [v32 localizedStringForKey:@"Select" value:0 table:0];
                    v34 = [nameCopy isEqualToString:v33];

                    if (v34)
                    {
                      v7 = "select:";
                    }

                    else
                    {
                      v35 = +[NSBundle mainBundle];
                      v36 = [v35 localizedStringForKey:@"Select All" value:0 table:0];
                      v37 = [nameCopy isEqualToString:v36];

                      if (v37)
                      {
                        v7 = "selectAll:";
                      }

                      else
                      {
                        v38 = +[NSBundle mainBundle];
                        v39 = [v38 localizedStringForKey:@"Deselect All" value:0 table:0];
                        v40 = [nameCopy isEqualToString:v39];

                        if (v40)
                        {
                          v7 = "deselectAll:";
                        }

                        else
                        {
                          v7 = 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

- (id)accessibilityCustomActions
{
  v3 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
  crlaxTarget = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  if ([crlaxTarget allowedToEnterQuickSelectMode])
  {
    crlaxTarget2 = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
    if ([crlaxTarget2 isCurrentlyInQuickSelectMode])
    {
    }

    else
    {
      _crlaxAccessibilityFocusIsInMiniFormatter = [(CRLiOSCanvasViewControllerAccessibility *)self _crlaxAccessibilityFocusIsInMiniFormatter];

      if (_crlaxAccessibilityFocusIsInMiniFormatter)
      {
        goto LABEL_7;
      }

      v7 = [UIAccessibilityCustomAction alloc];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Select Objects" value:0 table:0];
      crlaxTarget = [v7 initWithName:v9 image:0 target:self selector:"crlaxEnterQuickSelect"];

      [v3 addObject:crlaxTarget];
    }
  }

LABEL_7:

  return v3;
}

- (void)crlaxEnterQuickSelect
{
  crlaxTarget = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  [crlaxTarget enterQuickSelectMode];
}

- (BOOL)_crlaxIsEditMenuAllowedToAppear
{
  crlaxTarget = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  delegate = [crlaxTarget delegate];

  NSSelectorFromString(@"allowEditMenuToAppear");
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate crlaxBoolValueForKey:@"allowEditMenuToAppear"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_crlaxAccessibilityFocusIsInMiniFormatter
{
  crlaxTarget = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  miniFormatterPresenter = [crlaxTarget miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  if (!isPresentingMiniFormatter)
  {
    return 0;
  }

  v6 = +[CRLAccessibility currentlyFocusedElement];
  v17 = 0;
  crlaxTarget2 = [(CRLiOSCanvasViewControllerAccessibility *)self crlaxTarget];
  interactiveCanvasController = [crlaxTarget2 interactiveCanvasController];
  canvas = [interactiveCanvasController canvas];

  v10 = objc_opt_class();
  v11 = __CRLAccessibilityCastAsSafeCategory(v10, canvas, 1, &v17);
  if (v17 == 1)
  {
    abort();
  }

  v12 = v11;

  crlaxMiniFormatterElements = [v12 crlaxMiniFormatterElements];
  v14 = [NSSet setWithArray:crlaxMiniFormatterElements];

  v15 = [v14 containsObject:v6];
  return v15;
}

@end