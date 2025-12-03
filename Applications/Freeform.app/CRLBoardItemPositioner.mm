@interface CRLBoardItemPositioner
- (BOOL)p_hasAnyCollisionForIndividualInfos:(id)infos currentTotalFrame:(CGRect)frame currentTotalDelta:(CGPoint)delta;
- (BOOL)p_hasCanvasCollisionWithSpecificBoardItemFrame:(CGRect)frame targetCenter:(CGPoint)center previouslyPositionedBoardItems:(id)items;
- (BOOL)p_infos:(id)p_infos collideWithRect:(CGRect)rect orTargetCenter:(CGPoint)center;
- (CGPoint)pPinnedCenter:(CGPoint)center andSize:(CGSize)size toBounds:(CGRect)bounds;
- (CGPoint)positionOffset;
- (CGPoint)targetCenter;
- (CGRect)boundsByFittingBoardItem:(id)item;
- (CGRect)canvasBoundsOfBoardItem:(id)item;
- (CGRect)i_boundsForPositioningBoardItem:(id)item;
- (CRLBoardItemPositioner)initWithCanvasEditor:(id)editor;
- (CRLBoardItemPositioner)initWithCanvasEditor:(id)editor targetCenter:(CGPoint)center validGeometries:(BOOL)geometries;
- (CRLCanvasEditor)canvasEditor;
- (void)i_positionBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping;
- (void)pPositionNewBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping;
- (void)p_CenterBoardItem:(id)item withInitialFrame:(CGRect)frame offsettingFromTargetCenter:(CGPoint)center previouslyPositionedBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping;
- (void)positionBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping;
@end

@implementation CRLBoardItemPositioner

- (CRLBoardItemPositioner)initWithCanvasEditor:(id)editor
{
  result = [(CRLBoardItemPositioner *)self initWithCanvasEditor:editor targetCenter:1 validGeometries:CGPointZero.x, CGPointZero.y];
  if (result)
  {
    result->_useOriginalPositions = 1;
  }

  return result;
}

- (CRLBoardItemPositioner)initWithCanvasEditor:(id)editor targetCenter:(CGPoint)center validGeometries:(BOOL)geometries
{
  y = center.y;
  x = center.x;
  editorCopy = editor;
  v15.receiver = self;
  v15.super_class = CRLBoardItemPositioner;
  v10 = [(CRLBoardItemPositioner *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_canvasEditor, editorCopy);
    v11->_targetCenter.x = x;
    v11->_targetCenter.y = y;
    v11->_validGeometries = geometries;
    *&v11->_useOriginalPositions = 256;
    v12 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    boardItemsToCanvasBounds = v11->_boardItemsToCanvasBounds;
    v11->_boardItemsToCanvasBounds = v12;
  }

  return v11;
}

- (void)positionBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping
{
  snappingCopy = snapping;
  itemsCopy = items;
  v7 = itemsCopy;
  if (self->_validGeometries)
  {
    [(CRLBoardItemPositioner *)self i_positionBoardItems:itemsCopy ignoreCanvasBackgroundAlignmentProvidedSnapping:snappingCopy];
  }

  else
  {
    [(CRLBoardItemPositioner *)self pPositionNewBoardItems:itemsCopy ignoreCanvasBackgroundAlignmentProvidedSnapping:snappingCopy];
  }
}

- (CGRect)i_boundsForPositioningBoardItem:(id)item
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  delegate = [interactiveCanvasController delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [interactiveCanvasController delegate];
    [delegate2 visibleUnscaledCanvasRectWithoutKeyboard];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else
  {
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGPoint)positionOffset
{
  v2 = 50.0;
  v3 = 50.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)canvasBoundsOfBoardItem:(id)item
{
  itemCopy = item;
  v45 = 0;
  v46 = &v45;
  v47 = 0x5012000000;
  v48 = sub_1002AB084;
  v49 = nullsub_38;
  v50 = &unk_1016A8115;
  v5 = [(NSMapTable *)self->_boardItemsToCanvasBounds objectForKey:itemCopy];
  v6 = v5;
  if (!v5)
  {
    canvasEditor = [(CRLBoardItemPositioner *)self canvasEditor];
    interactiveCanvasController = [canvasEditor interactiveCanvasController];

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    canvas = [interactiveCanvasController canvas];
    layoutController = [canvas layoutController];
    v20 = [layoutController layoutForInfo:itemCopy];

    if (v20)
    {
      pureGeometryInRoot = [v20 pureGeometryInRoot];
      [pureGeometryInRoot frame];
      v22 = v46;
      v46[6] = v23;
      v22[7] = v24;
      v22[8] = v25;
      v22[9] = v26;

      *(v42 + 24) = 1;
    }

    else if (!*(v42 + 24))
    {
      canvasEditor2 = [(CRLBoardItemPositioner *)self canvasEditor];
      v28 = [canvasEditor2 selectionPathWithInfo:itemCopy];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1002AB094;
      v40[3] = &unk_101850F10;
      v40[4] = &v45;
      v40[5] = &v41;
      [interactiveCanvasController withLayoutForSelectionPath:v28 performBlock:v40];

      if (!*(v42 + 24))
      {
        [itemCopy visibleBoundsForPositioning];
        v35 = v46;
        v46[6] = v36;
        v35[7] = v37;
        v35[8] = v38;
        v35[9] = v39;
        goto LABEL_8;
      }
    }

    boardItemsToCanvasBounds = self->_boardItemsToCanvasBounds;
    v30 = [NSValue valueWithCGRect:*(v46 + 6), *(v46 + 7), *(v46 + 8), *(v46 + 9)];
    [(NSMapTable *)boardItemsToCanvasBounds setObject:v30 forKey:itemCopy];

LABEL_8:
    _Block_object_dispose(&v41, 8);

    v8 = *(v46 + 6);
    v10 = *(v46 + 7);
    v12 = *(v46 + 8);
    v14 = *(v46 + 9);
    goto LABEL_9;
  }

  [v5 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v46;
  *(v46 + 6) = v7;
  v15[7] = v9;
  v15[8] = v11;
  v15[9] = v13;
LABEL_9:

  _Block_object_dispose(&v45, 8);
  v31 = v8;
  v32 = v10;
  v33 = v12;
  v34 = v14;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)boundsByFittingBoardItem:(id)item
{
  [item visibleBoundsForPositioning];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)p_infos:(id)p_infos collideWithRect:(CGRect)rect orTargetCenter:(CGPoint)center
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  p_infosCopy = p_infos;
  v9 = [p_infosCopy countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v9)
  {
    v10 = *v45;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(p_infosCopy);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = sub_100014370(v13, v12);
        if (v14)
        {
          [(CRLBoardItemPositioner *)self canvasBoundsOfBoardItem:v14];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = sub_100120414(x, y, width, height);
          v25 = v24;
          v26 = sub_100120414(v16, v18, v20, v22);
          v28 = vabdd_f64(v25, v27);
          v29 = vabdd_f64(v23, v26) < 4.0 && v28 < 4.0;
          if (v29 || ((v30 = vabdd_f64(center.y, v27), vabdd_f64(center.x, v26) < 4.0) ? (v31 = v30 < 4.0) : (v31 = 0), v31))
          {
            v32 = vabdd_f64(height, v22);
            if (vabdd_f64(width, v20) < 40.0 || v32 < 40.0)
            {
              goto LABEL_27;
            }
          }

          v34 = objc_opt_class();
          v35 = sub_100014370(v34, v12);
          v36 = v35;
          if (v35)
          {
            allNestedChildrenItemsIncludingContainers = [v35 allNestedChildrenItemsIncludingContainers];
            v38 = [(CRLBoardItemPositioner *)self p_infos:allNestedChildrenItemsIncludingContainers collideWithRect:x orTargetCenter:y, width, height, center.x, center.y];

            if (v38)
            {

LABEL_27:
              v39 = 1;
              goto LABEL_28;
            }
          }
        }
      }

      v9 = [p_infosCopy countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v39 = 0;
LABEL_28:

  return v39;
}

- (BOOL)p_hasCanvasCollisionWithSpecificBoardItemFrame:(CGRect)frame targetCenter:(CGPoint)center previouslyPositionedBoardItems:(id)items
{
  y = center.y;
  x = center.x;
  height = frame.size.height;
  width = frame.size.width;
  v9 = frame.origin.y;
  v10 = frame.origin.x;
  itemsCopy = items;
  if (self->_avoidCollisions)
  {
    canvasEditor = [(CRLBoardItemPositioner *)self canvasEditor];
    interactiveCanvasController = [canvasEditor interactiveCanvasController];

    if (!interactiveCanvasController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101346F10();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101346F24();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101346FC0();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v16 = [NSString stringWithUTF8String:"[CRLBoardItemPositioner p_hasCanvasCollisionWithSpecificBoardItemFrame:targetCenter:previouslyPositionedBoardItems:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItemPositioner.mm"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:218 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    WeakRetained = objc_loadWeakRetained(&self->_canvasEditor);
    interactiveCanvasController2 = [WeakRetained interactiveCanvasController];
    infosToDisplay = [interactiveCanvasController2 infosToDisplay];
    v21 = [infosToDisplay crl_arrayByTransformingWithBlock:&stru_101850F90];

    if ([itemsCopy count])
    {
      if (v21)
      {
        v22 = [itemsCopy arrayByAddingObjectsFromArray:v21];

        v21 = v22;
      }

      else
      {
        v21 = itemsCopy;
      }
    }

    v23 = [(CRLBoardItemPositioner *)self p_infos:v21 collideWithRect:v10 orTargetCenter:v9, width, height, x, y];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (CGPoint)pPinnedCenter:(CGPoint)center andSize:(CGSize)size toBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  rect = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v49 = size.width * 0.5;
  v50 = center.x;
  v41 = center.y;
  v46 = size.height;
  v52.origin.x = sub_10011EC70(center.x, center.y, size.width);
  v10 = v52.origin.x;
  v11 = v52.origin.y;
  v12 = v52.size.width;
  v13 = v52.size.height;
  MinX = CGRectGetMinX(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v14 = CGRectGetMinX(v53);
  v48 = v10;
  v54.origin.x = v10;
  v54.origin.y = v11;
  v54.size.width = v12;
  v54.size.height = v13;
  MaxX = CGRectGetMaxX(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = rect;
  v55.size.height = height;
  v16 = CGRectGetMaxX(v55);
  v17 = MinX >= v14 || MaxX <= v16;
  if (!v17)
  {
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = rect;
    v57.size.height = height;
    MidX = CGRectGetMidX(v57);
LABEL_10:
    v50 = MidX;
    goto LABEL_11;
  }

  if (MinX < v14)
  {
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = rect;
    v58.size.height = height;
    MidX = v49 + CGRectGetMinX(v58);
    goto LABEL_10;
  }

  if (MaxX > v16)
  {
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = rect;
    v56.size.height = height;
    MidX = CGRectGetMaxX(v56) - v49;
    goto LABEL_10;
  }

LABEL_11:
  v47 = v46 * 0.5;
  v59.origin.x = v48;
  v59.origin.y = v11;
  v59.size.width = v12;
  v59.size.height = v13;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = rect;
  v60.size.height = height;
  v42 = CGRectGetMinY(v60);
  v61.origin.x = v48;
  v61.origin.y = v11;
  v61.size.width = v12;
  v61.size.height = v13;
  MaxY = CGRectGetMaxY(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = rect;
  v62.size.height = height;
  v20 = CGRectGetMaxY(v62);
  v21 = rect;
  if (MinY >= v42 || MaxY <= v20)
  {
    if (MinY < v42)
    {
      v30 = x;
      v31 = y;
      v32 = height;
      v26 = v47;
      MidY = v47 + CGRectGetMinY(*(&v21 - 2));
    }

    else
    {
      v17 = MaxY <= v20;
      MidY = v41;
      v26 = v47;
      if (!v17)
      {
        v27 = x;
        v28 = y;
        v29 = height;
        MidY = CGRectGetMaxY(*(&v21 - 2)) - v47;
      }
    }
  }

  else
  {
    v22 = x;
    v23 = y;
    v24 = height;
    MidY = CGRectGetMidY(*(&v21 - 2));
    v26 = v47;
  }

  canvasEditor = [(CRLBoardItemPositioner *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  canvas = [interactiveCanvasController canvas];
  isAnchoredAtRight = [canvas isAnchoredAtRight];

  if (v50 >= v49)
  {
    v37 = 1;
  }

  else
  {
    v37 = isAnchoredAtRight;
  }

  if (v37)
  {
    v38 = v50;
  }

  else
  {
    v38 = v49;
  }

  v39 = -v49;
  if (v49 + v50 <= 0.0)
  {
    v39 = v50;
  }

  if (isAnchoredAtRight)
  {
    v38 = v39;
  }

  if (MidY >= v26)
  {
    v40 = MidY;
  }

  else
  {
    v40 = v26;
  }

  result.y = v40;
  result.x = v38;
  return result;
}

- (void)p_CenterBoardItem:(id)item withInitialFrame:(CGRect)frame offsettingFromTargetCenter:(CGPoint)center previouslyPositionedBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping
{
  y = center.y;
  x = center.x;
  height = frame.size.height;
  width = frame.size.width;
  v64 = frame.origin.x;
  v65 = frame.origin.y;
  itemCopy = item;
  itemsCopy = items;
  [(CRLBoardItemPositioner *)self i_boundsForPositioningBoardItem:itemCopy];
  v66 = v16;
  v67 = v17;
  v19 = v18;
  v21 = v20;
  v62 = width;
  v63 = height;
  v22 = sub_10011EC70(x, y, width);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (!snapping)
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvasEditor);
    interactiveCanvasController = [WeakRetained interactiveCanvasController];
    isCanvasBackgroundAlignmentSnappingEnabled = [interactiveCanvasController isCanvasBackgroundAlignmentSnappingEnabled];

    if (isCanvasBackgroundAlignmentSnappingEnabled)
    {
      v32 = objc_loadWeakRetained(&self->_canvasEditor);
      interactiveCanvasController2 = [v32 interactiveCanvasController];
      canvasBackground = [interactiveCanvasController2 canvasBackground];

      alignmentProvider = [canvasBackground alignmentProvider];
      v36 = alignmentProvider;
      if (alignmentProvider)
      {
        [alignmentProvider originPointForAlignedInsertingRect:{v22, v24, v26, v28}];
        v22 = v37;
        v24 = v38;
      }
    }
  }

  for (i = 0; [(CRLBoardItemPositioner *)self p_hasCanvasCollisionWithSpecificBoardItemFrame:i targetCenter:v22 previouslyPositionedBoardItems:v24, v26, v28, x, y]; i = v44)
  {
    [(CRLBoardItemPositioner *)self positionOffset];
    v22 = sub_10011F334(v22, v24, v40);
    v24 = v41;
    [(CRLBoardItemPositioner *)self positionOffset];
    x = sub_10011F334(x, y, v42);
    y = v43;
    if (self->_clampToVisibleBounds && !sub_10011EF14(v19, v21, v66, v67, v22, v24, v26, v28))
    {
      goto LABEL_13;
    }

    v44 = itemsCopy;
  }

  if (self->_clampToVisibleBounds && !sub_10011EF14(v19, v21, v66, v67, v22, v24, v26, v28))
  {
LABEL_13:
    v45 = sub_100120414(v22, v24, v26, v28);
    [CRLBoardItemPositioner pPinnedCenter:"pPinnedCenter:andSize:toBounds:" andSize:? toBounds:?];
    v48 = sub_10011F31C(v46, v47, v45);
    v22 = sub_10011F334(v22, v24, v48);
    v24 = v49;
  }

  v50 = objc_loadWeakRetained(&self->_canvasEditor);
  interactiveCanvasController3 = [v50 interactiveCanvasController];
  commandController = [interactiveCanvasController3 commandController];
  board = [commandController board];

  if (!board)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101346FE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101346FFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347098();
    }

    v54 = off_1019EDA68;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v55 = [NSString stringWithUTF8String:"[CRLBoardItemPositioner p_CenterBoardItem:withInitialFrame:offsettingFromTargetCenter:previouslyPositionedBoardItems:ignoreCanvasBackgroundAlignmentProvidedSnapping:]"];
    v56 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItemPositioner.mm"];
    [CRLAssertionHandler handleFailureInFunction:v55 file:v56 lineNumber:325 isFatal:0 description:"invalid nil value for '%{public}s'", "board"];
  }

  if (!self->_useOriginalPositions || (v57 = sub_100120414(v22, v24, v26, v28), v59 = v58, v60 = sub_100120414(v64, v65, v62, v63), !sub_10011ECC8(v57, v59, v60, v61)))
  {
    [itemCopy crl_onBoard:board moveItemToPosition:v22 size:{v24, v26, v28}];
  }
}

- (BOOL)p_hasAnyCollisionForIndividualInfos:(id)infos currentTotalFrame:(CGRect)frame currentTotalDelta:(CGPoint)delta
{
  x = delta.x;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  v8 = frame.origin.x;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  infosCopy = infos;
  v11 = [infosCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(infosCopy);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = objc_opt_class();
        v16 = sub_100014370(v15, v14);
        if (v16)
        {
          [(CRLBoardItemPositioner *)self boundsByFittingBoardItem:v16];
          v18 = v17;
          v20 = v19;
          v23 = sub_10011F334(v21, v22, x);
          v25 = v24;
          v26 = sub_100120414(v8, y, width, height);
          if ([(CRLBoardItemPositioner *)self p_hasCanvasCollisionWithSpecificBoardItemFrame:0 targetCenter:v23 previouslyPositionedBoardItems:v25, v18, v20, v26, v27])
          {

            v28 = 1;
            goto LABEL_12;
          }
        }
      }

      v11 = [infosCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_12:

  return v28;
}

- (void)i_positionBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping
{
  snappingCopy = snapping;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  itemsCopy = items;
  sub_1002ACB84(&v94, [itemsCopy count]);
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  height = CGRectNull.size.height;
  width = CGRectNull.size.width;
  v8 = CGPointZero.x;
  v9 = CGPointZero.y;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v90 objects:v99 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = *v91;
    do
    {
      v15 = 0;
      v16 = v13;
      v13 = (v13 + v11);
      v17 = v12;
      do
      {
        if (*v91 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v18 = x;
        v19 = *(*(&v90 + 1) + 8 * v15);
        [(CRLBoardItemPositioner *)self boundsByFittingBoardItem:v19];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v98[0] = v19;
        v98[1] = v21;
        v98[2] = v23;
        v98[3] = v25;
        v98[4] = v27;
        sub_1002ACC34(&v94, v98);

        v87 = *&v23;
        v88 = *&v21;
        v12 = v16;
        if (v16)
        {
          v28 = *&v21 < v8 && *&v23 < v9;
          v87 = v9;
          v88 = v8;
          v12 = v17;
          if (v28)
          {
            v87 = *&v23;
            v88 = *&v21;
            v12 = v16;
          }
        }

        *&v100.origin.x = v21;
        *&v100.origin.y = v23;
        *&v100.size.width = v25;
        *&v100.size.height = v27;
        v102.origin.x = v18;
        v102.origin.y = y;
        v102.size.height = height;
        v102.size.width = width;
        v101 = CGRectUnion(v100, v102);
        height = v101.size.height;
        width = v101.size.width;
        x = v101.origin.x;
        y = v101.origin.y;
        v16 = (v16 + 1);
        v15 = v15 + 1;
        v9 = v87;
        v8 = v88;
        v17 = v12;
      }

      while (v11 != v15);
      v11 = [v10 countByEnumeratingWithState:&v90 objects:v99 count:16];
      v9 = v87;
      v8 = v88;
    }

    while (v11);
    v29 = x;
    v89 = v12;
  }

  else
  {
    v29 = CGRectNull.origin.x;
    v89 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvasEditor);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];
  canvasBackground = [interactiveCanvasController canvasBackground];

  alignmentProvider = [canvasBackground alignmentProvider];
  if (self->_useOriginalPositions)
  {
    v35 = CGPointZero.x;
    v34 = CGPointZero.y;
  }

  else
  {
    v36 = self->_targetCenter.x;
    v37 = self->_targetCenter.y;
    v38 = sub_100120414(v29, y, width, height);
    v35 = sub_10011F31C(v36, v37, v38);
    v34 = v39;
    v40 = sub_10011F334(v29, y, v35);
    v42 = v41;
    if (!snappingCopy)
    {
      v43 = objc_loadWeakRetained(&self->_canvasEditor);
      interactiveCanvasController2 = [v43 interactiveCanvasController];
      isCanvasBackgroundAlignmentSnappingEnabled = [interactiveCanvasController2 isCanvasBackgroundAlignmentSnappingEnabled];
      v46 = alignmentProvider ? isCanvasBackgroundAlignmentSnappingEnabled : 0;

      if (v46)
      {
        [alignmentProvider originPointForAlignedInsertingRect:{v40, v42, width, height}];
        v40 = v47;
        v42 = v48;
      }
    }

    if ([(CRLBoardItemPositioner *)self shouldPreserveRelativePositions])
    {
      while ([(CRLBoardItemPositioner *)self p_hasAnyCollisionForIndividualInfos:v10 currentTotalFrame:v40 currentTotalDelta:v42, width, height, v35, v34])
      {
        [(CRLBoardItemPositioner *)self positionOffset];
        v50 = v49;
        if (alignmentProvider)
        {
          v51 = objc_loadWeakRetained(&self->_canvasEditor);
          interactiveCanvasController3 = [v51 interactiveCanvasController];
          [interactiveCanvasController3 viewScale];
          [alignmentProvider snapDistanceForViewScale:?];
          v54 = v53;

          if (v50 <= v54)
          {
            v50 = v54;
          }
        }

        v35 = sub_10011F334(v35, v34, v50);
        v34 = v55;
        v40 = sub_10011F334(v40, v42, v50);
        v42 = v56;
      }
    }
  }

  if ([(CRLBoardItemPositioner *)self shouldPreserveRelativePositions])
  {
    v57 = objc_loadWeakRetained(&self->_canvasEditor);
    interactiveCanvasController4 = [v57 interactiveCanvasController];
    commandController = [interactiveCanvasController4 commandController];
    board = [commandController board];

    if (!board)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013470C0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013470E8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101347184();
      }

      v61 = off_1019EDA68;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v62 = [NSString stringWithUTF8String:"[CRLBoardItemPositioner i_positionBoardItems:ignoreCanvasBackgroundAlignmentProvidedSnapping:]"];
      v63 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItemPositioner.mm"];
      [CRLAssertionHandler handleFailureInFunction:v62 file:v63 lineNumber:409 isFatal:0 description:"invalid nil value for '%{public}s'", "board"];
    }

    if (!snappingCopy)
    {
      v64 = objc_loadWeakRetained(&self->_canvasEditor);
      interactiveCanvasController5 = [v64 interactiveCanvasController];
      isCanvasBackgroundAlignmentSnappingEnabled2 = [interactiveCanvasController5 isCanvasBackgroundAlignmentSnappingEnabled];
      if (alignmentProvider)
      {
        v67 = isCanvasBackgroundAlignmentSnappingEnabled2;
      }

      else
      {
        v67 = 0;
      }

      if (v67)
      {
        v68 = &v94[5 * v89];
        v69 = v68[1];
        [alignmentProvider originPointForAlignedInsertingRect:{sub_10011F334(v69, v68[2], v35)}];
        v35 = sub_10011F31C(v70, v71, v69);
      }
    }

    v72 = v94;
    v73 = v95;
    while (v72 != v73)
    {
      v74 = *v72;
      [v74 crl_onBoard:board moveItemToPosition:sub_10011F334(v72[1] size:{v72[2], v35)}];

      v72 += 5;
    }
  }

  else
  {
    if ([v10 count] < 2)
    {
      board = 0;
    }

    else
    {
      board = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
    }

    v75 = v94;
    v76 = v95;
    if (v94 != v95)
    {
      v77 = v35;
      do
      {
        v78 = v75[1];
        v79 = v75[2];
        v80 = v75[3];
        v81 = v75[4];
        v82 = sub_100120414(v78, v79, v80, v81);
        [(CRLBoardItemPositioner *)self p_CenterBoardItem:*v75 withInitialFrame:board offsettingFromTargetCenter:snappingCopy previouslyPositionedBoardItems:v78 ignoreCanvasBackgroundAlignmentProvidedSnapping:v79, v80, v81, v77 + v82, v34 + v83];
        [board addObject:*v75];
        v75 += 5;
      }

      while (v75 != v76);
    }
  }

  v97 = &v94;
  sub_1002AD12C(&v97);
}

- (void)pPositionNewBoardItems:(id)items ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping
{
  snappingCopy = snapping;
  itemsCopy = items;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  sub_1002ACB84(&v34, [itemsCopy count]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v8)
  {
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        [(CRLBoardItemPositioner *)self boundsByFittingBoardItem:v11];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v29[0] = v11;
        v29[1] = v13;
        v29[2] = v15;
        v29[3] = v17;
        v29[4] = v19;
        sub_1002ACC34(&v34, v29);
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v8);
  }

  x = self->_targetCenter.x;
  y = self->_targetCenter.y;
  if ([v7 count] < 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  }

  v23 = v34;
  v24 = v35;
  while (v23 != v24)
  {
    [(CRLBoardItemPositioner *)self p_CenterBoardItem:*v23 withInitialFrame:v22 offsettingFromTargetCenter:snappingCopy previouslyPositionedBoardItems:v23[1] ignoreCanvasBackgroundAlignmentProvidedSnapping:v23[2], v23[3], v23[4], x, y];
    [(CRLBoardItemPositioner *)self positionOffset];
    v26 = v25;
    v28 = v27;
    [v22 addObject:*v23];
    y = y + v28;
    x = x + v26;
    v23 += 5;
  }

  v29[0] = &v34;
  sub_1002AD12C(v29);
}

- (CRLCanvasEditor)canvasEditor
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasEditor);

  return WeakRetained;
}

- (CGPoint)targetCenter
{
  x = self->_targetCenter.x;
  y = self->_targetCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end