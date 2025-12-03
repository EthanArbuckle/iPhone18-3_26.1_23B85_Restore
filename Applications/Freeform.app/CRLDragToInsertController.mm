@interface CRLDragToInsertController
- (CGPoint)autoscrollPoint;
- (CRLDragToInsertController)initWithBoardItems:(id)items canvasEditor:(id)editor atPoint:(CGPoint)point withPostInsertionBlock:(id)block;
- (void)cancelDragToInsert;
- (void)commitDragToInsert;
- (void)dealloc;
- (void)dragToPoint:(CGPoint)point;
- (void)operationDidEnd;
- (void)p_finishDragging;
- (void)p_updateTrackerPointsAtPoint:(CGPoint)point;
- (void)updateAfterAutoscroll:(id)autoscroll;
@end

@implementation CRLDragToInsertController

- (CRLDragToInsertController)initWithBoardItems:(id)items canvasEditor:(id)editor atPoint:(CGPoint)point withPostInsertionBlock:(id)block
{
  y = point.y;
  x = point.x;
  itemsCopy = items;
  editorCopy = editor;
  blockCopy = block;
  if (editorCopy)
  {
    if (itemsCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101384EBC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101384ED0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101384F6C();
  }

  v14 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v14);
  }

  v15 = [NSString stringWithUTF8String:"[CRLDragToInsertController initWithBoardItems:canvasEditor:atPoint:withPostInsertionBlock:]"];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragToInsertController.m"];
  [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:47 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "canvasEditor != nil"];

  if (!itemsCopy)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384F94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384FBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385058();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLDragToInsertController initWithBoardItems:canvasEditor:atPoint:withPostInsertionBlock:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragToInsertController.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:48 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "boardItemsToInsert != nil"];
  }

LABEL_22:
  v66.receiver = self;
  v66.super_class = CRLDragToInsertController;
  v20 = [(CRLDragToInsertController *)&v66 init];
  v21 = v20;
  if (v20)
  {
    v56 = blockCopy;
    v57 = itemsCopy;
    objc_storeStrong(&v20->_canvasEditor, editor);
    interactiveCanvasController = [editorCopy interactiveCanvasController];
    [interactiveCanvasController setIsDraggingToInsertBoardItems:1];
    [editorCopy editorController];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v55 = v65 = 0u;
    currentEditors = [v55 currentEditors];
    v24 = [currentEditors countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v63;
      while (2)
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v63 != v26)
          {
            objc_enumerationMutation(currentEditors);
          }

          v28 = *(*(&v62 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) != 0 && ([v28 canRemainDuringDragInsert] & 1) == 0)
          {
            [v55 setSelectionPathToPopEditor:v28];
            goto LABEL_34;
          }
        }

        v25 = [currentEditors countByEnumeratingWithState:&v62 objects:v68 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:

    [interactiveCanvasController setTemporaryAdditionalBoardItemsToDisplay:v57];
    v29 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:1 required:0 shouldEndEditing:1 fromDragToInsertController:1 insertFloating:0x7FFFFFFFFFFFFFFFLL targetZOrder:x, y];
    v21->_lastPoint.x = x;
    v21->_lastPoint.y = y;
    v53 = v29;
    [editorCopy prepareGeometryForInsertingBoardItems:v57 withInsertionContext:?];
    if (blockCopy)
    {
      v30 = [blockCopy copy];
      mPostInsertionBlock = v21->mPostInsertionBlock;
      v21->mPostInsertionBlock = v30;

      blockCopy[2](blockCopy);
    }

    [interactiveCanvasController layoutIfNeededIncludingLayerTreeIfYouKnowWhatYouAreDoing];
    v32 = [v57 copy];
    boardItemsToInsert = v21->_boardItemsToInsert;
    v21->_boardItemsToInsert = v32;

    lastObject = [v57 lastObject];
    v34 = [interactiveCanvasController repForInfo:?];
    if (!v34)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101385080();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013850A8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101385144();
      }

      v35 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v35);
      }

      v36 = [NSString stringWithUTF8String:"[CRLDragToInsertController initWithBoardItems:canvasEditor:atPoint:withPostInsertionBlock:]"];
      v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragToInsertController.m"];
      [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:93 isFatal:0 description:"invalid nil value for '%{public}s'", "repToDrag"];
    }

    v54 = editorCopy;
    v51 = v34;
    v38 = [[CRLCanvasRepDragTracker alloc] initWithRep:v34];
    repDragTracker = v21->_repDragTracker;
    v21->_repDragTracker = v38;

    [(CRLCanvasRepDragTracker *)v21->_repDragTracker preventOpeningCommandGroupWhenCommittingChangesForReps];
    [(CRLCanvasRepDragTracker *)v21->_repDragTracker setIsDragInsertDrivenTracking:1];
    [(CRLDragToInsertController *)v21 p_updateTrackerPointsAtPoint:x, y];
    v21->_isFinishedDragging = 0;
    tmCoordinator = [interactiveCanvasController tmCoordinator];
    [tmCoordinator registerTrackerManipulator:v21];
    [tmCoordinator takeControlWithTrackerManipulator:v21];
    dynamicOperationController = [interactiveCanvasController dynamicOperationController];
    [dynamicOperationController beginOperation];
    v42 = objc_alloc_init(NSMutableSet);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v43 = v57;
    v44 = [v43 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v59;
      do
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v59 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [interactiveCanvasController repForInfo:*(*(&v58 + 1) + 8 * j)];
          v49 = v48;
          if (v48)
          {
            [v48 beginDragInsertFromPalette:v21];
            [v42 addObject:v49];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v45);
    }

    [dynamicOperationController startTransformingReps:v42];
    [(CRLCanvasRepDragTracker *)v21->_repDragTracker beginShowingDragUIForInitialDragPoint:x, y];
    [dynamicOperationController handleTrackerManipulator:v21];

    blockCopy = v56;
    itemsCopy = v57;
    editorCopy = v54;
  }

  return v21;
}

- (void)dealloc
{
  if (!self->_autoscroll)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138516C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101385180();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385220();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLDragToInsertController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragToInsertController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:131 isFatal:0 description:"must finish dragging before deallocating drag to insert controller"];
  }

  v6.receiver = self;
  v6.super_class = CRLDragToInsertController;
  [(CRLDragToInsertController *)&v6 dealloc];
}

- (void)dragToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLCanvasRepDragTracker *)self->_repDragTracker addUnscaledDragDelta:1 roundDeltaToViewScale:sub_10011F31C(point.x, point.y, self->_lastPoint.x)];
  [(CRLDragToInsertController *)self p_updateTrackerPointsAtPoint:x, y];
  v6 = [(CRLDragToInsertController *)self icc];
  dynamicOperationController = [v6 dynamicOperationController];
  [dynamicOperationController handleTrackerManipulator:self];

  self->_lastPoint.x = x;
  self->_lastPoint.y = y;
}

- (void)p_updateTrackerPointsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v10 = [(CRLDragToInsertController *)self icc];
  [v10 convertUnscaledToBoundsPoint:{x, y}];
  v7 = v6;
  v9 = v8;
  [(CRLCanvasRepDragTracker *)self->_repDragTracker setLogicalDragPoint:?];
  [(CRLCanvasRepDragTracker *)self->_repDragTracker setActualDragPoint:v7, v9];
  [(CRLCanvasRepDragTracker *)self->_repDragTracker setShouldSnapToGuides:1];
}

- (void)cancelDragToInsert
{
  [(CRLDragToInsertController *)self p_finishDragging];
  v3 = [(CRLDragToInsertController *)self icc];
  [v3 setTemporaryAdditionalBoardItemsToDisplay:0];

  interactiveCanvasController = [(CRLCanvasEditor *)self->_canvasEditor interactiveCanvasController];
  [interactiveCanvasController setIsDraggingToInsertBoardItems:0];
}

- (void)commitDragToInsert
{
  v3 = [(CRLDragToInsertController *)self icc];
  v4 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
  obj = self->_boardItemsToInsert;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v47;
    do
    {
      v8 = 0;
      do
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v46 + 1) + 8 * v8);
        v10 = [v3 layoutForInfo:v9];
        v11 = v10;
        if (v10)
        {
          if ([v10 isInGroup])
          {
            [v11 pureGeometry];
          }

          else
          {
            [v11 pureGeometryInRoot];
          }
          v17 = ;
          v15 = [v11 computeInfoGeometryFromPureLayoutGeometry:v17];

          v16 = [v15 mutableCopy];
          geometry = [v9 geometry];
          [v16 setWidthValid:{objc_msgSend(geometry, "widthValid")}];

          geometry2 = [v9 geometry];
          [v16 setHeightValid:{objc_msgSend(geometry2, "heightValid")}];

          [v9 autosizePositionOffsetForGeometry:v16 dynamicallyDraggedLayout:v11];
          v21 = v20;
          [v16 position];
          [v16 setPosition:{sub_10011F334(v22, v23, v21)}];
          v24 = [CRLPair pairWithFirst:v9 second:v16];
          [v4 addObject:v24];
        }

        else
        {
          v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101385248();
          }

          v13 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v52 = v12;
            v53 = 2082;
            v54 = "[CRLDragToInsertController commitDragToInsert]";
            v55 = 2082;
            v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragToInsertController.m";
            v57 = 1024;
            v58 = 175;
            v59 = 2082;
            v60 = "layout";
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101385270();
          }

          v14 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v25 = v14;
            v26 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v52 = v12;
            v53 = 2114;
            v54 = v26;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v15 = [NSString stringWithUTF8String:"[CRLDragToInsertController commitDragToInsert]"];
          v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDragToInsertController.m"];
          [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:175 isFatal:0 description:"invalid nil value for '%{public}s'", "layout"];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v61 count:16];
    }

    while (v6);
  }

  [(CRLDragToInsertController *)selfCopy cancelDragToInsert];
  commandController = [v3 commandController];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = v4;
  v29 = [v28 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v43;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v42 + 1) + 8 * i);
        second = [v33 second];
        first = [v33 first];
        [first setGeometry:second];
      }

      v30 = [v28 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v30);
  }

  v36 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:0 required:1 fromDragToInsertController:0 insertFloating:0x7FFFFFFFFFFFFFFFLL targetZOrder:CGPointZero.x, CGPointZero.y];
  if ([v36 shouldEndEditing])
  {
    [v3 endEditing];
  }

  [commandController openGroup];
  [(CRLCanvasEditor *)selfCopy->_canvasEditor insertBoardItems:selfCopy->_boardItemsToInsert withInsertionContext:v36 postProcessBlock:0];
  interactiveCanvasController = [(CRLCanvasEditor *)selfCopy->_canvasEditor interactiveCanvasController];
  [interactiveCanvasController setIsDraggingToInsertBoardItems:1];

  mPostInsertionBlock = selfCopy->mPostInsertionBlock;
  if (mPostInsertionBlock)
  {
    mPostInsertionBlock[2]();
  }

  interactiveCanvasController2 = [(CRLCanvasEditor *)selfCopy->_canvasEditor interactiveCanvasController];
  [interactiveCanvasController2 setIsDraggingToInsertBoardItems:0];

  [commandController closeGroup];
}

- (void)p_finishDragging
{
  self->_isFinishedDragging = 1;
  v3 = [(CRLDragToInsertController *)self icc];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_boardItemsToInsert;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 repForInfo:{*(*(&v12 + 1) + 8 * v8), v12}];
        v10 = v9;
        if (v9)
        {
          [v9 endDragInsertFromPalette:self];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  dynamicOperationController = [v3 dynamicOperationController];
  [dynamicOperationController handleTrackerManipulator:self];
}

- (void)operationDidEnd
{
  [(CRLCanvasRepDragTracker *)self->_repDragTracker endPossibleRepDragGesture];
  autoscroll = self->_autoscroll;
  if (autoscroll)
  {

    [(CRLCanvasAutoscroll *)autoscroll invalidate];
  }
}

- (CGPoint)autoscrollPoint
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)updateAfterAutoscroll:(id)autoscroll
{
  [autoscroll lastAutoscrollDelta];
  v5 = v4;
  [(CRLCanvasRepDragTracker *)self->_repDragTracker addUnscaledDragDelta:1 roundDeltaToViewScale:?];
  self->_lastPoint.x = sub_10011F334(self->_lastPoint.x, self->_lastPoint.y, v5);
  self->_lastPoint.y = v6;
  [(CRLDragToInsertController *)self p_updateTrackerPointsAtPoint:?];
  v8 = [(CRLDragToInsertController *)self icc];
  dynamicOperationController = [v8 dynamicOperationController];
  [dynamicOperationController handleTrackerManipulator:self];
}

@end