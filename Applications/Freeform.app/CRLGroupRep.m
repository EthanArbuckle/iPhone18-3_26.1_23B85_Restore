@interface CRLGroupRep
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4;
- (BOOL)containsUnknownContent;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (BOOL)i_childRepsWantContextMenuWhenEditingDisabledAtPoint:(CGPoint)a3 onlyNonGrouped:(BOOL)a4;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)isSelectedIgnoringLocking;
- (BOOL)p_handleSubselectionTapAtPoint:(CGPoint)a3;
- (BOOL)shouldShowCollaboratorCursorHighlight;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)wantsToHandleTapsWhenLocked;
- (BOOL)willHandleFreeTransformingLayoutForRep:(id)a3;
- (BOOL)willHandleResizingLayoutForRep:(id)a3;
- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)frameInUnscaledCanvasForMarqueeSelecting;
- (CGRect)i_baseFrameInUnscaledCanvasForPositioningLayer;
- (CRLContainerInfo)containerInfo;
- (NSArray)allRepsContainedInGroup;
- (id)beginEditingChildrenIfAllowedAtUnscaledPoint:(CGPoint)a3 pickingDeepestChild:(BOOL)a4;
- (id)createAdditionalBoardItemsForCopyImaging;
- (id)dynamicResizeDidBegin;
- (id)i_handleDeepSubselectionTapAtPoint:(CGPoint)a3;
- (id)overlayRenderables;
- (id)p_groupItem;
- (id)p_groupedChildReps;
- (id)selectionHighlightColor;
- (id)unscaledPathToIncludeForSystemPreviewOutline;
- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3;
- (void)dynamicFreeTransformDidEndWithTracker:(id)a3;
- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)dynamicallyFreeTransformingWithTracker:(id)a3;
- (void)dynamicallyResizingWithTracker:(id)a3;
- (void)processChangedProperty:(unint64_t)a3;
- (void)recursivelyDrawInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
- (void)setNeedsDisplay;
- (void)updateChildrenFromLayout;
- (void)updateFromLayout;
@end

@implementation CRLGroupRep

- (id)p_groupItem
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100013F00(v3, v4);

  return v5;
}

- (CRLContainerInfo)containerInfo
{
  v2 = [(CRLCanvasRep *)self info];
  v9 = sub_1003035DC(v2, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLContainerInfo);

  return v9;
}

- (CGRect)clipRect
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [(CRLGroupRep *)self p_groupedChildReps];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        [v11 clipRect];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v20 = [v11 layout];
        v21 = [v20 geometry];
        v22 = v21;
        if (v21)
        {
          [v21 transform];
        }

        else
        {
          memset(&v34, 0, sizeof(v34));
        }

        v40.origin.x = v13;
        v40.origin.y = v15;
        v40.size.width = v17;
        v40.size.height = v19;
        v41 = CGRectApplyAffineTransform(v40, &v34);
        v23 = v41.origin.x;
        v24 = v41.origin.y;
        v25 = v41.size.width;
        v26 = v41.size.height;

        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        v46.origin.x = v23;
        v46.origin.y = v24;
        v46.size.width = v25;
        v46.size.height = v26;
        v43 = CGRectUnion(v42, v46);
        x = v43.origin.x;
        y = v43.origin.y;
        width = v43.size.width;
        height = v43.size.height;
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  if (CGRectIsNull(v44))
  {
    +[_TtC8Freeform12CRLGroupItem unscaledSizeForEmptyGroups];
    x = sub_10011ECB4();
    y = v27;
    width = v28;
    height = v29;
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)recursivelyDrawInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v6 = a4;
  memset(&v26, 0, sizeof(v26));
  v7 = [(CRLCanvasRep *)self layout];
  v8 = [v7 geometry];
  v9 = v8;
  if (v8)
  {
    [v8 transform];
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  if (sub_10026171C(&v26))
  {
    v25 = v26;
    CGContextConcatCTM(a3, &v25);
    [(CRLGroupRep *)self clipRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(CRLCanvasRep *)self masksToBounds];
    if (sub_100122890())
    {
      goto LABEL_6;
    }

    v24 = sub_10011FBD0(v15, v17);
    if (!v18 || v24)
    {
      if (v24)
      {
LABEL_6:
        if (v18)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v27.origin.x = v11;
      v27.origin.y = v13;
      v27.size.width = v15;
      v27.size.height = v17;
      CGContextClipToRect(a3, v27);
    }

    CGContextSaveGState(a3);
    if ((v18 & 1) == 0)
    {
      v28.origin.x = v11;
      v28.origin.y = v13;
      v28.size.width = v15;
      v28.size.height = v17;
      CGContextClipToRect(a3, v28);
    }

    [(CRLGroupRep *)self drawInContext:a3];
    CGContextRestoreGState(a3);
LABEL_24:
    [(CRLCanvasRep *)self recursivelyDrawChildrenInContext:a3 keepingChildrenPassingTest:v6];
    goto LABEL_25;
  }

  v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013209F8();
  }

  v20 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101320A20(v19, v20);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101320ACC();
  }

  v21 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v21, v19);
  }

  v22 = [NSString stringWithUTF8String:"[CRLGroupRep recursivelyDrawInContext:keepingChildrenPassingTest:]"];
  v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupRep.m"];
  [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:93 isFatal:0 description:"Invalid group transform; bailing out on group"];

LABEL_25:
}

- (CGRect)frameInUnscaledCanvas
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 pureGeometryInRoot];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frameInUnscaledCanvasForMarqueeSelecting
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(CRLCanvasRep *)self childReps];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v10) frameInUnscaledCanvasForMarqueeSelecting];
        v27.origin.x = v11;
        v27.origin.y = v12;
        v27.size.width = v13;
        v27.size.height = v14;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = CGRectUnion(v24, v27);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)i_baseFrameInUnscaledCanvasForPositioningLayer
{
  v2 = [(CRLCanvasRep *)self layout];
  v3 = [v2 geometryInRoot];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)updateFromLayout
{
  v9.receiver = self;
  v9.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v9 updateFromLayout];
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isCanvasInteractive];

  if (v4)
  {
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    if (!CGRectEqualToRect(v10, self->_lastBoundsForStandardKnobs))
    {
      [(CRLCanvasRep *)self invalidateKnobPositions];
      [(CRLCanvasRep *)self boundsForStandardKnobs];
      self->_lastBoundsForStandardKnobs.origin.x = v5;
      self->_lastBoundsForStandardKnobs.origin.y = v6;
      self->_lastBoundsForStandardKnobs.size.width = v7;
      self->_lastBoundsForStandardKnobs.size.height = v8;
    }
  }
}

- (NSArray)allRepsContainedInGroup
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CRLCanvasRep *)self childReps];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 allRepsContainedInGroup];
          [v3 addObjectsFromArray:v10];
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)createAdditionalBoardItemsForCopyImaging
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(CRLCanvasRep *)self childReps];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(CRLCanvasRep *)self childReps];
    v8 = [v7 firstObject];

    v9 = objc_opt_class();
    v35 = v8;
    v10 = [v8 info];
    v11 = sub_100014370(v9, v10);

    v12 = [(CRLCanvasRep *)self interactiveCanvasController];
    v13 = [NSSet alloc];
    v34 = v11;
    v46 = v11;
    v14 = [NSArray arrayWithObjects:&v46 count:1];
    v15 = [v13 initWithArray:v14];
    v16 = [v12 topLevelZOrderedSiblingsOfInfos:v15];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          if ([v22 requiresAdditionalBoardItemsForCopyImaging])
          {
            v23 = [(CRLCanvasRep *)self interactiveCanvasController];
            v24 = [v23 repForInfo:v22];

            v25 = [(CRLCanvasRep *)self childReps];
            v26 = [v25 containsObject:v24];

            if (v26)
            {
              [v4 addObject:v24];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v19);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = v4;
  v28 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v37;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v36 + 1) + 8 * j) createAdditionalBoardItemsForCopyImaging];
        [v3 addObjectsFromArray:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v29);
  }

  return v3;
}

- (id)overlayRenderables
{
  v4.receiver = self;
  v4.super_class = CRLGroupRep;
  v2 = [(CRLCanvasRep *)&v4 overlayRenderables];

  return v2;
}

- (BOOL)isSelectedIgnoringLocking
{
  v3 = [(CRLCanvasRep *)self layout];
  if ([v3 isSelectable])
  {
    v4 = [(CRLCanvasRep *)self canvas];
    v5 = [v4 isCanvasInteractive];
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v5)
  {
    v7 = [(CRLCanvasRep *)self interactiveCanvasController];
    v8 = [v7 editorController];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100168164;
    v10[3] = &unk_101841210;
    v10[4] = v8;
    v10[5] = self;
    v10[6] = &v11;
    [v8 enumerateEditorsOnStackUsingBlock:v10];

    v6 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  return v6 & 1;
}

- (BOOL)shouldShowSelectionHighlight
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v5 = [v4 selectionPath];

  v6 = [v5 mostSpecificSelectionOfClass:objc_opt_class()];
  v7 = [v3 topLevelContainerInfoForEditing];
  v8 = [(CRLCanvasRep *)self info];
  v15 = sub_1003035DC(v8, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLCanvasElementInfo);
  v16 = v15;
  if (v7 == v15)
  {
  }

  else
  {
    if (!v6)
    {

LABEL_18:
      v27.receiver = self;
      v27.super_class = CRLGroupRep;
      v25 = [(CRLCanvasRep *)&v27 shouldShowSelectionHighlight];
      goto LABEL_19;
    }

    v17 = [v6 boardItems];
    v18 = [(CRLGroupRep *)self p_groupItem];
    v19 = [v17 containsObject:v18];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [(CRLCanvasRep *)self childReps];
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    while (2)
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if ([*(*(&v28 + 1) + 8 * i) isInDynamicOperation])
        {
          v25 = 0;
          goto LABEL_16;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v25 = 1;
LABEL_16:

LABEL_19:
  return v25;
}

- (id)selectionHighlightColor
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v5 = [v4 selectionPath];
  v6 = [v5 mostSpecificSelectionOfClass:objc_opt_class()];

  v7 = [(CRLCanvasRep *)self interactiveCanvasController];
  v8 = [v7 topLevelContainerInfoForEditing];
  v9 = objc_opt_class();
  v15 = sub_100303920(v8, v9, 1, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLContainerInfo);

  v16 = [(CRLCanvasRep *)self info];
  v17 = v16;
  if (v15 == v16)
  {
  }

  else
  {
    if (!v6)
    {

LABEL_10:
      v24.receiver = self;
      v24.super_class = CRLGroupRep;
      v21 = [(CRLCanvasRep *)&v24 selectionHighlightColor];
      goto LABEL_11;
    }

    v18 = [v6 boardItems];
    v19 = [(CRLGroupRep *)self p_groupItem];
    v20 = [v18 containsObject:v19];

    if (!v20)
    {
      goto LABEL_10;
    }
  }

  if (qword_101A34688 != -1)
  {
    sub_101320AF4();
  }

  v21 = qword_101A34690;
LABEL_11:
  v22 = v21;

  return v22;
}

- (BOOL)shouldShowCollaboratorCursorHighlight
{
  v3 = [(CRLGroupRep *)self p_groupItem];
  if ([v3 isEffectivelyEmpty])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLGroupRep;
    v4 = [(CRLCanvasRep *)&v6 shouldShowCollaboratorCursorHighlight];
  }

  return v4;
}

- (CGPoint)convertNaturalPointFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v3 = [(CRLCanvasRep *)self layout];
  v4 = v3;
  if (v3)
  {
    [v3 transformInRoot];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformInvert(&v11, &v10);
  v9 = vaddq_f64(*&v11.tx, vmlaq_n_f64(vmulq_n_f64(*&v11.c, y), *&v11.a, x));

  v6 = v9.f64[1];
  v5 = v9.f64[0];
  result.y = v6;
  result.x = v5;
  return result;
}

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v6 = [(CRLCanvasRep *)self layout];
  v7 = [v6 geometry];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
    v9 = v36;
    v10 = v37;
    v11 = v38;
  }

  else
  {
    v11 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  pointa = vaddq_f64(v11, vmlaq_n_f64(vmulq_n_f64(v10, y), v9, x));

  [v6 frameForCulling];
  if (CGRectContainsPoint(v40, pointa))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [(CRLCanvasRep *)self childReps];
    v13 = [v12 reverseObjectEnumerator];

    v14 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      point = vdupq_lane_s64(*&x, 0);
      v16 = *v33;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = [v18 layout];
          v20 = [v19 geometry];
          v21 = v20;
          if (v20)
          {
            [v20 inverseTransform];
            v22 = v36;
            v23 = v37;
            v24 = v38;
          }

          else
          {
            v24 = 0uLL;
            v22 = 0uLL;
            v23 = 0uLL;
          }

          v31 = vaddq_f64(v24, vmlaq_f64(vmulq_n_f64(v23, y), point, v22));

          if ([v18 containsPoint:v4 withPrecision:*&v31])
          {
            v25 = 1;
            goto LABEL_19;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
LABEL_19:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)containsPoint:(CGPoint)a3 withSlop:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  v21 = *&a3.x;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(CRLCanvasRep *)self childReps];
  v7 = [v6 reverseObjectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
    v19 = vdupq_lane_s64(v21, 0);
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 layout];
        v13 = [v12 geometry];
        v14 = v13;
        if (v13)
        {
          [v13 inverseTransform];
          v15 = v23;
          v16 = v24;
          v17 = v25;
        }

        else
        {
          v17 = 0uLL;
          v15 = 0uLL;
          v16 = 0uLL;
        }

        v22 = vaddq_f64(v17, vmlaq_f64(vmulq_n_f64(v16, y), v19, v15));

        if ([v11 containsPoint:*&v22 withSlop:{width, height}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_14;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v8;
}

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(CRLCanvasRep *)self childReps];
  v8 = [v7 reverseObjectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) intersectsUnscaledRect:{x, y, width, height}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v7 processChangedProperty:?];
  if (a3 == 12)
  {
    v5 = [(CRLGroupRep *)self p_groupItem];
    if (([v5 isFreehandDrawing] & 1) == 0)
    {
      [(CRLCanvasRep *)self recursivelyPerformSelector:"invalidateKnobs"];
    }
  }

  v6 = [(CRLCanvasRep *)self canvas];
  [v6 canvasInvalidatedForRep:self];
}

- (void)setNeedsDisplay
{
  v15.receiver = self;
  v15.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v15 setNeedsDisplay];
  v3 = [(CRLCanvasRep *)self childReps];
  v4 = [NSSet setWithArray:v3];

  if ([(CRLCanvasRep *)self drawsDescendantsIntoLayer])
  {
    v5 = [(CRLCanvasRep *)self childrenToExcludeWhenDrawingDescendantsIntoLayer];

    v4 = v5;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setNeedsDisplay];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)containsUnknownContent
{
  v14.receiver = self;
  v14.super_class = CRLGroupRep;
  if ([(CRLCanvasRep *)&v14 containsUnknownContent])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(CRLCanvasRep *)self childReps];
    v3 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v3)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = [*(*(&v10 + 1) + 8 * i) info];
          v8 = [v7 isSupported];

          if (!v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (void)dynamicOperationDidBeginWithRealTimeCommands:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v3 dynamicOperationDidBeginWithRealTimeCommands:a3];
}

- (id)dynamicResizeDidBegin
{
  v15.receiver = self;
  v15.super_class = CRLGroupRep;
  v3 = [(CRLCanvasRep *)&v15 dynamicResizeDidBegin];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CRLGroupRep *)self p_groupedChildReps];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) dynamicResizeDidBegin];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)dynamicallyResizingWithTracker:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v14 dynamicallyResizingWithTracker:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CRLGroupRep *)self p_groupedChildReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) dynamicallyResizingWithTracker:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CRLGroupRep *)self p_groupedChildReps];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 applyNewBoundsToRep:*(*(&v11 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self recursivelyPerformSelector:"invalidateKnobs"];
  v10.receiver = self;
  v10.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v10 dynamicResizeDidEndWithTracker:v4];
}

- (BOOL)willHandleResizingLayoutForRep:(id)a3
{
  v3 = a3;
  v4 = [v3 layout];
  if ([v4 isInGroup])
  {
    v5 = [v3 parentRep];
    v6 = [v5 isBeingResized];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dynamicFreeTransformDidBeginWithTracker:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v14 dynamicFreeTransformDidBeginWithTracker:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CRLGroupRep *)self p_groupedChildReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) dynamicFreeTransformDidBeginWithTracker:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)dynamicallyFreeTransformingWithTracker:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v14 dynamicallyFreeTransformingWithTracker:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CRLGroupRep *)self p_groupedChildReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) dynamicallyFreeTransformingWithTracker:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CRLGroupRep *)self p_groupedChildReps];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 applyNewBoundsToRep:*(*(&v11 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(CRLCanvasRep *)self recursivelyPerformSelector:"invalidateKnobs"];
  v10.receiver = self;
  v10.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v10 dynamicFreeTransformDidEndWithTracker:v4];
}

- (BOOL)willHandleFreeTransformingLayoutForRep:(id)a3
{
  v3 = a3;
  v4 = [v3 layout];
  if ([v4 isInGroup])
  {
    v5 = [v3 parentRep];
    v6 = [v5 isBeingFreeTransformed];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)wantsToHandleTapsWhenLocked
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CRLCanvasRep *)self childReps];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) wantsToHandleTapsWhenLocked])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  [(CRLGroupRep *)self convertNaturalPointFromUnscaledCanvas:?];
  [CRLCanvasRep hitReps:"hitReps:withSlop:" withSlop:?];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 wantsToHandleTapsOnBehalfOfRepForSelecting] && (objc_msgSend(v13, "handleSingleTapAtPoint:inputType:", a4, x, y) & 1) != 0)
        {

          v14 = 1;
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16.receiver = self;
  v16.super_class = CRLGroupRep;
  v14 = [(CRLCanvasRep *)&v16 handleSingleTapAtPoint:a4 inputType:x, y];
LABEL_12:

  return v14;
}

- (BOOL)p_handleSubselectionTapAtPoint:(CGPoint)a3
{
  v3 = [(CRLGroupRep *)self beginEditingChildrenIfAllowedAtUnscaledPoint:0 pickingDeepestChild:a3.x, a3.y];
  v4 = v3 != 0;

  return v4;
}

- (id)i_handleDeepSubselectionTapAtPoint:(CGPoint)a3
{
  v4 = [(CRLGroupRep *)self beginEditingChildrenIfAllowedAtUnscaledPoint:1 pickingDeepestChild:a3.x, a3.y];
  if (!v4)
  {
    v4 = self;
  }

  return v4;
}

- (id)beginEditingChildrenIfAllowedAtUnscaledPoint:(CGPoint)a3 pickingDeepestChild:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([(CRLGroupRep *)self p_allowedToEditChildren])
  {
    v8 = [(CRLCanvasRep *)self canvas];
    v9 = [(CRLCanvasRep *)self childRepsForHitTesting];
    [CRLInteractiveCanvasController smallRepOutsetForHitTestingWithPrecision:0];
    v11 = [v8 hitRep:0 withPrecision:v9 inTopLevelReps:0 smallRepOutset:0 unscaledPointTransformForRep:x passingTest:{y, v10}];

    if (v11)
    {
      v12 = v11;
      v13 = [(CRLCanvasRep *)self interactiveCanvasController];
      v14 = [v13 canvasEditor];

      v15 = [v14 editorController];
      if (v4)
      {
        v16 = [v12 i_repForSelectingIgnoringTopLevelEditing];
      }

      else
      {
        v17 = [(CRLCanvasRep *)self interactiveCanvasController];
        v18 = [v17 selectionModelTranslator];

        v19 = [(CRLGroupRep *)self p_groupItem];
        v20 = [v18 selectionPathForNothingSelectedInsideGroup:v19];
        [v15 setSelectionPath:v20];

        v16 = [v12 repForSelecting];

        v12 = v18;
      }

      v21 = objc_opt_class();
      v22 = [v16 info];
      v23 = sub_100014370(v21, v22);

      if (v23)
      {
        v24 = [NSSet setWithObject:v23];
      }

      else
      {
        v24 = 0;
      }

      v25 = [v14 selectionPathWithInfos:v24];
      [v15 setSelectionPath:v25];

      if (v23)
      {
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)updateChildrenFromLayout
{
  v2.receiver = self;
  v2.super_class = CRLGroupRep;
  [(CRLCanvasRep *)&v2 updateChildrenFromLayout];
}

- (id)p_groupedChildReps
{
  v2 = [(CRLCanvasRep *)self childReps];
  v3 = [NSOrderedSet orderedSetWithArray:v2];

  return v3;
}

- (BOOL)i_childRepsWantContextMenuWhenEditingDisabledAtPoint:(CGPoint)a3 onlyNonGrouped:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(CRLCanvasRep *)self childReps];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!a4 && ![*(*(&v14 + 1) + 8 * i) wantsContextMenuWhenEditingDisabledAtPoint:{x, y}])
        {
          v12 = 0;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (id)unscaledPathToIncludeForSystemPreviewOutline
{
  p_vtable = &OBJC_METACLASS___CRLRulerUnits.vtable;
  v4 = +[CRLBezierPath bezierPath];
  v5 = objc_opt_class();
  v6 = [(CRLCanvasRep *)self layout];
  v7 = sub_100013F00(v5, v6);

  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  v9 = [v7 children];
  if ([v9 count])
  {
    v10 = [(CRLGroupRep *)self p_groupItem];
    v11 = [v10 isEffectivelyEmpty];

    if ((v11 & 1) == 0)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = [v7 children];
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [v8 repForLayout:*(*(&v24 + 1) + 8 * i)];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 unscaledPathToIncludeForSystemPreviewOutline];
              [v4 appendBezierPath:v19];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }

      p_vtable = (&OBJC_METACLASS___CRLRulerUnits + 24);
    }

    if (!v4)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (![v4 isEmpty])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v4)
  {
    goto LABEL_16;
  }

LABEL_17:
  [(CRLCanvasRep *)self boundsForStandardKnobs];
  v20 = [p_vtable + 282 bezierPathWithRect:?];

  v4 = v20;
LABEL_18:
  v21 = [v4 arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:0];
  v22 = [p_vtable + 282 uniteBezierPaths:v21];

  return v22;
}

@end