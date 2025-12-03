@interface CRLCanvasLayoutAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxIsDraggable;
- (BOOL)crlaxIsSelectable;
- (CGPoint)getCardinalPositionFromTypeInUnscaledCanvas:(unint64_t)canvas;
- (CRLCanvasLayoutGeometryAccessibility)crlaxInspectorGeometry;
- (CRLCanvasRepAccessibility)crlaxRepForLayout;
- (NSString)crlaxDescriptionForConnections;
- (id)_crlaxCanvas;
- (id)_dragAnnouncementStringForDiff:(CGPoint)diff;
- (id)_longDragAnnouncementStringForDiff:(CGPoint)diff;
- (id)crlaxCommandForAccessibilityIncrementDecrement:(BOOL)decrement forKnobTag:(unint64_t)tag inSmartPathSource:(id)source;
- (void)dragBy:(CGPoint)by;
- (void)invalidate;
@end

@implementation CRLCanvasLayoutAccessibility

- (void)dragBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  v11.receiver = self;
  v11.super_class = CRLCanvasLayoutAccessibility;
  [(CRLCanvasLayoutAccessibility *)&v11 dragBy:?];
  +[CRLCanvasRepAccessibility crlaxCurrentRepDragOffset];
  v9 = vabdd_f64(v6, x) <= 2.0;
  v8 = vabdd_f64(v7, y);
  v9 = v9 && v8 <= 2.0;
  if (!v9)
  {
    v10 = [(CRLCanvasLayoutAccessibility *)self _dragAnnouncementStringForDiff:x, y];
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v10);
    UIAccessibilityPostNotification(CRLAccessibilityElementMovedNotification, 0);
    [CRLCanvasRepAccessibility crlaxSetCurrentRepDragOffset:x, y];
  }
}

- (id)_dragAnnouncementStringForDiff:(CGPoint)diff
{
  y = diff.y;
  x = diff.x;
  if ([(CRLCanvasLayoutAccessibility *)self crlaxDragAnnouncementType]== 1)
  {
    v6 = [(CRLCanvasLayoutAccessibility *)self _longDragAnnouncementStringForDiff:x, y];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_longDragAnnouncementStringForDiff:(CGPoint)diff
{
  y = diff.y;
  v4 = fabs(diff.x);
  if (diff.x == 0.0)
  {
    v7 = 0;
  }

  else
  {
    x = diff.x;
    if (diff.x > 0.0)
    {
      v6 = CRLAccessibilityStringsDictKey(@"moving.object.right");
      [NSString localizedStringWithFormat:v6, *&x];
    }

    else
    {
      v6 = CRLAccessibilityStringsDictKey(@"moving.object.left");
      [NSString localizedStringWithFormat:v6, *&v4];
    }
    v7 = ;
  }

  v8 = fabs(y);
  if (y == 0.0)
  {
    v10 = 0;
  }

  else
  {
    if (y > 0.0)
    {
      v9 = CRLAccessibilityStringsDictKey(@"moving.object.down");
      [NSString localizedStringWithFormat:v9, *&y];
    }

    else
    {
      v9 = CRLAccessibilityStringsDictKey(@"moving.object.up");
      [NSString localizedStringWithFormat:v9, *&v8];
    }
    v10 = ;
  }

  if (v4 <= v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= v8)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  v13 = v10;
  v14 = v7;
  v21 = __CRLAccessibilityStringForVariables(1, v11, v15, v16, v17, v18, v19, v20, v12);

  return v21;
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLCanvasLayoutGeometryAccessibility)crlaxInspectorGeometry
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
  inspectorGeometry = [crlaxTarget inspectorGeometry];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, inspectorGeometry, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxIsSelectable
{
  crlaxTarget = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
  isSelectable = [crlaxTarget isSelectable];

  return isSelectable;
}

- (BOOL)crlaxIsDraggable
{
  crlaxTarget = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
  isDraggable = [crlaxTarget isDraggable];

  return isDraggable;
}

- (CRLCanvasRepAccessibility)crlaxRepForLayout
{
  _crlaxCanvas = [(CRLCanvasLayoutAccessibility *)self _crlaxCanvas];
  v4 = objc_opt_class();
  crlaxInteractiveCanvasController = [_crlaxCanvas crlaxInteractiveCanvasController];
  v6 = __CRLAccessibilityCastAsSafeCategory(v4, crlaxInteractiveCanvasController, 0, 0);

  v7 = [v6 crlaxRepForLayout:self];

  return v7;
}

- (NSString)crlaxDescriptionForConnections
{
  crlaxRepForLayout = [(CRLCanvasLayoutAccessibility *)self crlaxRepForLayout];
  crlaxDescriptionForConnections = [crlaxRepForLayout crlaxDescriptionForConnections];

  if (![crlaxDescriptionForConnections length])
  {
    v15 = 0;
    crlaxTarget = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
    info = [crlaxTarget info];

    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, info, 1, &v15);
    if (v15 == 1)
    {
      abort();
    }

    v9 = v8;

    crlaxTypeDescription = [v9 crlaxTypeDescription];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Off-screen %@" value:0 table:0];

    v13 = [NSString localizedStringWithFormat:v12, crlaxTypeDescription];

    crlaxDescriptionForConnections = v13;
  }

  return crlaxDescriptionForConnections;
}

- (void)invalidate
{
  v11.receiver = self;
  v11.super_class = CRLCanvasLayoutAccessibility;
  [(CRLCanvasLayoutAccessibility *)&v11 invalidate];
  crlaxStorage = [(CRLCanvasLayoutAccessibility *)self crlaxStorage];
  if (crlaxStorage)
  {
    _crlaxCanvas = [(CRLCanvasLayoutAccessibility *)self _crlaxCanvas];
    v5 = objc_opt_class();
    crlaxInteractiveCanvasController = [_crlaxCanvas crlaxInteractiveCanvasController];
    v7 = __CRLAccessibilityCastAsSafeCategory(v5, crlaxInteractiveCanvasController, 0, 0);

    if (v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100538104;
      v8[3] = &unk_10183AE28;
      v9 = crlaxStorage;
      v10 = v7;
      if (__CRLAccessibilityPerformSafeBlock(v8))
      {
        abort();
      }
    }
  }
}

- (CGPoint)getCardinalPositionFromTypeInUnscaledCanvas:(unint64_t)canvas
{
  crlaxTarget = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
  [crlaxTarget invalidateCacheForMagnets];
  [crlaxTarget getCardinalPositionFromType:canvas];
  v7 = v6;
  v9 = v8;
  v37 = 0;
  parent = [crlaxTarget parent];
  v11 = objc_opt_class();
  v12 = __CRLAccessibilityCastAsClass(v11, parent, 1, &v37);
  if (v37 == 1)
  {
    goto LABEL_8;
  }

  v13 = v12;

  if (v13)
  {
    [v13 convertNaturalPointToUnscaledCanvas:{v7, v9}];
    v7 = v14;
    v9 = v15;
  }

  crlaxRepForLayout = [(CRLCanvasLayoutAccessibility *)self crlaxRepForLayout];
  [crlaxRepForLayout crlaxFrameInUnscaledCanvas];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (!sub_10011EF78(v18, v20, v22, v24, v7, v9))
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      crlaxRepForLayout2 = [(CRLCanvasLayoutAccessibility *)self crlaxRepForLayout];
      v40.origin.x = v18;
      v40.origin.y = v20;
      v40.size.width = v22;
      v40.size.height = v24;
      v27 = NSStringFromCGRect(v40);
      v38.x = v7;
      v38.y = v9;
      v36 = NSStringFromCGPoint(v38);
      v33 = __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"The rep %@ has an unscaled canvas frame %@, that does not include the unscaled canvas point %@ for magnet %lu.", v28, v29, v30, v31, v32, crlaxRepForLayout2);

      if (v33)
      {
LABEL_8:
        abort();
      }
    }
  }

  v34 = v7;
  v35 = v9;
  result.y = v35;
  result.x = v34;
  return result;
}

- (id)crlaxCommandForAccessibilityIncrementDecrement:(BOOL)decrement forKnobTag:(unint64_t)tag inSmartPathSource:(id)source
{
  decrementCopy = decrement;
  sourceCopy = source;
  v84 = 0;
  crlaxTarget = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];

  v11 = objc_opt_class();
  v12 = __CRLAccessibilityCastAsClass(v11, info, 1, &v84);
  if (v84 == 1)
  {
    goto LABEL_93;
  }

  v13 = v12;

  v83 = 0;
  crlaxTarget2 = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
  info2 = [crlaxTarget2 info];

  v16 = objc_opt_class();
  v17 = __CRLAccessibilityCastAsClass(v16, info2, 1, &v83);
  if (v83 == 1)
  {
    goto LABEL_93;
  }

  v18 = v17;

  if (objc_opt_respondsToSelector())
  {
    crlaxTarget3 = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
    maskLayout = [crlaxTarget3 maskLayout];

    maskInfo = [maskLayout maskInfo];
    v82 = 0;
    pathSource = [maskInfo pathSource];
    v23 = objc_opt_class();
    v24 = __CRLAccessibilityCastAsClassAndProtocol(v23, &OBJC_PROTOCOL___CRLSmartPathSource, pathSource, 1, &v82);
    if (v82 == 1)
    {
      goto LABEL_93;
    }

    v25 = v24;

    if (!v18 || !maskInfo)
    {

      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    v26 = [v25 crlaxIsAdjustableForKnobTag:tag];

    if (v26)
    {
      if (maskLayout)
      {
        v27 = 1;
        goto LABEL_13;
      }

LABEL_21:
      v36 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    maskLayout = 0;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_12:
  v27 = 0;
LABEL_13:
  if ([sourceCopy crlaxIsAdjustableForKnobTag:tag])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = 0;
      v28 = sourceCopy;
      v29 = objc_opt_class();
      v30 = __CRLAccessibilityCastAsClass(v29, v28, 1, &v81);
      if (v81 != 1)
      {
        v31 = v30;

        if (tag == 14)
        {
          if (decrementCopy)
          {
            [v31 maxTailSize];
            v53 = v52;
            [v31 tailSize];
            v55 = v54 + 1.0;
            if (v53 < v55)
            {
              v55 = v53;
            }
          }

          else
          {
            [v31 minTailSize];
            v65 = v64;
            [v31 tailSize];
            v55 = v66 + -1.0;
            if (v65 >= v55)
            {
              v55 = v65;
            }
          }

          if (v27)
          {
            [CRLPathSourceCommandHelper commandForSettingCalloutTailSize:v28 withPathSource:v18 imageItem:maskLayout maskLayout:v55];
          }

          else
          {
            [CRLPathSourceCommandHelper commandForSettingCalloutTailSize:v28 withPathSource:v13 shapeItem:v55];
          }

          goto LABEL_52;
        }

        if (tag == 13)
        {
          if (decrementCopy)
          {
            [v31 maxCornerRadius];
            v33 = v32;
            [v31 cornerRadius];
            v35 = v34 + 1.0;
          }

          else
          {
            [v31 minCornerRadius];
            v33 = v56;
            [v31 cornerRadius];
            v58 = floor(v57 + -1.0);
            if (v33 < v58)
            {
              v33 = v58;
            }

            [v31 maxCornerRadius];
            v35 = floor(v59 + -1.0);
          }

          if (v33 < v35)
          {
            v35 = v33;
          }

          if (v27)
          {
            [CRLPathSourceCommandHelper commandForSettingCalloutCornerRadius:v28 withPathSource:v18 imageItem:maskLayout maskLayout:v35];
          }

          else
          {
            [CRLPathSourceCommandHelper commandForSettingCalloutCornerRadius:v28 withPathSource:v13 shapeItem:v35];
          }

          v60 = LABEL_52:;
LABEL_72:
          v51 = v60;
          goto LABEL_73;
        }

        goto LABEL_40;
      }

      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = 0;
      v37 = sourceCopy;
      v38 = objc_opt_class();
      v39 = __CRLAccessibilityCastAsClass(v38, v37, 1, &v80);
      if (v80 != 1)
      {
        v31 = v39;

        type = [v31 type];
        if (type == 1)
        {
          if (decrementCopy)
          {
            v61 = +[CRLScalarPathSource crlaxMaximumAllowedPolygonPointsDuringAdjustment];
            [v31 scalar];
            v63 = v62 + 1.0;
            if (v63 > v61)
            {
              v63 = v61;
            }
          }

          else
          {
            [v31 scalar];
            v63 = fmax(v68 + -1.0, 3.0);
          }

          if (v27)
          {
            [CRLPathSourceCommandHelper commandForSettingNumberOfSides:v37 withPathSource:v18 imageItem:maskLayout maskLayout:v63];
          }

          else
          {
            [CRLPathSourceCommandHelper commandForSettingNumberOfSides:v37 withPathSource:v13 shapeItem:v63];
          }
        }

        else
        {
          if (type)
          {
            goto LABEL_40;
          }

          if (decrementCopy)
          {
            [v31 maxCornerRadius];
            v42 = v41;
            [v31 scalar];
            v44 = v43 + 1.0;
            if (v42 < v44)
            {
              v44 = v42;
            }
          }

          else
          {
            [v31 scalar];
            v44 = fmax(v67 + -1.0, 0.0);
          }

          if (v27)
          {
            [CRLPathSourceCommandHelper commandForSettingCornerRadius:v37 withPathSource:v18 imageItem:maskLayout maskLayout:v44];
          }

          else
          {
            [CRLPathSourceCommandHelper commandForSettingCornerRadius:v37 withPathSource:v13 shapeItem:v44];
          }
        }
        v60 = ;
        goto LABEL_72;
      }

      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = 0;
      v45 = sourceCopy;
      v46 = objc_opt_class();
      v47 = __CRLAccessibilityCastAsClass(v46, v45, 1, &v79);
      if (v79 != 1)
      {
        v31 = v47;

        if ([v31 type] == 100)
        {
          if (tag == 13)
          {
            if (decrementCopy)
            {
              [v31 maxStarRadius];
              v71 = v70;
              [v31 starRadius];
              v73 = v72 + 0.05;
              if (v71 < v73)
              {
                v73 = v71;
              }
            }

            else
            {
              [v31 minStarRadius];
              v77 = v76;
              [v31 starRadius];
              v73 = v78 + -0.05;
              if (v77 >= v73)
              {
                v73 = v77;
              }
            }

            if (v27)
            {
              [CRLPathSourceCommandHelper commandForSettingStarRadius:v45 withPathSource:v18 imageItem:maskLayout maskLayout:v73];
            }

            else
            {
              [CRLPathSourceCommandHelper commandForSettingStarRadius:v45 withPathSource:v13 shapeItem:v73];
            }
          }

          else
          {
            if (tag != 12)
            {
              goto LABEL_40;
            }

            if (decrementCopy)
            {
              maxStarPoints = [v31 maxStarPoints];
              starPoints = [v31 starPoints];
              if (maxStarPoints >= starPoints + 1)
              {
                v50 = starPoints + 1;
              }

              else
              {
                v50 = maxStarPoints;
              }
            }

            else
            {
              minStarPoints = [v31 minStarPoints];
              v50 = [v31 starPoints] - 1;
              if (minStarPoints > v50)
              {
                v50 = minStarPoints;
              }
            }

            v75 = v50;
            if (v27)
            {
              [CRLPathSourceCommandHelper commandForSettingStarPoints:v45 withPathSource:v18 imageItem:maskLayout maskLayout:v75];
            }

            else
            {
              [CRLPathSourceCommandHelper commandForSettingStarPoints:v45 withPathSource:v13 shapeItem:v75];
            }
          }
          v60 = ;
          goto LABEL_72;
        }

LABEL_40:
        v51 = 0;
LABEL_73:

        goto LABEL_74;
      }

LABEL_93:
      abort();
    }
  }

  v51 = 0;
LABEL_74:
  v36 = v51;
LABEL_75:

  return v36;
}

- (id)_crlaxCanvas
{
  v9 = 0;
  crlaxTarget = [(CRLCanvasLayoutAccessibility *)self crlaxTarget];
  layoutController = [crlaxTarget layoutController];
  canvas = [layoutController canvas];

  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, canvas, 1, &v9);
  if (v9 == 1)
  {
    abort();
  }

  v7 = v6;

  return v7;
}

@end