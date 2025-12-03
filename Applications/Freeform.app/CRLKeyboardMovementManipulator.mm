@interface CRLKeyboardMovementManipulator
- (CRLKeyboardMovementManipulator)initWithInteractiveCanvasController:(id)controller;
- (double)p_movementFactorInPixelSpace:(int64_t)space;
- (void)duplicateSelectionMovingByDelta:(CGPoint)delta;
- (void)moveSelectionByDelta:(CGPoint)delta;
@end

@implementation CRLKeyboardMovementManipulator

- (CRLKeyboardMovementManipulator)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CRLKeyboardMovementManipulator;
  v5 = [(CRLKeyboardMovementManipulator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    mTracker = v5->mTracker;
    v5->mICC = controllerCopy;
    v5->mTracker = 0;
  }

  return v6;
}

- (double)p_movementFactorInPixelSpace:(int64_t)space
{
  spaceCopy = space;
  [(CRLInteractiveCanvasController *)self->mICC viewScale];
  return spaceCopy / v4;
}

- (void)moveSelectionByDelta:(CGPoint)delta
{
  v4 = +[NSMutableSet set];
  selectionModelTranslator = [(CRLInteractiveCanvasController *)self->mICC selectionModelTranslator];
  editorController = [(CRLInteractiveCanvasController *)self->mICC editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

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
        layout = [v18 layout];
        if ([layout isDraggable])
        {
          isInDynamicOperation = [(CRLInteractiveCanvasController *)self->mICC isInDynamicOperation];

          if ((isInDynamicOperation & 1) == 0)
          {
            v21 = [v4 count];
            layout2 = [v18 layout];
            geometryInRoot = [layout2 geometryInRoot];
            [geometryInRoot frame];
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
    anyObject = [v4 anyObject];
    v34 = [(CRLCanvasRepDragTracker *)v32 initWithRep:anyObject];
    mTracker = self->mTracker;
    self->mTracker = v34;

    [(CRLCanvasRepDragTracker *)self->mTracker setShowDragHUD:0];
    [(CRLCanvasRepDragTracker *)self->mTracker setShouldSnapToGuides:0];
    [(CRLCanvasRepDragTracker *)self->mTracker setIsArrowkeyDrivenTracking:1];
    tmCoordinator = [(CRLInteractiveCanvasController *)self->mICC tmCoordinator];
    [tmCoordinator registerTrackerManipulator:self];
    [tmCoordinator takeControlWithTrackerManipulator:self];
    dynamicOperationController = [(CRLInteractiveCanvasController *)self->mICC dynamicOperationController];
    [(CRLCanvasRepDragTracker *)self->mTracker addUnscaledDragDelta:0 roundDeltaToViewScale:delta.x, delta.y];
    v38 = sub_100120414(x, y, width, height);
    v40 = v39;
    [(CRLInteractiveCanvasController *)self->mICC convertUnscaledToBoundsPoint:?];
    v42 = v41;
    v44 = v43;
    [(CRLCanvasRepDragTracker *)self->mTracker setLogicalDragPoint:?];
    [(CRLCanvasRepDragTracker *)self->mTracker setActualDragPoint:v42, v44];
    [dynamicOperationController beginOperation];
    commandController = [(CRLInteractiveCanvasController *)self->mICC commandController];
    v46 = [CRLCanvasCommandSelectionBehavior alloc];
    canvasEditor = [(CRLInteractiveCanvasController *)self->mICC canvasEditor];
    editorController2 = [(CRLInteractiveCanvasController *)self->mICC editorController];
    selectionPath2 = [editorController2 selectionPath];
    v50 = [(CRLCanvasCommandSelectionBehavior *)v46 initWithCanvasEditor:canvasEditor type:2 selectionPath:selectionPath2 selectionFlags:4];

    [commandController openGroupWithSelectionBehavior:v50];
    [dynamicOperationController startTransformingReps:v4];
    [(CRLInteractiveCanvasController *)self->mICC convertUnscaledToBoundsPoint:sub_10011F334(v38, v40, delta.x)];
    v52 = v51;
    v54 = v53;
    [(CRLCanvasRepDragTracker *)self->mTracker setLogicalDragPoint:?];
    [(CRLCanvasRepDragTracker *)self->mTracker setActualDragPoint:v52, v54];
    [dynamicOperationController handleTrackerManipulator:self];
    [commandController closeGroup];
    v55 = self->mTracker;
    self->mTracker = 0;
  }
}

- (void)duplicateSelectionMovingByDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
  selectionModelTranslator = [(CRLInteractiveCanvasController *)self->mICC selectionModelTranslator];
  editorController = [(CRLInteractiveCanvasController *)self->mICC editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  canvasEditor = v10;
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
      layout = [v17 layout];
      isDraggable = [layout isDraggable];

      v14 += isDraggable;
    }

    v13 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v13);

  if (v14)
  {
    canvasEditor = [(CRLInteractiveCanvasController *)self->mICC canvasEditor];
    commandController = [(CRLInteractiveCanvasController *)self->mICC commandController];
    [commandController openGroup];
    [commandController enableProgressiveEnqueuingInCurrentGroup];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Duplicate" value:0 table:@"UndoStrings"];
    v47 = commandController;
    [commandController setCurrentGroupActionString:v22];

    v23 = [CRLPasteboard pasteboardWithName:@"com.apple.freeform.Canvas.CRLCanvasRepNoPositionOffsetPasteboardName" create:1];
    editorController2 = [(CRLInteractiveCanvasController *)self->mICC editorController];
    v25 = [editorController2 editorForEditAction:"copy:" withSender:0];
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

      v25 = canvasEditor;
    }

    [v25 copyForKeyboardMovementDuplicationToPasteboard:v23];
    selectionPath2 = [editorController2 selectionPath];
    v34 = [selectionPath2 mostSpecificSelectionOfClass:objc_opt_class()];
    if (v34)
    {
      v35 = v34;
      v36 = [selectionPath2 indexForSelection:v34];
      v37 = objc_opt_class();
      v46 = editorController2;
      [editorController2 currentEditors];
      v39 = v38 = v23;
      v40 = [v39 objectAtIndexedSubscript:v36];
      v41 = sub_100013F00(v37, v40);

      v23 = v38;
      if ([v41 canPasteWithPasteboard:v38])
      {
        v42 = [v41 pasteNativeInfosFromPasteboard:v38];

        editorController2 = v46;
LABEL_24:
        v43 = [NSSet setWithArray:v42];
        v44 = [canvasEditor selectionPathWithInfos:v43];
        [editorController2 setSelectionPath:v44];

        [(CRLInteractiveCanvasController *)self->mICC layoutIfNeeded];
        [(CRLKeyboardMovementManipulator *)self moveSelectionByDelta:x, y];
        [v47 closeGroup];
        mTracker = self->mTracker;
        self->mTracker = 0;

LABEL_25:
        goto LABEL_26;
      }

      editorController2 = v46;
    }

    v42 = [canvasEditor pasteNativeInfosFromPasteboard:v23 allowImageReplacement:0];
    goto LABEL_24;
  }

LABEL_26:
}

@end