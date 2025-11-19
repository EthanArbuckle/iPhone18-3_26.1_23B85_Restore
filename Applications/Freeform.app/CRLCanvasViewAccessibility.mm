@interface CRLCanvasViewAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)accessibilityEditOperationAction:(id)a3;
- (BOOL)crlaxIsReadyToLoadChildren;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CRLCanvasAccessibility)crlaxCanvas;
- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLCanvasLayerAccessibility)crlaxCanvasLayer;
- (UICoordinateSpace)coordinateSpace;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)_accessibilityTextOperations;
- (id)_crlaxLeafChildren;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityElements;
- (id)accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityLabel;
- (id)commentActionTitle;
- (id)crlaxEnclosingScrollView;
- (id)focusItemsInRect:(CGRect)a3;
- (id)selectObjectsActionTitle;
- (unint64_t)accessibilityTraits;
- (void)_crlaxInsertLeafElements:(id)a3 intoArray:(id)a4;
- (void)bringSubviewToFront:(id)a3;
- (void)crlaxDidInvalidateChildren;
- (void)crlaxLoadAccessibilityInformation;
- (void)crlaxLoadChildrenIntoCollection:(id)a3;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4;
- (void)sendSubviewToBack:(id)a3;
- (void)willRemoveSubview:(id)a3;
@end

@implementation CRLCanvasViewAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLCanvasAccessibility)crlaxCanvas
{
  v2 = [(CRLCanvasViewAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxCanvas];

  return v3;
}

- (CRLCanvasInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController
{
  v8 = 0;
  v2 = [(CRLCanvasViewAccessibility *)self crlaxTarget];
  v3 = [v2 controller];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLCanvasLayerAccessibility)crlaxCanvasLayer
{
  v8 = 0;
  v2 = [(CRLCanvasViewAccessibility *)self crlaxTarget];
  v3 = [v2 canvasLayer];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxEnclosingScrollView
{
  v3 = [(CRLCanvasViewAccessibility *)self crlaxTarget];
  v4 = [v3 enclosingScrollView];

  if (!v4)
  {
    if ([(CRLCanvasViewAccessibility *)self crlaxRespondsToSelector:"crlaxSearchForAncestorViewOfType:" fromOptionalExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasViewAccessibilityExtras])
    {
      v4 = [(CRLCanvasViewAccessibility *)self crlaxSearchForAncestorViewOfType:NSClassFromString(@"CRLScrollView")];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)crlaxLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CRLCanvasViewAccessibility;
  [(CRLCanvasViewAccessibility *)&v5 crlaxLoadAccessibilityInformation];
  v3 = [(CRLCanvasViewAccessibility *)self crlaxCanvas];
  v4 = [v3 crlaxAllReps];
  [v4 makeObjectsPerformSelector:"crlaxLoadAccessibilityInformation"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(CRLCanvasViewAccessibility *)self crlaxChildren];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)accessibilityElements
{
  v2 = [(CRLCanvasViewAccessibility *)self crlaxChildren];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  if ([v2 count])
  {
    v5 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v7 = [v2 objectAtIndexedSubscript:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObject:v7];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = v5;
        }
      }

      else
      {
        [v4 addObject:v7];
      }

      ++v5;
    }

    while (v5 < [v2 count]);
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v6, [v3 count]);
      [v4 insertObjects:v3 atIndexes:v8];
      v9 = [v4 copy];

      v2 = v9;
    }
  }

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(CRLCanvasViewAccessibility *)self crlaxInteractiveCanvasController];
  v4 = [v3 crlaxTarget];
  v5 = [v4 freehandDrawingToolkit];
  v6 = [v5 isInDrawingMode];

  v7 = -1.0;
  v8 = -1.0;
  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = CRLCanvasViewAccessibility;
    [(CRLCanvasViewAccessibility *)&v9 accessibilityActivationPoint:-1.0];
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)crlaxIsReadyToLoadChildren
{
  v3 = [(CRLCanvasViewAccessibility *)self crlaxInteractiveCanvasController];
  if ([v3 crlaxCurrentlyWaitingOnThreadedLayoutAndRender])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(CRLCanvasViewAccessibility *)self crlaxShouldPreventReloadingChildren];
  }

  return v4;
}

- (void)crlaxLoadChildrenIntoCollection:(id)a3
{
  v4 = a3;
  if (([(CRLCanvasViewAccessibility *)self accessibilityElementsHidden]& 1) == 0)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0;
    v5 = [(CRLCanvasViewAccessibility *)self crlaxTarget];
    v6 = [v5 subviews];

    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsClass(v7, v6, 1, &v46);
    if (v46 == 1)
    {
LABEL_39:
      abort();
    }

    v9 = v8;

    v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v48;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          if (([v14 accessibilityElementsHidden] & 1) == 0 && (objc_msgSend(v14, "isHidden") & 1) == 0)
          {
            [v14 alpha];
            if (v15 > 0.0)
            {
              if ([v14 isAccessibilityElement])
              {
                [v4 addObject:v14];
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v11);
    }

    v16 = [(CRLCanvasViewAccessibility *)self crlaxInteractiveCanvasController];
    v17 = [v16 crlaxFilteredTopLevelReps];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v42 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v24 = [v23 crlaxAccessibilityElement];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_26;
            }

            v24 = v23;
          }

          v25 = v24;
          if (v24)
          {
            [v4 addObject:v24];

            continue;
          }

LABEL_26:
          if (CRLAccessibilityShouldPerformValidationChecks())
          {
            ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
            if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"crlaxAccessibilityElement must return an element!", v27, v28, v29, v30, v31, v38))
            {
              goto LABEL_39;
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v20);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v4;
    v33 = [v32 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v39;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v39 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v38 + 1) + 8 * k);
          [v37 crlaxEnsureChildrenAreLoaded];
          [v37 setAccessibilityContainer:self];
        }

        v34 = [v32 countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v34);
    }
  }
}

- (void)crlaxDidInvalidateChildren
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 applicationState];

  if (![(CRLCanvasViewAccessibility *)self _crlaxHasEnqueuedBlockToLoadChildren]&& ![(CRLCanvasViewAccessibility *)self _crlaxIsBeingDeallocated]&& ![(CRLCanvasViewAccessibility *)self crlaxShouldPreventReloadingChildren]&& v4 != 2)
  {
    v5 = [(CRLCanvasViewAccessibility *)self crlaxInteractiveCanvasController];
    v6 = [v5 crlaxCanvas];
    v7 = [v6 crlaxTarget];

    [(CRLCanvasViewAccessibility *)self _crlaxSetHasEnqueuedBlockToLoadChildren:1];
    [v7 i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003DEF68;
    v8[3] = &unk_10183AF10;
    objc_copyWeak(&v9, &location);
    [v7 afterLayoutIncludingLayers:1 performBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  CRLAccessibilityPostLayoutChangedNotification(0);
}

- (id)accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(CRLCanvasViewAccessibility *)self pointInside:v7 withEvent:x, y])
  {
    v8 = self;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v9 = [(CRLCanvasViewAccessibility *)v8 subviews];
    v10 = [v9 countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v71;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v71 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v70 + 1) + 8 * v13);
        [v14 convertPoint:v8 fromView:{x, y}];
        v15 = [v14 __accessibilityHitTest:v7 withEvent:?];
        if (([v15 isAccessibilityElement] & 1) != 0 || (v16 = objc_msgSend(v15, "accessibilityTraits"), (CRLAccessibilityTraitTouchContainer & v16) != 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 isHidden] & 1) == 0)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v70 objects:v77 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v17 = [v15 isAccessibilityElement];

      if (v17)
      {
        goto LABEL_71;
      }
    }

    else
    {
LABEL_13:

      v15 = 0;
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v18 = [(CRLCanvasViewAccessibility *)v8 subviews];
    v19 = [v18 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v67;
LABEL_18:
      v22 = 0;
      while (1)
      {
        if (*v67 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v66 + 1) + 8 * v22);
        [v23 convertPoint:v8 fromView:{x, y}];
        v24 = [v23 __accessibilityHitTest:v7 withEvent:?];
        if ([v24 isAccessibilityElement])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v24 isHidden])
          {
            break;
          }
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v20)
          {
            goto LABEL_18;
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:

      v25 = [(CRLCanvasViewAccessibility *)v8 crlaxCanvas];
      v26 = [v25 crlaxMiniFormatterElements];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v18 = v26;
      v27 = [v18 countByEnumeratingWithState:&v62 objects:v75 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v63;
        while (2)
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v63 != v29)
            {
              objc_enumerationMutation(v18);
            }

            v31 = *(*(&v62 + 1) + 8 * i);
            v61 = 0;
            v32 = v31;
            v33 = objc_opt_class();
            v34 = __CRLAccessibilityCastAsClass(v33, v32, 1, &v61);
            if (v61 == 1)
            {
LABEL_76:
              abort();
            }

            v35 = v34;

            if (v35)
            {
              [v35 convertPoint:v8 fromView:{x, y}];
              v24 = [v35 __accessibilityHitTest:v7 withEvent:?];
              if ([v24 isAccessibilityElement])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v24 isHidden])
                {
                  v37 = v18;
                  goto LABEL_68;
                }
              }
            }
          }

          v28 = [v18 countByEnumeratingWithState:&v62 objects:v75 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v36 = [(CRLCanvasViewAccessibility *)v8 crlaxCanvas];
      v37 = [v36 crlaxMiniFormatterView];

      if (v37 && ([v37 frame], v79.x = x, v79.y = y, CGRectContainsPoint(v80, v79)))
      {
        v24 = 0;
      }

      else
      {
        v38 = [(CRLCanvasViewAccessibility *)v8 crlaxCanvas];
        v39 = [v38 crlaxTopLevelRepsOmittingMiniFormatterElements];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v35 = v39;
        v40 = [v35 countByEnumeratingWithState:&v57 objects:v74 count:16];
        if (v40)
        {
          v41 = v40;
          v56 = *v58;
          while (2)
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v58 != v56)
              {
                objc_enumerationMutation(v35);
              }

              v43 = *(*(&v57 + 1) + 8 * j);
              v61 = 0;
              v44 = v43;
              v45 = objc_opt_class();
              v46 = __CRLAccessibilityCastAsClass(v45, v44, 1, &v61);
              if (v61 == 1)
              {
                goto LABEL_76;
              }

              v47 = v46;

              if (v47)
              {
                [v47 convertPoint:v8 fromView:{x, y}];
                v24 = [v47 __accessibilityHitTest:v7 withEvent:?];
                if ([v24 isAccessibilityElement])
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v24 isHidden])
                  {
                    v48 = v35;
                    v37 = v55;
                    goto LABEL_67;
                  }
                }
              }
            }

            v41 = [v35 countByEnumeratingWithState:&v57 objects:v74 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }
        }

        v48 = [(CRLCanvasViewAccessibility *)v8 crlaxInteractiveCanvasController];
        v49 = [v48 accessibilityHitTest:v7 withEvent:{x, y}];
        v50 = v49;
        if (v49 && (([v49 isAccessibilityElement] & 1) != 0 || (v51 = objc_msgSend(v50, "accessibilityTraits"), (CRLAccessibilityTraitTouchContainer & v51) != 0)) || (-[CRLCanvasViewAccessibility __accessibilityHitTest:withEvent:](v8, "__accessibilityHitTest:withEvent:", v7, x, y), v47 = objc_claimAutoreleasedReturnValue(), v50, (v50 = v47) != 0))
        {
          v52 = v50;

          v47 = v52;
        }

        else
        {
          v52 = v8;
        }

        v37 = v55;
        if (v15 && (!v52 || [(CRLCanvasViewAccessibility *)v8 crlaxHitTestingShouldReplaceElement:v52 withTouchContainerView:v15]))
        {
          v53 = v15;

          v52 = v53;
        }

        v8 = v52;
        v24 = v8;
LABEL_67:

LABEL_68:
      }
    }

    v15 = v24;
LABEL_71:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)accessibilityLabel
{
  v2 = [(CRLCanvasViewAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxShouldLabelCanvas];

  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Canvas" value:0 table:0];

    v12 = __CRLAccessibilityStringForVariables(1, v5, v6, v7, v8, v9, v10, v11, @"__CRLAccessibilityStringForVariablesSentinel");
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CRLCanvasViewAccessibility;
  v3 = [(CRLCanvasViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(CRLCanvasViewAccessibility *)self isAccessibilityElement];
  v5 = CRLAccessibilityTraitTouchContainer;
  if (v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v5.receiver = self;
  v5.super_class = CRLCanvasViewAccessibility;
  v2 = [(CRLCanvasViewAccessibility *)&v5 _accessibilitySpeakThisElementsAndStrings];
  v3 = [v2 crl_arrayOfObjectsPassingTest:&stru_10185E6A8];

  return v3;
}

- (id)accessibilityDropPointDescriptors
{
  [(CRLCanvasViewAccessibility *)self crlaxCGRectValueForKey:@"_accessibilityVisibleFrame"];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CRLCanvasViewAccessibility *)self crlaxTarget];
  [v11 convertRect:0 fromView:{v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [UIAccessibilityLocationDescriptor alloc];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Drop Item" value:0 table:0];
  v23 = sub_100120414(v13, v15, v17, v19);
  v25 = v24;
  v26 = [(CRLCanvasViewAccessibility *)self crlaxTarget];
  v27 = [v20 initWithName:v22 point:v26 inView:{v23, v25}];

  v30 = v27;
  v28 = [NSArray arrayWithObjects:&v30 count:1];

  return v28;
}

- (id)_accessibilityTextOperations
{
  v3 = +[NSMutableArray array];
  v7.receiver = self;
  v7.super_class = CRLCanvasViewAccessibility;
  v4 = [(CRLCanvasViewAccessibility *)&v7 _accessibilityTextOperations];
  [v3 crlaxAddObjectsFromArrayIfNotNil:v4];

  v5 = [(CRLCanvasViewAccessibility *)self selectObjectsActionTitle];
  [v3 addObject:v5];

  return v3;
}

- (BOOL)accessibilityEditOperationAction:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasViewAccessibility *)self selectObjectsActionTitle];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(CRLCanvasViewAccessibility *)self crlaxInteractiveCanvasController];
    v8 = [v7 crlaxCanvasEditor];
    [v8 enterQuickSelectMode:0];

    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRLCanvasViewAccessibility;
    v9 = [(CRLCanvasViewAccessibility *)&v11 accessibilityEditOperationAction:v4];
  }

  return v9;
}

- (UICoordinateSpace)coordinateSpace
{
  v2 = +[UIScreen mainScreen];
  v3 = [v2 coordinateSpace];

  return v3;
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[NSMutableArray array];
  v9 = [(CRLCanvasViewAccessibility *)self _crlaxLeafChildren];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        [v14 accessibilityFrame];
        v27.origin.x = v15;
        v27.origin.y = v16;
        v27.size.width = v17;
        v27.size.height = v18;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        if (CGRectContainsRect(v26, v27) && [v14 conformsToProtocol:&OBJC_PROTOCOL___UIFocusItem])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_crlaxLeafChildren
{
  v3 = +[NSMutableArray array];
  [(CRLCanvasViewAccessibility *)self _crlaxInsertLeafElements:self intoArray:v3];
  [v3 removeObject:self];

  return v3;
}

- (void)didAddSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLCanvasViewAccessibility;
  [(CRLCanvasViewAccessibility *)&v4 didAddSubview:a3];
  [(CRLCanvasViewAccessibility *)self crlaxInvalidateChildren];
}

- (void)willRemoveSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLCanvasViewAccessibility;
  [(CRLCanvasViewAccessibility *)&v4 willRemoveSubview:a3];
  [(CRLCanvasViewAccessibility *)self crlaxInvalidateChildren];
}

- (void)exchangeSubviewAtIndex:(int64_t)a3 withSubviewAtIndex:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = CRLCanvasViewAccessibility;
  [(CRLCanvasViewAccessibility *)&v5 exchangeSubviewAtIndex:a3 withSubviewAtIndex:a4];
  [(CRLCanvasViewAccessibility *)self crlaxInvalidateChildren];
}

- (void)bringSubviewToFront:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLCanvasViewAccessibility;
  [(CRLCanvasViewAccessibility *)&v4 bringSubviewToFront:a3];
  [(CRLCanvasViewAccessibility *)self crlaxInvalidateChildren];
}

- (void)sendSubviewToBack:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLCanvasViewAccessibility;
  [(CRLCanvasViewAccessibility *)&v4 sendSubviewToBack:a3];
  [(CRLCanvasViewAccessibility *)self crlaxInvalidateChildren];
}

- (void)dealloc
{
  [(CRLCanvasViewAccessibility *)self _crlaxSetBeingDeallocated:1];
  [(CRLCanvasViewAccessibility *)self crlaxInvalidateChildren];
  v3.receiver = self;
  v3.super_class = CRLCanvasViewAccessibility;
  [(CRLCanvasViewAccessibility *)&v3 dealloc];
}

- (void)_crlaxInsertLeafElements:(id)a3 intoArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessibilityElements];
  if ([v6 isAccessibilityElement])
  {
    [v7 addObject:v6];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(CRLCanvasViewAccessibility *)self _crlaxInsertLeafElements:*(*(&v14 + 1) + 8 * v13) intoArray:v7, v14];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (id)selectObjectsActionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Select Objects…" value:0 table:0];

  return v3;
}

- (id)commentActionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Comment" value:0 table:0];

  return v3;
}

@end