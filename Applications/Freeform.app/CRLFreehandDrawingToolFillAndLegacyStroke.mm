@interface CRLFreehandDrawingToolFillAndLegacyStroke
+ (BOOL)p_isFillValidToRecolorInShapeInfo:(id)info;
+ (id)p_copyOfBezierPath:(id)path clippedToRect:(CGRect)rect startsOutside:(BOOL *)outside endsOutside:(BOOL *)endsOutside;
+ (void)p_appendPath:(id)path fromStartPercent:(double)percent toEndPercent:(double)endPercent toPath:(id)toPath;
+ (void)p_insertUnscaledFloodFillablePath:(id)path fromFillPoint:(CGPoint)point pathsUsedForFilling:(id)filling bezierPathToDrawingLayoutMap:(id)map candidateLayouts:(id)layouts currentColorWithOpacity:(id)opacity withUndoString:(id)string onICC:(id)self0;
- (BOOL)finalizeAndResetWithSuccess:(BOOL)success;
- (BOOL)shouldCommandsEnqueueInRealTime;
- (CRLFreehandDrawingToolFillAndLegacyStroke)initWithInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController insertionToolType:(unint64_t)type opacity:(double)opacity unscaledWidth:(double)width;
- (NSArray)decoratorOverlayRenderables;
- (NSSet)drawingReps;
- (double)actualOpacityValueForOutlineFills;
- (id)p_commandForSnappingShapeItem:(id)item toPathsInParentSpace:(id)space;
- (id)p_currentColorWithOpacity;
- (id)p_currentStroke;
- (id)p_dashedOutlineFillRenderable;
- (id)p_floodFillSerialQueue;
- (id)p_snappedOutlineFillRenderable;
- (void)doWorkBeforeCanvasLayout;
- (void)p_floodFillIfPossibleAtPoint:(CGPoint)point;
- (void)p_shapeGestureDetectedWithCompletion:(id)completion;
- (void)p_updateDottedPathOpacityForCurrentSnapState;
- (void)p_updateDrawingOnCanvasFromPathCreatorAndSendRealTimeCommandsIfNeeded;
- (void)p_updatePathForDashedOutlineFillRenderable;
- (void)p_updatePathForSnappedOutlineFillRenderable;
- (void)p_updatePathsFromPathCreatorWithCommitBehavior:(unint64_t)behavior;
- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint;
- (void)setOpacity:(double)opacity;
- (void)setUnscaledWidth:(double)width;
- (void)shapeGestureCancelledOnShapeDrawingTimerHelper:(id)helper;
- (void)updatePencilKitToolIfAppropriateFor:(id)for;
@end

@implementation CRLFreehandDrawingToolFillAndLegacyStroke

- (CRLFreehandDrawingToolFillAndLegacyStroke)initWithInteractiveCanvasController:(id)controller pencilKitCanvasViewController:(id)viewController insertionToolType:(unint64_t)type opacity:(double)opacity unscaledWidth:(double)width
{
  viewControllerCopy = viewController;
  v29.receiver = self;
  v29.super_class = CRLFreehandDrawingToolFillAndLegacyStroke;
  v13 = [(CRLFreehandDrawingTool *)&v29 initWithInteractiveCanvasController:controller];
  if (v13)
  {
    if (type >= 9)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101342478();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013424A0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101342530();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v21);
      }

      v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke initWithInteractiveCanvasController:pencilKitCanvasViewController:insertionToolType:opacity:unscaledWidth:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
      v17 = "Path insertion tool only knows how to be a monoline, pen, pencil, crayon, watercolor, fountainPen, reedCalligraphy, marker, or fill tool.";
      v18 = v15;
      v19 = v16;
      v20 = 145;
    }

    else
    {
      if (type != 8 || width == 0.0)
      {
        goto LABEL_24;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101342558();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101342580();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101342610();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke initWithInteractiveCanvasController:pencilKitCanvasViewController:insertionToolType:opacity:unscaledWidth:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
      v17 = "Fill tool can't have a width.";
      v18 = v15;
      v19 = v16;
      v20 = 146;
    }

    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:v20 isFatal:0 description:v17];

LABEL_24:
    objc_storeWeak(&v13->_pencilKitCanvasViewController, viewControllerCopy);
    v13->_toolType = type;
    v13->_opacity = opacity;
    v13->_unscaledWidth = width;
    v13->_initialUnscaledPoint = xmmword_1014629F0;
    v13->_currentUnscaledPoint = xmmword_1014629F0;
    v13->_initialActionTime = 0.0;
    v13->_currentActionTime = 0.0;
    v22 = +[CRLBezierPath bezierPath];
    fullCommittedPath = v13->_fullCommittedPath;
    v13->_fullCommittedPath = v22;

    v24 = +[CRLBezierPath bezierPath];
    uncommittedPath = v13->_uncommittedPath;
    v13->_uncommittedPath = v24;

    v26 = [[PKShapeDrawingTimerHelper alloc] initWithDelegate:v13];
    shapeDrawingTimerHelper = v13->_shapeDrawingTimerHelper;
    v13->_shapeDrawingTimerHelper = v26;

    v13->_snappedShapeType = 0;
  }

  return v13;
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
  v91.receiver = self;
  v91.super_class = CRLFreehandDrawingToolFillAndLegacyStroke;
  [(CRLFreehandDrawingToolAbstractPathInsertion *)&v91 performActionWithInputPoint:pointCopy isInitialPoint:initialPointCopy isFinalPoint:finalPointCopy];
  [pointCopy unscaledPoint];
  self->_currentUnscaledPoint.x = v9;
  self->_currentUnscaledPoint.y = v10;
  [pointCopy time];
  self->_currentActionTime = v11;
  if (initialPointCopy)
  {
    [pointCopy unscaledPoint];
    self->_initialUnscaledPoint.x = v12;
    self->_initialUnscaledPoint.y = v13;
    [pointCopy time];
    self->_initialActionTime = v14;
    v15 = [(CRLFreehandDrawingTool *)self icc];
    v16 = objc_alloc_init(CRLFreehandDrawingPathCreator);
    pathCreator = self->_pathCreator;
    self->_pathCreator = v16;

    v18 = self->_pathCreator;
    [v15 viewScale];
    -[CRLFreehandDrawingPathCreator beginDrawingWithViewScale:inputType:](v18, "beginDrawingWithViewScale:inputType:", [pointCopy inputType], v19);
    v20 = self->_pathCreator;
    [pointCopy unscaledPoint];
    v22 = v21;
    v24 = v23;
    [pointCopy time];
    -[CRLFreehandDrawingPathCreator drawToPoint:atTime:predicted:](v20, "drawToPoint:atTime:predicted:", [pointCopy isPredicted], v22, v24, v25);
    [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updatePathsFromPathCreatorWithCommitBehavior:0];
    if ([(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_isFillTool])
    {
      p_currentColorWithOpacity = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_currentColorWithOpacity];
      v27 = [CRLColorFill colorWithColor:p_currentColorWithOpacity];

      [(CRLFreehandDrawingPathCreator *)self->_pathCreator setMinimumLengthForFinalCreatedPath:0.100000001];
      v28 = [(CRLFreehandDrawingTool *)self icc];
      [v28 addDecorator:self];

      if (([pointCopy isPredicted] & 1) == 0)
      {
        canvasView = [v15 canvasView];
        unscaledCoordinateSpace = [canvasView unscaledCoordinateSpace];
        [pointCopy unscaledPoint];
        v32 = v31;
        v34 = v33;
        canvasView2 = [v15 canvasView];
        window = [canvasView2 window];
        coordinateSpace = [window coordinateSpace];
        [unscaledCoordinateSpace convertPoint:coordinateSpace toCoordinateSpace:{v32, v34}];
        v39 = v38;
        v41 = v40;

        [(PKShapeDrawingTimerHelper *)self->_shapeDrawingTimerHelper beginStrokeAtPoint:v39, v41];
      }

      layerHost = [v15 layerHost];
      asiOSCVC = [layerHost asiOSCVC];
      feedbackGenerator = [asiOSCVC feedbackGenerator];

      if (!feedbackGenerator)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101342638();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101342660();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013426FC();
        }

        v45 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v45);
        }

        v46 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke performActionWithInputPoint:isInitialPoint:isFinalPoint:]"];
        v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
        [CRLAssertionHandler handleFailureInFunction:v46 file:v47 lineNumber:220 isFatal:0 description:"invalid nil value for '%{public}s'", "feedbackGenerator"];
      }

      [feedbackGenerator prepare];

      v48 = 0;
    }

    else
    {
      p_currentStroke = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_currentStroke];
      v48 = [p_currentStroke copy];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v48 width];
        v73 = self->_pathCreator;
      }

      else
      {
        v73 = self->_pathCreator;
        v72 = 0.100000001;
      }

      [(CRLFreehandDrawingPathCreator *)v73 setMinimumLengthForFinalCreatedPath:v72];
      v27 = 0;
    }

    [(CRLFreehandDrawingToolAbstractPathInsertion *)self openCommandGroupAndInsertInitialFreehandDrawingWithUnscaledPath:self->_uncommittedPath stroke:v48 fill:v27];

    goto LABEL_41;
  }

  if (([pointCopy wasAddedByTouchesEnded] & 1) == 0)
  {
    v49 = self->_pathCreator;
    [pointCopy unscaledPoint];
    v51 = v50;
    v53 = v52;
    [pointCopy time];
    -[CRLFreehandDrawingPathCreator drawToPoint:atTime:predicted:](v49, "drawToPoint:atTime:predicted:", [pointCopy isPredicted], v51, v53, v54);
  }

  if (-[CRLFreehandDrawingToolFillAndLegacyStroke p_isFillTool](self, "p_isFillTool") && ([pointCopy isPredicted] & 1) == 0)
  {
    v55 = [(CRLFreehandDrawingTool *)self icc];
    canvasView3 = [v55 canvasView];
    unscaledCoordinateSpace2 = [canvasView3 unscaledCoordinateSpace];
    [pointCopy unscaledPoint];
    v59 = v58;
    v61 = v60;
    v62 = [(CRLFreehandDrawingTool *)self icc];
    canvasView4 = [v62 canvasView];
    window2 = [canvasView4 window];
    coordinateSpace2 = [window2 coordinateSpace];
    [unscaledCoordinateSpace2 convertPoint:coordinateSpace2 toCoordinateSpace:{v59, v61}];
    v67 = v66;
    v69 = v68;

    shapeDrawingTimerHelper = self->_shapeDrawingTimerHelper;
    if (pointCopy)
    {
      [pointCopy PKInputPoint];
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
    }

    [(PKShapeDrawingTimerHelper *)shapeDrawingTimerHelper addStrokePoint:&v82 inputPoint:v67, v69];
    if ([pointCopy inputType] == 2 && (objc_msgSend(pointCopy, "wasAddedByTouchesEnded") & 1) == 0)
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v74 = [(CRLFreehandDrawingTool *)self icc];
      freehandDrawingToolkit = [v74 freehandDrawingToolkit];
      if (pointCopy)
      {
        [pointCopy PKInputPoint];
      }

      else
      {
        v81 = 0;
        memset(v80, 0, sizeof(v80));
      }

      if (freehandDrawingToolkit)
      {
        [freehandDrawingToolkit inputPointInPKCanvasViewFromUnscaledSpace:v80];
      }

      else
      {
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
      }

      v76 = [(CRLFreehandDrawingTool *)self icc];
      freehandDrawingToolkit2 = [v76 freehandDrawingToolkit];
      v78[6] = v88;
      v78[7] = v89;
      v79 = v90;
      v78[2] = v84;
      v78[3] = v85;
      v78[4] = v86;
      v78[5] = v87;
      v78[0] = v82;
      v78[1] = v83;
      [freehandDrawingToolkit2 updatePencilShadowWithInputPoint:v78];
    }
  }

  if (finalPointCopy)
  {
    [(CRLFreehandDrawingPathCreator *)self->_pathCreator endDrawing];
    [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updatePathsFromPathCreatorWithCommitBehavior:2];
  }

  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updateDrawingOnCanvasFromPathCreatorAndSendRealTimeCommandsIfNeeded];
  if ([(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_isFillTool])
  {
    v15 = [(CRLFreehandDrawingTool *)self icc];
    [v15 invalidateLayersForDecorator:self];
LABEL_41:
  }
}

- (void)doWorkBeforeCanvasLayout
{
  v3.receiver = self;
  v3.super_class = CRLFreehandDrawingToolFillAndLegacyStroke;
  [(CRLFreehandDrawingTool *)&v3 doWorkBeforeCanvasLayout];
  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updatePathForDashedOutlineFillRenderable];
  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updatePathForSnappedOutlineFillRenderable];
  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updateDottedPathOpacityForCurrentSnapState];
}

- (BOOL)finalizeAndResetWithSuccess:(BOOL)success
{
  v73.receiver = self;
  v73.super_class = CRLFreehandDrawingToolFillAndLegacyStroke;
  v4 = [(CRLFreehandDrawingTool *)&v73 finalizeAndResetWithSuccess:success];
  v5 = [(CRLFreehandDrawingTool *)self icc];
  editingCoordinator = [v5 editingCoordinator];
  commandController = [editingCoordinator commandController];

  shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
  if ([v5 i_currentlySuppressingLayerUpdates])
  {
    [v5 i_endSuppressingLayerUpdates];
  }

  if ([(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_isFillTool])
  {
    [v5 removeDecorator:self];
    [(PKShapeDrawingTimerHelper *)self->_shapeDrawingTimerHelper teardown];
  }

  v9 = &OBJC_IVAR___CRLEditorController_mEditorStack;
  v10 = &OBJC_IVAR___CRLEditorController_mEditorStack;
  if (![(CRLBezierPath *)self->_fullCommittedPath containsElementsOtherThanMoveAndClose])
  {
    goto LABEL_16;
  }

  v70 = v4;
  v11 = self->_fullCommittedPath;
  p_isFillTool = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_isFillTool];
  if (!p_isFillTool)
  {
    if (v70)
    {
      goto LABEL_12;
    }

LABEL_16:
    [(CRLFreehandDrawingToolAbstractPathInsertion *)self finalizeAndResetAbstractPathInsertionToolWithSuccess:0];
    v11 = 0;
    v40 = 0;
    goto LABEL_26;
  }

  if (self->_currentActionTime - self->_initialActionTime <= 0.25)
  {
    v13 = sub_100120090(self->_initialUnscaledPoint.x, self->_initialUnscaledPoint.y, self->_currentUnscaledPoint.x, self->_currentUnscaledPoint.y);
    [v5 viewScale];
    if (v13 * v14 <= 10.0)
    {
      v45 = [_TtC8Freeform26CRLCommandDeleteBoardItems alloc];
      initialFreehandDrawingItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self initialFreehandDrawingItem];
      v47 = [NSSet setWithObject:initialFreehandDrawingItem];
      v48 = [(CRLCommandDeleteBoardItems *)v45 initWithBoardItemsToDelete:v47 canDeleteNewlyCreatedItems:1];

      [commandController enqueueCommand:v48];
      [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_floodFillIfPossibleAtPoint:self->_initialUnscaledPoint.x, self->_initialUnscaledPoint.y];

      [(CRLFreehandDrawingToolAbstractPathInsertion *)self finalizeAndResetAbstractPathInsertionToolWithSuccess:0];
      v11 = 0;
      v40 = 0;
LABEL_25:
      v9 = &OBJC_IVAR___CRLEditorController_mEditorStack;
      v10 = &OBJC_IVAR___CRLEditorController_mEditorStack;
      goto LABEL_26;
    }
  }

  [(CRLBezierPath *)v11 closePath];
  freehandDrawingToolkit = [v5 freehandDrawingToolkit];
  [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
  v17 = v16 = shapeItem;
  [v17 id];
  v19 = v18 = commandController;
  [freehandDrawingToolkit enqueueAnimationForObjectUUID:v19 animation:@"CRLFreehandDrawingToolkitAnimationNameOutlineFill"];

  commandController = v18;
  shapeItem = v16;

  v9 = &OBJC_IVAR___CRLEditorController_mEditorStack;
  v10 = &OBJC_IVAR___CRLEditorController_mEditorStack;
  if (v70)
  {
LABEL_12:
    if (v11)
    {
      [(CRLBezierPath *)v11 bounds];
      v21 = v20;
      v23 = v22;
      [commandController openGroup];
      v24 = [CRLBezierPathSource pathSourceWithBezierPath:v11];
      v68 = shapeItem;
      v25 = [_TtC8Freeform23CRLCommandSetPathSource alloc];
      [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
      v26 = v69 = commandController;
      v66 = v24;
      v67 = [(CRLCommandSetPathSource *)v25 initWithShapeItem:v26 pathSource:v24];

      [v69 enqueueCommand:v67];
      shapeItem2 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
      v28 = [v5 layoutsForInfo:shapeItem2];
      anyObject = [v28 anyObject];

      v29 = [CRLCanvasInfoGeometry alloc];
      bezierPath = [v24 bezierPath];
      [bezierPath bounds];
      v31 = [(CRLCanvasInfoGeometry *)v29 initWithPosition:v21 size:v23];

      v32 = [CRLCanvasInfoGeometry alloc];
      parent = [anyObject parent];
      geometryInRoot = [parent geometryInRoot];
      v35 = [(CRLCanvasInfoGeometry *)v32 initWithLayoutGeometry:geometryInRoot];
      v36 = [(CRLCanvasInfoGeometry *)v31 geometryRelativeToGeometry:v35];

      commandController = v69;
      v37 = [_TtC8Freeform25CRLCommandSetInfoGeometry alloc];
      shapeItem3 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
      v39 = [(CRLCommandSetInfoGeometry *)v37 initWithBoardItem:shapeItem3 geometry:v36];

      v9 = &OBJC_IVAR___CRLEditorController_mEditorStack;
      [v69 enqueueCommand:v39];
      [v69 closeGroup];

      v10 = &OBJC_IVAR___CRLEditorController_mEditorStack;
      shapeItem = v68;

      v40 = 1;
      [(CRLFreehandDrawingToolAbstractPathInsertion *)self finalizeAndResetAbstractPathInsertionToolWithSuccess:1];
      if ((p_isFillTool & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v40 = 1;
      [(CRLFreehandDrawingToolAbstractPathInsertion *)self finalizeAndResetAbstractPathInsertionToolWithSuccess:1];
      if (!p_isFillTool)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_18;
  }

  [(CRLFreehandDrawingToolAbstractPathInsertion *)self finalizeAndResetAbstractPathInsertionToolWithSuccess:0];
  v11 = 0;
LABEL_18:
  v41 = *(&self->super.super.super.isa + v9[196]);
  if (v41)
  {
    v42 = [v41 copy];
    memset(&v72, 0, sizeof(v72));
    parentItem = [shapeItem parentItem];
    v44 = parentItem;
    if (parentItem)
    {
      [parentItem transformInRoot];
    }

    else
    {
      memset(&v71, 0, sizeof(v71));
    }

    CGAffineTransformInvert(&v72, &v71);

    v71 = v72;
    [v42 transformUsingAffineTransform:&v71];
    visuallyDistinctSubregions = [v42 visuallyDistinctSubregions];
    v50 = objc_opt_class();
    v51 = sub_100013F00(v50, shapeItem);
    v52 = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_commandForSnappingShapeItem:v51 toPathsInParentSpace:visuallyDistinctSubregions];

    [commandController enqueueCommand:v52];
    v40 = v70;
    goto LABEL_25;
  }

  v40 = v70;
LABEL_26:
  self->_isEnqueueingCommandsInRealTime = 0;
  pathCreator = self->_pathCreator;
  self->_pathCreator = 0;

  self->_initialUnscaledPoint = xmmword_1014629F0;
  self->_currentUnscaledPoint = xmmword_1014629F0;
  self->_initialActionTime = 0.0;
  *(&self->super.super.super.isa + v10[189]) = 0;
  v54 = +[CRLBezierPath bezierPath];
  fullCommittedPath = self->_fullCommittedPath;
  self->_fullCommittedPath = v54;

  subpathToCommit = self->_subpathToCommit;
  self->_subpathToCommit = 0;

  v57 = +[CRLBezierPath bezierPath];
  uncommittedPath = self->_uncommittedPath;
  self->_uncommittedPath = v57;

  self->_fullCommittedPathEndsOutsideSpacerShape = 0;
  self->_uncommittedPathBeginsOutsideSpacerShape = 0;
  dashedOutlineFillRenderable = self->_dashedOutlineFillRenderable;
  self->_dashedOutlineFillRenderable = 0;

  dynamicFillPath = self->_dynamicFillPath;
  self->_dynamicFillPath = 0;

  v61 = v9[196];
  v62 = *(&self->super.super.super.isa + v61);
  *(&self->super.super.super.isa + v61) = 0;

  self->_snappedShapeType = 0;
  snappedOutlineFillRenderable = self->_snappedOutlineFillRenderable;
  self->_snappedOutlineFillRenderable = 0;

  return v40;
}

- (void)updatePencilKitToolIfAppropriateFor:(id)for
{
  forCopy = for;
  v5 = [PKInkingTool alloc];
  p_currentColorWithOpacity = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_currentColorWithOpacity];
  uIColor = [p_currentColorWithOpacity UIColor];
  v8 = [v5 initWithInkType:PKInkTypePen color:uIColor];

  [forCopy setTool:v8];
}

- (void)setUnscaledWidth:(double)width
{
  if (self->_toolType == 8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101342724();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101342738();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013427C8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke setUnscaledWidth:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:435 isFatal:0 description:"Fill tool can't have a width"];
  }

  self->_unscaledWidth = width;
  v8 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v8 freehandDrawingToolkit];
  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  [toolkitUIState setCurrentToolWidth:width];
}

- (void)setOpacity:(double)opacity
{
  self->_opacity = opacity;
  v6 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v6 freehandDrawingToolkit];
  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  [toolkitUIState setCurrentToolOpacity:opacity];
}

- (NSSet)drawingReps
{
  v3 = +[NSSet set];
  shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
  if ([(CRLFreehandDrawingTool *)self isPerformingActions]&& shapeItem)
  {
    v5 = objc_opt_class();
    v6 = [(CRLFreehandDrawingTool *)self icc];
    v7 = [v6 repForInfo:shapeItem];
    v8 = sub_100014370(v5, v7);

    if (v8 && [v8 i_isCurrentlyBeingFreehandDrawn])
    {
      v9 = [NSSet setWithObject:v8];

      v3 = v9;
    }
  }

  return v3;
}

- (double)actualOpacityValueForOutlineFills
{
  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self opacity];
  if (v3 <= 0.0)
  {
    return 0.100000001;
  }

  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self opacity];
  v5 = 0.100000001 / v4;

  return sub_1004C3240(v5, 0.100000001, 1.0);
}

- (NSArray)decoratorOverlayRenderables
{
  if ([(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_isFillTool]&& self->_pathCreator)
  {
    if (!self->_dashedOutlineFillRenderable)
    {
      p_dashedOutlineFillRenderable = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_dashedOutlineFillRenderable];
      dashedOutlineFillRenderable = self->_dashedOutlineFillRenderable;
      self->_dashedOutlineFillRenderable = p_dashedOutlineFillRenderable;

      [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updatePathForDashedOutlineFillRenderable];
    }

    snappedOutlineFillRenderable = self->_snappedOutlineFillRenderable;
    if (!snappedOutlineFillRenderable)
    {
      p_snappedOutlineFillRenderable = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_snappedOutlineFillRenderable];
      v7 = self->_snappedOutlineFillRenderable;
      self->_snappedOutlineFillRenderable = p_snappedOutlineFillRenderable;

      [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updatePathForSnappedOutlineFillRenderable];
      snappedOutlineFillRenderable = self->_snappedOutlineFillRenderable;
    }

    v10[0] = self->_dashedOutlineFillRenderable;
    v10[1] = snappedOutlineFillRenderable;
    v8 = [NSArray arrayWithObjects:v10 count:2];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (void)p_shapeGestureDetectedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_dynamicFillPath)
  {
    shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
    v6 = [shapeItem id];

    v7 = [(CRLFreehandDrawingTool *)self icc];
    drawingIntelligenceProvider = [v7 drawingIntelligenceProvider];
    if (!drawingIntelligenceProvider)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013427F0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101342804();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013428A0();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_shapeGestureDetectedWithCompletion:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:510 isFatal:0 description:"invalid nil value for '%{public}s'", "intelligenceProvider"];
    }

    dynamicFillPath = self->_dynamicFillPath;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002861D0;
    v14[3] = &unk_10184F398;
    v14[4] = self;
    v14[5] = v6;
    v14[6] = v7;
    v15 = completionCopy;
    [drawingIntelligenceProvider pathBySnappingFillPathToShape:dynamicFillPath completion:v14];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013428C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013428DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134296C();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_shapeGestureDetectedWithCompletion:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:502 isFatal:0 description:"_dynamicFillPath should not be nil by the time -shapeGestureDetectedOnShapeDrawingTimerHelper: is called"];
  }
}

- (void)shapeGestureCancelledOnShapeDrawingTimerHelper:(id)helper
{
  dynamicSnappedFillPath = self->_dynamicSnappedFillPath;
  self->_dynamicSnappedFillPath = 0;

  v5 = [(CRLFreehandDrawingTool *)self icc];
  [v5 invalidateLayersForDecorator:self];
}

- (id)p_dashedOutlineFillRenderable
{
  v3 = +[CRLCanvasShapeRenderable renderable];
  v4 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v4 freehandDrawingToolkit];
  colorForCurrentTool = [freehandDrawingToolkit colorForCurrentTool];

  [colorForCurrentTool alphaComponent];
  if (v7 != 1.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101342A6C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101342A80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101342B10();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_dashedOutlineFillRenderable]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:555 isFatal:0 description:"Colors from the toolkit should not have reduced alpha."];
  }

  [v3 setLineWidth:2.0];
  [v3 setLineDashPattern:&off_1018E1AE8];
  [v3 setLineJoin:kCALineJoinRound];
  [v3 setLineCap:kCALineCapRound];
  [v3 setFillColor:0];
  [v3 setStrokeColor:{objc_msgSend(colorForCurrentTool, "CGColor")}];

  return v3;
}

- (void)p_updatePathForDashedOutlineFillRenderable
{
  if (self->_dashedOutlineFillRenderable)
  {
    v3 = [(CRLFreehandDrawingTool *)self icc];
    [v3 viewScale];
    v5 = v4;

    v6 = [(CRLBezierPath *)self->_dynamicFillPath copy];
    CGAffineTransformMakeScale(&v7, v5, v5);
    [v6 transformUsingAffineTransform:&v7];
    -[CRLCanvasShapeRenderable setPath:](self->_dashedOutlineFillRenderable, "setPath:", [v6 CGPath]);
  }
}

- (id)p_snappedOutlineFillRenderable
{
  v3 = +[CRLCanvasShapeRenderable renderable];
  v4 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v4 freehandDrawingToolkit];
  colorForCurrentTool = [freehandDrawingToolkit colorForCurrentTool];

  [colorForCurrentTool alphaComponent];
  if (v7 != 1.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101342B38();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101342B4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101342BDC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_snappedOutlineFillRenderable]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:581 isFatal:0 description:"Colors from the toolkit should not have reduced alpha."];
  }

  [v3 setLineWidth:2.0];
  [v3 setLineJoin:kCALineJoinRound];
  [v3 setLineCap:kCALineCapRound];
  [v3 setFillColor:0];
  [v3 setStrokeColor:{objc_msgSend(colorForCurrentTool, "CGColor")}];

  return v3;
}

- (void)p_updatePathForSnappedOutlineFillRenderable
{
  snappedOutlineFillRenderable = self->_snappedOutlineFillRenderable;
  if (snappedOutlineFillRenderable)
  {
    if (self->_dynamicSnappedFillPath)
    {
      v4 = [(CRLFreehandDrawingTool *)self icc];
      [v4 viewScale];
      v6 = v5;

      v7 = [(CRLBezierPath *)self->_dynamicSnappedFillPath copy];
      CGAffineTransformMakeScale(&v8, v6, v6);
      [v7 transformUsingAffineTransform:&v8];
      -[CRLCanvasShapeRenderable setPath:](self->_snappedOutlineFillRenderable, "setPath:", [v7 CGPath]);
    }

    else
    {

      [(CRLCanvasShapeRenderable *)snappedOutlineFillRenderable setPath:0];
    }
  }
}

- (void)p_updateDottedPathOpacityForCurrentSnapState
{
  v3 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v3 freehandDrawingToolkit];
  colorForCurrentTool = [freehandDrawingToolkit colorForCurrentTool];

  [colorForCurrentTool alphaComponent];
  if (v6 != 1.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101342C04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101342C18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101342CA8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_updateDottedPathOpacityForCurrentSnapState]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:608 isFatal:0 description:"Colors from the toolkit should not have reduced alpha."];
  }

  if (self->_dynamicSnappedFillPath)
  {
    v10 = [colorForCurrentTool colorWithAlphaComponent:0.25];
    -[CRLCanvasShapeRenderable setStrokeColor:](self->_dashedOutlineFillRenderable, "setStrokeColor:", [v10 CGColor]);
  }

  else
  {
    -[CRLCanvasShapeRenderable setStrokeColor:](self->_dashedOutlineFillRenderable, "setStrokeColor:", [colorForCurrentTool CGColor]);
  }
}

- (id)p_commandForSnappingShapeItem:(id)item toPathsInParentSpace:(id)space
{
  itemCopy = item;
  spaceCopy = space;
  v7 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:&__NSArray0__struct];
  v8 = [_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider snapToShapeActionStringWithPlural:0];
  [(CRLCommandGroup *)v7 setActionString:v8];

  v43 = +[NSMutableArray array];
  v42 = spaceCopy;
  if ([spaceCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [spaceCopy objectAtIndexedSubscript:v9];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v46 = [CRLBezierPathSource pathSourceWithBezierPath:v10];
      if (v9)
      {
        v19 = [(CRLFreehandDrawingTool *)self icc];
        editingCoordinator = [v19 editingCoordinator];
        boardItemFactory = [editingCoordinator boardItemFactory];

        v22 = objc_opt_class();
        stroke = [itemCopy stroke];
        fill = [itemCopy fill];
        v45 = boardItemFactory;
        v25 = [(CRLCanvasInfoGeometry *)boardItemFactory makeShapeItemForFreehandDrawingWithPathSource:v46 position:stroke stroke:fill fill:0 pencilKitStrokePathCompactData:0 maskPath:self->_snappedShapeType snappedShapeType:v12, v14];
        v26 = sub_100013F00(v22, v25);

        spaceCopy = v42;
        [v43 addObject:v26];
      }

      else
      {
        v45 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v12 size:v14, v16, v18];
        v26 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:itemCopy geometry:v45];
        [(CRLCommandGroup *)v7 addCommand:v26];
        v27 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:itemCopy pathSource:v46];
        [(CRLCommandGroup *)v7 addCommand:v27];
        v28 = [[_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType alloc] initWithFreehandDrawingShapeItem:itemCopy snappedShapeType:self->_snappedShapeType];
        [(CRLCommandGroup *)v7 addCommand:v28];
      }

      ++v9;
    }

    while (v9 < [spaceCopy count]);
  }

  if ([v43 count])
  {
    containingGroup = [itemCopy containingGroup];
    childInfos = [containingGroup childInfos];
    v31 = [childInfos indexOfObject:itemCopy];

    if (v31 == 0x7FFFFFFFFFFFFFFFLL)
    {
      childInfos2 = [containingGroup childInfos];
      v33 = [childInfos2 count];
    }

    else
    {
      v33 = v31 + 1;
    }

    v34 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:containingGroup boardItems:v43 index:v33];
    [(CRLCommandGroup *)v7 addCommand:v34];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35 = v43;
    v36 = [v35 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v48;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [[_TtC8Freeform53CRLCommandSetFreehandDrawingShapeItemSnappedShapeType alloc] initWithFreehandDrawingShapeItem:*(*(&v47 + 1) + 8 * i) snappedShapeType:self->_snappedShapeType];
          [(CRLCommandGroup *)v7 addCommand:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v37);
    }

    spaceCopy = v42;
  }

  return v7;
}

- (void)p_updateDrawingOnCanvasFromPathCreatorAndSendRealTimeCommandsIfNeeded
{
  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_updatePathsFromPathCreatorWithCommitBehavior:1];
  v3 = [(CRLBezierPath *)self->_fullCommittedPath copy];
  v4 = v3;
  v5 = !self->_fullCommittedPathEndsOutsideSpacerShape && !self->_uncommittedPathBeginsOutsideSpacerShape;
  [v3 appendBezierPath:self->_uncommittedPath skippingInitialMoveIfPossible:v5];
  if ([v4 containsElementsOtherThanMoveAndClose])
  {
    shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
    if (shapeItem)
    {
      v7 = [(CRLFreehandDrawingTool *)self icc];
      v8 = objc_opt_class();
      v9 = [v7 repForInfo:shapeItem];
      v10 = sub_100013F00(v8, v9);

      if (v10)
      {
        if (([v7 i_currentlySuppressingLayerUpdates] & 1) == 0 && (!-[CRLFreehandDrawingToolFillAndLegacyStroke p_isFillTool](self, "p_isFillTool") || self->_dashedOutlineFillRenderable))
        {
          v11 = [v7 renderableForRep:v10];

          if (v11)
          {
            v12 = [NSMutableSet setWithObject:v10];
            parentRep = [v10 parentRep];
            if (parentRep)
            {
              v14 = parentRep;
              do
              {
                [v12 addObject:v14];
                parentRep2 = [v14 parentRep];

                v14 = parentRep2;
              }

              while (parentRep2);
            }

            [v7 i_beginSuppressingLayerUpdatesExceptForReps:v12];
          }
        }

        v16 = v4;
        v17 = v16;
        if ([(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_isFillTool])
        {
          v17 = [v16 copy];

          [v17 closePath];
          v18 = [v17 copy];
          dynamicFillPath = self->_dynamicFillPath;
          self->_dynamicFillPath = v18;
        }

        [v16 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [CRLBezierPathSource pathSourceWithBezierPath:v17];
        [v10 dynamicallySetBezierPathSource:v28 atUnscaledOrigin:0 withCommittedPointRange:{-[CRLBezierPath elementCount](self->_fullCommittedPath, "elementCount"), v21, v23}];
        if (self->_isEnqueueingCommandsInRealTime)
        {
          commandController = [v7 commandController];
          v48 = commandController;
          v49 = shapeItem;
          if (commandController)
          {
            v30 = commandController;
            v31 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:shapeItem pathSource:v28];
            [(CRLCommand *)v31 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
            v47 = v31;
            [v30 enqueueCommand:v31];
            v32 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v21 size:v23, v25, v27];
            v33 = [CRLCanvasInfoGeometry alloc];
            layout = [v10 layout];
            parent = [layout parent];
            geometryInRoot = [parent geometryInRoot];
            v36 = [(CRLCanvasInfoGeometry *)v33 initWithLayoutGeometry:geometryInRoot];
            v37 = [(CRLCanvasInfoGeometry *)v32 geometryRelativeToGeometry:v36];

            shapeItem = v49;
            v38 = v48;

            geometry = [v49 geometry];
            LOBYTE(v32) = [geometry isEqual:v37];

            if ((v32 & 1) == 0)
            {
              v40 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v49 geometry:v37];
              [(CRLCommand *)v40 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
              [v48 enqueueCommand:v40];
            }
          }

          else
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101342CD0();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_101342CE4();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101342D80();
            }

            v43 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130DA10(v43);
            }

            v44 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_updateDrawingOnCanvasFromPathCreatorAndSendRealTimeCommandsIfNeeded]"];
            v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
            [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:728 isFatal:0 description:"invalid nil value for '%{public}s'", "cc"];

            v38 = 0;
            shapeItem = v49;
          }
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101342DA8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101342DBC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101342E58();
        }

        v42 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v42);
        }

        v17 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_updateDrawingOnCanvasFromPathCreatorAndSendRealTimeCommandsIfNeeded]"];
        v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v28 lineNumber:686 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeRep"];
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101342E80();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101342E94();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101342F30();
      }

      v41 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v41);
      }

      v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_updateDrawingOnCanvasFromPathCreatorAndSendRealTimeCommandsIfNeeded]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v10 lineNumber:679 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeInfo"];
    }
  }
}

+ (void)p_appendPath:(id)path fromStartPercent:(double)percent toEndPercent:(double)endPercent toPath:(id)toPath
{
  v13 = 0.0;
  v14 = 0.0;
  toPathCopy = toPath;
  pathCopy = path;
  v11 = [pathCopy elementPercentage:&v14 forOverallPercentage:percent];
  v12 = [pathCopy elementPercentage:&v13 forOverallPercentage:endPercent];
  [toPathCopy appendBezierPath:pathCopy fromSegment:v11 t:v12 toSegment:0 t:v14 withoutMove:v13];
}

+ (id)p_copyOfBezierPath:(id)path clippedToRect:(CGRect)rect startsOutside:(BOOL *)outside endsOutside:(BOOL *)endsOutside
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  *outside = 0;
  *endsOutside = 0;
  if ([pathCopy containsElementsOtherThanMoveAndClose] && (objc_msgSend(pathCopy, "bounds"), v63.origin.x = v14, v63.origin.y = v15, v63.size.width = v16, v63.size.height = v17, v62.origin.x = x, v62.origin.y = y, v62.size.width = width, v62.size.height = height, !CGRectContainsRect(v62, v63)))
  {
    v19 = +[CRLBezierPath bezierPath];
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v59 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v49[3] = 0;
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_10028802C;
    v36 = &unk_10184F540;
    v43 = x;
    v44 = y;
    v45 = width;
    v46 = height;
    v39 = &v54;
    v40 = &v50;
    v41 = v49;
    selfCopy = self;
    v20 = pathCopy;
    v37 = v20;
    v18 = v19;
    v38 = v18;
    v42 = v58;
    outsideCopy = outside;
    [v20 iterateOverPathWithPointDistancePerIteration:&v33 usingBlock:1.0];
    if (*(v55 + 24) == 1)
    {
      v21 = v51[3];
      if (v21 == 1.0 || fabs(v21 + -1.0) < 0.000000999999997)
      {
        v22 = 0;
      }

      else
      {
        [self p_appendPath:v20 fromStartPercent:v18 toEndPercent:v21 toPath:{1.0, v33, v34, v35, v36, v37}];
        v22 = *(v55 + 24) ^ 1;
      }
    }

    else
    {
      v22 = 1;
    }

    *endsOutside = v22 & 1;
    if ([v18 isEmpty])
    {
      v23 = 0;
    }

    else
    {
      [v18 bounds];
      v23 = CGSizeZero.height == v25 && CGSizeZero.width == v24;
    }

    if (v23 | (([v18 containsElementsOtherThanMoveAndClose] & 1) == 0))
    {
      if (v23 && [v18 containsElementsOtherThanMoveAndClose])
      {
        v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101342F58();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101342F80();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101343010();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = +[CRLAssertionHandler packedBacktraceString];
          sub_101318C3C(v28, buf, v26, v27);
        }

        v29 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingToolFillAndLegacyStroke p_copyOfBezierPath:clippedToRect:startsOutside:endsOutside:]");
        v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
        [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:820 isFatal:0 description:"Clipping produced a zero-sized path"];
      }

      *outside = 1;
      *endsOutside = 1;
      v31 = +[CRLBezierPath bezierPath];

      v18 = v31;
    }

    _Block_object_dispose(v49, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(v58, 8);
  }

  else
  {
    v18 = [pathCopy copy];
  }

  return v18;
}

- (void)p_updatePathsFromPathCreatorWithCommitBehavior:(unint64_t)behavior
{
  if (behavior)
  {
    if (behavior == 2 || [(CRLFreehandDrawingPathCreator *)self->_pathCreator pointCountAvailableToCommit]>= 5)
    {
      commitAllAvailablePoints = [(CRLFreehandDrawingPathCreator *)self->_pathCreator commitAllAvailablePoints];
      subpathToCommit = self->_subpathToCommit;
      self->_subpathToCommit = commitAllAvailablePoints;
    }

    else
    {
      subpathToCommit = self->_subpathToCommit;
      self->_subpathToCommit = 0;
    }
  }

  copyOfUncommittedPath = [(CRLFreehandDrawingPathCreator *)self->_pathCreator copyOfUncommittedPath];
  uncommittedPath = self->_uncommittedPath;
  self->_uncommittedPath = copyOfUncommittedPath;

  if (behavior)
  {
    if (self->_subpathToCommit)
    {
      [CRLBezierPath appendBezierPath:"appendBezierPath:skippingInitialMoveIfPossible:" skippingInitialMoveIfPossible:?];
      self->_fullCommittedPathEndsOutsideSpacerShape = 0;
    }
  }
}

- (id)p_floodFillSerialQueue
{
  if (qword_101A349F0 != -1)
  {
    sub_101343038();
  }

  v3 = qword_101A349E8;

  return v3;
}

- (void)p_floodFillIfPossibleAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(CRLFreehandDrawingTool *)self icc];
  [v6 visibleUnscaledRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  shapeItem = [(CRLFreehandDrawingToolAbstractPathInsertion *)self shapeItem];
  v105 = v6;
  [v6 layoutIfNeeded];
  selfCopy = self;
  v16 = [(CRLFreehandDrawingTool *)self possibleFreehandDrawingLayoutsInParentContainerAtPoint:x, y];
  v115 = +[NSMutableArray array];
  v114 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v103 = v16;
  reverseObjectEnumerator = [v16 reverseObjectEnumerator];
  v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v138 objects:v146 count:16];
  v107 = shapeItem;
  if (v18)
  {
    v19 = v18;
    p_info = CRLiOSMultiSelectGestureRecognizer.info;
    v106 = *v139;
    v102 = reverseObjectEnumerator;
    do
    {
      v21 = 0;
      v100 = v19;
      do
      {
        if (*v139 != v106)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v22 = *(*(&v138 + 1) + 8 * v21);
        [v22 frameForCullingInRoot];
        v148.origin.x = v8;
        v148.origin.y = v10;
        v148.size.width = v12;
        v148.size.height = v14;
        if (!CGRectIntersectsRect(v147, v148))
        {
          goto LABEL_85;
        }

        v101 = v21;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        freehandInfo = [v22 freehandInfo];
        childInfos = [freehandInfo childInfos];
        reverseObjectEnumerator2 = [childInfos reverseObjectEnumerator];

        obj = reverseObjectEnumerator2;
        v112 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v134 objects:v145 count:16];
        if (!v112)
        {
          goto LABEL_84;
        }

        v111 = *v135;
        while (2)
        {
          v26 = 0;
          do
          {
            if (*v135 != v111)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v134 + 1) + 8 * v26);
            v28 = objc_opt_class();
            v29 = sub_100013F00(v28, v27);
            if (v29 == shapeItem)
            {
              _atomicIncrementAssertCount = [p_info + 206 _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_1013430EC();
              }

              v57 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109890;
                *&buf[4] = _atomicIncrementAssertCount;
                *&buf[8] = 2082;
                *&buf[10] = "[CRLFreehandDrawingToolFillAndLegacyStroke p_floodFillIfPossibleAtPoint:]";
                *&buf[18] = 2082;
                *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m";
                *&buf[28] = 1024;
                *&buf[30] = 956;
                _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The failed outline fill shouldn't still be hanging around here. It was deleted.", buf, 0x22u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101343114();
              }

              v58 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v80 = v29;
                v81 = v58;
                packedBacktraceString = [p_info + 206 packedBacktraceString];
                *buf = 67109378;
                *&buf[4] = _atomicIncrementAssertCount;
                *&buf[8] = 2114;
                *&buf[10] = packedBacktraceString;
                _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);

                v29 = v80;
              }

              v34 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_floodFillIfPossibleAtPoint:]"];
              v55 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
              [p_info + 206 handleFailureInFunction:v34 file:v55 lineNumber:956 isFatal:0 description:"The failed outline fill shouldn't still be hanging around here. It was deleted."];
              goto LABEL_82;
            }

            v30 = objc_opt_class();
            layoutController = [v22 layoutController];
            [layoutController layoutForInfo:v29];
            v33 = v32 = v29;
            v34 = sub_100014370(v30, v33);

            v113 = v26;
            if (!v34)
            {
              _atomicIncrementAssertCount2 = [p_info + 206 _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10134309C();
              }

              v29 = v32;
              v68 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110146;
                *&buf[4] = _atomicIncrementAssertCount2;
                *&buf[8] = 2082;
                *&buf[10] = "[CRLFreehandDrawingToolFillAndLegacyStroke p_floodFillIfPossibleAtPoint:]";
                *&buf[18] = 2082;
                *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m";
                *&buf[28] = 1024;
                *&buf[30] = 893;
                *&buf[34] = 2082;
                *&buf[36] = "shapeLayout";
                _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_1013430C4();
              }

              v69 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v83 = v69;
                packedBacktraceString2 = [p_info + 206 packedBacktraceString];
                *buf = 67109378;
                *&buf[4] = _atomicIncrementAssertCount2;
                *&buf[8] = 2114;
                *&buf[10] = packedBacktraceString2;
                _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);

                v29 = v32;
              }

              v55 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_floodFillIfPossibleAtPoint:]"];
              v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
              [p_info + 206 handleFailureInFunction:v55 file:v38 lineNumber:893 isFatal:0 description:{"invalid nil value for '%{public}s'", "shapeLayout"}];
              goto LABEL_68;
            }

            path = [v34 path];
            v110 = [path copy];

            v36 = [CRLFreehandDrawingToolFillAndLegacyStroke p_isFillValidToRecolorInShapeInfo:v32];
            v29 = v32;
            if ((v36 & 1) == 0)
            {
              maskPath = [v34 maskPath];

              if (maskPath)
              {
                v108 = v32;
                v38 = objc_alloc_init(NSMutableArray);
                pencilKitStrokes = [v34 pencilKitStrokes];
                v130 = 0u;
                v131 = 0u;
                v132 = 0u;
                v133 = 0u;
                v40 = [pencilKitStrokes countByEnumeratingWithState:&v130 objects:v144 count:16];
                if (v40)
                {
                  v41 = v40;
                  v42 = *v131;
                  do
                  {
                    for (i = 0; i != v41; i = i + 1)
                    {
                      if (*v131 != v42)
                      {
                        objc_enumerationMutation(pencilKitStrokes);
                      }

                      v44 = *(*(&v130 + 1) + 8 * i);
                      maskedPathRanges = [v44 maskedPathRanges];

                      if (maskedPathRanges)
                      {
                        v46 = [PKStroke crl_strokePathsExcludingNonMaskedPathRangesForPKStroke:v44];
                        [v38 addObjectsFromArray:v46];
                      }
                    }

                    v41 = [pencilKitStrokes countByEnumeratingWithState:&v130 objects:v144 count:16];
                  }

                  while (v41);
                }

                if ([v38 count])
                {
                  v128 = 0u;
                  v129 = 0u;
                  v126 = 0u;
                  v127 = 0u;
                  v47 = v38;
                  v48 = [v47 countByEnumeratingWithState:&v126 objects:v143 count:16];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *v127;
                    do
                    {
                      for (j = 0; j != v49; j = j + 1)
                      {
                        if (*v127 != v50)
                        {
                          objc_enumerationMutation(v47);
                        }

                        v52 = [CRLPKStrokePathConverter pathFromPKStrokePath:*(*(&v126 + 1) + 8 * j) pencilKitStrokePathData:0];
                        pureGeometryInRoot = [v34 pureGeometryInRoot];
                        v54 = pureGeometryInRoot;
                        if (pureGeometryInRoot)
                        {
                          [pureGeometryInRoot transform];
                        }

                        else
                        {
                          memset(buf, 0, 48);
                        }

                        [v52 transformUsingAffineTransform:buf];

                        [v115 insertObject:v52 atIndex:0];
                        [v114 setObject:v22 forKey:v52];
                      }

                      v49 = [v47 countByEnumeratingWithState:&v126 objects:v143 count:16];
                    }

                    while (v49);
                  }

                  shapeItem = v107;
                }

                p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
                v29 = v108;
                v55 = v110;
LABEL_68:

                v26 = v113;
                goto LABEL_82;
              }
            }

            v55 = v110;
            if (!v110)
            {
              _atomicIncrementAssertCount3 = [p_info + 206 _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10134304C();
              }

              v60 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110146;
                *&buf[4] = _atomicIncrementAssertCount3;
                *&buf[8] = 2082;
                *&buf[10] = "[CRLFreehandDrawingToolFillAndLegacyStroke p_floodFillIfPossibleAtPoint:]";
                *&buf[18] = 2082;
                *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m";
                *&buf[28] = 1024;
                *&buf[30] = 923;
                *&buf[34] = 2082;
                *&buf[36] = "shapePathInUnscaledSpace";
                _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101343074();
              }

              v61 = v29;
              v62 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v85 = v62;
                packedBacktraceString3 = [p_info + 206 packedBacktraceString];
                *buf = 67109378;
                *&buf[4] = _atomicIncrementAssertCount3;
                *&buf[8] = 2114;
                *&buf[10] = packedBacktraceString3;
                _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v63 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_floodFillIfPossibleAtPoint:]"];
              v64 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
              [p_info + 206 handleFailureInFunction:v63 file:v64 lineNumber:923 isFatal:0 description:{"invalid nil value for '%{public}s'", "shapePathInUnscaledSpace"}];

              v29 = v61;
              v55 = 0;
            }

            pureGeometryInRoot2 = [v34 pureGeometryInRoot];
            v66 = pureGeometryInRoot2;
            if (pureGeometryInRoot2)
            {
              [pureGeometryInRoot2 transform];
            }

            else
            {
              memset(buf, 0, 48);
            }

            [v55 transformUsingAffineTransform:buf];

            stroke = [v34 stroke];
            v71 = 0.0;
            if (stroke)
            {
              stroke3 = stroke;
              stroke2 = [v34 stroke];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
              }

              else
              {
                [v34 stroke];
                v75 = v74 = v29;
                isNullStroke = [v75 isNullStroke];

                v29 = v74;
                v55 = v110;

                if (isNullStroke)
                {
                  goto LABEL_76;
                }

                stroke3 = [v34 stroke];
                [stroke3 width];
                v71 = v77;
              }
            }

LABEL_76:
            [v55 setLineWidth:v71];
            if (v36)
            {
              p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
              if ([v55 containsPoint:{x, y}])
              {
                pathByNormalizingClosedPathToRemoveSelfIntersections = [v55 pathByNormalizingClosedPathToRemoveSelfIntersections];

                v79 = 1;
                v55 = pathByNormalizingClosedPathToRemoveSelfIntersections;
              }

              else
              {
                v79 = 0;
              }
            }

            else
            {
              v79 = 0;
              p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
            }

            v26 = v113;
            [v115 insertObject:v55 atIndex:0];
            [v114 setObject:v22 forKey:v55];
            if (v79)
            {

              reverseObjectEnumerator = v102;
              goto LABEL_89;
            }

LABEL_82:

            v26 = v26 + 1;
          }

          while (v26 != v112);
          v112 = [obj countByEnumeratingWithState:&v134 objects:v145 count:16];
          if (v112)
          {
            continue;
          }

          break;
        }

LABEL_84:

        v21 = v101;
        reverseObjectEnumerator = v102;
        v19 = v100;
LABEL_85:
        v21 = v21 + 1;
      }

      while (v21 != v19);
      v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v138 objects:v146 count:16];
    }

    while (v19);
  }

LABEL_89:

  WeakRetained = objc_loadWeakRetained(&selfCopy->_pencilKitCanvasViewController);
  v88 = [WeakRetained rulerEdgePathInUnscaledSpaceForTopOfRuler:1];
  v89 = [v88 copy];

  if (v89)
  {
    [v115 addObject:v89];
  }

  v90 = objc_loadWeakRetained(&selfCopy->_pencilKitCanvasViewController);
  v91 = [v90 rulerEdgePathInUnscaledSpaceForTopOfRuler:0];
  v92 = [v91 copy];

  if (v92)
  {
    [v115 addObject:v92];
  }

  commandController = [v105 commandController];
  p_currentColorWithOpacity = [(CRLFreehandDrawingToolFillAndLegacyStroke *)selfCopy p_currentColorWithOpacity];
  currentGroupActionString = [commandController currentGroupActionString];
  p_floodFillSerialQueue = [(CRLFreehandDrawingToolFillAndLegacyStroke *)selfCopy p_floodFillSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100289338;
  block[3] = &unk_10184F688;
  v124 = x;
  v125 = y;
  v117 = v115;
  v118 = commandController;
  v119 = v114;
  v120 = v103;
  v121 = p_currentColorWithOpacity;
  v122 = currentGroupActionString;
  v123 = v105;
  v97 = v103;
  v98 = v114;
  v99 = v115;
  dispatch_async(p_floodFillSerialQueue, block);
}

+ (void)p_insertUnscaledFloodFillablePath:(id)path fromFillPoint:(CGPoint)point pathsUsedForFilling:(id)filling bezierPathToDrawingLayoutMap:(id)map candidateLayouts:(id)layouts currentColorWithOpacity:(id)opacity withUndoString:(id)string onICC:(id)self0
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  fillingCopy = filling;
  mapCopy = map;
  layoutsCopy = layouts;
  opacityCopy = opacity;
  stringCopy = string;
  cCopy = c;
  v115 = opacityCopy;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134313C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101343150();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013431E0();
    }

    v22 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v22);
    }

    v23 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingToolFillAndLegacyStroke p_insertUnscaledFloodFillablePath:fromFillPoint:pathsUsedForFilling:bezierPathToDrawingLayoutMap:candidateLayouts:currentColorWithOpacity:withUndoString:onICC:]");
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:1026 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v25 = [layoutsCopy crl_arrayOfObjectsPassingTest:&stru_10184F710];

  v118 = v25;
  if ([v25 count])
  {
    v114 = stringCopy;
    v26 = +[NSMutableSet set];
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v27 = fillingCopy;
    v28 = [v27 countByEnumeratingWithState:&v126 objects:v131 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v127;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v127 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [mapCopy objectForKeyedSubscript:*(*(&v126 + 1) + 8 * i)];
          if (v32)
          {
            [v26 addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v126 objects:v131 count:16];
      }

      while (v29);
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v33 = v118;
    v34 = [v33 countByEnumeratingWithState:&v122 objects:v130 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v123;
LABEL_23:
      v37 = 0;
      while (1)
      {
        if (*v123 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v122 + 1) + 8 * v37);
        if ([v26 containsObject:v38])
        {
          break;
        }

        if (v35 == ++v37)
        {
          v35 = [v33 countByEnumeratingWithState:&v122 objects:v130 count:16];
          if (v35)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }
      }

      v39 = v38;

      if (v39)
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_29:
    }

    v39 = [v33 objectAtIndexedSubscript:0];
LABEL_32:
    v40 = [cCopy hitRep:&stru_10184F730 passingTest:{x, y}];
    v112 = v40;
    if (v40)
    {
      v41 = objc_opt_class();
      info = [v40 info];
      v43 = sub_100013F00(v41, info);

      v44 = objc_opt_class();
      layout = [v40 layout];
      v46 = sub_100013F00(v44, layout);

      path = [v46 path];
      v48 = [path copy];

      pureGeometryInRoot = [v46 pureGeometryInRoot];
      v50 = pureGeometryInRoot;
      if (pureGeometryInRoot)
      {
        [pureGeometryInRoot transform];
      }

      else
      {
        memset(&v121, 0, sizeof(v121));
      }

      [v48 transformUsingAffineTransform:&v121];

      pathByNormalizingClosedPathToRemoveSelfIntersections = [v48 pathByNormalizingClosedPathToRemoveSelfIntersections];

      v40 = v43;
    }

    else
    {
      pathByNormalizingClosedPathToRemoveSelfIntersections = 0;
    }

    v116 = pathCopy;
    v51 = [CRLColorFill colorWithColor:opacityCopy];
    maxFilledShapeIndex = [v39 maxFilledShapeIndex];
    commandController = [cCopy commandController];
    [commandController openGroup];

    commandController2 = [cCopy commandController];
    [commandController2 setCurrentGroupActionString:v114];

    v109 = v39;
    v110 = fillingCopy;
    if (v40)
    {
      v54 = pathByNormalizingClosedPathToRemoveSelfIntersections;
      v111 = v40;
      if (!pathByNormalizingClosedPathToRemoveSelfIntersections)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101343208();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101343230();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013432CC();
        }

        v55 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v55);
        }

        v56 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingToolFillAndLegacyStroke p_insertUnscaledFloodFillablePath:fromFillPoint:pathsUsedForFilling:bezierPathToDrawingLayoutMap:candidateLayouts:currentColorWithOpacity:withUndoString:onICC:]");
        v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
        [CRLAssertionHandler handleFailureInFunction:v56 file:v57 lineNumber:1104 isFatal:0 description:"invalid nil value for '%{public}s'", "hitFilledShapePathInRoot"];

        v40 = v111;
        v54 = 0;
      }

      v106 = v51;
      v58 = v116;
      if ([v54 isVisuallyEqualToPath:v116 withThreshold:1.0])
      {

        v58 = 0;
      }

      v59 = objc_opt_class();
      fill = [v40 fill];
      v61 = sub_100013F00(v59, fill);

      v62 = [CRLColorFill colorWithColor:opacityCopy];
      v63 = v62;
      v116 = v58;
      if (!v58 && v61 && v62)
      {
        color = [v62 color];
        color2 = [v61 color];
        v66 = [color colorByCompositingSourceOverDestinationColor:color2];
        v67 = [CRLColorFill colorWithColor:v66];

        v68 = [[_TtC8Freeform17CRLCommandSetFill alloc] initWithShapeItem:v111 fill:v67];
        containingGroup = [v111 containingGroup];
        canvasEditor = [cCopy canvasEditor];
        v71 = [canvasEditor selectionPathWithInfo:containingGroup];

        v72 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v71 reverseSelectionPath:v71];
        commandController3 = [cCopy commandController];
        [commandController3 enqueueCommand:v68 withSelectionBehavior:v72];

        if (([v61 isEqual:v63] & 1) == 0)
        {
          freehandDrawingToolkit = [cCopy freehandDrawingToolkit];
          [v111 id];
          v104 = containingGroup;
          v75 = v68;
          v77 = v76 = v67;
          [freehandDrawingToolkit enqueueAnimationForObjectUUID:v77 animation:@"CRLFreehandDrawingToolkitAnimationNameFloodFill"];

          v67 = v76;
          v68 = v75;
          containingGroup = v104;
        }

        v39 = v109;
        fillingCopy = v110;
        opacityCopy = v115;
      }

      v40 = v111;
      v51 = v106;
    }

    v78 = v112;
    v79 = v116;
    if (v116)
    {
      v80 = [v116 copy];
      geometryInRoot = [v39 geometryInRoot];
      v82 = geometryInRoot;
      if (geometryInRoot)
      {
        [geometryInRoot transform];
      }

      else
      {
        memset(&v120, 0, sizeof(v120));
      }

      CGAffineTransformInvert(&v121, &v120);
      [v80 transformUsingAffineTransform:&v121];

      [v80 bounds];
      v84 = v83;
      v86 = v85;
      v87 = [CRLBezierPathSource pathSourceWithBezierPath:v80];
      v107 = v80;
      editingCoordinator = [cCopy editingCoordinator];
      boardItemFactory = [editingCoordinator boardItemFactory];

      v103 = boardItemFactory;
      v105 = v87;
      v90 = [boardItemFactory makeShapeItemForFreehandDrawingWithPathSource:v87 position:0 stroke:v51 fill:0 pencilKitStrokePathCompactData:0 maskPath:{v84, v86}];
      v91 = [_TtC8Freeform26CRLCommandInsertBoardItems alloc];
      freehandInfo = [v39 freehandInfo];
      v93 = [(CRLCommandInsertBoardItems *)v91 initWithParentContainer:freehandInfo boardItem:v90 index:maxFilledShapeIndex];

      freehandInfo2 = [v39 freehandInfo];
      canvasEditor2 = [cCopy canvasEditor];
      v96 = [canvasEditor2 selectionPathWithInfo:freehandInfo2];

      v97 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v96 reverseSelectionPath:v96];
      commandController4 = [cCopy commandController];
      [commandController4 enqueueCommand:v93 withSelectionBehavior:v97];

      if (!v40)
      {
        freehandDrawingToolkit2 = [cCopy freehandDrawingToolkit];
        [v90 id];
        v101 = v100 = v51;
        [freehandDrawingToolkit2 enqueueAnimationForObjectUUID:v101 animation:@"CRLFreehandDrawingToolkitAnimationNameFloodFill"];

        v51 = v100;
        v40 = 0;
      }

      v39 = v109;
      fillingCopy = v110;
      opacityCopy = v115;
      v79 = v116;
      v78 = v112;
    }

    commandController5 = [cCopy commandController];
    [commandController5 closeGroup];

    stringCopy = v114;
  }
}

+ (BOOL)p_isFillValidToRecolorInShapeInfo:(id)info
{
  infoCopy = info;
  fill = [infoCopy fill];
  if (fill)
  {
    fill2 = [infoCopy fill];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      fill3 = [infoCopy fill];
      v6 = [fill3 isClear] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)p_currentStroke
{
  v3 = +[CRLStroke stroke];
  toolType = self->_toolType;
  switch(toolType)
  {
    case 3uLL:
      v10 = [CRLBrushStroke alloc];
      v11 = &off_101852270;
      goto LABEL_7;
    case 2uLL:
      v10 = [CRLBrushStroke alloc];
      v11 = &off_101852268;
LABEL_7:
      v12 = *v11;
      p_currentColorWithOpacity = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_currentColorWithOpacity];
      [(CRLFreehandDrawingToolFillAndLegacyStroke *)self unscaledWidth];
      v15 = v14;
      v16 = +[CRLStrokePattern solidPattern];
      v9 = [(CRLBrushStroke *)v10 initWithName:v12 color:p_currentColorWithOpacity width:1 cap:0 join:v16 pattern:v15 miterLimit:1.0];

      goto LABEL_8;
    case 0uLL:
      p_currentColorWithOpacity2 = [(CRLFreehandDrawingToolFillAndLegacyStroke *)self p_currentColorWithOpacity];
      [(CRLFreehandDrawingToolFillAndLegacyStroke *)self unscaledWidth];
      v7 = v6;
      v8 = +[CRLStrokePattern solidPattern];
      v9 = [CRLStroke strokeWithColor:p_currentColorWithOpacity2 width:1 cap:1 join:v8 pattern:v7];

LABEL_8:
      v3 = v9;
      goto LABEL_18;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013432F4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101343308();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101343398();
  }

  v17 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v17);
  }

  v18 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolFillAndLegacyStroke p_currentStroke]"];
  v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolFillAndLegacyStroke.m"];
  [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:1167 isFatal:0 description:"Shouldn't be trying to get the stroke on this tool type."];

LABEL_18:

  return v3;
}

- (id)p_currentColorWithOpacity
{
  v3 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v3 freehandDrawingToolkit];
  colorForCurrentTool = [freehandDrawingToolkit colorForCurrentTool];
  [(CRLFreehandDrawingToolFillAndLegacyStroke *)self opacity];
  v6 = [colorForCurrentTool colorWithAlphaComponent:?];

  return v6;
}

@end