@interface CRLFreehandDrawingToolStroke
- (BOOL)finalizeAndResetWithSuccess:(BOOL)success;
- (BOOL)shouldCommandsEnqueueInRealTime;
- (CRLFreehandDrawingToolStroke)initWithInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController strokeToolType:(unint64_t)type opacity:(double)opacity unscaledWidth:(double)width azimuth:(double)azimuth;
- (double)azimuth;
- (id)p_commandForSnappingShapeItem:(id)item toStrokesInUnscaledSpace:(id)space;
- (id)p_currentColorWithOpacity;
- (id)p_currentPKInkType;
- (void)convertToScratchOutOfStrokes:(id)strokes;
- (void)estimatedPropertiesUpdatedOnInputPoint:(id)point;
- (void)p_beginSuppressingLayerUpdates;
- (void)p_endDrawingAndCaptureFinalStroke:(BOOL)stroke;
- (void)p_endSuppressingLayerUpdatesIfNeeded;
- (void)p_enqueueRealTimeCommandsForPathUpdateIfNeeded;
- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint;
- (void)setAzimuth:(double)azimuth;
- (void)setOpacity:(double)opacity;
- (void)setUnscaledWidth:(double)width;
- (void)updatePencilKitToolIfAppropriateFor:(id)for;
@end

@implementation CRLFreehandDrawingToolStroke

- (CRLFreehandDrawingToolStroke)initWithInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController strokeToolType:(unint64_t)type opacity:(double)opacity unscaledWidth:(double)width azimuth:(double)azimuth
{
  viewControllerCopy = viewController;
  v20.receiver = self;
  v20.super_class = CRLFreehandDrawingToolStroke;
  v15 = [(CRLFreehandDrawingTool *)&v20 initWithInteractiveCanvasController:controller];
  if (v15)
  {
    if (![CRLFreehandDrawingToolStroke p_isStrokeToolType:type])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137B554();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137B57C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137B60C();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke initWithInteractiveCanvasController:pencilKitCanvasViewController:strokeToolType:opacity:unscaledWidth:azimuth:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:85 isFatal:0 description:"Stroke tool should only be initialized with a stroke tool type (got %zu).", type];
    }

    objc_storeWeak(&v15->_pencilKitCanvasViewController, viewControllerCopy);
    v15->_toolType = type;
    v15->_opacity = opacity;
    v15->_unscaledWidth = width;
    v15->_azimuth = azimuth;
  }

  return v15;
}

- (void)setUnscaledWidth:(double)width
{
  self->_unscaledWidth = width;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v5 freehandDrawingToolkit];

  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  [toolkitUIState setCurrentToolWidth:width];

  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
  [(CRLFreehandDrawingToolStroke *)self updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];

  [freehandDrawingToolkit containedToolDidSetWidth:self];
}

- (void)setOpacity:(double)opacity
{
  self->_opacity = opacity;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v5 freehandDrawingToolkit];
  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  [toolkitUIState setCurrentToolOpacity:opacity];

  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
  [(CRLFreehandDrawingToolStroke *)self updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];
}

- (id)p_currentColorWithOpacity
{
  v3 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v3 freehandDrawingToolkit];
  colorForCurrentTool = [freehandDrawingToolkit colorForCurrentTool];
  [(CRLFreehandDrawingToolStroke *)self opacity];
  v6 = [colorForCurrentTool colorWithAlphaComponent:?];

  return v6;
}

- (double)azimuth
{
  if (self->_toolType == 6)
  {
    return self->_azimuth;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137B634();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137B648();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10137B6D8();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke azimuth]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:139 isFatal:0 description:"Tool does not support azimuth."];

  return 0.0;
}

- (void)setAzimuth:(double)azimuth
{
  if (self->_toolType == 6)
  {
    self->_azimuth = azimuth;
    v5 = [(CRLFreehandDrawingTool *)self icc];
    freehandDrawingToolkit = [v5 freehandDrawingToolkit];
    toolkitUIState = [freehandDrawingToolkit toolkitUIState];
    [toolkitUIState setCurrentToolAzimuth:azimuth];

    WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
    pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
    [(CRLFreehandDrawingToolStroke *)self updatePencilKitToolIfAppropriateFor:pencilKitCanvasView];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137B700();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137B714();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137B7A4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke setAzimuth:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:148 isFatal:0 description:"Tool does not support azimuth."];
  }
}

- (BOOL)shouldCommandsEnqueueInRealTime
{
  v3 = [(CRLFreehandDrawingTool *)self icc];
  self->_isEnqueueingCommandsInRealTime = [v3 shouldSupportedDynamicOperationsEnqueueCommandsInRealTime];

  return self->_isEnqueueingCommandsInRealTime;
}

- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint
{
  finalPointCopy = finalPoint;
  initialPointCopy = initialPoint;
  pointCopy = point;
  v34.receiver = self;
  v34.super_class = CRLFreehandDrawingToolStroke;
  [(CRLFreehandDrawingToolAbstractPathInsertion *)&v34 performActionWithInputPoint:pointCopy isInitialPoint:initialPointCopy isFinalPoint:finalPointCopy];
  v9 = [(CRLFreehandDrawingTool *)self icc];
  canvasView = [v9 canvasView];
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];

  _tiledView = [pencilKitCanvasView _tiledView];
  canvasView2 = [_tiledView canvasView];

  unscaledCoordinateSpace = [canvasView unscaledCoordinateSpace];
  if (initialPointCopy)
  {
    v16 = objc_alloc_init(PKDrawing);
    [pencilKitCanvasView setDrawing:v16];

    self->_isSendingPoints = 1;
    v24 = v9;
    if (pointCopy)
    {
      [pointCopy PKInputPoint];
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    [canvasView2 _replayDrawingBegan:&v25 coordinateSpace:unscaledCoordinateSpace activeInputProperties:objc_msgSend(pointCopy inputType:{"activeInputProperties"), objc_msgSend(pointCopy, "PKInputType")}];
    v17 = +[CRLBezierPath bezierPath];
    [pointCopy unscaledPoint];
    [v17 moveToPoint:?];
    [pointCopy unscaledPoint];
    v19 = v18 + 0.1;
    [pointCopy unscaledPoint];
    [v17 lineToPoint:v19];
    [(CRLFreehandDrawingToolStroke *)self p_beginSuppressingLayerUpdates];
    v20 = [CRLPencilKitInkStroke alloc];
    p_currentPKInkType = [(CRLFreehandDrawingToolStroke *)self p_currentPKInkType];
    p_currentColorWithOpacity = [(CRLFreehandDrawingToolStroke *)self p_currentColorWithOpacity];
    [(CRLFreehandDrawingToolStroke *)self unscaledWidth];
    v23 = [(CRLPencilKitInkStroke *)v20 initWithInkType:p_currentPKInkType color:p_currentColorWithOpacity unadjustedPencilKitWidth:?];

    [(CRLFreehandDrawingToolAbstractPathInsertion *)self openCommandGroupAndInsertInitialFreehandDrawingWithUnscaledPath:v17 stroke:v23 fill:0];
    v9 = v24;
  }

  else if (([pointCopy wasAddedByTouchesEnded] & 1) == 0)
  {
    if (pointCopy)
    {
      [pointCopy PKInputPoint];
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    [canvasView2 _replayDrawingMoved:&v25 coordinateSpace:unscaledCoordinateSpace];
    [(CRLFreehandDrawingToolStroke *)self p_enqueueRealTimeCommandsForPathUpdateIfNeeded];
  }
}

- (void)p_enqueueRealTimeCommandsForPathUpdateIfNeeded
{
  if (self->_isEnqueueingCommandsInRealTime && !self->_isScratchingOut)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
    pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
    _tiledView = [pencilKitCanvasView _tiledView];
    canvasView = [_tiledView canvasView];

    currentStroke = [canvasView currentStroke];
    path = [currentStroke path];
    _immutablePointsCount = [path _immutablePointsCount];

    if (!currentStroke)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137BB54();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137BB68();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137BC04();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v24);
      }

      v14 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_enqueueRealTimeCommandsForPathUpdateIfNeeded]"];
      commandController = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:commandController lineNumber:245 isFatal:0 description:"invalid nil value for '%{public}s'", "currentPKStroke"];
      goto LABEL_79;
    }

    path2 = [currentStroke path];
    v11 = [path2 count];

    if (v11 < 2 || _immutablePointsCount == 0)
    {
      goto LABEL_80;
    }

    lastPKStrokeSetInRealTime = self->_lastPKStrokeSetInRealTime;
    if (lastPKStrokeSetInRealTime)
    {
      if (([lastPKStrokeSetInRealTime isEqual:currentStroke]& 1) != 0)
      {
        goto LABEL_80;
      }
    }

    v14 = [(CRLFreehandDrawingTool *)self icc];
    commandController = [v14 commandController];
    if (!commandController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137BA7C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137BA90();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137BB2C();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v25);
      }

      v18 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_enqueueRealTimeCommandsForPathUpdateIfNeeded]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:256 isFatal:0 description:"invalid nil value for '%{public}s'", "cc"];
      goto LABEL_78;
    }

    v16 = objc_opt_class();
    shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
    v18 = sub_100013F00(v16, shapeItem);

    v19 = [v14 layoutForInfo:v18];
    if (!v19)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137B9A4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137B9B8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137BA54();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v26);
      }

      v20 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_enqueueRealTimeCommandsForPathUpdateIfNeeded]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v22 lineNumber:263 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeLayout"];
      v19 = 0;
      goto LABEL_77;
    }

    v66 = v18;
    v20 = [CRLPKStrokeConverter pathFromPKStroke:currentStroke startingAtPointIndex:0 endingAtPointIndex:_immutablePointsCount - 1 pencilKitStrokePathData:0];
    v65 = v19;
    if ([v20 isEmpty])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137B8D8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137B8EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137B97C();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v21);
      }

      v22 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_enqueueRealTimeCommandsForPathUpdateIfNeeded]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:278 isFatal:0 description:"CRLPKStrokeConverter returned an empty path ending at pointIndex: %lu.", _immutablePointsCount - 1];
LABEL_76:

      v18 = v66;
LABEL_77:

LABEL_78:
LABEL_79:

LABEL_80:
      return;
    }

    [v20 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v62 = [CRLBezierPathSource pathSourceWithBezierPath:v20];
    v35 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:v18 pathSource:v62];
    [(CRLCommand *)v35 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
    v61 = v35;
    [commandController enqueueCommand:v35];
    mask = [currentStroke mask];
    v60 = mask;
    if (mask)
    {
      v37 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [mask CGPath]);
      [v19 transformInRoot];
      CGAffineTransformInvert(&v68, &v67);
      [v37 transformUsingAffineTransform:&v68];
    }

    else
    {
      v37 = 0;
    }

    currentStrokePathData = self->_currentStrokePathData;
    if (currentStrokePathData)
    {
      pointCount = [(CRLPKStrokePathCompactData *)currentStrokePathData pointCount];
    }

    else
    {
      pointCount = 0;
    }

    v63 = v20;
    v64 = v37;
    if (pointCount >= _immutablePointsCount)
    {
      if (pointCount != _immutablePointsCount)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137B7CC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137B7F4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137B8B0();
        }

        v43 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v43);
        }

        v44 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_enqueueRealTimeCommandsForPathUpdateIfNeeded]"];
        v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
        [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:326 isFatal:0 description:"expected equality between %{public}s and %{public}s", "currentStrokePathDataCount", "immutablePKPointCount"];

        v59 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      v40 = [CRLPKStrokePathConverter strokePathDataFromPKStroke:"strokePathDataFromPKStroke:startingAtIndex:endingAtIndex:" startingAtIndex:currentStroke endingAtIndex:?];
      v41 = v40;
      if (self->_currentStrokePathData)
      {
        v42 = [CRLPKStrokePathCompactData strokePathCompactDataFrom:?];
        [v42 appendStrokePathCompactData:v41];
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        v46 = v42;
        v44 = self->_currentStrokePathData;
        v59 = v46;
        self->_currentStrokePathData = v46;
LABEL_71:

LABEL_73:
        [currentStroke _anchorPointForTexture];
        [(CRLPKStrokePathCompactData *)self->_currentStrokePathData setAnchorPointForTexture:sub_10011F31C(v47, v48, v28)];
        v49 = [[_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData alloc] initWithFreehandDrawingShapeItem:v66 strokePathCompactData:self->_currentStrokePathData maskPath:v37];
        [(CRLCommand *)v49 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
        v58 = v49;
        [commandController enqueueCommand:v49];
        v50 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v28 size:v30, v32, v34];
        v51 = [CRLCanvasInfoGeometry alloc];
        parent = [v65 parent];
        geometryInRoot = [parent geometryInRoot];
        v54 = [(CRLCanvasInfoGeometry *)v51 initWithLayoutGeometry:geometryInRoot];
        v55 = [(CRLCanvasInfoGeometry *)v50 geometryRelativeToGeometry:v54];

        geometry = [v66 geometry];
        LOBYTE(geometryInRoot) = [geometry isEqual:v55];

        if ((geometryInRoot & 1) == 0)
        {
          v57 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v66 geometry:v55];
          [(CRLCommand *)v57 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
          [commandController enqueueCommand:v57];
        }

        v19 = v65;
        v22 = v62;
        v20 = v63;
        v23 = v61;
        goto LABEL_76;
      }
    }

    v59 = 0;
    goto LABEL_73;
  }
}

- (void)estimatedPropertiesUpdatedOnInputPoint:(id)point
{
  pointCopy = point;
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingToolStroke;
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

- (void)p_endDrawingAndCaptureFinalStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];

  _tiledView = [pencilKitCanvasView _tiledView];
  canvasView = [_tiledView canvasView];

  if (strokeCopy)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_1004816B8;
    v39 = sub_1004816C8;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_1004816B8;
    v33 = sub_1004816C8;
    v34 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1004816D0;
    v25 = &unk_101865CA0;
    v27 = &v35;
    v28 = &v29;
    v9 = dispatch_semaphore_create(0);
    v26 = v9;
    [canvasView _replayDrawingEndedEstimatesTimeout:&v22 withBackgroundQueueCompletion:0.0];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    self->_isSendingPoints = 0;
    objc_storeStrong(&self->_finalPKStroke, v36[5]);
    objc_storeStrong(&self->_finalPKShapeStrokes, v30[5]);
    if (self->_isScratchingOut)
    {
      if (self->_finalPKStroke)
      {
        v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137BC2C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137BC54();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137BCF0();
        }

        v11 = off_1019EDA68;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[CRLAssertionHandler packedBacktraceString];
          sub_101314064(v12, v42, v10);
        }

        v13 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_endDrawingAndCaptureFinalStroke:]"];
        v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
        [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:415 isFatal:0 description:"expected nil value for '%{public}s'", "_finalPKStroke", v22, v23, v24, v25];
      }

      if (self->_finalPKShapeStrokes)
      {
        v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137BD18();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10137BD40();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137BDDC();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[CRLAssertionHandler packedBacktraceString];
          sub_101314064(v17, v41, v15);
        }

        v18 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_endDrawingAndCaptureFinalStroke:]"];
        v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
        [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:416 isFatal:0 description:"expected nil value for '%{public}s'", "_finalPKShapeStrokes"];
      }

      finalPKStroke = self->_finalPKStroke;
      self->_finalPKStroke = 0;

      finalPKShapeStrokes = self->_finalPKShapeStrokes;
      self->_finalPKShapeStrokes = 0;
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }

  else
  {
    [canvasView _replayDrawingCancelled];
    self->_isSendingPoints = 0;
  }
}

- (BOOL)finalizeAndResetWithSuccess:(BOOL)success
{
  v102.receiver = self;
  v102.super_class = CRLFreehandDrawingToolStroke;
  v4 = [(CRLFreehandDrawingTool *)&v102 finalizeAndResetWithSuccess:success];
  v5 = [(CRLFreehandDrawingTool *)self icc];
  commandController = [v5 commandController];
  [(CRLFreehandDrawingToolStroke *)self p_endDrawingAndCaptureFinalStroke:v4];
  LODWORD(v4) = (self->_finalPKStroke != 0) & v4;
  [(CRLFreehandDrawingToolStroke *)self p_endSuppressingLayerUpdatesIfNeeded];
  v7 = +[NSMutableArray array];
  p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
  v91 = v5;
  v92 = v7;
  v88 = v4;
  if (v4 != 1)
  {
    firstObject2 = 0;
    p_isScratchingOut = &self->_isScratchingOut;
    if (!self->_isScratchingOut)
    {
      v49 = 0;
      goto LABEL_50;
    }

    v87 = commandController;
    goto LABEL_48;
  }

  v9 = v7;
  v87 = commandController;
  v10 = objc_opt_class();
  shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
  parentInfo = [shapeItem parentInfo];
  v13 = sub_100013F00(v10, parentInfo);

  v89 = v13;
  if (!v13)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137BE04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137BE2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137BEC8();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke finalizeAndResetWithSuccess:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:459 isFatal:0 description:"invalid nil value for '%{public}s'", "parentFreehandItem"];

    v13 = 0;
  }

  v17 = [v5 layoutForInfo:v13];
  v18 = [CRLCanvasInfoGeometry alloc];
  v86 = v17;
  geometryInRoot = [v17 geometryInRoot];
  v20 = [(CRLCanvasInfoGeometry *)v18 initWithLayoutGeometry:geometryInRoot];

  v21 = [(CRLFreehandDrawingTool *)self icc];
  editingCoordinator = [v21 editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];

  if ([self->_finalPKStroke _isMaskedStroke])
  {
    v24 = [PKDrawing alloc];
    finalPKStroke = self->_finalPKStroke;
    v25 = [NSArray arrayWithObjects:&finalPKStroke count:1];
    v26 = [v24 initWithStrokes:v25];

    [v26 _clipMaskedStrokes];
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    strokes = [v26 strokes];
    v28 = [strokes countByEnumeratingWithState:&v98 objects:v104 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v99;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v99 != v30)
          {
            objc_enumerationMutation(strokes);
          }

          v32 = *(*(&v98 + 1) + 8 * i);
          [(CRLFreehandDrawingToolStroke *)self unscaledWidth];
          v33 = [boardItemFactory makeShapeItemsForFreehandDrawingWithPKStroke:v32 unadjustedPencilKitBaseWidth:?];
          [v9 addObjectsFromArray:v33];
        }

        v29 = [strokes countByEnumeratingWithState:&v98 objects:v104 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v34 = self->_finalPKStroke;
    [(CRLFreehandDrawingToolStroke *)self unscaledWidth];
    v26 = [boardItemFactory makeShapeItemsForFreehandDrawingWithPKStroke:v34 unadjustedPencilKitBaseWidth:?];
    [v9 addObjectsFromArray:v26];
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v35 = v9;
  v36 = [v35 countByEnumeratingWithState:&v94 objects:v103 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v95;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v95 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v94 + 1) + 8 * j);
        geometry = [v40 geometry];
        v42 = [geometry geometryRelativeToGeometry:v20];
        [v40 setGeometry:v42];
      }

      v37 = [v35 countByEnumeratingWithState:&v94 objects:v103 count:16];
    }

    while (v37);
  }

  commandController = v87;
  [v87 openGroup];
  if ([v35 count] == 1)
  {
    v43 = objc_opt_class();
    shapeItem2 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
    v45 = sub_100013F00(v43, shapeItem2);

    firstObject = [v35 firstObject];
    firstObject2 = v45;
    v47 = [v45 commandsToUpdateModelToMatch:firstObject];
    [v87 enqueueCommand:v47];

    p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
    v48 = v86;
  }

  else
  {
    v48 = v86;
    if ([v35 count] < 2)
    {
      firstObject2 = 0;
    }

    else
    {
      v50 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v89 boardItems:v35];
      [v87 enqueueCommand:v50];

      v51 = [_TtC8Freeform26CRLCommandDeleteBoardItems alloc];
      shapeItem3 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
      v53 = [NSSet setWithObject:shapeItem3];
      v54 = [(CRLCommandDeleteBoardItems *)v51 initWithBoardItemsToDelete:v53 canDeleteNewlyCreatedItems:1];
      [v87 enqueueCommand:v54];

      firstObject2 = [v35 firstObject];
    }

    p_info = CRLiOSMultiSelectGestureRecognizer.info;
  }

  [v87 closeGroup];

  p_isScratchingOut = &self->_isScratchingOut;
  if (self->_isScratchingOut)
  {
    [p_info + 206 _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137BEF0();
    }

    v5 = v91;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137BF18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137BFA8();
    }

    v55 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v55);
    }

    v56 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke finalizeAndResetWithSuccess:]"];
    v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [p_info + 206 handleFailureInFunction:v56 file:v57 lineNumber:510 isFatal:0 description:"didSucceed should not be true when scratching out."];

LABEL_48:
    canvasEditor = [v5 canvasEditor];
    canvasEditorHelper = [canvasEditor canvasEditorHelper];

    shapeItem4 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
    v61 = [NSSet setWithObject:shapeItem4];
    v62 = [canvasEditorHelper infosToDeleteToDeleteInfos:v61];

    v49 = 1;
    v63 = [[_TtC8Freeform26CRLCommandDeleteBoardItems alloc] initWithBoardItemsToDelete:v62 canDeleteNewlyCreatedItems:1];
    [v87 enqueueCommand:v63];

    commandController = v87;
    goto LABEL_50;
  }

  v49 = 1;
LABEL_50:
  [(CRLFreehandDrawingToolAbstractPathInsertion *)self finalizeAndResetAbstractPathInsertionToolWithSuccess:v49];
  if (self->_finalPKShapeStrokes)
  {
    v64 = firstObject2 == 0;
  }

  else
  {
    v64 = 1;
  }

  if (!v64)
  {
    [commandController openGroup];
    v65 = [(CRLFreehandDrawingToolStroke *)self p_commandForSnappingShapeItem:firstObject2 toStrokesInUnscaledSpace:self->_finalPKShapeStrokes];
    [commandController enqueueCommand:v65];
    if ([v92 count] >= 2)
    {
      v66 = [v92 subarrayWithRange:{1, objc_msgSend(v92, "count") - 1}];
      v67 = [_TtC8Freeform26CRLCommandDeleteBoardItems alloc];
      [NSSet setWithArray:v66];
      v69 = v68 = commandController;
      v70 = [(CRLCommandDeleteBoardItems *)v67 initWithBoardItemsToDelete:v69];
      [v68 enqueueCommand:v70];

      commandController = v68;
    }

    [commandController closeGroup];
  }

  v71 = objc_alloc_init(PKDrawing);
  WeakRetained = objc_loadWeakRetained(&self->_pencilKitCanvasViewController);
  pencilKitCanvasView = [WeakRetained pencilKitCanvasView];
  [pencilKitCanvasView setDrawing:v71];

  if (self->_isSendingPoints)
  {
    [p_info + 206 _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137BFD0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137BFF8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C088();
    }

    v74 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v74);
    }

    v75 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke finalizeAndResetWithSuccess:]"];
    v76 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [p_info + 206 handleFailureInFunction:v75 file:v76 lineNumber:546 isFatal:0 description:"Should not still be sending points when finalizing."];
  }

  v77 = v92;
  if (self->_isSuppressingLayerUpdates)
  {
    [p_info + 206 _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C0B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C0D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C168();
    }

    v78 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v78);
    }

    v79 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke finalizeAndResetWithSuccess:]"];
    v80 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [p_info + 206 handleFailureInFunction:v79 file:v80 lineNumber:547 isFatal:0 description:"Should not still be suppressing layer updates when finalizing."];

    v77 = v92;
  }

  self->_isEnqueueingCommandsInRealTime = 0;
  lastPKStrokeSetInRealTime = self->_lastPKStrokeSetInRealTime;
  self->_lastPKStrokeSetInRealTime = 0;

  v82 = self->_finalPKStroke;
  self->_finalPKStroke = 0;

  finalPKShapeStrokes = self->_finalPKShapeStrokes;
  self->_finalPKShapeStrokes = 0;

  currentStrokePathData = self->_currentStrokePathData;
  self->_currentStrokePathData = 0;

  *p_isScratchingOut = 0;
  return v88;
}

- (void)updatePencilKitToolIfAppropriateFor:(id)for
{
  forCopy = for;
  p_currentPKInkType = [(CRLFreehandDrawingToolStroke *)self p_currentPKInkType];
  if (self->_toolType == 6)
  {
    [(CRLFreehandDrawingToolStroke *)self azimuth];
  }

  v5 = [PKInkingTool alloc];
  p_currentColorWithOpacity = [(CRLFreehandDrawingToolStroke *)self p_currentColorWithOpacity];
  uIColor = [p_currentColorWithOpacity UIColor];
  [(CRLFreehandDrawingToolStroke *)self unscaledWidth];
  v8 = [v5 initWithInkType:p_currentPKInkType color:uIColor width:? azimuth:?];

  [forCopy setTool:v8];
}

- (id)p_currentPKInkType
{
  v3 = PKInkTypePen;
  toolType = self->_toolType;
  if (toolType <= 3)
  {
    if (toolType > 1)
    {
      if (toolType == 2)
      {
        v5 = &PKInkTypePencil;
      }

      else
      {
        v5 = &PKInkTypeCrayon;
      }
    }

    else
    {
      if (toolType)
      {
        if (toolType == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      v5 = &PKInkTypeMonoline;
    }

    goto LABEL_17;
  }

  if (toolType <= 5)
  {
    if (toolType == 4)
    {
      v5 = &PKInkTypeWatercolor;
    }

    else
    {
      v5 = &PKInkTypeFountainPen;
    }

    goto LABEL_17;
  }

  if (toolType == 6)
  {
    v6 = +[_TtC8Freeform20PKInkTypeSwiftHelper reedInkType];
    goto LABEL_18;
  }

  if (toolType == 7)
  {
    v5 = &PKInkTypeMarker;
LABEL_17:
    v6 = *v5;
LABEL_18:
    v7 = v6;

    v3 = v7;
    goto LABEL_19;
  }

LABEL_23:
  v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137C190();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137C1A4(&self->_toolType, v9);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10137C24C();
  }

  v10 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v10);
  }

  v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_currentPKInkType]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:598 isFatal:0 description:"Unexpected tool type for rendering with PencilKit (%zu). Defaulting to pen ink.", self->_toolType];

LABEL_19:

  return v3;
}

- (void)convertToScratchOutOfStrokes:(id)strokes
{
  strokesCopy = strokes;
  if (!self->_isSendingPoints)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C5F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C604();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C694();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    commandController = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke convertToScratchOutOfStrokes:]"];
    drawingIntelligenceProvider = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    v8 = "Should not scratch-out while not drawing a stroke.";
    v9 = commandController;
    v10 = drawingIntelligenceProvider;
    v11 = 605;
    goto LABEL_21;
  }

  if (self->_isScratchingOut)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C524();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C538();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C5C8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    commandController = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke convertToScratchOutOfStrokes:]"];
    drawingIntelligenceProvider = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    v8 = "Should not scratch-out more than once in one stroke.";
    v9 = commandController;
    v10 = drawingIntelligenceProvider;
    v11 = 610;
LABEL_21:
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:v11 isFatal:0 description:v8];
    goto LABEL_53;
  }

  self->_isScratchingOut = 1;
  v13 = [(CRLFreehandDrawingTool *)self icc];
  commandController = [v13 commandController];

  if (!commandController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C274();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C288();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C324();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke convertToScratchOutOfStrokes:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:618 isFatal:0 description:"invalid nil value for '%{public}s'", "cc"];
  }

  v17 = +[_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider deleteStrokesActionString];
  [commandController setCurrentGroupActionString:v17];

  v18 = [(CRLFreehandDrawingTool *)self icc];
  drawingIntelligenceProvider = [v18 drawingIntelligenceProvider];

  if (!drawingIntelligenceProvider)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C34C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C374();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C410();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v20 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke convertToScratchOutOfStrokes:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:622 isFatal:0 description:"invalid nil value for '%{public}s'", "intelligenceProvider"];
  }

  [drawingIntelligenceProvider deleteStrokes:strokesCopy selectDeletedStrokesOnUndo:0];
  v22 = objc_opt_class();
  v23 = [(CRLFreehandDrawingTool *)self icc];
  shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
  v25 = [v23 layoutForInfo:shapeItem];
  v26 = sub_100013F00(v22, v25);

  if (!v26)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C438();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C460();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C4FC();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v27);
    }

    v28 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke convertToScratchOutOfStrokes:]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:631 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeLayout"];
  }

  [v26 dynamicallyMakeShapeInvisible];
  [(CRLFreehandDrawingToolStroke *)self p_endSuppressingLayerUpdatesIfNeeded];

LABEL_53:
}

- (void)p_beginSuppressingLayerUpdates
{
  if (self->_isSuppressingLayerUpdates)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137C6BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137C6D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137C760();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v2);
    }

    v3 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolStroke p_beginSuppressingLayerUpdates]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:640 isFatal:0 description:"Should not being suppressing layer updates while already doing so."];
  }

  else
  {
    self->_isSuppressingLayerUpdates = 1;
    v6 = [(CRLFreehandDrawingTool *)self icc];
    v5 = +[NSSet set];
    [v6 i_beginSuppressingLayerUpdatesExceptForReps:v5];
  }
}

- (void)p_endSuppressingLayerUpdatesIfNeeded
{
  if (self->_isSuppressingLayerUpdates)
  {
    v3 = [(CRLFreehandDrawingTool *)self icc];
    [v3 i_endSuppressingLayerUpdates];

    self->_isSuppressingLayerUpdates = 0;
  }
}

- (id)p_commandForSnappingShapeItem:(id)item toStrokesInUnscaledSpace:(id)space
{
  itemCopy = item;
  spaceCopy = space;
  v8 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:&__NSArray0__struct];
  v9 = [_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider snapToShapeActionStringWithPlural:0];
  v49 = v8;
  [(CRLCommandGroup *)v8 setActionString:v9];

  v10 = +[NSMutableArray array];
  v11 = [(CRLFreehandDrawingTool *)self icc];
  editingCoordinator = [v11 editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];

  v13 = objc_opt_class();
  v50 = itemCopy;
  parentInfo = [itemCopy parentInfo];
  v15 = sub_100013F00(v13, parentInfo);

  v16 = [(CRLFreehandDrawingTool *)self icc];
  v43 = v15;
  v17 = [v16 layoutForInfo:v15];

  v18 = [CRLCanvasInfoGeometry alloc];
  v42 = v17;
  geometryInRoot = [v17 geometryInRoot];
  v20 = [(CRLCanvasInfoGeometry *)v18 initWithLayoutGeometry:geometryInRoot];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = spaceCopy;
  v47 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v47)
  {
    v45 = *v56;
    v21 = 1;
    do
    {
      v22 = 0;
      do
      {
        if (*v56 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v22;
        v23 = *(*(&v55 + 1) + 8 * v22);
        stroke = [v50 stroke];
        [stroke width];
        v25 = [boardItemFactory makeShapeItemsForFreehandDrawingWithPKStroke:v23 adjustedBaseWidth:?];

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v52;
          v30 = v21;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v52 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v51 + 1) + 8 * i);
              geometry = [v32 geometry];
              v34 = [geometry geometryRelativeToGeometry:v20];
              [v32 setGeometry:v34];

              if (v30)
              {
                v35 = [v50 commandsToUpdateModelToMatch:v32];
                [(CRLCommandGroup *)v49 addCommand:v35];
              }

              else
              {
                [v10 addObject:v32];
              }

              v30 = 0;
            }

            v28 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
            v30 = 0;
            v21 = 0;
          }

          while (v28);
        }

        v22 = v48 + 1;
      }

      while ((v48 + 1) != v47);
      v47 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v47);
  }

  if ([v10 count])
  {
    childInfos = [v43 childInfos];
    v37 = [childInfos indexOfObject:v50];

    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      childInfos2 = [v43 childInfos];
      v39 = [childInfos2 count];
    }

    else
    {
      v39 = v37 + 1;
    }

    v40 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v43 boardItems:v10 index:v39];
    [(CRLCommandGroup *)v49 addCommand:v40];
  }

  return v49;
}

@end