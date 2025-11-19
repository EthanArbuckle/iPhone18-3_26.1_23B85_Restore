@interface CRLKeyboardMovementManipulator
- (CRLKeyboardMovementManipulator)initWithInteractiveCanvasController:(id)a3;
- (double)p_movementFactorInPixelSpace:(int64_t)a3;
- (void)duplicateSelectionMovingByDelta:(CGPoint)a3;
- (void)moveSelectionByDelta:(CGPoint)a3;
@end

@implementation CRLKeyboardMovementManipulator

- (CRLKeyboardMovementManipulator)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLKeyboardMovementManipulator;
  v5 = [(CRLKeyboardMovementManipulator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    mTracker = v5->mTracker;
    v5->mICC = v4;
    v5->mTracker = 0;
  }

  return v6;
}

- (double)p_movementFactorInPixelSpace:(int64_t)a3
{
  v3 = a3;
  [(CRLInteractiveCanvasController *)self->mICC viewScale];
  return v3 / v4;
}

- (void)moveSelectionByDelta:(CGPoint)a3
{
  v4 = +[NSMutableSet set];
  v5 = [(CRLInteractiveCanvasController *)self->mICC selectionModelTranslator];
  v6 = [(CRLInteractiveCanvasController *)self->mICC editorController];
  v7 = [v6 selectionPath];
  v8 = [v5 unlockedBoardItemsForSelectionPath:v7];

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v58;
    do
    {
      v17 = 0;
      do
      {
        if (*v58 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(CRLInteractiveCanvasController *)self->mICC repForInfo:*(*(&v57 + 1) + 8 * v17)];
        v19 = [v18 layout];
        if ([v19 isDraggable])
        {
          v20 = [(CRLInteractiveCanvasController *)self->mICC isInDynamicOperation];

          if ((v20 & 1) == 0)
          {
            v21 = [v4 count];
            v22 = [v18 layout];
            v23 = [v22 geometryInRoot];
            [v23 frame];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            if (v21)
            {
              v62.origin.x = x;
              v62.origin.y = y;
              v62.size.width = width;
              v62.size.height = height;
              v64.origin.x = v25;
              v64.origin.y = v27;
              v64.size.width = v29;
              v64.size.height = v31;
              v63 = CGRectUnion(v62, v64);
              v25 = v63.origin.x;
              v27 = v63.origin.y;
              v29 = v63.size.width;
              v31 = v63.size.height;
            }

            [v4 addObject:v18];
            height = v31;
            width = v29;
            y = v27;
            x = v25;
          }
        }

        else
        {
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v15);
  }

  if ([v4 count])
  {
    v32 = [CRLCanvasRepDragTracker alloc];
    v33 = [v4 anyObject];
    v34 = [(CRLCanvasRepDragTracker *)v32 initWithRep:v33];
    mTracker = self->mTracker;
    self->mTracker = v34;

    [(CRLCanvasRepDragTracker *)self->mTracker setShowDragHUD:0];
    [(CRLCanvasRepDragTracker *)self->mTracker setShouldSnapToGuides:0];
    [(CRLCanvasRepDragTracker *)self->mTracker setIsArrowkeyDrivenTracking:1];
    v36 = [(CRLInteractiveCanvasController *)self->mICC tmCoordinator];
    [v36 registerTrackerManipulator:self];
    [v36 takeControlWithTrackerManipulator:self];
    v37 = [(CRLInteractiveCanvasController *)self->mICC dynamicOperationController];
    [(CRLCanvasRepDragTracker *)self->mTracker addUnscaledDragDelta:0 roundDeltaToViewScale:a3.x, a3.y];
    v38 = sub_100120414(x, y, width, height);
    v40 = v39;
    [(CRLInteractiveCanvasController *)self->mICC convertUnscaledToBoundsPoint:?];
    v42 = v41;
    v44 = v43;
    [(CRLCanvasRepDragTracker *)self->mTracker setLogicalDragPoint:?];
    [(CRLCanvasRepDragTracker *)self->mTracker setActualDragPoint:v42, v44];
    [v37 beginOperation];
    v45 = [(CRLInteractiveCanvasController *)self->mICC commandController];
    v46 = [CRLCanvasCommandSelectionBehavior alloc];
    v47 = [(CRLInteractiveCanvasController *)self->mICC canvasEditor];
    v48 = [(CRLInteractiveCanvasController *)self->mICC editorController];
    v49 = [v48 selectionPath];
    v50 = [(CRLCanvasCommandSelectionBehavior *)v46 initWithCanvasEditor:v47 type:2 selectionPath:v49 selectionFlags:4];

    [v45 openGroupWithSelectionBehavior:v50];
    [v37 startTransformingReps:v4];
    [(CRLInteractiveCanvasController *)self->mICC convertUnscaledToBoundsPoint:sub_10011F334(v38, v40, a3.x)];
    v52 = v51;
    v54 = v53;
    [(CRLCanvasRepDragTracker *)self->mTracker setLogicalDragPoint:?];
    [(CRLCanvasRepDragTracker *)self->mTracker setActualDragPoint:v52, v54];
    [v37 handleTrackerManipulator:self];
    [v45 closeGroup];
    v55 = self->mTracker;
    self->mTracker = 0;
  }
}

- (void)duplicateSelectionMovingByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLInteractiveCanvasController *)self->mICC selectionModelTranslator];
  v7 = [(CRLInteractiveCanvasController *)self->mICC editorController];
  v8 = [v7 selectionPath];
  v9 = [v6 unlockedBoardItemsForSelectionPath:v8];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  v12 = v10;
  if (!v11)
  {
    goto LABEL_25;
  }

  v13 = v11;
  v14 = 0;
  v15 = *v50;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v50 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = [(CRLInteractiveCanvasController *)self->mICC repForInfo:*(*(&v49 + 1) + 8 * i)];
      v18 = [v17 layout];
      v19 = [v18 isDraggable];

      v14 += v19;
    }

    v13 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v13);

  if (v14)
  {
    v12 = [(CRLInteractiveCanvasController *)self->mICC canvasEditor];
    v20 = [(CRLInteractiveCanvasController *)self->mICC commandController];
    [v20 openGroup];
    [v20 enableProgressiveEnqueuingInCurrentGroup];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Duplicate" value:0 table:@"UndoStrings"];
    v47 = v20;
    [v20 setCurrentGroupActionString:v22];

    v23 = [CRLPasteboard pasteboardWithName:@"com.apple.freeform.Canvas.CRLCanvasRepNoPositionOffsetPasteboardName" create:1];
    v24 = [(CRLInteractiveCanvasController *)self->mICC editorController];
    v25 = [v24 editorForEditAction:"copy:" withSender:0];
    v48 = v25;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013628A4();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013628CC(v27, v25, v26);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013629C4();
      }

      v28 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v28, v26);
      }

      v29 = [NSString stringWithUTF8String:"[CRLKeyboardMovementManipulator duplicateSelectionMovingByDelta:]"];
      v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLKeyboardMovementManipulator.m"];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:143 isFatal:0 description:"Editor (%{public}@) responds to copy: but not copyForKeyboardMovementDuplicationToPasteboard:. Falling back to canvas editor.", v32];

      v25 = v12;
    }

    [v25 copyForKeyboardMovementDuplicationToPasteboard:v23];
    v33 = [v24 selectionPath];
    v34 = [v33 mostSpecificSelectionOfClass:objc_opt_class()];
    if (v34)
    {
      v35 = v34;
      v36 = [v33 indexForSelection:v34];
      v37 = objc_opt_class();
      v46 = v24;
      [v24 currentEditors];
      v39 = v38 = v23;
      v40 = [v39 objectAtIndexedSubscript:v36];
      v41 = sub_100013F00(v37, v40);

      v23 = v38;
      if ([v41 canPasteWithPasteboard:v38])
      {
        v42 = [v41 pasteNativeInfosFromPasteboard:v38];

        v24 = v46;
LABEL_24:
        v43 = [NSSet setWithArray:v42];
        v44 = [v12 selectionPathWithInfos:v43];
        [v24 setSelectionPath:v44];

        [(CRLInteractiveCanvasController *)self->mICC layoutIfNeeded];
        [(CRLKeyboardMovementManipulator *)self moveSelectionByDelta:x, y];
        [v47 closeGroup];
        mTracker = self->mTracker;
        self->mTracker = 0;

LABEL_25:
        goto LABEL_26;
      }

      v24 = v46;
    }

    v42 = [v12 pasteNativeInfosFromPasteboard:v23 allowImageReplacement:0];
    goto LABEL_24;
  }

LABEL_26:
}

@end