@interface CRLCanvasKnobAccessibilityElement
+ (id)_connectionActionMidpointsFromBoundaries:(id)a3;
+ (id)_disconnectionActionTestValuesFromBoundaries:(id)a3 withCanvasSnapRadius:(double)a4;
+ (id)actionNameForInsertConnectedDuplicateFromParentWithText:(BOOL)a3;
+ (id)crlaxSortKnobElements:(id)a3;
+ (int)_crlaxCategoryRankForKnobElement:(id)a3;
+ (void)_addBoundariesFromRect:(CGRect)a3 toXBoundarySet:(id)a4 andYBoundarySet:(id)a5;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_crlaxPointIsOnMagnet:(CGPoint)a3 forRep:(id)a4;
- (BOOL)_isValidToDecrementTag:(unint64_t)a3 toNextPosition:(CGPoint)a4;
- (BOOL)accessibilityActivate;
- (BOOL)disconnectConnectedConnectionLineEndIfNecessary;
- (BOOL)i_crlaxEnsureReciprocalConnectionsAfterConnectingConnectionLineToRep:(id)a3;
- (BOOL)isAccessibilityElement;
- (BOOL)isEqualToKnob:(id)a3;
- (BOOL)isOnShapeWithText;
- (CGPoint)_targetUnscaledCanvasPointForConnectionActionByActionTemplate:(id)a3;
- (CGPoint)crlaxKnobPositionAdjustedByDistance:(double)a3 inDirection:(int)a4;
- (CGRect)accessibilityFrame;
- (CRLCanvasKnobAccessibility)knob;
- (CRLCanvasKnobAccessibilityElement)initWithAccessibilityParent:(id)a3;
- (CRLCanvasKnobAccessibilityElement)initWithKnobTag:(unint64_t)a3 nodeIndex:(unint64_t)a4 parentRep:(id)a5 identifier:(id)a6;
- (CRLCanvasRepAccessibility)parentRep;
- (double)crlaxMoveActionOffsetDistance;
- (id)_actionToDisconnectConnectionLineFromRep;
- (id)_crlaxAllRepsThatOccludeConnectionKnobDragsOrderedIncludeAllGroupReps:(BOOL)a3;
- (id)_crlaxSmartPathSourceForAdjustment;
- (id)_layoutsForConnectionActionNames;
- (id)_makeInitialConnectionActionsTemplates;
- (id)_targetUnscaledCanvasPointsForConnectionActionsByRepForConnectingFromActionTemplates:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)makeCustomActionsForConnectingToNearbyElements;
- (id)makeCustomActionsForMagnetSnapping;
- (id)newActionWithName:(id)a3 toConnectToRep:(id)a4 byDraggingToPoint:(CGPoint)a5;
- (id)newActionWithName:(id)a3 toSnapToMagnet:(unint64_t)a4 usingUnscaledCanvasPoint:(CGPoint)a5;
- (unint64_t)accessibilityTraits;
- (void)_performAccessibilityIncrementDecrementForControlKnob:(BOOL)a3;
- (void)_trackRepOcclusionsWithConnectionActionTemplates:(id)a3;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
@end

@implementation CRLCanvasKnobAccessibilityElement

- (BOOL)isAccessibilityElement
{
  v3 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v4 = [v3 crlaxInteractiveCanvasController];

  v5 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  if (![v5 crlaxIsSupported])
  {
    v8 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v6 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v7 = [v6 crlaxCanvasViewController];
  if ([v7 crlaxIsInEyeDropperMode])
  {

    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v9 = [v4 crlaxDocumentIsSharedReadOnly];

  if ((v9 & 1) == 0)
  {
    v5 = [(CRLCanvasKnobAccessibilityElement *)self knob];
    v6 = [v5 crlaxLayer];
    [v6 opacity];
    v8 = v10 > 0.00000011921;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)accessibilityLabel
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v3 = [v2 crlaxLabel];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v3 = [v2 crlaxHint];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v3 = [v2 crlaxValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3 = UIAccessibilityTraitNone;
  v4 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v5 = [v4 crlaxIsLocked];

  if (v5)
  {
    v6 = &UIAccessibilityTraitNotEnabled;
LABEL_7:
    v3 |= *v6;
    return v3;
  }

  v7 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v8 = [v7 crlaxIsAdjustable];

  if (v8)
  {
    v6 = &UIAccessibilityTraitAdjustable;
    goto LABEL_7;
  }

  v9 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v10 = [v9 crlaxIsButton];

  if (v10)
  {
    v6 = &UIAccessibilityTraitButton;
    goto LABEL_7;
  }

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v2 crlaxFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v3 = [v2 crlaxIsButton];

  return v3;
}

- (BOOL)accessibilityActivate
{
  v3 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v4 = [v3 crlaxIsButton];

  if (!v4)
  {
    return 1;
  }

  v5 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v6 = [v5 crlaxActivateButton];

  return v6;
}

- (void)accessibilityIncrement
{
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    v3 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v4 = [v3 crlaxInReadOnlyMode];

    if (v4)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Trying to increment a knob while in read-only mode. This shouldn't happen.", v6, v7, v8, v9, v10, v11))
      {
        abort();
      }
    }
  }

  v12 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  if ([v12 crlaxAdjustmentResizesShape])
  {
    [v12 crlaxCalculatedNextPositionInRepForAdjustable:1];
    [v12 crlaxMoveKnobToRepPositionInNaturalSpace:?];
    CRLAccessibilityPostLayoutChangedNotification(self);
  }

  else
  {
    [(CRLCanvasKnobAccessibilityElement *)self _performAccessibilityIncrementDecrementForControlKnob:1];
  }
}

- (void)accessibilityDecrement
{
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    v3 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v4 = [v3 crlaxInReadOnlyMode];

    if (v4)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Trying to decrement a knob while in read-only mode. This shouldn't happen.", v6, v7, v8, v9, v10, v15))
      {
        abort();
      }
    }
  }

  v16 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  if ([v16 crlaxAdjustmentResizesShape])
  {
    [v16 crlaxCalculatedNextPositionInRepForAdjustable:0];
    v12 = v11;
    v14 = v13;
    if (-[CRLCanvasKnobAccessibilityElement _isValidToDecrementTag:toNextPosition:](self, "_isValidToDecrementTag:toNextPosition:", [v16 crlaxKnobTag], v11, v13))
    {
      [v16 crlaxMoveKnobToRepPositionInNaturalSpace:{v12, v14}];
      CRLAccessibilityPostLayoutChangedNotification(self);
    }
  }

  else
  {
    [(CRLCanvasKnobAccessibilityElement *)self _performAccessibilityIncrementDecrementForControlKnob:0];
  }
}

- (id)accessibilityCustomActions
{
  v64.receiver = self;
  v64.super_class = CRLCanvasKnobAccessibilityElement;
  v3 = [(CRLCanvasKnobAccessibilityElement *)&v64 accessibilityCustomActions];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = [[NSMutableArray alloc] initWithArray:&__NSArray0__struct];
  }

  v48 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  objc_initWeak(&location, self);
  if ([v48 crlaxOffersCustomActionsForMovement])
  {
    [(CRLCanvasKnobAccessibilityElement *)self crlaxMoveActionOffsetDistance];
    v6 = v5;
    v7 = [UIAccessibilityCustomAction alloc];
    v47 = +[NSBundle mainBundle];
    v46 = [v47 localizedStringForKey:@"Move up" value:0 table:0];
    v8 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v45 = [UIImage systemImageNamed:@"arrow.up.circle.fill" withConfiguration:v8];
    v37 = v8;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000DE6D8;
    v60[3] = &unk_10183AF38;
    v9 = v48;
    v61 = v9;
    objc_copyWeak(v62, &location);
    v62[1] = v6;
    v44 = [v7 initWithName:v46 image:v45 actionHandler:v60];
    v65[0] = v44;
    v10 = [UIAccessibilityCustomAction alloc];
    v43 = +[NSBundle mainBundle];
    v42 = [v43 localizedStringForKey:@"Move down" value:0 table:0];
    v11 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v41 = [UIImage systemImageNamed:@"arrow.down.circle.fill" withConfiguration:v11];
    v36 = v11;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000DE814;
    v57[3] = &unk_10183AF38;
    v12 = v9;
    v58 = v12;
    objc_copyWeak(v59, &location);
    v59[1] = v6;
    v40 = [v10 initWithName:v42 image:v41 actionHandler:v57];
    v65[1] = v40;
    v13 = [UIAccessibilityCustomAction alloc];
    v39 = +[NSBundle mainBundle];
    v38 = [v39 localizedStringForKey:@"Move left" value:0 table:0];
    v14 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v15 = [UIImage systemImageNamed:@"arrow.left.circle.fill" withConfiguration:v14];
    v35 = v14;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000DE950;
    v54[3] = &unk_10183AF38;
    v16 = v12;
    v55 = v16;
    objc_copyWeak(v56, &location);
    v56[1] = v6;
    v17 = [v13 initWithName:v38 image:v15 actionHandler:v54];
    v65[2] = v17;
    v18 = [UIAccessibilityCustomAction alloc];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Move right" value:0 table:0];
    v21 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
    v22 = [UIImage systemImageNamed:@"arrow.right.circle.fill" withConfiguration:v21];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000DEA8C;
    v51[3] = &unk_10183AF38;
    v52 = v16;
    objc_copyWeak(v53, &location);
    v53[1] = v6;
    v23 = [v18 initWithName:v20 image:v22 actionHandler:v51];
    v65[3] = v23;
    v24 = [NSArray arrayWithObjects:v65 count:4];
    [v4 addObjectsFromArray:v24];

    objc_destroyWeak(v53);
    objc_destroyWeak(v56);

    objc_destroyWeak(v59);
    objc_destroyWeak(v62);
  }

  if ([v48 crlaxIsConnectionLineCreationKnob])
  {
    v25 = [UIAccessibilityCustomAction alloc];
    v26 = [CRLCanvasKnobAccessibilityElement actionNameForInsertConnectedDuplicateFromParentWithText:[(CRLCanvasKnobAccessibilityElement *)self isOnShapeWithText]];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000DEBC8;
    v49[3] = &unk_10183AF60;
    objc_copyWeak(&v50, &location);
    v49[4] = self;
    v27 = [v25 initWithName:v26 actionHandler:v49];
    [v4 addObject:v27];

    objc_destroyWeak(&v50);
  }

  v28 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  if (([v28 crlaxIsLocked] & 1) == 0)
  {
    v29 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v30 = [v29 crlaxInReadOnlyMode];

    if (v30)
    {
      goto LABEL_11;
    }

    v31 = [(CRLCanvasKnobAccessibilityElement *)self makeCustomActionsForConnectingToNearbyElements];
    [v4 addObjectsFromArray:v31];

    v32 = [(CRLCanvasKnobAccessibilityElement *)self _actionToDisconnectConnectionLineFromRep];
    [v4 crl_addNonNilObject:v32];

    v28 = [(CRLCanvasKnobAccessibilityElement *)self makeCustomActionsForMagnetSnapping];
    [v4 addObjectsFromArray:v28];
  }

LABEL_11:
  v33 = [v4 copy];
  objc_destroyWeak(&location);

  return v33;
}

- (id)newActionWithName:(id)a3 toConnectToRep:(id)a4 byDraggingToPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v12 = [v11 crlaxIsConnectionLineCreationKnob];

  if (v12)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000DEEE8;
    v30[3] = &unk_10183AF88;
    v30[4] = self;
    *&v30[5] = x;
    *&v30[6] = y;
    v13 = [[UIAccessibilityCustomAction alloc] initWithName:v9 actionHandler:v30];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Add Connections" value:0 table:0];
    [v13 setLocalizedActionRotorCategory:v15];
  }

  else
  {
    v16 = [(CRLCanvasKnobAccessibilityElement *)self knob];
    v17 = [v16 crlaxIsConnectionLineEndpointKnob];

    if (!v17)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v18 = [UIAccessibilityCustomAction alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000DEFA0;
    v26[3] = &unk_10183AFB0;
    v26[4] = self;
    v28 = x;
    v29 = y;
    v27 = v10;
    v13 = [v18 initWithName:v9 actionHandler:v26];
    v19 = [(CRLCanvasKnobAccessibilityElement *)self knob];
    v20 = [v19 crlaxIsConnectionLineEndpointHandleWithConnection];
    v21 = +[NSBundle mainBundle];
    v22 = v21;
    if (v20)
    {
      v23 = @"Replacement Connections";
    }

    else
    {
      v23 = @"Available Connections";
    }

    v24 = [v21 localizedStringForKey:v23 value:0 table:0];
    [v13 setLocalizedActionRotorCategory:v24];

    v14 = v27;
  }

LABEL_10:
  return v13;
}

- (id)newActionWithName:(id)a3 toSnapToMagnet:(unint64_t)a4 usingUnscaledCanvasPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000DF118;
  v13[3] = &unk_10183AF88;
  v13[4] = self;
  *&v13[5] = x;
  *&v13[6] = y;
  v9 = [[UIAccessibilityCustomAction alloc] initWithName:v8 actionHandler:v13];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Reposition Connection" value:0 table:0];
  [v9 setLocalizedActionRotorCategory:v11];

  return v9;
}

- (void)accessibilityElementDidBecomeFocused
{
  v8.receiver = self;
  v8.super_class = CRLCanvasKnobAccessibilityElement;
  [(CRLCanvasKnobAccessibilityElement *)&v8 accessibilityElementDidBecomeFocused];
  v7 = 0;
  v3 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v6 = v5;

  if (v6)
  {
    [v6 setHighlighted:1];
  }
}

- (void)accessibilityElementDidLoseFocus
{
  v8.receiver = self;
  v8.super_class = CRLCanvasKnobAccessibilityElement;
  [(CRLCanvasKnobAccessibilityElement *)&v8 accessibilityElementDidLoseFocus];
  v7 = 0;
  v3 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v6 = v5;

  if (v6)
  {
    [v6 setHighlighted:0];
  }
}

- (void)_performAccessibilityIncrementDecrementForControlKnob:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v6 = [v5 crlaxTarget];
  v7 = [v6 rep];

  v8 = [(CRLCanvasKnobAccessibilityElement *)self _crlaxSmartPathSourceForAdjustment];
  v22 = 0;
  v9 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v10 = [v9 crlaxInteractiveCanvasController];

  v11 = objc_opt_class();
  v12 = __CRLAccessibilityCastAsClass(v11, v10, 1, &v22);
  if (v22 == 1 || (v13 = v12, v10, v22 = 0, [v7 layout], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v15, v14, 1, &v22), v16 = objc_claimAutoreleasedReturnValue(), v22 == 1))
  {
    abort();
  }

  v17 = v16;

  v18 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v19 = [v17 crlaxCommandForAccessibilityIncrementDecrement:v3 forKnobTag:objc_msgSend(v18 inSmartPathSource:{"crlaxKnobTag"), v8}];

  if (v19)
  {
    v20 = [v13 commandController];
    [v20 enqueueCommand:v19];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DF4C0;
  v21[3] = &unk_10183AB38;
  v21[4] = self;
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v21, 0.5);
}

- (id)_crlaxSmartPathSourceForAdjustment
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v3 = [v2 crlaxTarget];
  v4 = [v3 rep];

  v23 = 0;
  v5 = [v4 layout];
  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v23);
  if (v23 == 1)
  {
    goto LABEL_11;
  }

  v8 = v7;

  if (v8)
  {
    v22 = 0;
    v9 = [v8 pathSource];
    v10 = objc_opt_class();
    v11 = __CRLAccessibilityCastAsClassAndProtocol(v10, &OBJC_PROTOCOL___CRLSmartPathSource, v9, 1, &v22);
    if (v22 != 1)
    {
      v12 = v11;
      goto LABEL_8;
    }

LABEL_11:
    abort();
  }

  v21 = 0;
  v13 = [v4 crlaxValueForKey:@"maskInfo"];
  v14 = objc_opt_class();
  v15 = __CRLAccessibilityCastAsClass(v14, v13, 1, &v21);
  if (v21 == 1)
  {
    goto LABEL_11;
  }

  v9 = v15;

  v20 = 0;
  v16 = [v9 pathSource];
  v17 = objc_opt_class();
  v18 = __CRLAccessibilityCastAsClassAndProtocol(v17, &OBJC_PROTOCOL___CRLSmartPathSource, v16, 1, &v20);
  if (v20 == 1)
  {
    goto LABEL_11;
  }

  v12 = v18;

LABEL_8:

  return v12;
}

- (id)_actionToDisconnectConnectionLineFromRep
{
  v3 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v4 = [v3 crlaxIsConnectionLineEndpointHandleWithConnection];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Disconnect" value:0 table:0];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DF79C;
    v9[3] = &unk_10183AFD8;
    v9[4] = self;
    v7 = [[UIAccessibilityCustomAction alloc] initWithName:v6 actionHandler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isValidToDecrementTag:(unint64_t)a3 toNextPosition:(CGPoint)a4
{
  x = a4.x;
  v6 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v6 crlaxPosition];
  v9 = sub_10011F31C(v7, v8, x);
  v11 = v10;

  v12 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  [v12 crlaxFrameInUnscaledCanvas];
  sub_10011F31C(v13, v14, 10.0);

  v15 = sub_10011ECB4();
  v19 = fabs(v9);
  v20 = fabs(v11);

  return sub_10011EF78(v15, v16, v17, v18, v19, v20);
}

+ (id)actionNameForInsertConnectedDuplicateFromParentWithText:(BOOL)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"Duplicate, excluding text, and connect";
  }

  else
  {
    v6 = @"Duplicate and connect";
  }

  v7 = [v4 localizedStringForKey:v6 value:0 table:0];

  return v7;
}

- (CRLCanvasKnobAccessibilityElement)initWithKnobTag:(unint64_t)a3 nodeIndex:(unint64_t)a4 parentRep:(id)a5 identifier:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = CRLCanvasKnobAccessibilityElement;
  v12 = [(CRLAccessibilityElement *)&v15 initWithAccessibilityParent:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_parentRep, v10);
    v13->_knobTag = a3;
    v13->_knobNodeIndex = a4;
    objc_storeStrong(&v13->_crlaxIdentifier, a6);
  }

  return v13;
}

- (CRLCanvasKnobAccessibilityElement)initWithAccessibilityParent:(id)a3
{
  v4 = a3;
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Use designated initializer!", v6, v7, v8, v9, v10, v13))
    {
      abort();
    }
  }

  v11 = [(CRLCanvasKnobAccessibilityElement *)self initWithKnobTag:0 nodeIndex:0x7FFFFFFFFFFFFFFFLL parentRep:0 identifier:0];

  return v11;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v3 = [v2 crlaxUserInputLabels];

  return v3;
}

- (BOOL)isEqualToKnob:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasKnobAccessibilityElement *)self knobTag];
  if (v5 == [v4 crlaxKnobTag] && (v6 = -[CRLCanvasKnobAccessibilityElement knobNodeIndex](self, "knobNodeIndex"), v6 == objc_msgSend(v4, "crlaxNodeIndex")))
  {
    v7 = [(CRLCanvasKnobAccessibilityElement *)self knob];
    v8 = [v7 crlaxIdentifier];
    v9 = [v4 crlaxIdentifier];
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = 0;
      if (v10 && v11)
      {
        v13 = [v10 isEqualToString:v11];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGPoint)crlaxKnobPositionAdjustedByDistance:(double)a3 inDirection:(int)a4
{
  v7 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v7 crlaxPosition];
  v9 = v8;
  v11 = v10;

  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v12 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
        v13 = [v12 crlaxLayout];
        v14 = [v13 crlaxInspectorGeometry];
        [v14 crlaxAngleInRadians];
        v9 = v9 - sin(v15) * a3;

        v16 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
        v17 = [v16 crlaxLayout];
        v18 = [v17 crlaxInspectorGeometry];
        [v18 crlaxAngleInRadians];
        v20 = cos(v19);
LABEL_11:
        v11 = v11 + v20 * a3;

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v26 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v27 = [v26 crlaxLayout];
    v28 = [v27 crlaxInspectorGeometry];
    [v28 crlaxAngleInRadians];
    v9 = v9 + sin(v29) * a3;

    v16 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v17 = [v16 crlaxLayout];
    v18 = [v17 crlaxInspectorGeometry];
    [v18 crlaxAngleInRadians];
    v31 = cos(v30);
LABEL_10:
    v20 = -v31;
    goto LABEL_11;
  }

  if (a4 == 2)
  {
    v32 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v33 = [v32 crlaxLayout];
    v34 = [v33 crlaxInspectorGeometry];
    [v34 crlaxAngleInRadians];
    v9 = v9 - cos(v35) * a3;

    v16 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v17 = [v16 crlaxLayout];
    v18 = [v17 crlaxInspectorGeometry];
    [v18 crlaxAngleInRadians];
    v31 = sin(v36);
    goto LABEL_10;
  }

  if (a4 == 3)
  {
    v21 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v22 = [v21 crlaxLayout];
    v23 = [v22 crlaxInspectorGeometry];
    [v23 crlaxAngleInRadians];
    v9 = v9 + cos(v24) * a3;

    v16 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
    v17 = [v16 crlaxLayout];
    v18 = [v17 crlaxInspectorGeometry];
    [v18 crlaxAngleInRadians];
    v20 = sin(v25);
    goto LABEL_11;
  }

LABEL_12:
  v37 = v9;
  v38 = v11;
  result.y = v38;
  result.x = v37;
  return result;
}

- (id)makeCustomActionsForConnectingToNearbyElements
{
  v3 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v4 = [v3 crlaxIsConnectionLineCreationKnob];

  v95 = self;
  v5 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v6 = [v5 crlaxIsConnectionLineEndpointKnob];

  v88 = v4;
  if ((v4 & 1) == 0 && !v6)
  {
    v86 = 0;
    goto LABEL_65;
  }

  v7 = [(CRLCanvasKnobAccessibilityElement *)self _makeInitialConnectionActionsTemplates];
  [(CRLCanvasKnobAccessibilityElement *)self _trackRepOcclusionsWithConnectionActionTemplates:v7];
  v8 = [NSSet alloc];
  v9 = [(CRLCanvasKnobAccessibilityElement *)v95 _layoutsForConnectionActionNames];
  v10 = [v8 initWithArray:v9];
  v92 = [CRLCanvasRepAccessibility crlaxDisambiguatedConnectionDescriptionsForSet:v10];

  v90 = [(CRLCanvasKnobAccessibilityElement *)v95 _targetUnscaledCanvasPointsForConnectionActionsByRepForConnectingFromActionTemplates:v7];
  v86 = +[NSMutableArray array];
  v11 = +[NSBundle mainBundle];
  v89 = [v11 localizedStringForKey:@"Connect to %@" value:0 table:0];

  v102 = 0;
  v12 = [(CRLCanvasKnobAccessibilityElement *)v95 parentRep];
  v13 = [v12 crlaxInteractiveCanvasController];

  v14 = objc_opt_class();
  v87 = __CRLAccessibilityCastAsClass(v14, v13, 1, &v102);
  if (v102 == 1)
  {
LABEL_68:
    abort();
  }

  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v7;
  p_info = &OBJC_METACLASS_____CRLCanvasRepAccessibility_super.info;
  v97 = [obj countByEnumeratingWithState:&v98 objects:v103 count:16];
  if (v97)
  {
    v96 = *v99;
    v93 = v6;
    do
    {
      v16 = 0;
      do
      {
        if (*v99 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v98 + 1) + 8 * v16);
        v18 = [v17 repAXForConnecting];
        v19 = [v18 crlaxTarget];
        v20 = [v19 layout];

        v21 = [p_info + 6 crlaxBoardItemIDForLayout:v20];
        if (v21)
        {
          v22 = [v92 objectForKeyedSubscript:v21];
          if (v6)
          {
            v102 = 0;
            v23 = [(CRLCanvasKnobAccessibilityElement *)v95 parentRep];
            v24 = [v23 crlaxLayout];

            v25 = objc_opt_class();
            v26 = __CRLAccessibilityCastAsClass(v25, v24, 1, &v102);
            if (v102 == 1)
            {
              goto LABEL_68;
            }

            v27 = v26;

            if (v27)
            {
              v102 = 0;
              v28 = [v27 connectedFrom];
              v29 = [v87 repForLayout:v28];

              v30 = objc_opt_class();
              v31 = __CRLAccessibilityCastAsSafeCategory(v30, v29, 1, &v102);
              if (v102 == 1)
              {
                goto LABEL_68;
              }

              v32 = v31;

              v102 = 0;
              v33 = [v27 connectedTo];
              v34 = [v87 repForLayout:v33];

              v35 = objc_opt_class();
              v36 = __CRLAccessibilityCastAsSafeCategory(v35, v34, 1, &v102);
              if (v102 == 1)
              {
                goto LABEL_68;
              }

              v37 = v36;

              v38 = [v17 repAXForConnecting];
              if (v38 != v32)
              {
                v39 = [v17 repAXForConnecting];

                v40 = v39 == v37;
                v6 = v93;
                p_info = &OBJC_METACLASS_____CRLCanvasRepAccessibility_super.info;
                if (!v40)
                {
                  goto LABEL_18;
                }

LABEL_59:

                goto LABEL_60;
              }

LABEL_57:

              goto LABEL_58;
            }

LABEL_18:
          }

          if (!+[CRLAccessibility isVoiceOverEnabled](CRLAccessibility, "isVoiceOverEnabled") && !+[CRLAccessibility isSwitchControlEnabled])
          {
LABEL_47:
            v27 = 0;
            goto LABEL_53;
          }

          v94 = v22;
          if (v88)
          {
            v41 = [(CRLCanvasKnobAccessibilityElement *)v95 parentRep];
            v42 = [v41 crlaxConnectedLayouts];
            v43 = [v42 containsObject:v20];

            if (v43)
            {
              v44 = [(CRLCanvasKnobAccessibilityElement *)v95 parentRep];
              v45 = [v44 clraxNumberOfStrictlyInboundConnectionsFromLayout:v20];

              v46 = [(CRLCanvasKnobAccessibilityElement *)v95 parentRep];
              v47 = [v46 clraxNumberOfStrictlyOutboundConnectionsToLayout:v20];

              v48 = [(CRLCanvasKnobAccessibilityElement *)v95 parentRep];
              v49 = [v48 clraxNumberOfBidirectionalSingleConnectionsForLayout:v20];
              goto LABEL_37;
            }

LABEL_32:
            v49 = 0;
            v47 = 0;
            v45 = 0;
          }

          else
          {
            if (!v6)
            {
              goto LABEL_32;
            }

            v102 = 0;
            v50 = [(CRLCanvasKnobAccessibilityElement *)v95 parentRep];
            v51 = [v50 crlaxLayout];

            v52 = objc_opt_class();
            v53 = __CRLAccessibilityCastAsClass(v52, v51, 1, &v102);
            if (v102 == 1)
            {
              goto LABEL_68;
            }

            v48 = v53;

            if (v48)
            {
              v102 = 0;
              v54 = [v48 connectedFrom];
              v55 = [v87 repForLayout:v54];

              v56 = objc_opt_class();
              v57 = __CRLAccessibilityCastAsSafeCategory(v56, v55, 1, &v102);
              if (v102 == 1)
              {
                goto LABEL_68;
              }

              v58 = v57;

              v102 = 0;
              v59 = [v48 connectedTo];
              v60 = [v87 repForLayout:v59];

              v61 = objc_opt_class();
              v62 = __CRLAccessibilityCastAsSafeCategory(v61, v60, 1, &v102);
              if (v102 == 1)
              {
                goto LABEL_68;
              }

              v63 = v62;

              v64 = [v58 crlaxConnectedLayouts];
              v65 = [v64 containsObject:v20];

              v66 = v58;
              if ((v65 & 1) != 0 || ([v63 crlaxConnectedLayouts], v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "containsObject:", v20), v67, v66 = v63, v68))
              {
                v45 = [v66 clraxNumberOfStrictlyInboundConnectionsFromLayout:v20];
                v47 = [v66 clraxNumberOfStrictlyOutboundConnectionsToLayout:v20];
                v49 = [v66 clraxNumberOfBidirectionalSingleConnectionsForLayout:v20];
              }

              else
              {
                v49 = 0;
                v47 = 0;
                v45 = 0;
              }
            }

            else
            {
              v49 = 0;
              v47 = 0;
              v45 = 0;
            }

LABEL_37:
          }

          v69 = &v47[v45];
          v70 = &v47[v45 + v49];
          if (v70)
          {
            if (v45 != v70 && v69 && v47 != v70)
            {
              v71 = CRLAccessibilityStringsDictKey(@"full.connections.summary");
              [NSString localizedStringWithFormat:v71, &v47[v45 + v49], v45, v47, v49];
              goto LABEL_51;
            }

            if (v45 == v70)
            {
              v71 = CRLAccessibilityStringsDictKey(@"inbound.connections.count");
              v82 = v45;
            }

            else
            {
              if (v47 != v70)
              {
                v22 = v94;
                if (v69)
                {
                  goto LABEL_47;
                }

                v71 = CRLAccessibilityStringsDictKey(@"bidirectional.connections.count");
                v27 = [NSString localizedStringWithFormat:v71, v49];
LABEL_52:

LABEL_53:
                v72 = [NSString stringWithFormat:v89, v22];
                v83 = @"__CRLAccessibilityStringForVariablesSentinel";
                v32 = __CRLAccessibilityStringForVariables(1, v72, v73, v74, v75, v76, v77, v78, v27);

                v37 = [v90 objectForKeyedSubscript:v21];
                if ([v32 length] && v37)
                {
                  v79 = [v17 repAXForConnecting];
                  [v37 CGPointValue];
                  v38 = [(CRLCanvasKnobAccessibilityElement *)v95 newActionWithName:v32 toConnectToRep:v79 byDraggingToPoint:?];

                  if (v38)
                  {
                    [v86 addObject:v38];
                  }

                  goto LABEL_57;
                }

LABEL_58:

                v6 = v93;
                p_info = (&OBJC_METACLASS_____CRLCanvasRepAccessibility_super + 32);
                goto LABEL_59;
              }

              v71 = CRLAccessibilityStringsDictKey(@"outbound.connections.count");
              v82 = v47;
            }

            [NSString localizedStringWithFormat:v71, v82, v83, v84, v85];
            v27 = LABEL_51:;
            v22 = v94;
            goto LABEL_52;
          }

          v27 = 0;
          v22 = v94;
          goto LABEL_53;
        }

LABEL_60:

        v16 = v16 + 1;
      }

      while (v97 != v16);
      v80 = [obj countByEnumeratingWithState:&v98 objects:v103 count:16];
      v97 = v80;
    }

    while (v80);
  }

LABEL_65:

  return v86;
}

- (BOOL)i_crlaxEnsureReciprocalConnectionsAfterConnectingConnectionLineToRep:(id)a3
{
  v4 = a3;
  v39 = 0;
  v5 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v6 = [v5 crlaxLayout];
  v7 = [v6 crlaxTarget];

  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsClass(v8, v7, 1, &v39);
  if (v39 == 1)
  {
    goto LABEL_15;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v4 crlaxLayout];
    v12 = [v11 crlaxTarget];
    [v12 addConnectedLayout:v10];

    v13 = [v10 connectedTo];
    v14 = [v4 crlaxLayout];
    v15 = [v14 crlaxTarget];
    if (v13 == v15)
    {
      v19 = 1;
    }

    else
    {
      v16 = [v10 connectedFrom];
      v17 = [v4 crlaxLayout];
      v18 = [v17 crlaxTarget];
      v19 = v16 == v18;
    }

    if (!CRLAccessibilityShouldPerformValidationChecks() || v19 || (v21 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(), !__CRLAccessibilityHandleValidationErrorWithDescription(v21, 0, @"Unable to connect connection line to rep", v22, v23, v24, v25, v26, v38)))
    {
      v27 = [v4 crlaxLayout];
      v28 = [v27 crlaxTarget];
      v29 = [v28 connectedLayouts];
      v30 = [v29 containsObject:v10];

      if (!CRLAccessibilityShouldPerformValidationChecks() || (v30 & 1) != 0 || (ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(), !__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unable to connect rep back to connection line", v32, v33, v34, v35, v36, v38)))
      {
        v20 = v19 & v30;
        goto LABEL_14;
      }
    }

LABEL_15:
    abort();
  }

  v20 = 0;
LABEL_14:

  return v20;
}

- (BOOL)disconnectConnectedConnectionLineEndIfNecessary
{
  v3 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v4 = [v3 crlaxIsConnectionLineEndpointHandleWithConnection];

  if (!v4)
  {
    LOBYTE(v67) = 0;
    return v67;
  }

  v101 = 0;
  v5 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v6 = [v5 crlaxInteractiveCanvasController];

  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClass(v7, v6, 1, &v101);
  if (v101 == 1)
  {
    abort();
  }

  v9 = v8;

  v74 = v9;
  v10 = [v9 canvas];
  [v10 visibleUnscaledRectForClippingReps];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(CRLCanvasKnobAccessibilityElement *)self _crlaxAllRepsThatAcceptConnectionKnobDragsOrdered];
  v20 = 2 * [v19 count];
  v21 = [NSMutableSet setWithCapacity:v20 + 3];
  v22 = [NSMutableSet setWithCapacity:v20 + 3];
  v83 = v14;
  v84 = v12;
  v23 = v16;
  v24 = v18;
  [CRLCanvasKnobAccessibilityElement _addBoundariesFromRect:v21 toXBoundarySet:v22 andYBoundarySet:v12, v14, v16, v18];
  v25 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v25 crlaxPositionInUnscaledCanvas];
  v27 = v26;
  v29 = v28;

  v30 = [NSNumber crl_numberWithCGFloat:v27];
  [v21 addObject:v30];

  v31 = [NSNumber crl_numberWithCGFloat:v29];
  [v22 addObject:v31];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v19;
  v32 = [obj countByEnumeratingWithState:&v97 objects:v105 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v98;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v98 != v34)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v97 + 1) + 8 * i) crlaxFrameInUnscaledCanvas];
        [CRLCanvasKnobAccessibilityElement _addBoundariesFromRect:v21 toXBoundarySet:v22 andYBoundarySet:?];
      }

      v33 = [obj countByEnumeratingWithState:&v97 objects:v105 count:16];
    }

    while (v33);
  }

  v36 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v36 crlaxConnectionLineMagnetSnapRadius];
  v73 = v21;
  v37 = [CRLCanvasKnobAccessibilityElement _disconnectionActionTestValuesFromBoundaries:v21 withCanvasSnapRadius:?];

  v38 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v38 crlaxConnectionLineMagnetSnapRadius];
  v72 = v22;
  v77 = [CRLCanvasKnobAccessibilityElement _disconnectionActionTestValuesFromBoundaries:v22 withCanvasSnapRadius:?];

  v71 = self;
  v39 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v39 crlaxConnectionLineMagnetSnapRadius];
  v41 = v40;

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v75 = v37;
  v78 = [v75 countByEnumeratingWithState:&v93 objects:v104 count:16];
  if (!v78)
  {
    v80 = 1.79769313e308;
    v81 = 1.79769313e308;
    goto LABEL_48;
  }

  v76 = *v94;
  v42 = 1.79769313e308;
  v80 = 1.79769313e308;
  v81 = 1.79769313e308;
  do
  {
    v43 = 0;
    do
    {
      if (*v94 != v76)
      {
        objc_enumerationMutation(v75);
      }

      v79 = v43;
      v44 = *(*(&v93 + 1) + 8 * v43);
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v45 = v77;
      v46 = [v45 countByEnumeratingWithState:&v89 objects:v103 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v90;
        do
        {
          for (j = 0; j != v47; j = j + 1)
          {
            if (*v90 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v89 + 1) + 8 * j);
            [v44 crl_CGFloatValue];
            v52 = v51;
            [v50 crl_CGFloatValue];
            v54 = v53;
            if (!sub_10011ED38(v52, v53, v27, v29))
            {
              v107.origin.y = v83;
              v107.origin.x = v84;
              v107.size.width = v23;
              v107.size.height = v24;
              v106.x = v52;
              v106.y = v54;
              if (CGRectContainsPoint(v107, v106))
              {
                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
                v55 = obj;
                v56 = [v55 countByEnumeratingWithState:&v85 objects:v102 count:16];
                if (!v56)
                {

LABEL_32:
                  v65 = sub_100120090(v52, v54, v27, v29);
                  v66 = vabdd_f64(v65, v42);
                  if (v65 < v42 && v66 >= 0.00999999978 || (v65 == v42 || v66 < 0.00999999978) && (v52 == v27 || vabdd_f64(v52, v27) < 0.00999999978 || v54 == v29 || vabdd_f64(v54, v29) < 0.00999999978))
                  {
                    v80 = v54;
                    v81 = v52;
                    v42 = v65;
                  }

                  continue;
                }

                v57 = v56;
                v58 = 0;
                v59 = *v86;
                do
                {
                  for (k = 0; k != v57; k = k + 1)
                  {
                    if (*v86 != v59)
                    {
                      objc_enumerationMutation(v55);
                    }

                    [*(*(&v85 + 1) + 8 * k) crlaxFrameInUnscaledCanvas];
                    v58 |= sub_1001200A8(v52, v54, v61, v62, v63, v64) <= v41;
                  }

                  v57 = [v55 countByEnumeratingWithState:&v85 objects:v102 count:16];
                }

                while (v57);

                if ((v58 & 1) == 0)
                {
                  goto LABEL_32;
                }
              }
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v89 objects:v103 count:16];
        }

        while (v47);
      }

      v43 = v79 + 1;
    }

    while ((v79 + 1) != v78);
    v78 = [v75 countByEnumeratingWithState:&v93 objects:v104 count:16];
  }

  while (v78);
LABEL_48:

  v67 = v80 != 1.79769313e308 || v81 != 1.79769313e308;
  if (v67)
  {
    v68 = [(CRLCanvasKnobAccessibilityElement *)v71 knob];
    v69 = [(CRLCanvasKnobAccessibilityElement *)v71 parentRep];
    [v69 crlaxConvertNaturalPointFromUnscaledCanvas:{v81, v80}];
    [v68 crlaxMoveKnobToRepPositionInNaturalSpace:?];
  }

  return v67;
}

- (id)makeCustomActionsForMagnetSnapping
{
  v3 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  v4 = [v3 crlaxIsConnectionLineEndpointHandleWithConnection];

  if (v4)
  {
    v29 = +[NSMutableArray array];
    v5 = [(CRLCanvasKnobAccessibilityElement *)self knob];
    v6 = [v5 crlaxConnectionMagnetType];

    v7 = [NSNumber numberWithUnsignedInteger:v6];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = +[CRLCanvasKnobAccessibilityElement _magnetCardinalDirectionNumbers];
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = [v7 unsignedIntegerValue];
          if (v14 != [v13 unsignedIntegerValue])
          {
            v15 = [v13 unsignedIntegerValue];
            v16 = [(CRLCanvasKnobAccessibilityElement *)self knob];
            v17 = [v16 crlaxUnscaledCanvasPointForSnappingKnobToConnectionMagnetType:v15];

            if (v17)
            {
              [v17 CGPointValue];
              v19 = v18;
              v21 = v20;
              v22 = [(CRLCanvasKnobAccessibilityElement *)self knob];
              v23 = [v22 crlaxCanSnapKnobToConnectionMagnetAtUnscaledCanvasPoint:{v19, v21}];

              if (v23)
              {
                if ((v15 - 1) > 4)
                {
                  v26 = 0;
                }

                else
                {
                  v24 = off_10185BA88[(v15 - 1)];
                  v25 = +[NSBundle mainBundle];
                  v26 = [v25 localizedStringForKey:v24 value:0 table:0];
                }

                v27 = [(CRLCanvasKnobAccessibilityElement *)self newActionWithName:v26 toSnapToMagnet:v15 usingUnscaledCanvasPoint:v19, v21];
                [v29 crl_addNonNilObject:v27];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (CRLCanvasKnobAccessibility)knob
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRep);
  knobTag = self->_knobTag;
  knobNodeIndex = self->_knobNodeIndex;
  v6 = [(CRLCanvasKnobAccessibilityElement *)self crlaxIdentifier];
  v7 = [WeakRetained crlaxKnobForTag:knobTag index:knobNodeIndex identifier:v6];

  return v7;
}

- (BOOL)isOnShapeWithText
{
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_parentRep);
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, WeakRetained, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v5 = v4;

  v6 = [v5 crlaxContainedRep];
  v7 = [v6 crlaxStorage];
  v8 = [v7 crlaxString];
  v9 = [v8 length] != 0;

  return v9;
}

- (double)crlaxMoveActionOffsetDistance
{
  v2 = [(CRLCanvasKnobAccessibilityElement *)self knob];
  [v2 crlaxCurrentGridSnapDistance];
  v4 = v3;

  result = 10.0;
  if (v4 != 0.0)
  {
    return v4;
  }

  return result;
}

+ (id)crlaxSortKnobElements:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithArray:v3];

  [v4 sortUsingComparator:&stru_10185BA48];
  v5 = [v4 copy];

  return v5;
}

+ (int)_crlaxCategoryRankForKnobElement:(id)a3
{
  v3 = a3;
  v4 = [v3 knob];
  if ([v4 crlaxIsConnectionLineCreationKnob])
  {
    v5 = 0;
  }

  else if ([v4 crlaxIs3DObjectPlayPauseKnob])
  {
    v5 = 1;
  }

  else if ([v4 crlaxIsShapeControlKnob])
  {
    v5 = 2;
  }

  else if ([v4 crlaxIs3DReorientationKnob])
  {
    v5 = 4;
  }

  else if ([v3 knobTag] - 1 >= 0xB)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

- (id)_makeInitialConnectionActionsTemplates
{
  v3 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v5 = [v4 crlaxAvailableRepsForConnecting];

  v6 = [v5 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    v47 = self;
    v48 = *v56;
    v45 = v3;
    do
    {
      v9 = 0;
      v49 = v7;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v55 + 1) + 8 * v9);
        v11 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
        v12 = [v11 crlaxTarget];

        if (v10 != v12)
        {
          v54 = 0;
          v13 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
          v14 = [v13 crlaxLayout];

          v15 = objc_opt_class();
          v16 = __CRLAccessibilityCastAsClass(v15, v14, 1, &v54);
          if (v54 == 1)
          {
            goto LABEL_33;
          }

          v17 = v16;

          if (v17)
          {
            v18 = [v17 connectedFrom];
            v19 = [v10 layout];
            if (v18 != v19)
            {
              v20 = [v17 connectedTo];
              v21 = [v10 layout];

              v22 = v20 == v21;
              v8 = v48;
              v7 = v49;
              if (!v22)
              {
                goto LABEL_11;
              }

LABEL_27:

              goto LABEL_28;
            }
          }

          else
          {
LABEL_11:
            v54 = 0;
            v23 = v10;
            v24 = objc_opt_class();
            v25 = __CRLAccessibilityCastAsSafeCategory(v24, v23, 1, &v54);
            if (v54 == 1)
            {
              goto LABEL_33;
            }

            v19 = v25;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = 0;
              v26 = v23;
              v27 = objc_opt_class();
              v28 = __CRLAccessibilityCastAsClass(v27, v26, 1, &v54);
              if (v54 == 1 || (v29 = v28, v26, [v29 allRepsContainedInGroup], v30 = objc_claimAutoreleasedReturnValue(), v29, v46 = [NSMutableSet alloc], v54 = 0, v31 = v30, v32 = objc_opt_class(), __CRLAccessibilityCastAsClass(v32, v31, 1, &v54), v33 = objc_claimAutoreleasedReturnValue(), v54 == 1))
              {
LABEL_33:
                abort();
              }

              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v34 = v33;
              v35 = [v34 countByEnumeratingWithState:&v50 objects:v60 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v51;
                do
                {
                  for (i = 0; i != v36; i = i + 1)
                  {
                    if (*v51 != v37)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v39 = *(*(&v50 + 1) + 8 * i);
                    v40 = objc_opt_class();
                    v41 = __CRLAccessibilityCastAsSafeCategory(v40, v39, 1, &v54);
                    if (v54 == 1)
                    {
                      goto LABEL_33;
                    }
                  }

                  v36 = [v34 countByEnumeratingWithState:&v50 objects:v60 count:16];
                }

                while (v36);
              }

              v18 = [v46 initWithArray:v34];
              v3 = v45;
              v8 = v48;
              v7 = v49;
            }

            else
            {
              v42 = [NSMutableSet alloc];
              v59 = v19;
              v31 = [NSArray arrayWithObjects:&v59 count:1];
              v18 = [v42 initWithArray:v31];
            }

            v43 = [[CRLCanvasConnectionKnobConnectionActionTemplate alloc] initWithRepForConnecting:v19 andRepsForDragging:v18];
            [v3 addObject:v43];

            self = v47;
          }

          goto LABEL_27;
        }

LABEL_28:
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)_trackRepOcclusionsWithConnectionActionTemplates:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasKnobAccessibilityElement *)self _crlaxAllRepsThatOccludeConnectionKnobDragsOrdered];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v4;
  v45 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v45)
  {
    v44 = *v57;
    do
    {
      v6 = 0;
      do
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v6;
        v7 = *(*(&v56 + 1) + 8 * v6);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v48 = v7;
        v47 = [v7 repAccessibilitiesForDragging];
        v50 = [v47 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v50)
        {
          v49 = *v53;
          do
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v53 != v49)
              {
                objc_enumerationMutation(v47);
              }

              v9 = *(*(&v52 + 1) + 8 * i);
              v10 = [v9 crlaxTarget];
              v11 = [v10 layout];
              v12 = [CRLCanvasRepAccessibility crlaxBoardItemIDForLayout:v11];

              if (v12)
              {
                [v9 crlaxFrameInUnscaledCanvas];
                v14 = v13;
                v16 = v15;
                v18 = v17;
                v20 = v19;
                if ([v5 count])
                {
                  v21 = 0;
                  do
                  {
                    v22 = [v5 objectAtIndexedSubscript:v21];
                    v23 = [v9 crlaxTarget];

                    if (v23 != v22)
                    {
                      v51 = 0;
                      v24 = v22;
                      v25 = objc_opt_class();
                      v26 = __CRLAccessibilityCastAsSafeCategory(v25, v24, 1, &v51);
                      if (v51 == 1)
                      {
                        goto LABEL_33;
                      }

                      v27 = v26;

                      if (!v27 || [v9 crlaxCanBeOccludedForConnectionKnobDraggingByRep:v27])
                      {
                        [v24 frameInUnscaledCanvas];
                        v63.origin.x = v28;
                        v63.origin.y = v29;
                        v63.size.width = v30;
                        v63.size.height = v31;
                        v62.origin.x = v14;
                        v62.origin.y = v16;
                        v62.size.width = v18;
                        v62.size.height = v20;
                        if (CGRectIntersectsRect(v62, v63))
                        {
                          v32 = [v9 crlaxTarget];
                          v33 = [v5 indexOfObject:v32];

                          if (CRLAccessibilityShouldPerformValidationChecks() && v33 == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
                            if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Found an occluding rep that had no index within allRepsOrdered", v35, v36, v37, v38, v39, v42))
                            {
LABEL_33:
                              abort();
                            }
                          }

                          else if (v33 != 0x7FFFFFFFFFFFFFFFLL && v33 < v21)
                          {
                            v40 = [v48 occludingRepAccessibilitiesByUUID];
                            v41 = [v40 objectForKeyedSubscript:v12];
                            [v41 crl_addNonNilObject:v27];
                          }
                        }
                      }
                    }

                    ++v21;
                  }

                  while (v21 < [v5 count]);
                }
              }
            }

            v50 = [v47 countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v50);
        }

        v6 = v46 + 1;
      }

      while ((v46 + 1) != v45);
      v45 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v45);
  }
}

- (id)_targetUnscaledCanvasPointsForConnectionActionsByRepForConnectingFromActionTemplates:(id)a3
{
  v3 = a3;
  v19 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 repAXForConnecting];
        v11 = [v10 crlaxTarget];
        v12 = [v11 layout];
        v13 = [CRLCanvasRepAccessibility crlaxBoardItemIDForLayout:v12];

        if (v13)
        {
          [(CRLCanvasKnobAccessibilityElement *)self _targetUnscaledCanvasPointForConnectionActionByActionTemplate:v9];
          if (v15 != 1.79769313e308 || v14 != 1.79769313e308)
          {
            v17 = [NSValue valueWithCGPoint:?];
            [v19 setObject:v17 forKeyedSubscript:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v19;
}

- (CGPoint)_targetUnscaledCanvasPointForConnectionActionByActionTemplate:(id)a3
{
  v6 = a3;
  v111 = 0;
  v88 = self;
  v7 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v8 = [v7 crlaxInteractiveCanvasController];

  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsClass(v9, v8, 1, &v111);
  if (v111 == 1)
  {
    abort();
  }

  v11 = v10;

  v12 = [v11 canvas];
  [v12 visibleUnscaledRectForClippingReps];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = [v6 repAccessibilitiesForDragging];
  v81 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
  if (v81)
  {
    v80 = *v108;
    v76 = v6;
LABEL_4:
    v21 = 0;
    while (1)
    {
      if (*v108 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v107 + 1) + 8 * v21);
      v23 = [v22 crlaxTarget];
      v24 = [v23 layout];
      v25 = [CRLCanvasRepAccessibility crlaxBoardItemIDForLayout:v24];

      if (v25)
      {
        v84 = v21;
        v26 = [v6 occludingRepAccessibilitiesByUUID];
        v27 = [v26 objectForKeyedSubscript:v25];

        v28 = [v6 occludingRepAccessibilitiesByUUID];
        v83 = v25;
        v29 = [v28 objectForKeyedSubscript:v25];
        v30 = 2 * [v29 count];

        v31 = [NSMutableSet setWithCapacity:v30 + 4];
        v32 = [NSMutableSet setWithCapacity:v30 + 4];
        [CRLCanvasKnobAccessibilityElement _addBoundariesFromRect:v31 toXBoundarySet:v32 andYBoundarySet:v14, v16, v18, v20];
        [v22 crlaxFrameInUnscaledCanvas];
        [CRLCanvasKnobAccessibilityElement _addBoundariesFromRect:v31 toXBoundarySet:v32 andYBoundarySet:?];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v33 = v22;
        v34 = v27;
        v35 = [v34 countByEnumeratingWithState:&v103 objects:v115 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v104;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v104 != v37)
              {
                objc_enumerationMutation(v34);
              }

              [*(*(&v103 + 1) + 8 * i) crlaxFrameInUnscaledCanvas];
              [CRLCanvasKnobAccessibilityElement _addBoundariesFromRect:v31 toXBoundarySet:v32 andYBoundarySet:?];
            }

            v36 = [v34 countByEnumeratingWithState:&v103 objects:v115 count:16];
          }

          while (v36);
        }

        v39 = [CRLCanvasKnobAccessibilityElement _connectionActionMidpointsFromBoundaries:v31];
        v40 = [v39 mutableCopy];

        v41 = [CRLCanvasKnobAccessibilityElement _connectionActionMidpointsFromBoundaries:v32];
        v42 = [v41 mutableCopy];

        v43 = [v33 crlaxLayout];
        v44 = 1;
        [v43 getCardinalPositionFromTypeInUnscaledCanvas:1];
        v46 = v45;
        v48 = v47;

        v49 = [NSNumber crl_numberWithCGFloat:v46];
        [v40 insertObject:v49 atIndex:0];

        v50 = [NSNumber crl_numberWithCGFloat:v48];
        v85 = v42;
        [v42 insertObject:v50 atIndex:0];

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v51 = v40;
        v78 = [v51 countByEnumeratingWithState:&v99 objects:v114 count:16];
        if (v78)
        {
          v52 = *v100;
          v82 = v51;
          v77 = *v100;
          do
          {
            v53 = 0;
            do
            {
              if (*v100 != v52)
              {
                objc_enumerationMutation(v51);
              }

              v79 = v53;
              v54 = *(*(&v99 + 1) + 8 * v53);
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v89 = v85;
              v90 = [v89 countByEnumeratingWithState:&v95 objects:v113 count:16];
              if (v90)
              {
                v55 = *v96;
                v86 = *v96;
                v87 = v54;
                while (2)
                {
                  for (j = 0; j != v90; j = j + 1)
                  {
                    if (*v96 != v55)
                    {
                      objc_enumerationMutation(v89);
                    }

                    v57 = *(*(&v95 + 1) + 8 * j);
                    [v54 crl_CGFloatValue];
                    v3 = v58;
                    [v57 crl_CGFloatValue];
                    v4 = v59;
                    v121.origin.x = v14;
                    v121.origin.y = v16;
                    v121.size.width = v18;
                    v121.size.height = v20;
                    v118.x = v3;
                    v118.y = v4;
                    if (CGRectContainsPoint(v121, v118))
                    {
                      v60 = [v33 crlaxInfo];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        [v33 crlaxFrameInUnscaledCanvas];
                        v119.x = v3;
                        v119.y = v4;
                        if (CGRectContainsPoint(v122, v119))
                        {
                          goto LABEL_31;
                        }
                      }

                      else if (-[CRLCanvasKnobAccessibilityElement _crlaxPointIsOnMagnet:forRep:](v88, "_crlaxPointIsOnMagnet:forRep:", v33, v3, v4) || [v33 crlaxBezierPathContainsUnscaledCanvasPoint:{v3, v4}])
                      {
LABEL_31:
                        v62 = v33;
                        v63 = [(CRLCanvasKnobAccessibilityElement *)v88 knob];
                        [v63 crlaxConnectionLineMagnetSnapRadius];
                        v65 = v64;

                        v93 = 0u;
                        v94 = 0u;
                        v91 = 0u;
                        v92 = 0u;
                        v66 = v34;
                        v67 = [v66 countByEnumeratingWithState:&v91 objects:v112 count:16];
                        if (v67)
                        {
                          v68 = v67;
                          v69 = *v92;
                          v70 = -v65;
                          while (2)
                          {
                            for (k = 0; k != v68; k = k + 1)
                            {
                              if (*v92 != v69)
                              {
                                objc_enumerationMutation(v66);
                              }

                              [*(*(&v91 + 1) + 8 * k) crlaxFrameInUnscaledCanvas];
                              v124 = CGRectInset(v123, v70, v70);
                              v120.x = v3;
                              v120.y = v4;
                              if (CGRectContainsPoint(v124, v120))
                              {

                                v33 = v62;
                                v55 = v86;
                                v54 = v87;
                                goto LABEL_41;
                              }
                            }

                            v68 = [v66 countByEnumeratingWithState:&v91 objects:v112 count:16];
                            if (v68)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v44 = 0;
                        v51 = v82;
                        goto LABEL_47;
                      }
                    }

LABEL_41:
                    ;
                  }

                  v90 = [v89 countByEnumeratingWithState:&v95 objects:v113 count:16];
                  if (v90)
                  {
                    continue;
                  }

                  break;
                }
              }

              v53 = v79 + 1;
              v51 = v82;
              v52 = v77;
            }

            while ((v79 + 1) != v78);
            v72 = [v82 countByEnumeratingWithState:&v99 objects:v114 count:16];
            v52 = v77;
            v44 = 1;
            v78 = v72;
          }

          while (v72);
        }

LABEL_47:

        v6 = v76;
        v21 = v84;
        if (!v44)
        {
          break;
        }
      }

      if (++v21 == v81)
      {
        v81 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
        if (v81)
        {
          goto LABEL_4;
        }

        goto LABEL_50;
      }
    }
  }

  else
  {
LABEL_50:
    v3 = 1.79769313e308;
    v4 = 1.79769313e308;
  }

  v73 = v3;
  v74 = v4;
  result.y = v74;
  result.x = v73;
  return result;
}

- (BOOL)_crlaxPointIsOnMagnet:(CGPoint)a3 forRep:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = +[CRLCanvasKnobAccessibilityElement _magnetCardinalDirectionNumbers];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) unsignedIntegerValue];
        v12 = [v6 crlaxLayout];
        [v12 getCardinalPositionFromTypeInUnscaledCanvas:v11];
        v14 = v13;
        v16 = v15;

        if (sub_10011ED38(x, y, v14, v16))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

+ (id)_connectionActionMidpointsFromBoundaries:(id)a3
{
  v3 = [a3 crl_sortedArray];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] - 1);
  if ([v3 count] != 1)
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      [v6 crl_CGFloatValue];
      v8 = v7;

      v9 = [v3 objectAtIndexedSubscript:v5 + 1];
      [v9 crl_CGFloatValue];
      v11 = v10;

      v12 = [NSNumber crl_numberWithCGFloat:(v8 + v11) * 0.5];
      [v4 setObject:v12 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [v3 count] - 1);
  }

  return v4;
}

+ (id)_disconnectionActionTestValuesFromBoundaries:(id)a3 withCanvasSnapRadius:(double)a4
{
  v5 = [a3 crl_sortedArray];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", 3 * [v5 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = a4 + 1.0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 crl_CGFloatValue];
        v15 = v10 + v14;
        v16 = [NSNumber crl_numberWithCGFloat:v14 - v10];
        v24[0] = v16;
        v24[1] = v13;
        v17 = [NSNumber crl_numberWithCGFloat:v15];
        v24[2] = v17;
        v18 = [NSArray arrayWithObjects:v24 count:3];
        [v6 addObjectsFromArray:v18];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_layoutsForConnectionActionNames
{
  v21 = 0;
  v2 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v3 = [v2 crlaxInteractiveCanvasController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v21);
  if (v21 == 1)
  {
    abort();
  }

  v6 = v5;

  v7 = [v6 canvas];
  v8 = [v7 allRepsOrdered];

  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) layout];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)_crlaxAllRepsThatOccludeConnectionKnobDragsOrderedIncludeAllGroupReps:(BOOL)a3
{
  v4 = [(CRLCanvasKnobAccessibilityElement *)self parentRep];
  v5 = [v4 crlaxInteractiveCanvasController];
  v6 = [v5 crlaxTarget];

  v7 = [v6 canvas];
  v8 = [v7 allRepsOrdered];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003A6C04;
  v12[3] = &unk_10185BA68;
  v13 = a3;
  v9 = [NSPredicate predicateWithBlock:v12];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  return v10;
}

+ (void)_addBoundariesFromRect:(CGRect)a3 toXBoundarySet:(id)a4 andYBoundarySet:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = a4;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = [NSNumber crl_numberWithCGFloat:CGRectGetMinX(v17)];
  [v11 addObject:v12];

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = [NSNumber crl_numberWithCGFloat:CGRectGetMaxX(v18)];
  [v11 addObject:v13];

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v14 = [NSNumber crl_numberWithCGFloat:CGRectGetMinY(v19)];
  [v10 addObject:v14];

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = [NSNumber crl_numberWithCGFloat:CGRectGetMaxY(v20)];
  [v10 addObject:v15];
}

- (CRLCanvasRepAccessibility)parentRep
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRep);

  return WeakRetained;
}

@end