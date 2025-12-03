@interface CRLFreehandDrawingToolPixelEraser
- (BOOL)finalizeAndResetWithSuccess:(BOOL)success;
- (CRLFreehandDrawingToolPixelEraser)initWithInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController scaledWidthForSlicingEraser:(double)eraser;
- (double)p_unscaledEraserDiameter;
- (id)p_erasableAreaPathInUnscaledSpaceForErasingStrokePath:(id)path withVisibleRulerBezierPath:(id)bezierPath;
- (int64_t)p_breakApartFilledShapeIfPossible:(id)possible withDesiredGeometry:(id)geometry bezierPath:(id)path previousZOrderOffset:(int64_t)offset;
- (int64_t)p_breakApartShape:(id)shape withGeometry:(id)geometry subpaths:(id)subpaths previousZOrderOffset:(int64_t)offset;
- (void)estimatedPropertiesUpdatedOnInputPoint:(id)point;
- (void)p_endErasingAndFinalize:(BOOL)finalize;
- (void)p_enqueueCommandsToEraseWithin:(id)within withErasingStroke:(id)stroke;
- (void)p_finalizeBitmapEraseWithStroke:(id)stroke;
- (void)p_setUpForManualHitTestingFillEraseForInputPoint:(CGPoint)point;
- (void)p_updatePathsForSlicingWithErasingStroke:(id)stroke;
- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint;
- (void)setScaledWidthForSlicingEraser:(double)eraser;
- (void)updatePencilKitToolIfAppropriateFor:(id)for;
@end

@implementation CRLFreehandDrawingToolPixelEraser

- (CRLFreehandDrawingToolPixelEraser)initWithInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController scaledWidthForSlicingEraser:(double)eraser
{
  viewControllerCopy = viewController;
  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingToolPixelEraser;
  v9 = [(CRLFreehandDrawingTool *)&v12 initWithInteractiveCanvasController:controller];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_pencilKitCanvasViewController, viewControllerCopy);
    v10->_scaledWidthForSlicingEraser = eraser;
  }

  return v10;
}

- (void)setScaledWidthForSlicingEraser:(double)eraser
{
  self->_scaledWidthForSlicingEraser = eraser;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v5 freehandDrawingToolkit];

  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  [toolkitUIState setCurrentToolWidth:eraser];

  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
  [(CRLFreehandDrawingToolPixelEraser *)self updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];

  [freehandDrawingToolkit containedToolDidSetWidth:self];
}

- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint
{
  finalPointCopy = finalPoint;
  initialPointCopy = initialPoint;
  pointCopy = point;
  v29.receiver = self;
  v29.super_class = CRLFreehandDrawingToolPixelEraser;
  [(CRLFreehandDrawingTool *)&v29 performActionWithInputPoint:pointCopy isInitialPoint:initialPointCopy isFinalPoint:finalPointCopy];
  v9 = [(CRLFreehandDrawingTool *)self icc];
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];

  _tiledView = [pencilKitCanvasView _tiledView];
  canvasView = [_tiledView canvasView];

  if (initialPointCopy)
  {
    v14 = objc_alloc_init(PKDrawing);
    [pencilKitCanvasView setDrawing:v14];

    if (pointCopy)
    {
      [pointCopy PKInputPoint];
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    canvasView2 = [v9 canvasView];
    unscaledCoordinateSpace = [canvasView2 unscaledCoordinateSpace];
    [canvasView _replayDrawingBegan:&v20 coordinateSpace:unscaledCoordinateSpace activeInputProperties:objc_msgSend(pointCopy inputType:{"activeInputProperties"), objc_msgSend(pointCopy, "PKInputType")}];

    [pointCopy unscaledPoint];
    [(CRLFreehandDrawingToolPixelEraser *)self p_setUpForManualHitTestingFillEraseForInputPoint:?];
  }

  else if (([pointCopy wasAddedByTouchesEnded] & 1) == 0)
  {
    if (pointCopy)
    {
      [pointCopy PKInputPoint];
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    v17 = [(CRLFreehandDrawingTool *)self icc:v20];
    canvasView3 = [v17 canvasView];
    unscaledCoordinateSpace2 = [canvasView3 unscaledCoordinateSpace];
    [canvasView _replayDrawingMoved:&v20 coordinateSpace:unscaledCoordinateSpace2];
  }
}

- (void)estimatedPropertiesUpdatedOnInputPoint:(id)point
{
  pointCopy = point;
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingToolPixelEraser;
  [(CRLFreehandDrawingTool *)&v11 estimatedPropertiesUpdatedOnInputPoint:pointCopy];
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
  _tiledView = [pencilKitCanvasView _tiledView];
  canvasView = [_tiledView canvasView];
  if (pointCopy)
  {
    [pointCopy PKInputPoint];
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  [canvasView _replayEstimatedPropertiesUpdated:v9];
}

- (BOOL)finalizeAndResetWithSuccess:(BOOL)success
{
  v9.receiver = self;
  v9.super_class = CRLFreehandDrawingToolPixelEraser;
  v4 = [(CRLFreehandDrawingTool *)&v9 finalizeAndResetWithSuccess:success];
  [(CRLFreehandDrawingToolPixelEraser *)self p_endErasingAndFinalize:v4];
  v5 = objc_alloc_init(PKDrawing);
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
  [pencilKitCanvasView setDrawing:v5];

  return v4;
}

- (void)updatePencilKitToolIfAppropriateFor:(id)for
{
  forCopy = for;
  v5 = [PKEraserTool alloc];
  [(CRLFreehandDrawingToolPixelEraser *)self scaledWidthForSlicingEraser];
  v6 = [v5 initWithEraserType:2 width:?];
  [forCopy setTool:v6];
}

- (void)p_endErasingAndFinalize:(BOOL)finalize
{
  finalizeCopy = finalize;
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];

  _tiledView = [pencilKitCanvasView _tiledView];
  canvasView = [_tiledView canvasView];

  if (finalizeCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1001BFD18;
    v20 = sub_1001BFD28;
    v21 = 0;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1001BFD30;
    v13 = &unk_101845878;
    v15 = &v16;
    v9 = dispatch_semaphore_create(0);
    v14 = v9;
    [canvasView _replayDrawingEndedEstimatesTimeout:&v10 withBackgroundQueueCompletion:0.0];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (v17[5])
    {
      [(CRLFreehandDrawingToolPixelEraser *)self p_finalizeBitmapEraseWithStroke:v10, v11, v12, v13];
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    [canvasView _replayDrawingCancelled];
  }
}

- (void)p_finalizeBitmapEraseWithStroke:(id)stroke
{
  strokeCopy = stroke;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  editingCoordinator = [v5 editingCoordinator];
  commandController = [editingCoordinator commandController];

  v103 = v5;
  [v5 layoutIfNeeded];
  [strokeCopy renderBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CRLFreehandDrawingTool *)self possibleFreehandDrawingLayoutsInParentContainerAtPoint:sub_100120414(v8, v10, v12, v14)];
  [commandController openGroup];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Erase" value:0 table:@"UndoStrings"];
  v105 = commandController;
  [commandController setCurrentGroupActionString:v18];

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v16;
  v19 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v121;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v121 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v120 + 1) + 8 * i);
        [v23 frameForCullingInRoot];
        v129.origin.x = v9;
        v129.origin.y = v11;
        v129.size.width = v13;
        v129.size.height = v15;
        if (CGRectIntersectsRect(v128, v129))
        {
          v24 = objc_opt_class();
          info = [v23 info];
          v26 = sub_100014370(v24, info);

          if (v26)
          {
            [(CRLFreehandDrawingToolPixelEraser *)self p_enqueueCommandsToEraseWithin:v26 withErasingStroke:strokeCopy];
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
    }

    while (v20);
  }

  v27 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
  v28 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
  v29 = v105;
  if ([(CRLBezierHitTester *)self->_fillHitTester pathCount])
  {
    v101 = [CRLPKStrokeConverter pathFromPKStroke:strokeCopy pencilKitStrokePathData:0];
    [(CRLFreehandDrawingToolPixelEraser *)self p_updatePathsForSlicingWithErasingStroke:?];
    v30 = [CRLPKStrokeConverter pathFromPKStroke:strokeCopy pencilKitStrokePathData:0];
    [(CRLFreehandDrawingToolPixelEraser *)self p_unscaledEraserDiameter];
    [v30 setLineWidth:?];
    [v30 setLineCapStyle:1];
    [v30 setLineJoinStyle:1];
    strokedCopy = [v30 strokedCopy];

    WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
    pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
    isRulerActive = [pencilKitCanvasView isRulerActive];

    v102 = strokeCopy;
    if (isRulerActive)
    {
      v35 = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
      unscaledRulerBezierPath = [v35 unscaledRulerBezierPath];

      v37 = [(CRLFreehandDrawingToolPixelEraser *)self p_erasableAreaPathInUnscaledSpaceForErasingStrokePath:strokedCopy withVisibleRulerBezierPath:unscaledRulerBezierPath];
      v38 = strokedCopy;
      if (v37)
      {
        v39 = [strokedCopy intersectBezierPath:v37];

        v38 = v39;
      }
    }

    else
    {
      v38 = strokedCopy;
    }

    v40 = [(NSMutableArray *)self->_allHitTesterFillPathsZOrdered crl_arrayWithObjectsInHashTable:self->_hitTesterPathsNeedingFinalizationAtEnd];
    v104 = [NSHashTable hashTableWithOptions:512];
    [v105 enableProgressiveEnqueuingInCurrentGroup];
    [v105 openGroup];
    v107 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v106 = v40;
    v109 = v38;
    v114 = [v106 countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v114)
    {
      v112 = *v117;
      selfCopy = self;
      do
      {
        v41 = 0;
        do
        {
          if (*v117 != v112)
          {
            objc_enumerationMutation(v106);
          }

          v42 = *(*(&v116 + 1) + 8 * v41);
          v43 = [(NSMapTable *)self->_shapeFillLayoutsForHitTesterPaths objectForKeyedSubscript:v42];
          v115 = [(NSMapTable *)self->_currentPathsForHitTesterPaths objectForKeyedSubscript:v42];
          v125[0] = v115;
          v125[1] = v38;
          v44 = [NSArray arrayWithObjects:v125 count:2];
          v45 = [CRLBezierPath subtractBezierPaths:v44];

          if (!v45)
          {
            v46 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132C6D8();
            }

            v47 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v124.a) = 67110146;
              HIDWORD(v124.a) = v46;
              LOWORD(v124.b) = 2082;
              *(&v124.b + 2) = "[CRLFreehandDrawingToolPixelEraser p_finalizeBitmapEraseWithStroke:]";
              WORD1(v124.c) = 2082;
              *(&v124.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m";
              WORD2(v124.d) = 1024;
              *(&v124.d + 6) = 323;
              WORD1(v124.tx) = 2082;
              *(&v124.tx + 4) = "pathWithErasure";
              _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &v124, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132C700();
            }

            v48 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v75 = v48;
              v76 = +[CRLAssertionHandler packedBacktraceString];
              LODWORD(v124.a) = 67109378;
              HIDWORD(v124.a) = v46;
              LOWORD(v124.b) = 2114;
              *(&v124.b + 2) = v76;
              _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v124, 0x12u);
            }

            v49 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_finalizeBitmapEraseWithStroke:]"];
            v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v49 file:v50 lineNumber:323 isFatal:0 description:"invalid nil value for '%{public}s'", "pathWithErasure"];

            v38 = v109;
            v45 = 0;
          }

          if ([v45 containsElementsOtherThanMoveAndClose])
          {
            v111 = v45;
            v51 = [v45 copy];
            [v51 bounds];
            v53 = v52;
            v55 = v54;
            CGAffineTransformMakeTranslation(&v124, -v52, -v54);
            [v51 transformUsingAffineTransform:&v124];
            v56 = [CRLBezierPathSource pathSourceWithBezierPath:v51];
            [v43 beginDynamicOperationWithRealTimeCommands:0];
            [v43 dynamicallySetBezierPathSource:v56 atUnscaledOrigin:{v53, v55}];

            pathSource = [v43 pathSource];
            finalInfoGeometryForResize = [v43 finalInfoGeometryForResize];
            [v43 endDynamicOperation];
            shapeInfo = [v43 shapeInfo];
            v110 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:shapeInfo pathSource:pathSource];
            [v29 enqueueCommand:?];
            v60 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:shapeInfo geometry:finalInfoGeometryForResize];
            [v29 enqueueCommand:v60];
            parentInfo = [shapeInfo parentInfo];
            v62 = objc_opt_class();
            v68 = sub_1003038E0(parentInfo, v62, 1, v63, v64, v65, v66, v67, &OBJC_PROTOCOL___CRLCanvasElementInfo);

            if (shapeInfo && ([v107 objectForKeyedSubscript:v68], (v69 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v70 = v69;
              integerValue = [v69 integerValue];
            }

            else
            {
              integerValue = 0;
            }

            bezierPath = [pathSource bezierPath];
            v73 = [(CRLFreehandDrawingToolPixelEraser *)selfCopy p_breakApartFilledShapeIfPossible:shapeInfo withDesiredGeometry:finalInfoGeometryForResize bezierPath:bezierPath previousZOrderOffset:integerValue];

            if (v68)
            {
              v74 = [NSNumber numberWithInteger:&integerValue[v73]];
              [v107 setObject:v74 forKeyedSubscript:v68];
            }

            self = selfCopy;
            v29 = v105;
            v38 = v109;
            v45 = v111;
          }

          else
          {
            pathSource = [v43 shapeInfo];
            [v104 addObject:pathSource];
          }

          v41 = v41 + 1;
        }

        while (v114 != v41);
        v114 = [v106 countByEnumeratingWithState:&v116 objects:v126 count:16];
      }

      while (v114);
    }

    if ([v104 count])
    {
      setRepresentation = [v104 setRepresentation];
      canvasEditor = [v103 canvasEditor];
      canvasEditorHelper = [canvasEditor canvasEditorHelper];
      v80 = [canvasEditorHelper commandForDeletingInfosPossiblyFromMultipleContainers:setRepresentation shouldRemoveEmptyContainers:1];

      [v29 enqueueCommand:v80];
      deletedShapeInfos = self->_deletedShapeInfos;
      setRepresentation2 = [v104 setRepresentation];
      allObjects = [setRepresentation2 allObjects];
      [(NSMutableSet *)deletedShapeInfos addObjectsFromArray:allObjects];

      v38 = v109;
    }

    [v29 closeGroup];

    strokeCopy = v102;
    v28 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
    v27 = &OBJC_IVAR___CRLBitmapImageProvider_mValidationStatus;
  }

  fillHitTester = self->_fillHitTester;
  self->_fillHitTester = 0;

  allHitTesterFillPathsZOrdered = self->_allHitTesterFillPathsZOrdered;
  self->_allHitTesterFillPathsZOrdered = 0;

  shapeFillLayoutsForHitTesterPaths = self->_shapeFillLayoutsForHitTesterPaths;
  self->_shapeFillLayoutsForHitTesterPaths = 0;

  currentPathsForHitTesterPaths = self->_currentPathsForHitTesterPaths;
  self->_currentPathsForHitTesterPaths = 0;

  v88 = v27[583];
  v89 = *(&self->super.super.isa + v88);
  *(&self->super.super.isa + v88) = 0;

  v90 = v28[586];
  v91 = [*(&self->super.super.isa + v90) count];
  v92 = [(CRLFreehandDrawingTool *)self icc];
  v93 = v92;
  if (v91)
  {
    canvasEditor2 = [v92 canvasEditor];
    canvasEditorHelper2 = [canvasEditor2 canvasEditorHelper];
    v96 = [canvasEditorHelper2 selectionBehaviorForDeletingBoardItems:*(&self->super.super.isa + v90)];

    [(CRLCommandSelectionBehavior *)v96 setSelectionFlags:[(CRLCommandSelectionBehavior *)v96 selectionFlags]& 0xFFFFFFFFFFFFFFFBLL];
  }

  else
  {
    editorController = [v92 editorController];
    selectionPath = [editorController selectionPath];

    v96 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:selectionPath reverseSelectionPath:selectionPath];
  }

  pkDrawingProvider = [v103 pkDrawingProvider];
  [pkDrawingProvider activeDrawingWillEndAfterInsertingFinalizedDrawingItem];

  [v29 closeGroupWithSelectionBehavior:v96];
  v100 = *(&self->super.super.isa + v90);
  *(&self->super.super.isa + v90) = 0;
}

- (double)p_unscaledEraserDiameter
{
  scaledWidthForSlicingEraser = self->_scaledWidthForSlicingEraser;
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
  tool = [pencilKitCanvasView tool];
  v8 = sub_100013F00(v4, tool);

  if (v8)
  {
    [v8 width];
    scaledWidthForSlicingEraser = v9;
  }

  v10 = [(CRLFreehandDrawingTool *)self icc];
  [v10 viewScale];
  v12 = scaledWidthForSlicingEraser / v11;

  return v12;
}

- (void)p_enqueueCommandsToEraseWithin:(id)within withErasingStroke:(id)stroke
{
  withinCopy = within;
  selfCopy = self;
  strokeCopy = stroke;
  v7 = [(CRLFreehandDrawingTool *)self icc];
  editingCoordinator = [v7 editingCoordinator];
  commandController = [editingCoordinator commandController];

  v151 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:16];
  v9 = v7;
  v10 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:16];
  v128 = +[NSMutableArray array];
  v11 = +[NSMutableSet set];
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v127 = withinCopy;
  obj = [withinCopy childInfos];
  v129 = v7;
  v148 = [obj countByEnumeratingWithState:&v176 objects:v186 count:16];
  if (v148)
  {
    v146 = *v177;
    do
    {
      v12 = 0;
      do
      {
        if (*v177 != v146)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v176 + 1) + 8 * v12);
        v14 = objc_opt_class();
        v15 = [v9 layoutForInfo:v13];
        v16 = sub_100014370(v14, v15);

        if (v16)
        {
          shapeInfo = [v16 shapeInfo];
          isTreatedAsFillForFreehandDrawing = [shapeInfo isTreatedAsFillForFreehandDrawing];

          if (isTreatedAsFillForFreehandDrawing)
          {
            goto LABEL_46;
          }

          pencilKitStrokes = [v16 pencilKitStrokes];
          v20 = pencilKitStrokes;
          if (pencilKitStrokes)
          {
            if ([pencilKitStrokes count] != 1)
            {
              v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10132C728();
              }

              v22 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110402;
                *&buf[4] = v21;
                *&buf[8] = 2082;
                *&buf[10] = "[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]";
                *&buf[18] = 2082;
                *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m";
                *&buf[28] = 1024;
                *&buf[30] = 439;
                *&buf[34] = 2082;
                *&buf[36] = "strokesInShapeSpace.count";
                *&buf[44] = 2082;
                *&buf[46] = "1U";
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected equality between %{public}s and %{public}s", buf, 0x36u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10132C750();
              }

              v23 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v50 = v23;
                v51 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                *&buf[4] = v21;
                *&buf[8] = 2114;
                *&buf[10] = v51;
                _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v24 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]"];
              v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
              [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:439 isFatal:0 description:"expected equality between %{public}s and %{public}s", "strokesInShapeSpace.count", "1U"];
            }

            memset(buf, 0, 48);
            [v16 pureTransformInRoot];
            v172[0] = _NSConcreteStackBlock;
            v172[1] = 3221225472;
            v172[2] = sub_1001C209C;
            v172[3] = &unk_101845998;
            v173 = *buf;
            v174 = *&buf[16];
            v175 = *&buf[32];
            v142 = v20;
            v26 = [v20 crl_arrayByTransformingWithBlock:v172];
            [v128 addObjectsFromArray:v26];
            v170 = 0u;
            v171 = 0u;
            v168 = 0u;
            v169 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v168 objects:v184 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v169;
              do
              {
                for (i = 0; i != v29; i = i + 1)
                {
                  if (*v169 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v168 + 1) + 8 * i);
                  _strokeUUID = [v32 _strokeUUID];
                  [v11 addObject:_strokeUUID];

                  _strokeUUID2 = [v32 _strokeUUID];
                  [v151 setObject:v16 forKeyedSubscript:_strokeUUID2];

                  path = [v32 path];
                  _strokeDataUUID = [path _strokeDataUUID];
                  [v10 setObject:v16 forKeyedSubscript:_strokeDataUUID];
                }

                v29 = [v27 countByEnumeratingWithState:&v168 objects:v184 count:16];
              }

              while (v29);
            }

            v9 = v129;
            v20 = v142;
          }

          else
          {
            v41 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132C778();
            }

            v42 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              *&buf[4] = v41;
              *&buf[8] = 2082;
              *&buf[10] = "[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]";
              *&buf[18] = 2082;
              *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m";
              *&buf[28] = 1024;
              *&buf[30] = 436;
              *&buf[34] = 2082;
              *&buf[36] = "strokesInShapeSpace";
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132C7A0();
            }

            v43 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v48 = v43;
              v49 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              *&buf[4] = v41;
              *&buf[8] = 2114;
              *&buf[10] = v49;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v44 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]"];
            v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:436 isFatal:0 description:"invalid nil value for '%{public}s'", "strokesInShapeSpace"];
          }
        }

        else
        {
          v37 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132C7C8();
          }

          v38 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *&buf[4] = v37;
            *&buf[8] = 2082;
            *&buf[10] = "[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]";
            *&buf[18] = 2082;
            *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m";
            *&buf[28] = 1024;
            *&buf[30] = 431;
            *&buf[34] = 2082;
            *&buf[36] = "shapeLayout";
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132C7F0();
          }

          v39 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v46 = v39;
            v47 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v37;
            *&buf[8] = 2114;
            *&buf[10] = v47;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v20 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]"];
          v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
          [CRLAssertionHandler handleFailureInFunction:v20 file:v40 lineNumber:431 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeLayout"];
        }

LABEL_46:
        v12 = v12 + 1;
      }

      while (v12 != v148);
      v148 = [obj countByEnumeratingWithState:&v176 objects:v186 count:16];
    }

    while (v148);
  }

  v52 = [PKDrawing alloc];
  v53 = objc_alloc_init(PKDrawing);
  v54 = [v52 initWithStrokes:v128 fromDrawing:v53];

  [v54 _eraseWithEraserStroke:strokeCopy];
  v124 = v54;
  strokes = [v54 strokes];
  v132 = +[NSMutableArray array];
  v56 = [v11 mutableCopy];
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v134 = strokes;
  v57 = [v134 countByEnumeratingWithState:&v164 objects:v183 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v165;
    do
    {
      for (j = 0; j != v58; j = j + 1)
      {
        if (*v165 != v59)
        {
          objc_enumerationMutation(v134);
        }

        v61 = *(*(&v164 + 1) + 8 * j);
        _strokeUUID3 = [v61 _strokeUUID];
        v63 = [v11 containsObject:_strokeUUID3];

        if (v63)
        {
          _strokeUUID4 = [v61 _strokeUUID];
          [v56 removeObject:_strokeUUID4];
        }

        else
        {
          [v132 addObject:v61];
        }
      }

      v58 = [v134 countByEnumeratingWithState:&v164 objects:v183 count:16];
    }

    while (v58);
  }

  v65 = +[NSMutableSet set];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v133 = v56;
  v66 = [v133 countByEnumeratingWithState:&v160 objects:v182 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v161;
    do
    {
      v69 = 0;
      v149 = v67;
      do
      {
        if (*v161 != v68)
        {
          objc_enumerationMutation(v133);
        }

        v70 = [v151 objectForKeyedSubscript:*(*(&v160 + 1) + 8 * v69)];
        if (!v70)
        {
          v71 = v65;
          v72 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132C818();
          }

          v73 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            *&buf[4] = v72;
            *&buf[8] = 2082;
            *&buf[10] = "[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]";
            *&buf[18] = 2082;
            *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m";
            *&buf[28] = 1024;
            *&buf[30] = 473;
            *&buf[34] = 2082;
            *&buf[36] = "shapeLayout";
            _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132C840();
          }

          v74 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v80 = v74;
            v81 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v72;
            *&buf[8] = 2114;
            *&buf[10] = v81;
            _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v75 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_enqueueCommandsToEraseWithin:withErasingStroke:]"];
          v76 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
          [CRLAssertionHandler handleFailureInFunction:v75 file:v76 lineNumber:473 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeLayout"];

          v65 = v71;
          v67 = v149;
        }

        v77 = objc_opt_class();
        info = [v70 info];
        v79 = sub_100013F00(v77, info);

        [v65 crl_addNonNilObject:v79];
        v69 = v69 + 1;
      }

      while (v67 != v69);
      v67 = [v133 countByEnumeratingWithState:&v160 objects:v182 count:16];
    }

    while (v67);
  }

  [commandController openGroup];
  v82 = v129;
  editingCoordinator2 = [v129 editingCoordinator];
  boardItemFactory = [editingCoordinator2 boardItemFactory];

  v84 = v132;
  if ([v132 count])
  {
    v130 = v65;
    v85 = [v129 layoutForInfo:v127];
    v86 = [CRLCanvasInfoGeometry alloc];
    v123 = v85;
    geometryInRoot = [v85 geometryInRoot];
    v88 = [(CRLCanvasInfoGeometry *)v86 initWithLayoutGeometry:geometryInRoot];

    childItems = [v127 childItems];
    v136 = [NSOrderedSet orderedSetWithArray:childItems];

    v140 = +[NSMutableDictionary dictionary];
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v131 = v132;
    v90 = commandController;
    v139 = [v131 countByEnumeratingWithState:&v156 objects:v181 count:16];
    if (v139)
    {
      v135 = *v157;
      do
      {
        v91 = 0;
        do
        {
          if (*v157 != v135)
          {
            objc_enumerationMutation(v131);
          }

          v150 = v91;
          v92 = *(*(&v156 + 1) + 8 * v91);
          path2 = [v92 path];
          _strokeDataUUID2 = [path2 _strokeDataUUID];
          v95 = [v10 objectForKeyedSubscript:_strokeDataUUID2];

          v147 = v95;
          shapeInfo2 = [v95 shapeInfo];
          v97 = [v136 indexOfObject:shapeInfo2];
          obja = shapeInfo2;
          stroke = [shapeInfo2 stroke];
          v141 = v97;
          v143 = stroke;
          if (stroke)
          {
            [stroke width];
            v100 = v99;
          }

          else
          {
            anyObject = [v130 anyObject];
            stroke2 = [anyObject stroke];
            [stroke2 width];
            v100 = v103;
          }

          v104 = [boardItemFactory makeShapeItemsForFreehandDrawingWithPKStroke:v92 adjustedBaseWidth:v100];
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v155 = 0u;
          v105 = [v104 countByEnumeratingWithState:&v152 objects:v180 count:16];
          if (v105)
          {
            v106 = v105;
            v107 = *v153;
            do
            {
              for (k = 0; k != v106; k = k + 1)
              {
                if (*v153 != v107)
                {
                  objc_enumerationMutation(v104);
                }

                v109 = *(*(&v152 + 1) + 8 * k);
                geometry = [v109 geometry];
                v111 = [geometry geometryRelativeToGeometry:v88];
                [v109 setGeometry:v111];
              }

              v106 = [v104 countByEnumeratingWithState:&v152 objects:v180 count:16];
            }

            while (v106);
          }

          v112 = [NSNumber numberWithInteger:v141];
          v113 = [v140 objectForKeyedSubscript:v112];

          if (!v113)
          {
            v113 = +[NSMutableArray array];
            v114 = [NSNumber numberWithInteger:v141];
            [v140 setObject:v113 forKeyedSubscript:v114];
          }

          [v113 addObjectsFromArray:v104];

          v91 = v150 + 1;
          v90 = commandController;
        }

        while ((v150 + 1) != v139);
        v139 = [v131 countByEnumeratingWithState:&v156 objects:v181 count:16];
      }

      while (v139);
    }

    v115 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v127 boardItemsByIndex:v140];
    [v90 enqueueCommand:v115];

    v82 = v129;
    v65 = v130;
    v84 = v132;
  }

  canvasEditor = [v82 canvasEditor];
  canvasEditorHelper = [canvasEditor canvasEditorHelper];
  v118 = [canvasEditorHelper commandForDeletingInfosPossiblyFromMultipleContainers:v65 shouldRemoveEmptyContainers:{objc_msgSend(v84, "count") == 0}];

  if (v118)
  {
    [commandController enqueueCommand:v118];
  }

  [commandController closeGroup];
  deletedShapeInfos = selfCopy->_deletedShapeInfos;
  if (!deletedShapeInfos)
  {
    v120 = +[NSMutableSet set];
    v121 = selfCopy->_deletedShapeInfos;
    selfCopy->_deletedShapeInfos = v120;

    deletedShapeInfos = selfCopy->_deletedShapeInfos;
  }

  allObjects = [v65 allObjects];
  [(NSMutableSet *)deletedShapeInfos addObjectsFromArray:allObjects];
}

- (void)p_setUpForManualHitTestingFillEraseForInputPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(CRLFreehandDrawingTool *)self icc];
  [v6 viewScale];
  v8 = v7;
  [v6 layoutIfNeeded];
  v9 = +[NSMutableArray array];
  allHitTesterFillPathsZOrdered = self->_allHitTesterFillPathsZOrdered;
  self->_allHitTesterFillPathsZOrdered = v9;

  v11 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
  shapeFillLayoutsForHitTesterPaths = self->_shapeFillLayoutsForHitTesterPaths;
  self->_shapeFillLayoutsForHitTesterPaths = v11;

  v13 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
  currentPathsForHitTesterPaths = self->_currentPathsForHitTesterPaths;
  self->_currentPathsForHitTesterPaths = v13;

  v15 = [NSHashTable hashTableWithOptions:512];
  hitTesterPathsNeedingFinalizationAtEnd = self->_hitTesterPathsNeedingFinalizationAtEnd;
  self->_hitTesterPathsNeedingFinalizationAtEnd = v15;

  v17 = [[CRLBezierHitTester alloc] initWithBucketSize:ceil(10.0 / fmin(v8, 1.0))];
  fillHitTester = self->_fillHitTester;
  self->_fillHitTester = v17;

  [v6 visibleUnscaledRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(CRLFreehandDrawingTool *)self possibleFreehandDrawingLayoutsInParentContainerAtPoint:x, y];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v54 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
  if (v54)
  {
    p_superclass = &OBJC_METACLASS___CRLShapeSearchResultsCollection.superclass;
    v53 = *v63;
    do
    {
      v28 = 0;
      do
      {
        if (*v63 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v28;
        v29 = *(*(&v62 + 1) + 8 * v28);
        v30 = objc_opt_class();
        info = [v29 info];
        v32 = sub_100014370(v30, info);

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v55 = v32;
        childInfos = [v32 childInfos];
        v33 = [childInfos countByEnumeratingWithState:&v58 objects:v76 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v59;
          do
          {
            v36 = 0;
            do
            {
              if (*v59 != v35)
              {
                objc_enumerationMutation(childInfos);
              }

              v37 = *(*(&v58 + 1) + 8 * v36);
              v38 = objc_opt_class();
              v39 = [v6 layoutForInfo:v37];
              v40 = sub_100014370(v38, v39);

              if (v40)
              {
                shapeInfo = [v40 shapeInfo];
                isTreatedAsFillForFreehandDrawing = [shapeInfo isTreatedAsFillForFreehandDrawing];

                if (!isTreatedAsFillForFreehandDrawing)
                {
                  goto LABEL_24;
                }

                pathSource = [v40 pathSource];
                bezierPath = [pathSource bezierPath];

                [v40 pureTransformInRoot];
                [bezierPath transformUsingAffineTransform:buf];
                [(CRLBezierHitTester *)self->_fillHitTester addPath:bezierPath filled:1 clippedToRect:v20, v22, v24, v26];
                [(NSMutableArray *)self->_allHitTesterFillPathsZOrdered addObject:bezierPath];
                [(NSMapTable *)self->_shapeFillLayoutsForHitTesterPaths setObject:v40 forKeyedSubscript:bezierPath];
                [(NSMapTable *)self->_currentPathsForHitTesterPaths setObject:bezierPath forKeyedSubscript:bezierPath];
              }

              else
              {
                v45 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_10132C868();
                }

                v46 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67110146;
                  v67 = v45;
                  v68 = 2082;
                  v69 = "[CRLFreehandDrawingToolPixelEraser p_setUpForManualHitTestingFillEraseForInputPoint:]";
                  v70 = 2082;
                  v71 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m";
                  v72 = 1024;
                  v73 = 570;
                  v74 = 2082;
                  v75 = "shapeLayout";
                  _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10132C890();
                }

                v47 = p_superclass;
                v48 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  v50 = v48;
                  v51 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  v67 = v45;
                  v68 = 2114;
                  v69 = v51;
                  _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                bezierPath = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_setUpForManualHitTestingFillEraseForInputPoint:]"];
                v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
                [CRLAssertionHandler handleFailureInFunction:bezierPath file:v49 lineNumber:570 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeLayout"];

                p_superclass = v47;
              }

LABEL_24:
              v36 = v36 + 1;
            }

            while (v34 != v36);
            v34 = [childInfos countByEnumeratingWithState:&v58 objects:v76 count:16];
          }

          while (v34);
        }

        v28 = v56 + 1;
      }

      while ((v56 + 1) != v54);
      v54 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
    }

    while (v54);
  }
}

- (void)p_updatePathsForSlicingWithErasingStroke:(id)stroke
{
  strokeCopy = stroke;
  [(CRLFreehandDrawingToolPixelEraser *)self p_unscaledEraserDiameter];
  v6 = [(CRLBezierHitTester *)self->_fillHitTester pathsCrossingPath:strokeCopy withSearchThreshold:v5 * 0.5];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (![(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd containsObject:v11])
        {
          [(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (int64_t)p_breakApartFilledShapeIfPossible:(id)possible withDesiredGeometry:(id)geometry bezierPath:(id)path previousZOrderOffset:(int64_t)offset
{
  possibleCopy = possible;
  geometryCopy = geometry;
  visuallyDistinctSubregions = [path visuallyDistinctSubregions];
  if ([visuallyDistinctSubregions count] >= 2)
  {
    v13 = [(CRLFreehandDrawingToolPixelEraser *)self p_breakApartShape:possibleCopy withGeometry:geometryCopy subpaths:visuallyDistinctSubregions previousZOrderOffset:offset];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)p_breakApartShape:(id)shape withGeometry:(id)geometry subpaths:(id)subpaths previousZOrderOffset:(int64_t)offset
{
  shapeCopy = shape;
  geometryCopy = geometry;
  subpathsCopy = subpaths;
  v12 = [(CRLFreehandDrawingTool *)self icc];
  editingCoordinator = [v12 editingCoordinator];
  commandController = [editingCoordinator commandController];

  v36 = v12;
  editingCoordinator2 = [v12 editingCoordinator];
  boardItemFactory = [editingCoordinator2 boardItemFactory];

  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [subpathsCopy count]);
  if ([subpathsCopy count])
  {
    v17 = 0;
    do
    {
      v18 = [subpathsCopy objectAtIndexedSubscript:v17];
      v19 = objc_opt_class();
      [boardItemFactory makeDuplicateOfBoardItem:shapeCopy];
      v21 = v20 = geometryCopy;
      v22 = sub_100013F00(v19, v21);

      geometryCopy = v20;
      [v18 bounds];
      v23 = [v20 geometryWithNewBounds:?];
      [v22 setGeometry:v23];

      v24 = [CRLBezierPathSource pathSourceWithBezierPath:v18];
      [v22 setPathSource:v24];

      [v22 setAspectRatioLocked:{objc_msgSend(shapeCopy, "aspectRatioLocked")}];
      [v16 addObject:v22];

      ++v17;
    }

    while (v17 < [subpathsCopy count]);
  }

  v25 = objc_opt_class();
  parentInfo = [shapeCopy parentInfo];
  v27 = sub_100013F00(v25, parentInfo);

  childInfos = [v27 childInfos];
  v29 = [childInfos indexOfObject:shapeCopy];

  v30 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v27 boardItems:v16 index:&v29[offset]];
  [commandController enqueueCommand:v30];
  v31 = [[_TtC8Freeform26CRLCommandDeleteBoardItems alloc] initWithBoardItemToDelete:shapeCopy];
  [commandController enqueueCommand:v31];
  v32 = [v16 count] - 1;

  return v32;
}

- (id)p_erasableAreaPathInUnscaledSpaceForErasingStrokePath:(id)path withVisibleRulerBezierPath:(id)bezierPath
{
  pathCopy = path;
  bezierPathCopy = bezierPath;
  if (bezierPathCopy)
  {
    if ([pathCopy isEmpty])
    {
      v8 = INFINITY;
      v9 = INFINITY;
    }

    else
    {
      [pathCopy elementAtIndex:0 associatedPoints:v45];
      v8 = *v45;
      v9 = *&v45[1];
    }

    if (sub_1001208AC(v8, v9))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132C99C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132C9C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132CA58();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_erasableAreaPathInUnscaledSpaceForErasingStrokePath:withVisibleRulerBezierPath:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:662 isFatal:0 description:"Begin point from erasing stroke path should not be null."];
      v10 = 0;
    }

    else
    {
      v14 = [(CRLFreehandDrawingTool *)self icc];
      [v14 visibleBoundsRectForTiling];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = [(CRLFreehandDrawingTool *)self icc];
      [v23 convertBoundsToUnscaledRect:{v16, v18, v20, v22}];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v12 = [CRLBezierPath bezierPathWithRect:v25, v27, v29, v31];
      v13 = [v12 subtractBezierPath:bezierPathCopy];
      v32 = [v13 arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:1];
      if ([v32 count])
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v33 = v32;
        v10 = [v33 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v10)
        {
          v34 = *v41;
          while (2)
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v41 != v34)
              {
                objc_enumerationMutation(v33);
              }

              v36 = *(*(&v40 + 1) + 8 * i);
              if ([v36 containsPoint:{v8, v9, v40}])
              {
                v10 = v36;
                goto LABEL_36;
              }
            }

            v10 = [v33 countByEnumeratingWithState:&v40 objects:v44 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132C8B8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10132C8E0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132C974();
        }

        v37 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v37);
        }

        v33 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolPixelEraser p_erasableAreaPathInUnscaledSpaceForErasingStrokePath:withVisibleRulerBezierPath:]"];
        v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolPixelEraser.m"];
        [CRLAssertionHandler handleFailureInFunction:v33 file:v38 lineNumber:674 isFatal:0 description:"subpathsFromSubtractedPath should never empty."];

        v10 = 0;
      }

LABEL_36:
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end