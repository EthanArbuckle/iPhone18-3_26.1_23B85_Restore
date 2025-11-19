@interface CRLCanvasKnobAccessibility
+ (id)crlaxCastFrom:(id)a3;
+ (int)crlaxEdgePositionTypeFromNormalizedPosition:(CGPoint)a3;
- (BOOL)crlaxCanSnapKnobToConnectionMagnetAtUnscaledCanvasPoint:(CGPoint)a3;
- (BOOL)crlaxEverOffersCustomActionsForMovement;
- (BOOL)crlaxIs3DObjectPlayPauseKnob;
- (BOOL)crlaxIs3DReorientationKnob;
- (BOOL)crlaxIsAdjustable;
- (BOOL)crlaxIsConnectionLineCreationKnob;
- (BOOL)crlaxIsConnectionLineEndpointHandleWithConnection;
- (BOOL)crlaxIsConnectionLineEndpointKnob;
- (BOOL)crlaxIsReplaceMediaKnob;
- (BOOL)crlaxIsSupported;
- (BOOL)crlaxOffersCustomActionsForMovement;
- (CALayer)crlaxLayer;
- (CGPoint)_crlaxSnappedValueIfApplicableFromUnscaledCanvasPosition:(CGPoint)a3;
- (CGPoint)crlaxCalculatedNextPositionInRepForAdjustable:(BOOL)a3;
- (CGPoint)crlaxPosition;
- (CGPoint)crlaxPositionInUnscaledCanvas;
- (CGRect)crlaxFrame;
- (CGSize)crlaxSize;
- (CRLCanvasRepAccessibility)crlaxParentRepForKnob;
- (Class)_crlaxKnobTrackerClass;
- (NSArray)crlaxUserInputLabels;
- (NSString)crlaxHint;
- (NSString)crlaxIdentifier;
- (NSString)crlaxLabel;
- (NSString)crlaxValue;
- (double)crlaxConnectionLineMagnetSnapRadius;
- (double)crlaxCurrentGridSnapDistance;
- (double)crlaxIncrementDecrementMagnitude;
- (id)_connectionLineConnection;
- (id)_connectionLineConnectionDescription;
- (id)_getAccessibleAbsolutePositionOfKnob;
- (id)_getHeadKnobArrowDescriptionForLine;
- (id)_getTailKnobArrowDescriptionForLine;
- (id)_getUserInputLabelForShapeControlKnob;
- (id)_getValueForShapeControlKnob;
- (id)crlaxConnectionKnobMagnetPositionDescription;
- (id)crlaxConnectionLineConnectionCustomEdgeDescription;
- (id)crlaxConnectionLineKnobHint;
- (id)crlaxConnectionLineMagnetDescription;
- (id)crlaxCreateKnobTracker;
- (id)crlaxNameFor3DObjectPlayPauseKnobState;
- (id)crlaxPlatformSpecificHint;
- (id)crlaxSmartPathSourceForShapeControlKnob;
- (id)crlaxUnscaledCanvasPointForSnappingKnobToConnectionMagnetType:(unint64_t)a3;
- (id)getLabelForShapeControlKnob;
- (unint64_t)crlaxConnectionMagnetType;
- (unint64_t)crlaxKnobTag;
- (unint64_t)crlaxNodeIndex;
- (void)crlaxMoveKnobToRepPositionInNaturalSpace:(CGPoint)a3 shouldSnapToMagnets:(BOOL)a4;
@end

@implementation CRLCanvasKnobAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxLabel
{
  v3 = 0;
  switch([(CRLCanvasKnobAccessibility *)self crlaxKnobTag])
  {
    case 0uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
      goto LABEL_26;
    case 1uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Upper left %@ handle";
      goto LABEL_24;
    case 2uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Upper middle %@ handle";
      goto LABEL_24;
    case 3uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Upper right %@ handle";
      goto LABEL_24;
    case 4uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Middle left %@ handle";
      goto LABEL_24;
    case 5uLL:
      if (![(CRLCanvasKnobAccessibility *)self crlaxIs3DReorientationKnob])
      {
        if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DObjectPlayPauseKnob])
        {
          v4 = [(CRLCanvasKnobAccessibility *)self crlaxNameFor3DObjectPlayPauseKnobState];
          goto LABEL_43;
        }

        v47 = [(CRLCanvasKnobAccessibility *)self crlaxIsReplaceMediaKnob];
        v17 = +[NSBundle mainBundle];
        v18 = v17;
        if (v47)
        {
          v19 = @"Replace media";
        }

        else
        {
          v19 = @"Middle middle %@ handle";
        }

LABEL_24:
        v3 = [v17 localizedStringForKey:v19 value:0 table:0];
LABEL_25:

LABEL_26:
        if ([(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineCreationKnob])
        {
          v32 = +[NSBundle mainBundle];
          v33 = [v32 localizedStringForKey:@"Connection" value:0 table:0];
        }

        else
        {
          v32 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
          v33 = [v32 crlaxKnobLabel];
          if (CRLAccessibilityShouldPerformValidationChecks())
          {
            if (![(__CFString *)v33 length])
            {
              ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
              if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"No handle label for: %@", v35, v36, v37, v38, v39, v32))
              {
LABEL_37:
                abort();
              }
            }
          }
        }

        if (v33)
        {
          v9 = v33;
        }

        else
        {
          v9 = &stru_1018BCA28;
        }

        if (!CRLAccessibilityShouldPerformValidationChecks() || v3)
        {
          if (v3)
          {
            v4 = [NSString stringWithFormat:v3, v9];
LABEL_40:

            goto LABEL_42;
          }
        }

        else
        {
          v40 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
          if (__CRLAccessibilityHandleValidationErrorWithDescription(v40, 0, @"No label format string for: %@", v41, v42, v43, v44, v45, self))
          {
            goto LABEL_37;
          }
        }

        v4 = 0;
LABEL_42:

        goto LABEL_43;
      }

      v29 = +[NSBundle mainBundle];
      v30 = v29;
      v31 = @"3D rotation";
LABEL_21:
      v4 = [v29 localizedStringForKey:v31 value:0 table:0];

LABEL_43:

      return v4;
    case 6uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Middle right %@ handle";
      goto LABEL_24;
    case 7uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Lower left %@ handle";
      goto LABEL_24;
    case 8uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Lower middle %@ handle";
      goto LABEL_24;
    case 9uLL:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Lower right %@ handle";
      goto LABEL_24;
    case 0xAuLL:
      v18 = +[NSBundle mainBundle];
      v20 = [v18 localizedStringForKey:@"Tail handle" value:0 table:0];
      v21 = [(CRLCanvasKnobAccessibility *)self _getTailKnobArrowDescriptionForLine];
      goto LABEL_15;
    case 0xBuLL:
      v18 = +[NSBundle mainBundle];
      v20 = [v18 localizedStringForKey:@"Head handle" value:0 table:0];
      v21 = [(CRLCanvasKnobAccessibility *)self _getHeadKnobArrowDescriptionForLine];
LABEL_15:
      v22 = v21;
      v48 = [(CRLCanvasKnobAccessibility *)self _connectionLineConnectionDescription];
      v3 = __CRLAccessibilityStringForVariables(1, v20, v23, v24, v25, v26, v27, v28, v22);

      goto LABEL_25;
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
      v4 = [(CRLCanvasKnobAccessibility *)self getLabelForShapeControlKnob];
      if (v4)
      {
        goto LABEL_43;
      }

      v49 = 0;
      v5 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
      v6 = [v5 crlaxInfo];

      v7 = objc_opt_class();
      v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v49);
      if (v49 == 1)
      {
        goto LABEL_37;
      }

      v9 = v8;

      v10 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v12 = +[NSBundle mainBundle];
      v13 = v12;
      if (isKindOfClass)
      {
        v14 = @"Change %@ handle";
      }

      else
      {
        v14 = @"Change %@ mask handle";
      }

      v3 = [v12 localizedStringForKey:v14 value:0 table:0];

      v15 = [(__CFString *)v9 crlaxTypeDescription];
      v16 = [v15 localizedLowercaseString];
      v4 = [NSString localizedStringWithFormat:v3, v16];

      goto LABEL_40;
    case 0x1CuLL:
      v29 = +[NSBundle mainBundle];
      v30 = v29;
      v31 = @"Link";
      goto LABEL_21;
    default:
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Handle control";
      goto LABEL_24;
  }
}

- (NSString)crlaxValue
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v3 > 0x10)
  {
LABEL_7:
    if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DReorientationKnob]|| [(CRLCanvasKnobAccessibility *)self crlaxIs3DObjectPlayPauseKnob])
    {
      v5 = 0;
    }

    else
    {
      v6 = [(CRLCanvasKnobAccessibility *)self crlaxSmartPathSourceForShapeControlKnob];
      v7 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
      v5 = [v6 getFeedbackStringForKnob:{objc_msgSend(v7, "tag")}];
    }

    goto LABEL_14;
  }

  if (((1 << v3) & 0x3DE) != 0)
  {
    goto LABEL_3;
  }

  if (((1 << v3) & 0x1F000) != 0)
  {
    v4 = [(CRLCanvasKnobAccessibility *)self _getValueForShapeControlKnob];
  }

  else
  {
    if (((1 << v3) & 0xC00) == 0)
    {
      goto LABEL_7;
    }

    if (![(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineEndpointHandleWithConnection])
    {
LABEL_3:
      v4 = [(CRLCanvasKnobAccessibility *)self _getAccessibleAbsolutePositionOfKnob];
      goto LABEL_6;
    }

    v4 = [(CRLCanvasKnobAccessibility *)self crlaxConnectionLineMagnetDescription];
  }

LABEL_6:
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_14:

  return v5;
}

- (NSString)crlaxHint
{
  if ([(CRLCanvasKnobAccessibility *)self crlaxRespondsToSelector:"crlaxPlatformSpecificHint" fromExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasKnobAccessibilityExtras])
  {
    v3 = [(CRLCanvasKnobAccessibility *)self crlaxPlatformSpecificHint];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)crlaxUserInputLabels
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v3 > 8)
  {
    if (v3 <= 11)
    {
      if (v3 == 9)
      {
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Lower right";
      }

      else if (v3 == 10)
      {
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Tail";
      }

      else
      {
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Head";
      }

      goto LABEL_29;
    }

    if ((v3 - 12) >= 5)
    {
LABEL_27:
      v7 = [(CRLCanvasKnobAccessibility *)self crlaxLabel];
      goto LABEL_10;
    }

    v7 = [(CRLCanvasKnobAccessibility *)self _getUserInputLabelForShapeControlKnob];
LABEL_10:
    v8 = v7;
    goto LABEL_30;
  }

  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Lower left";
      }

      else
      {
        v4 = +[NSBundle mainBundle];
        v5 = v4;
        v6 = @"Lower middle";
      }

      goto LABEL_29;
    }

    if (v3 != 5)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Middle right";
      goto LABEL_29;
    }

    if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DReorientationKnob])
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Reorient";
      goto LABEL_29;
    }

    if (![(CRLCanvasKnobAccessibility *)self crlaxIs3DObjectPlayPauseKnob])
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Middle middle";
      goto LABEL_29;
    }

    v7 = [(CRLCanvasKnobAccessibility *)self crlaxNameFor3DObjectPlayPauseKnobState];
    goto LABEL_10;
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Upper right";
    }

    else
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Middle left";
    }

    goto LABEL_29;
  }

  if (v3 == 1)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Upper left";
    goto LABEL_29;
  }

  if (v3 != 2)
  {
    goto LABEL_27;
  }

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"Upper middle";
LABEL_29:
  v8 = [v4 localizedStringForKey:v6 value:0 table:0];

LABEL_30:
  if (!v8)
  {
    v10 = [(CRLCanvasKnobAccessibility *)self crlaxLabel];
    v14 = v10;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    goto LABEL_34;
  }

  if ([(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineCreationKnob])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"%@ connection" value:0 table:0];

    v11 = [NSString localizedStringWithFormat:v10, v8];
    v16[0] = v11;
    v16[1] = v8;
    v12 = [NSArray arrayWithObjects:v16 count:2];

LABEL_34:
    goto LABEL_36;
  }

  v15 = v8;
  v12 = [NSArray arrayWithObjects:&v15 count:1];
LABEL_36:

  return v12;
}

- (NSString)crlaxIdentifier
{
  if ([(CRLCanvasKnobAccessibility *)self crlaxKnobTag]== 5)
  {
    if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DReorientationKnob])
    {
      v3 = @"USDZ reorient";
    }

    else if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DObjectPlayPauseKnob])
    {
      v3 = @"USDZ play/pause";
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if ([(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineCreationKnob])
  {
    return @"Connection";
  }

  else
  {
    return &v3->isa;
  }
}

- (CALayer)crlaxLayer
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  v3 = [v2 renderable];
  v4 = [v3 layer];

  return v4;
}

- (unint64_t)crlaxKnobTag
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  v3 = [v2 tag];

  return v3;
}

- (CRLCanvasRepAccessibility)crlaxParentRepForKnob
{
  v8 = 0;
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  v3 = [v2 rep];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CGPoint)crlaxPosition
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  [v2 position];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)crlaxPositionInUnscaledCanvas
{
  v14 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v14);
  if (v14 == 1)
  {
    abort();
  }

  v5 = v4;

  v6 = [(CRLCanvasKnobAccessibility *)v2 crlaxParentRepForKnob];
  v7 = [v6 crlaxTarget];
  [v5 position];
  [v7 convertKnobPositionToUnscaledCanvas:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGSize)crlaxSize
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  v3 = [v2 knobImage];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)crlaxFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  v5 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 crlaxCanvasView];
    v8 = [(CRLCanvasKnobAccessibility *)self crlaxLayer];
    if ([(CRLCanvasKnobAccessibility *)self crlaxUseFallbackFrameCalculation]|| !v8)
    {
      [(CRLCanvasKnobAccessibility *)self crlaxSize];
      v17 = v16;
      v19 = v18;
      [(CRLCanvasKnobAccessibility *)self crlaxPosition];
      v21 = v20;
      v23 = v22;
      v41.origin.x = CGRectZero.origin.x;
      v41.origin.y = y;
      v41.size.width = v17;
      v41.size.height = v19;
      v24 = v21 - CGRectGetWidth(v41) * 0.5;
      v42.origin.x = CGRectZero.origin.x;
      v42.origin.y = y;
      v42.size.width = v17;
      v42.size.height = v19;
      [v6 crlaxConvertNaturalPointToUnscaledCanvas:{v24, v23 - CGRectGetHeight(v42) * 0.5}];
      v43.size.width = v17;
      v43.size.height = v19;
      v44 = CGRectInset(v43, -5.0, -5.0);
      v25 = v44.origin.x;
      v26 = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      v9 = [v6 crlaxInteractiveCanvasController];
      [v9 crlaxConvertUnscaledToBoundsRect:{v25, v26, width, height}];
    }

    else
    {
      v9 = [v7 crlaxCanvasLayer];
      [v8 bounds];
      [v8 convertRect:v9 toLayer:?];
    }

    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;

    [v7 crlaxFrameFromBounds:{v29, v30, v31, v32}];
    x = v33;
    y = v34;
    v14 = v35;
    v15 = v36;
  }

  else
  {
    v14 = CGRectZero.size.width;
    v15 = CGRectZero.size.height;
  }

  v37 = x;
  v38 = y;
  v39 = v14;
  v40 = v15;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (unint64_t)crlaxNodeIndex
{
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, self, 0, 0);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 nodeIndex];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (BOOL)crlaxIsConnectionLineEndpointHandleWithConnection
{
  v2 = [(CRLCanvasKnobAccessibility *)self _connectionLineConnection];
  v3 = v2 != 0;

  return v3;
}

- (id)crlaxCreateKnobTracker
{
  v3 = [(CRLCanvasKnobAccessibility *)self _crlaxKnobTrackerClass];
  v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v5 = [(objc_class *)v3 crlaxKnobTrackerWithRep:v4 knob:self];

  return v5;
}

- (void)crlaxMoveKnobToRepPositionInNaturalSpace:(CGPoint)a3 shouldSnapToMagnets:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (!v8)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Couldn't find parent rep for knob: %@", v10, v11, v12, v13, v14, self))
      {
        goto LABEL_20;
      }
    }
  }

  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if ([v8 crlaxInReadOnlyMode])
    {
      v15 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(v15, 0, @"Should not attempt to move a knob in read-only mode.", v16, v17, v18, v19, v20, v37))
      {
        goto LABEL_20;
      }
    }
  }

  if (!v8 || ([v8 crlaxIsLocked] & 1) != 0)
  {
    goto LABEL_19;
  }

  [(CRLCanvasKnobAccessibility *)self crlaxCreateKnobTracker];
  v21 = v46 = 0;
  v22 = objc_opt_class();
  v23 = __CRLAccessibilityCastAsClass(v22, v21, 1, &v46);
  if (v46 == 1)
  {
    goto LABEL_20;
  }

  v24 = v23;

  if (v24)
  {
    [v24 setSnapEnabled:{objc_msgSend(v24, "isEnqueueingCommandsInRealTime") ^ 1}];
    goto LABEL_14;
  }

  v46 = 0;
  v25 = v21;
  v26 = objc_opt_class();
  v27 = __CRLAccessibilityCastAsClass(v26, v25, 1, &v46);
  if (v46 == 1)
  {
LABEL_20:
    abort();
  }

  v28 = v27;

  [v28 setSnapEnabled:0];
  [v28 setShouldSnapToMagnets:v4];

LABEL_14:
  [v8 crlaxConvertNaturalPointToUnscaledCanvas:{x, y}];
  [(CRLCanvasKnobAccessibility *)self _crlaxSnappedValueIfApplicableFromUnscaledCanvasPosition:?];
  v30 = v29;
  v32 = v31;
  v33 = objc_alloc_init(CRLAccessibilityKnobManipulator);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100157E54;
  v38[3] = &unk_1018406A8;
  v39 = v8;
  v45 = v24 != 0;
  v34 = v33;
  v40 = v34;
  v41 = self;
  v43 = v30;
  v44 = v32;
  v35 = v21;
  v42 = v35;
  v36 = objc_retainBlock(v38);
  if ([(CRLCanvasKnobAccessibility *)self crlaxRespondsToSelector:"crlaxAllowsHUDWhileResizing" fromExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasKnobAccessibilityExtras]&& [(CRLCanvasKnobAccessibility *)self crlaxAllowsHUDWhileResizing])
  {
    (v36[2])(v36);
  }

  else
  {
    [v35 crlaxPerformBlockWhilePreventingDisplayOfCurrentValueHUD:v36];
  }

LABEL_19:
}

- (id)crlaxSmartPathSourceForShapeControlKnob
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v3 = [v2 crlaxInfo];

  if (objc_opt_respondsToSelector())
  {
    v9 = 0;
    v4 = [v3 pathSource];
    v5 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClassAndProtocol(v5, &OBJC_PROTOCOL___CRLSmartPathSource, v4, 1, &v9);
    if (v9 == 1)
    {
      abort();
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)crlaxEverOffersCustomActionsForMovement
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v3 - 12 >= 5)
  {
    if (v3 - 10 > 1)
    {
      isKindOfClass = 0;
      return isKindOfClass & 1;
    }

    v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
    v6 = [v4 crlaxTarget];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    v4 = [(CRLCanvasKnobAccessibility *)self crlaxSmartPathSourceForShapeControlKnob];
    isKindOfClass = [v4 crlaxOffersMoveActionsForKnobTag:{-[CRLCanvasKnobAccessibility crlaxKnobTag](self, "crlaxKnobTag")}];
  }

  return isKindOfClass & 1;
}

- (BOOL)crlaxOffersCustomActionsForMovement
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  if ([v3 crlaxInReadOnlyMode])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
    if ([v5 crlaxIsLocked])
    {
      v4 = 0;
    }

    else
    {
      v4 = [(CRLCanvasKnobAccessibility *)self crlaxEverOffersCustomActionsForMovement];
    }
  }

  return v4;
}

- (BOOL)crlaxIsReplaceMediaKnob
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)crlaxIsConnectionLineCreationKnob
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)crlaxIsConnectionLineEndpointKnob
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([(CRLCanvasKnobAccessibility *)self crlaxKnobTag]== 10 || [(CRLCanvasKnobAccessibility *)self crlaxKnobTag]== 11);

  return v4;
}

- (BOOL)crlaxIs3DReorientationKnob
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)crlaxIs3DObjectPlayPauseKnob
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxTarget];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)crlaxConnectionMagnetType
{
  v13 = 0;
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v4 = [v3 crlaxLayout];
  v5 = [v4 crlaxTarget];

  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v13);
  if (v13 == 1)
  {
    abort();
  }

  v8 = v7;

  v9 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v9 == 11)
  {
    v10 = [v8 headMagnetType];
  }

  else
  {
    if (v9 != 10)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = [v8 tailMagnetType];
  }

  v11 = v10;
LABEL_8:

  return v11;
}

- (id)crlaxUnscaledCanvasPointForSnappingKnobToConnectionMagnetType:(unint64_t)a3
{
  v10 = 0;
  v4 = [(CRLCanvasKnobAccessibility *)self _connectionLineConnection];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, v4, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  if (v7)
  {
    [v7 getCardinalPositionFromTypeInUnscaledCanvas:a3];
    v8 = [NSValue valueWithCGPoint:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)crlaxCanSnapKnobToConnectionMagnetAtUnscaledCanvasPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasKnobAccessibility *)self _connectionLineConnection];
  v6 = v51 = 0;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClass(v7, v6, 1, &v51);
  if (v51 == 1)
  {
    goto LABEL_31;
  }

  v9 = v8;

  v45 = [v9 children];

  if (v6)
  {
    v10 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
    v11 = [v10 crlaxInteractiveCanvasController];
    v12 = [v11 crlaxTarget];

    v13 = [v12 canvas];
    [v13 visibleUnscaledRectForClippingReps];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v55.origin.x = v15;
    v55.origin.y = v17;
    v55.size.width = v19;
    v55.size.height = v21;
    v53.x = x;
    v53.y = y;
    if (!CGRectContainsPoint(v55, v53))
    {
      v42 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v22 = [v12 canvas];
    v23 = [v22 allRepsOrdered];

    v51 = 0;
    v24 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
    v25 = objc_opt_class();
    v46 = __CRLAccessibilityCastAsClass(v25, v24, 1, &v51);
    if (v51 != 1)
    {

      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v26 = v23;
      v27 = [v26 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v27)
      {
        v28 = v27;
        v44 = v12;
        v29 = 0;
        v30 = *v48;
        while (2)
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v47 + 1) + 8 * i);
            v33 = [v32 layout];
            v34 = v33;
            if (v33 == v6)
            {
              v29 = 1;
            }

            else
            {
              v35 = !v29;
              v29 = v33 == v6;
              if (!v35)
              {
                v51 = 0;
                v36 = v32;
                v37 = objc_opt_class();
                v38 = __CRLAccessibilityCastAsSafeCategory(v37, v36, 1, &v51);
                if (v51 == 1)
                {
                  goto LABEL_31;
                }

                v39 = v38;

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 && ([v39 crlaxIsContainedTextRep] & 1) == 0)
                {
                  if ([v46 canConnectToRep:v36])
                  {
                    if (([v45 containsObject:v34] & 1) == 0)
                    {
                      [(CRLCanvasKnobAccessibility *)self crlaxConnectionLineMagnetSnapRadius];
                      v41 = v40;
                      [v39 crlaxFrameInUnscaledCanvas];
                      v57 = CGRectInset(v56, -v41, -v41);
                      v54.x = x;
                      v54.y = y;
                      if (CGRectContainsPoint(v57, v54))
                      {

                        v42 = 0;
                        goto LABEL_27;
                      }
                    }
                  }
                }

                v29 = 1;
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

        v42 = 1;
LABEL_27:
        v12 = v44;
      }

      else
      {
        v42 = 1;
      }

      goto LABEL_29;
    }

LABEL_31:
    abort();
  }

  v42 = 1;
LABEL_30:

  return v42;
}

- (double)crlaxCurrentGridSnapDistance
{
  v3 = 0.0;
  if (+[CRLCanvasGuideController shouldSnapToGrid]&& ![(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineEndpointHandleWithConnection])
  {
    v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
    v5 = [v4 crlaxCanvas];
    v6 = [v5 crlaxTarget];
    v7 = [v6 canvasController];
    v8 = [v7 guideController];

    if (v8)
    {
      [v8 snapDistanceToUseForGuides];
      v3 = v9;
    }
  }

  return v3;
}

- (double)crlaxConnectionLineMagnetSnapRadius
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v3 = [v2 crlaxCanvas];
  [v3 crlaxViewScale];
  [CRLConnectionLineKnobTracker crlaxConnectionLineMagnetSnapRadiusForCanvasViewScale:?];
  v5 = v4;

  return v5;
}

- (id)crlaxConnectionKnobMagnetPositionDescription
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxConnectionMagnetType];
  v4 = 0;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_19;
        }

        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"center";
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (v3 == 2)
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"top";
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"right";
    }

LABEL_16:
    v4 = [v5 localizedStringForKey:v7 value:0 table:0];

    goto LABEL_19;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"bottom";
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"left";
    }

    goto LABEL_16;
  }

  if (v3 == 6)
  {
    v8 = [(CRLCanvasKnobAccessibility *)self crlaxConnectionLineConnectionCustomEdgeDescription];
    goto LABEL_18;
  }

  if (v3 != 7)
  {
    goto LABEL_19;
  }

LABEL_13:
  v8 = [(CRLCanvasKnobAccessibility *)self _getAccessibleAbsolutePositionOfKnob];
LABEL_18:
  v4 = v8;
LABEL_19:

  return v4;
}

+ (int)crlaxEdgePositionTypeFromNormalizedPosition:(CGPoint)a3
{
  v3 = a3.y == 0.0;
  if (fabs(a3.y) < 0.05)
  {
    v3 = 1;
  }

  v4 = fabs(a3.y + -1.0) < 0.05 || a3.y == 1.0;
  v5 = a3.x != 0.0;
  if (fabs(a3.x) < 0.05)
  {
    v5 = 0;
  }

  v6 = a3.x == 1.0;
  if (fabs(a3.x + -1.0) < 0.05)
  {
    v6 = 1;
  }

  if (v3 && !v5)
  {
    return 1;
  }

  if (v3 && v6)
  {
    return 2;
  }

  if (!v5 && v4)
  {
    return 3;
  }

  v9 = v3 || v4;
  if (v3)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (v4 && v6)
  {
    result = 4;
  }

  else
  {
    result = v10;
  }

  if (!v9)
  {
    if (v6)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v5)
    {
      return v11;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

- (Class)_crlaxKnobTrackerClass
{
  if (![(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineCreationKnob])
  {
    v3 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
    if (v3 - 12 >= 5 && v3 - 10 <= 1)
    {
      v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
      objc_opt_class();
      objc_opt_isKindOfClass();
    }
  }

  v5 = objc_opt_class();

  return v5;
}

- (id)getLabelForShapeControlKnob
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxSmartPathSourceForShapeControlKnob];
  v19 = 0;
  v4 = self;
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v19);
  if (v19 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v3 crlaxLabelComponentForKnobTag:{objc_msgSend(v7, "tag")}];
  if (v8)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Control knob" value:0 table:0];
    v17 = __CRLAccessibilityStringForVariables(1, v8, v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_getValueForShapeControlKnob
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxSmartPathSourceForShapeControlKnob];
  v11 = 0;
  v4 = self;
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v3 crlaxValueForKnobTag:{objc_msgSend(v7, "tag")}];
  if (![v8 length] && -[CRLCanvasKnobAccessibility crlaxEverOffersCustomActionsForMovement](v4, "crlaxEverOffersCustomActionsForMovement"))
  {
    v9 = [(CRLCanvasKnobAccessibility *)v4 _getAccessibleAbsolutePositionOfKnob];

    v8 = v9;
  }

  return v8;
}

- (id)_getUserInputLabelForShapeControlKnob
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxSmartPathSourceForShapeControlKnob];
  v10 = 0;
  v4 = self;
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v3 crlaxUserInputLabelForKnobTag:{objc_msgSend(v7, "tag")}];

  return v8;
}

- (id)_getTailKnobArrowDescriptionForLine
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v3 = [v2 crlaxInfo];

  v10 = 0;
  v4 = [v3 crlaxValueForKey:@"tailLineEnd"];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, v4, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v7 crlaxStyleInfoDescription];

  return v8;
}

- (id)_getHeadKnobArrowDescriptionForLine
{
  v2 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v3 = [v2 crlaxInfo];

  v10 = 0;
  v4 = [v3 crlaxValueForKey:@"headLineEnd"];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, v4, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v7 crlaxStyleInfoDescription];

  return v8;
}

- (id)_getAccessibleAbsolutePositionOfKnob
{
  [(CRLCanvasKnobAccessibility *)self crlaxPositionInUnscaledCanvas];
  v3 = v2;
  v5 = v4;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"x: %d value:y: %d" table:{0, 0}];

  v8 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v9 = v3;
  LODWORD(v8) = llroundf(v9);
  v10 = v5;
  LODWORD(v11) = llroundf(v10);
  v12 = [NSString localizedStringWithFormat:v7, v8, v11];

  return v12;
}

- (id)_connectionLineConnection
{
  v13 = 0;
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v4 = [v3 crlaxLayout];
  v5 = [v4 crlaxTarget];

  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v13);
  if (v13 == 1)
  {
    abort();
  }

  v8 = v7;

  v9 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v9 == 11)
  {
    v10 = [v8 connectedTo];
    goto LABEL_6;
  }

  if (v9 == 10)
  {
    v10 = [v8 connectedFrom];
LABEL_6:
    v11 = v10;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)_connectionLineConnectionDescription
{
  v3 = [(CRLCanvasKnobAccessibility *)self _connectionLineConnection];
  v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v5 = [v4 crlaxInteractiveCanvasController];
  v6 = [v5 crlaxTarget];

  v19 = 0;
  v7 = [v3 info];
  v8 = [v6 repForInfo:v7];

  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v19);
  if (v19 == 1)
  {
    abort();
  }

  v11 = v10;

  v12 = [v11 crlaxDescriptionForConnections];

  if (![v12 length])
  {
    goto LABEL_6;
  }

  v13 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v13 == 10)
  {
    v14 = @"Connected from %@";
    goto LABEL_8;
  }

  if (v13 != 11)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_9;
  }

  v14 = @"Connected to %@";
LABEL_8:
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:v14 value:0 table:0];
  v15 = [NSString localizedStringWithFormat:v17, v12];

LABEL_9:

  return v15;
}

- (id)crlaxConnectionLineMagnetDescription
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Connected at %@" value:0 table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Connected on %@" value:0 table:0];

  v7 = [(CRLCanvasKnobAccessibility *)self crlaxConnectionMagnetType];
  if (v7 - 2 >= 5)
  {
    if (v7 >= 2)
    {
      v10 = 0;
      if (v7 != 7)
      {
        goto LABEL_9;
      }

      v9 = [(CRLCanvasKnobAccessibility *)self _getAccessibleAbsolutePositionOfKnob];
    }

    else
    {
      v9 = [(CRLCanvasKnobAccessibility *)self crlaxConnectionKnobMagnetPositionDescription];
    }

    v8 = v9;
    [NSString localizedStringWithFormat:v4, v9];
  }

  else
  {
    v8 = [(CRLCanvasKnobAccessibility *)self crlaxConnectionKnobMagnetPositionDescription];
    [NSString localizedStringWithFormat:v6, v8];
  }
  v10 = ;

LABEL_9:

  return v10;
}

- (id)crlaxConnectionLineConnectionCustomEdgeDescription
{
  if ([(CRLCanvasKnobAccessibility *)self crlaxConnectionMagnetType]== 6)
  {
    v17 = 0;
    v3 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
    v4 = [v3 crlaxLayout];

    v5 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v17);
    if (v17 == 1)
    {
      abort();
    }

    v7 = v6;

    if (!v7)
    {
      goto LABEL_11;
    }

    if ([(CRLCanvasKnobAccessibility *)self crlaxKnobTag]== 11)
    {
      [v7 headMagnetNormalizedPosition];
    }

    else
    {
      [v7 tailMagnetNormalizedPosition];
    }

    v9 = [CRLCanvasKnobAccessibility crlaxEdgePositionTypeFromNormalizedPosition:?]- 1;
    if (v9 <= 7 && (v10 = *(&off_1018406C8 + v9), +[NSBundle mainBundle](NSBundle, "mainBundle"), v11 = objc_claimAutoreleasedReturnValue(), [v11 localizedStringForKey:v10 value:0 table:0], v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"%1$@ at %2$@" value:0 table:0];
      v15 = [(CRLCanvasKnobAccessibility *)self _getAccessibleAbsolutePositionOfKnob];
      v8 = [NSString localizedStringWithFormat:v14, v12, v15];
    }

    else
    {
LABEL_11:
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"edge at %@" value:0 table:0];
      v14 = [(CRLCanvasKnobAccessibility *)self _getAccessibleAbsolutePositionOfKnob];
      v8 = [NSString localizedStringWithFormat:v13, v14];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)crlaxNameFor3DObjectPlayPauseKnobState
{
  v12 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v12);
  if (v12 == 1)
  {
    abort();
  }

  v5 = v4;

  v6 = [v5 isPlaying];
  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v6)
  {
    v9 = @"Pause";
  }

  else
  {
    v9 = @"Play";
  }

  v10 = [v7 localizedStringForKey:v9 value:0 table:0];

  return v10;
}

- (CGPoint)_crlaxSnappedValueIfApplicableFromUnscaledCanvasPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCanvasKnobAccessibility *)self crlaxCurrentGridSnapDistance];
  if (v5 != 0.0)
  {
    v6 = v5;
    x = sub_1004C3204(x, v5);
    y = sub_1004C3204(y, v6);
  }

  v7 = x;
  v8 = y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)crlaxIsSupported
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  result = 0;
  if (v3 <= 0x1D)
  {
    if (((1 << v3) & 0x2001FFDE) != 0)
    {
      return 1;
    }

    if (v3 == 5)
    {
      if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DReorientationKnob]|| [(CRLCanvasKnobAccessibility *)self crlaxIs3DObjectPlayPauseKnob])
      {
        return 1;
      }

      return [(CRLCanvasKnobAccessibility *)self crlaxIsReplaceMediaKnob];
    }
  }

  return result;
}

- (id)crlaxPlatformSpecificHint
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  if ([v3 crlaxInReadOnlyMode])
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v5 = [v4 crlaxIsLocked];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v8 <= 0x10)
  {
    if (((1 << v8) & 0x1F000) != 0)
    {
      if ([(CRLCanvasKnobAccessibility *)self crlaxIsAdjustable])
      {
        goto LABEL_4;
      }

      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Double tap and hold, then drag to change shape";
      goto LABEL_28;
    }

    if (((1 << v8) & 0x3C0) != 0)
    {
      goto LABEL_11;
    }

    if (((1 << v8) & 0xC00) != 0)
    {
      v12 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
      v13 = [v12 crlaxTarget];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineEndpointHandleWithConnection];
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        if (v15)
        {
          v11 = @"Double tap and hold, then drag to reposition and disconnect";
        }

        else
        {
          v11 = @"Double tap and hold, then drag to reposition and to connect to other items on the board";
        }
      }

      else
      {
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"Double tap and hold, then drag to reposition";
      }

      goto LABEL_28;
    }
  }

  if (v8 - 1 >= 5)
  {
    goto LABEL_4;
  }

  if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DReorientationKnob])
  {
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"Double tap and hold, then drag to reorient";
    goto LABEL_28;
  }

  if ([(CRLCanvasKnobAccessibility *)self crlaxIs3DObjectPlayPauseKnob])
  {
    goto LABEL_4;
  }

  if ([(CRLCanvasKnobAccessibility *)self crlaxIsReplaceMediaKnob])
  {
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"Double tap to replace media";
    goto LABEL_28;
  }

LABEL_11:
  if ([(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineCreationKnob])
  {
    v6 = [(CRLCanvasKnobAccessibility *)self crlaxConnectionLineKnobHint];
    goto LABEL_5;
  }

  v9 = +[NSBundle mainBundle];
  v10 = v9;
  v11 = @"Double tap and hold, then drag to resize";
LABEL_28:
  v6 = [v9 localizedStringForKey:v11 value:0 table:0];

LABEL_5:

  return v6;
}

- (BOOL)crlaxIsAdjustable
{
  v3 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  if ([v3 crlaxInReadOnlyMode])
  {

LABEL_4:
    v6 = 0;
    return v6 & 1;
  }

  v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v5 = [v4 crlaxIsLocked];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  if (v8 > 0x10)
  {
    goto LABEL_11;
  }

  if (((1 << v8) & 0x1F000) == 0)
  {
    if (((1 << v8) & 0x3C0) != 0)
    {
      goto LABEL_12;
    }

    if (((1 << v8) & 0xC00) != 0)
    {
      v9 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
      v10 = [v9 crlaxTarget];
      objc_opt_class();
      v6 = objc_opt_isKindOfClass() ^ 1;

      return v6 & 1;
    }

LABEL_11:
    if (v8 - 1 >= 4)
    {
      if (v8 != 5 || [(CRLCanvasKnobAccessibility *)self crlaxIs3DReorientationKnob]|| [(CRLCanvasKnobAccessibility *)self crlaxIs3DObjectPlayPauseKnob])
      {
        goto LABEL_4;
      }

      v11 = [(CRLCanvasKnobAccessibility *)self crlaxIsReplaceMediaKnob];
LABEL_13:
      v6 = v11 ^ 1;
      return v6 & 1;
    }

LABEL_12:
    v11 = [(CRLCanvasKnobAccessibility *)self crlaxIsConnectionLineCreationKnob];
    goto LABEL_13;
  }

  v12 = [(CRLCanvasKnobAccessibility *)self crlaxSmartPathSourceForShapeControlKnob];
  v13 = [v12 crlaxIsAdjustableForKnobTag:{-[CRLCanvasKnobAccessibility crlaxKnobTag](self, "crlaxKnobTag")}];

  return v13;
}

- (CGPoint)crlaxCalculatedNextPositionInRepForAdjustable:(BOOL)a3
{
  v3 = a3;
  [(CRLCanvasKnobAccessibility *)self crlaxPosition];
  v6 = v5;
  v8 = v7;
  v9 = [(CRLCanvasKnobAccessibility *)self crlaxKnobTag];
  v10 = v9;
  v11 = v9 - 1;
  if (v9 - 1 >= 0xA || (v12 = -1.0, ((0x249u >> v11) & 1) == 0))
  {
    x = 1.0;
    if (((0x149u >> (v9 - 3)) & 1) == 0)
    {
      x = CGPointZero.x;
    }

    if (v9 - 3 >= 9)
    {
      v12 = CGPointZero.x;
    }

    else
    {
      v12 = x;
    }
  }

  y = CGPointZero.y;
  v15 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v16 = [v15 crlaxTarget];
  [v16 boundsForStandardKnobs];
  v18 = v17;
  v20 = v19;

  [(CRLCanvasKnobAccessibility *)self crlaxIncrementDecrementMagnitude];
  v22 = v21;
  v23 = v21;
  if (v18 > 0.0)
  {
    v23 = v21 * (v20 / v18);
    [(CRLCanvasKnobAccessibility *)self crlaxCurrentGridSnapDistance];
    if (v24 != 0.0)
    {
      v23 = fmax(v23, v24);
    }
  }

  v25 = 1.0;
  if (v10 - 7 >= 3)
  {
    v26 = y;
  }

  else
  {
    v26 = 1.0;
  }

  if (v11 < 3)
  {
    v26 = -1.0;
  }

  if (!v3)
  {
    v25 = -1.0;
  }

  v27 = v25 * v26 * v23;
  v28 = v6 + v25 * v12 * v22;
  v29 = v8 + v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (double)crlaxIncrementDecrementMagnitude
{
  [(CRLCanvasKnobAccessibility *)self crlaxCurrentGridSnapDistance];
  if (result == 0.0)
  {
    return 10.0;
  }

  return result;
}

- (id)crlaxConnectionLineKnobHint
{
  v3 = objc_opt_new();
  v4 = [(CRLCanvasKnobAccessibility *)self crlaxParentRepForKnob];
  v5 = [v4 crlaxHasAvailableRepsForConnecting];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Use the Add Connections rotor to make connections to existing board items." value:0 table:0];
    [v3 addObject:v7];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Double tap and hold value:then drag to insert a new connected shape" table:{0, 0}];
  v15[0] = v9;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Double tap and hold value:then drag to another item on the board to connect the two items" table:{0, 0}];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  [v3 addObjectsFromArray:v12];

  v13 = [v3 componentsJoinedByString:{@", "}];

  return v13;
}

@end