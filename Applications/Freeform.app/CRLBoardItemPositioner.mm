@interface CRLBoardItemPositioner
- (BOOL)p_hasAnyCollisionForIndividualInfos:(id)a3 currentTotalFrame:(CGRect)a4 currentTotalDelta:(CGPoint)a5;
- (BOOL)p_hasCanvasCollisionWithSpecificBoardItemFrame:(CGRect)a3 targetCenter:(CGPoint)a4 previouslyPositionedBoardItems:(id)a5;
- (BOOL)p_infos:(id)a3 collideWithRect:(CGRect)a4 orTargetCenter:(CGPoint)a5;
- (CGPoint)pPinnedCenter:(CGPoint)a3 andSize:(CGSize)a4 toBounds:(CGRect)a5;
- (CGPoint)positionOffset;
- (CGPoint)targetCenter;
- (CGRect)boundsByFittingBoardItem:(id)a3;
- (CGRect)canvasBoundsOfBoardItem:(id)a3;
- (CGRect)i_boundsForPositioningBoardItem:(id)a3;
- (CRLBoardItemPositioner)initWithCanvasEditor:(id)a3;
- (CRLBoardItemPositioner)initWithCanvasEditor:(id)a3 targetCenter:(CGPoint)a4 validGeometries:(BOOL)a5;
- (CRLCanvasEditor)canvasEditor;
- (void)i_positionBoardItems:(id)a3 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a4;
- (void)pPositionNewBoardItems:(id)a3 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a4;
- (void)p_CenterBoardItem:(id)a3 withInitialFrame:(CGRect)a4 offsettingFromTargetCenter:(CGPoint)a5 previouslyPositionedBoardItems:(id)a6 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a7;
- (void)positionBoardItems:(id)a3 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a4;
@end

@implementation CRLBoardItemPositioner

- (CRLBoardItemPositioner)initWithCanvasEditor:(id)a3
{
  result = [(CRLBoardItemPositioner *)self initWithCanvasEditor:a3 targetCenter:1 validGeometries:CGPointZero.x, CGPointZero.y];
  if (result)
  {
    result->_useOriginalPositions = 1;
  }

  return result;
}

- (CRLBoardItemPositioner)initWithCanvasEditor:(id)a3 targetCenter:(CGPoint)a4 validGeometries:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = CRLBoardItemPositioner;
  v10 = [(CRLBoardItemPositioner *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_canvasEditor, v9);
    v11->_targetCenter.x = x;
    v11->_targetCenter.y = y;
    v11->_validGeometries = a5;
    *&v11->_useOriginalPositions = 256;
    v12 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    boardItemsToCanvasBounds = v11->_boardItemsToCanvasBounds;
    v11->_boardItemsToCanvasBounds = v12;
  }

  return v11;
}

- (void)positionBoardItems:(id)a3 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self->_validGeometries)
  {
    [(CRLBoardItemPositioner *)self i_positionBoardItems:v6 ignoreCanvasBackgroundAlignmentProvidedSnapping:v4];
  }

  else
  {
    [(CRLBoardItemPositioner *)self pPositionNewBoardItems:v6 ignoreCanvasBackgroundAlignmentProvidedSnapping:v4];
  }
}

- (CGRect)i_boundsForPositioningBoardItem:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasEditor);
  v4 = [WeakRetained interactiveCanvasController];

  v5 = [v4 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v4 delegate];
    [v7 visibleUnscaledCanvasRectWithoutKeyboard];
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

- (CGRect)canvasBoundsOfBoardItem:(id)a3
{
  v4 = a3;
  v45 = 0;
  v46 = &v45;
  v47 = 0x5012000000;
  v48 = sub_1002AB084;
  v49 = nullsub_38;
  v50 = &unk_1016A8115;
  v5 = [(NSMapTable *)self->_boardItemsToCanvasBounds objectForKey:v4];
  v6 = v5;
  if (!v5)
  {
    v16 = [(CRLBoardItemPositioner *)self canvasEditor];
    v17 = [v16 interactiveCanvasController];

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v18 = [v17 canvas];
    v19 = [v18 layoutController];
    v20 = [v19 layoutForInfo:v4];

    if (v20)
    {
      v21 = [v20 pureGeometryInRoot];
      [v21 frame];
      v22 = v46;
      v46[6] = v23;
      v22[7] = v24;
      v22[8] = v25;
      v22[9] = v26;

      *(v42 + 24) = 1;
    }

    else if (!*(v42 + 24))
    {
      v27 = [(CRLBoardItemPositioner *)self canvasEditor];
      v28 = [v27 selectionPathWithInfo:v4];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1002AB094;
      v40[3] = &unk_101850F10;
      v40[4] = &v45;
      v40[5] = &v41;
      [v17 withLayoutForSelectionPath:v28 performBlock:v40];

      if (!*(v42 + 24))
      {
        [v4 visibleBoundsForPositioning];
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
    [(NSMapTable *)boardItemsToCanvasBounds setObject:v30 forKey:v4];

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

- (CGRect)boundsByFittingBoardItem:(id)a3
{
  [a3 visibleBoundsForPositioning];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)p_infos:(id)a3 collideWithRect:(CGRect)a4 orTargetCenter:(CGPoint)a5
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v9)
  {
    v10 = *v45;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v8);
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
          if (v29 || ((v30 = vabdd_f64(a5.y, v27), vabdd_f64(a5.x, v26) < 4.0) ? (v31 = v30 < 4.0) : (v31 = 0), v31))
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
            v37 = [v35 allNestedChildrenItemsIncludingContainers];
            v38 = [(CRLBoardItemPositioner *)self p_infos:v37 collideWithRect:x orTargetCenter:y, width, height, a5.x, a5.y];

            if (v38)
            {

LABEL_27:
              v39 = 1;
              goto LABEL_28;
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
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

- (BOOL)p_hasCanvasCollisionWithSpecificBoardItemFrame:(CGRect)a3 targetCenter:(CGPoint)a4 previouslyPositionedBoardItems:(id)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v12 = a5;
  if (self->_avoidCollisions)
  {
    v13 = [(CRLBoardItemPositioner *)self canvasEditor];
    v14 = [v13 interactiveCanvasController];

    if (!v14)
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
    v19 = [WeakRetained interactiveCanvasController];
    v20 = [v19 infosToDisplay];
    v21 = [v20 crl_arrayByTransformingWithBlock:&stru_101850F90];

    if ([v12 count])
    {
      if (v21)
      {
        v22 = [v12 arrayByAddingObjectsFromArray:v21];

        v21 = v22;
      }

      else
      {
        v21 = v12;
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

- (CGPoint)pPinnedCenter:(CGPoint)a3 andSize:(CGSize)a4 toBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  rect = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v49 = a4.width * 0.5;
  v50 = a3.x;
  v41 = a3.y;
  v46 = a4.height;
  v52.origin.x = sub_10011EC70(a3.x, a3.y, a4.width);
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

  v33 = [(CRLBoardItemPositioner *)self canvasEditor];
  v34 = [v33 interactiveCanvasController];
  v35 = [v34 canvas];
  v36 = [v35 isAnchoredAtRight];

  if (v50 >= v49)
  {
    v37 = 1;
  }

  else
  {
    v37 = v36;
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

  if (v36)
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

- (void)p_CenterBoardItem:(id)a3 withInitialFrame:(CGRect)a4 offsettingFromTargetCenter:(CGPoint)a5 previouslyPositionedBoardItems:(id)a6 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a7
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v64 = a4.origin.x;
  v65 = a4.origin.y;
  v14 = a3;
  v15 = a6;
  [(CRLBoardItemPositioner *)self i_boundsForPositioningBoardItem:v14];
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
  if (!a7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvasEditor);
    v30 = [WeakRetained interactiveCanvasController];
    v31 = [v30 isCanvasBackgroundAlignmentSnappingEnabled];

    if (v31)
    {
      v32 = objc_loadWeakRetained(&self->_canvasEditor);
      v33 = [v32 interactiveCanvasController];
      v34 = [v33 canvasBackground];

      v35 = [v34 alignmentProvider];
      v36 = v35;
      if (v35)
      {
        [v35 originPointForAlignedInsertingRect:{v22, v24, v26, v28}];
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

    v44 = v15;
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
  v51 = [v50 interactiveCanvasController];
  v52 = [v51 commandController];
  v53 = [v52 board];

  if (!v53)
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
    [v14 crl_onBoard:v53 moveItemToPosition:v22 size:{v24, v26, v28}];
  }
}

- (BOOL)p_hasAnyCollisionForIndividualInfos:(id)a3 currentTotalFrame:(CGRect)a4 currentTotalDelta:(CGPoint)a5
{
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  v8 = a4.origin.x;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = a3;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = *v32;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v10);
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

      v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
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

- (void)i_positionBoardItems:(id)a3 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a4
{
  v4 = a4;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v84 = a3;
  sub_1002ACB84(&v94, [v84 count]);
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
  v10 = v84;
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
  v31 = [WeakRetained interactiveCanvasController];
  v32 = [v31 canvasBackground];

  v33 = [v32 alignmentProvider];
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
    if (!v4)
    {
      v43 = objc_loadWeakRetained(&self->_canvasEditor);
      v44 = [v43 interactiveCanvasController];
      v45 = [v44 isCanvasBackgroundAlignmentSnappingEnabled];
      v46 = v33 ? v45 : 0;

      if (v46)
      {
        [v33 originPointForAlignedInsertingRect:{v40, v42, width, height}];
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
        if (v33)
        {
          v51 = objc_loadWeakRetained(&self->_canvasEditor);
          v52 = [v51 interactiveCanvasController];
          [v52 viewScale];
          [v33 snapDistanceForViewScale:?];
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
    v58 = [v57 interactiveCanvasController];
    v59 = [v58 commandController];
    v60 = [v59 board];

    if (!v60)
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

    if (!v4)
    {
      v64 = objc_loadWeakRetained(&self->_canvasEditor);
      v65 = [v64 interactiveCanvasController];
      v66 = [v65 isCanvasBackgroundAlignmentSnappingEnabled];
      if (v33)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      if (v67)
      {
        v68 = &v94[5 * v89];
        v69 = v68[1];
        [v33 originPointForAlignedInsertingRect:{sub_10011F334(v69, v68[2], v35)}];
        v35 = sub_10011F31C(v70, v71, v69);
      }
    }

    v72 = v94;
    v73 = v95;
    while (v72 != v73)
    {
      v74 = *v72;
      [v74 crl_onBoard:v60 moveItemToPosition:sub_10011F334(v72[1] size:{v72[2], v35)}];

      v72 += 5;
    }
  }

  else
  {
    if ([v10 count] < 2)
    {
      v60 = 0;
    }

    else
    {
      v60 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
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
        [(CRLBoardItemPositioner *)self p_CenterBoardItem:*v75 withInitialFrame:v60 offsettingFromTargetCenter:v4 previouslyPositionedBoardItems:v78 ignoreCanvasBackgroundAlignmentProvidedSnapping:v79, v80, v81, v77 + v82, v34 + v83];
        [v60 addObject:*v75];
        v75 += 5;
      }

      while (v75 != v76);
    }
  }

  v97 = &v94;
  sub_1002AD12C(&v97);
}

- (void)pPositionNewBoardItems:(id)a3 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  sub_1002ACB84(&v34, [v6 count]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6;
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
    [(CRLBoardItemPositioner *)self p_CenterBoardItem:*v23 withInitialFrame:v22 offsettingFromTargetCenter:v4 previouslyPositionedBoardItems:v23[1] ignoreCanvasBackgroundAlignmentProvidedSnapping:v23[2], v23[3], v23[4], x, y];
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