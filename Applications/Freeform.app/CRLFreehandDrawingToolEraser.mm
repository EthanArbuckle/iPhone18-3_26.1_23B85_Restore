@interface CRLFreehandDrawingToolEraser
- (BOOL)finalizeAndResetWithSuccess:(BOOL)success;
- (CGRect)p_drawPath:(id)path inContext:(CGContext *)context drawingCommittedImageBehind:(BOOL)behind additionalAlreadyOutsetUnscaledDirtyRect:(CGRect)rect;
- (CGRect)unscaledRectForMaskImageForErasing;
- (CGSize)p_maskImageSize;
- (CRLFreehandDrawingToolEraser)initWithInteractiveCanvasController:(id)controller scaledWidthForSlicingEraser:(double)eraser wholeObject:(BOOL)object;
- (NSArray)decoratorOverlayRenderables;
- (double)currentScaledEraserDiameter;
- (double)p_unscaledEraserDiameter;
- (id)maskImageForErasing;
- (id)p_copyOfPathCreatorPathCommittingAllAvailablePoints:(id)points optionallyAdditionallyCommittingIntoAdditionalPath:(id)path;
- (int64_t)p_breakApartFilledShapeIfPossible:(id)possible withDesiredGeometry:(id)geometry bezierPath:(id)path previousZOrderOffset:(int64_t)offset;
- (int64_t)p_breakApartOpenShapeIfPossible:(id)possible withDesiredGeometry:(id)geometry bezierPath:(id)path strokePatternOffsetArray:(id)array previousZOrderOffset:(int64_t)offset;
- (int64_t)p_breakApartShape:(id)shape withGeometry:(id)geometry subpaths:(id)subpaths strokePatternOffsetArray:(id)array previousZOrderOffset:(int64_t)offset;
- (void)doWorkBeforeCanvasLayout;
- (void)p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser;
- (void)p_updateFillMaskImage;
- (void)p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing;
- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint;
- (void)setScaledWidthForSlicingEraser:(double)eraser;
- (void)setWholeObjectEraser:(BOOL)eraser;
- (void)updatePencilKitToolIfAppropriateFor:(id)for;
@end

@implementation CRLFreehandDrawingToolEraser

- (CRLFreehandDrawingToolEraser)initWithInteractiveCanvasController:(id)controller scaledWidthForSlicingEraser:(double)eraser wholeObject:(BOOL)object
{
  v9.receiver = self;
  v9.super_class = CRLFreehandDrawingToolEraser;
  result = [(CRLFreehandDrawingTool *)&v9 initWithInteractiveCanvasController:controller];
  if (result)
  {
    result->_currentUnscaledEraserPoint = xmmword_1014629F0;
    result->_scaledWidthForSlicingEraser = eraser;
    result->_wholeObjectEraser = object;
    size = CGRectNull.size;
    result->_lastDirtyRectForUncommittedFillMask.origin = CGRectNull.origin;
    result->_lastDirtyRectForUncommittedFillMask.size = size;
  }

  return result;
}

- (void)setScaledWidthForSlicingEraser:(double)eraser
{
  if (self->_wholeObjectEraser)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101385390();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013853A4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138542C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser setScaledWidthForSlicingEraser:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:119 isFatal:0 description:"Shouldn't be trying to set the width of a whole object eraser."];
  }

  self->_scaledWidthForSlicingEraser = eraser;
  v8 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v8 freehandDrawingToolkit];

  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  [toolkitUIState setCurrentToolWidth:eraser];

  [freehandDrawingToolkit containedToolDidSetWidth:self];
}

- (void)setWholeObjectEraser:(BOOL)eraser
{
  eraserCopy = eraser;
  self->_wholeObjectEraser = eraser;
  v6 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v6 freehandDrawingToolkit];
  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  [toolkitUIState setEraserToolErasesWholeObjects:eraserCopy];
}

- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint
{
  finalPointCopy = finalPoint;
  initialPointCopy = initialPoint;
  pointCopy = point;
  v120.receiver = self;
  v120.super_class = CRLFreehandDrawingToolEraser;
  [(CRLFreehandDrawingTool *)&v120 performActionWithInputPoint:pointCopy isInitialPoint:initialPointCopy isFinalPoint:finalPointCopy];
  v9 = [(CRLFreehandDrawingTool *)self icc];
  [v9 viewScale];
  v11 = v10;
  [pointCopy unscaledPoint];
  self->_currentUnscaledEraserPoint.x = v12;
  self->_currentUnscaledEraserPoint.y = v13;
  if (initialPointCopy)
  {
    v96 = initialPointCopy;
    [v9 addDecorator:self];
    v14 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v15 = +[NSMutableArray array];
    allHitTesterPathsZOrdered = self->_allHitTesterPathsZOrdered;
    self->_allHitTesterPathsZOrdered = v15;

    v17 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
    shapeLayoutsForHitTesterPaths = self->_shapeLayoutsForHitTesterPaths;
    self->_shapeLayoutsForHitTesterPaths = v17;

    v19 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
    currentPathsForHitTesterPaths = self->_currentPathsForHitTesterPaths;
    self->_currentPathsForHitTesterPaths = v19;

    v21 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
    patternOffsetsBySubpathForHitTesterPaths = self->_patternOffsetsBySubpathForHitTesterPaths;
    self->_patternOffsetsBySubpathForHitTesterPaths = v21;

    v23 = [NSHashTable hashTableWithOptions:512];
    hitTesterPathsNeedingFinalizationAtEnd = self->_hitTesterPathsNeedingFinalizationAtEnd;
    self->_hitTesterPathsNeedingFinalizationAtEnd = v23;

    v25 = ceil(10.0 / fmin(v11, 1.0));
    v26 = [[CRLBezierHitTester alloc] initWithBucketSize:v25];
    strokeHitTester = self->_strokeHitTester;
    self->_strokeHitTester = v26;

    v28 = [[CRLBezierHitTester alloc] initWithBucketSize:v25];
    fillHitTester = self->_fillHitTester;
    self->_fillHitTester = v28;

    [v9 visibleUnscaledRect];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = +[CRLBezierPath bezierPath];
    unscaledStrokeEraserPathToCommit = self->_unscaledStrokeEraserPathToCommit;
    self->_unscaledStrokeEraserPathToCommit = v38;

    v40 = +[CRLBezierPath bezierPath];
    unscaledFillEraserPathToCommit = self->_unscaledFillEraserPathToCommit;
    self->_unscaledFillEraserPathToCommit = v40;

    v97 = pointCopy;
    [pointCopy unscaledPoint];
    [(CRLFreehandDrawingTool *)self possibleFreehandDrawingLayoutsInParentContainerAtPoint:?];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = v119 = 0u;
    v100 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
    if (v100)
    {
      v99 = *v117;
      v103 = v9;
      do
      {
        v42 = 0;
        do
        {
          if (*v117 != v99)
          {
            objc_enumerationMutation(obj);
          }

          v102 = v42;
          v43 = *(*(&v116 + 1) + 8 * v42);
          v44 = objc_opt_class();
          info = [v43 info];
          v46 = sub_100014370(v44, info);

          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v101 = v46;
          childInfos = [v46 childInfos];
          v107 = [childInfos countByEnumeratingWithState:&v112 objects:v128 count:16];
          if (v107)
          {
            v106 = *v113;
            do
            {
              v47 = 0;
              do
              {
                if (*v113 != v106)
                {
                  objc_enumerationMutation(childInfos);
                }

                v48 = *(*(&v112 + 1) + 8 * v47);
                v49 = objc_opt_class();
                v50 = [v9 layoutForInfo:v48];
                v51 = sub_100014370(v49, v50);

                if (v51)
                {
                  pathSource = [v51 pathSource];
                  bezierPath = [pathSource bezierPath];

                  [v51 pureTransformInRoot];
                  [bezierPath transformUsingAffineTransform:buf];
                  shapeInfo = [v51 shapeInfo];
                  isTreatedAsFillForFreehandDrawing = [shapeInfo isTreatedAsFillForFreehandDrawing];

                  if (isTreatedAsFillForFreehandDrawing)
                  {
                    [(CRLBezierHitTester *)self->_fillHitTester addPath:bezierPath filled:1 clippedToRect:v31, v33, v35, v37];
                  }

                  else
                  {
                    [bezierPath convertCloseElementsToLineElements];
                    stroke = [v51 stroke];
                    [stroke width];
                    v58 = v57;

                    v130.origin.x = v31;
                    v130.origin.y = v33;
                    v130.size.width = v35;
                    v130.size.height = v37;
                    v131 = CGRectInset(v130, -v58, -v58);
                    [(CRLBezierHitTester *)self->_strokeHitTester addPath:bezierPath filled:0 clippedToRect:v131.origin.x, v131.origin.y, v131.size.width, v131.size.height];
                    if (v58 > self->_widthOfThickestStrokePossiblyBeingErased)
                    {
                      self->_widthOfThickestStrokePossiblyBeingErased = v58;
                    }
                  }

                  [(NSMutableArray *)self->_allHitTesterPathsZOrdered addObject:bezierPath];
                  [(NSMapTable *)self->_shapeLayoutsForHitTesterPaths setObject:v51 forKeyedSubscript:bezierPath];
                  [(NSMapTable *)self->_currentPathsForHitTesterPaths setObject:bezierPath forKeyedSubscript:bezierPath];
                  v59 = objc_opt_class();
                  stroke2 = [v51 stroke];
                  v61 = sub_100014370(v59, stroke2);

                  if (v61)
                  {
                    shapeInfo2 = [v51 shapeInfo];
                    [shapeInfo2 strokePatternOffsetDistance];
                    v63 = [NSNumber numberWithDouble:?];

                    array = [v14[423] array];
                    if ([bezierPath elementCount])
                    {
                      v65 = 0;
                      do
                      {
                        if (![bezierPath elementAtIndex:v65])
                        {
                          [array addObject:v63];
                        }

                        ++v65;
                      }

                      while (v65 < [bezierPath elementCount]);
                    }

                    [v63 floatValue];
                    if (v66 != 0.0 && [array count] >= 2)
                    {
                      v104 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                      if (qword_101AD5A10 != -1)
                      {
                        sub_101385454();
                      }

                      v67 = off_1019EDA68;
                      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67109890;
                        *&buf[4] = v104;
                        *&buf[8] = 2082;
                        *&buf[10] = "[CRLFreehandDrawingToolEraser performActionWithInputPoint:isInitialPoint:isFinalPoint:]";
                        *&buf[18] = 2082;
                        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
                        *&buf[28] = 1024;
                        *&buf[30] = 208;
                        _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We don't expect a nonzero patternOffsetDistance and mutliple subpaths.", buf, 0x22u);
                      }

                      if (qword_101AD5A10 != -1)
                      {
                        sub_10138547C();
                      }

                      v68 = off_1019EDA68;
                      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                      {
                        v71 = v68;
                        v72 = +[CRLAssertionHandler packedBacktraceString];
                        *buf = 67109378;
                        *&buf[4] = v104;
                        *&buf[8] = 2114;
                        *&buf[10] = v72;
                        _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                      }

                      v69 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser performActionWithInputPoint:isInitialPoint:isFinalPoint:]"];
                      v70 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
                      [CRLAssertionHandler handleFailureInFunction:v69 file:v70 lineNumber:208 isFatal:0 description:"We don't expect a nonzero patternOffsetDistance and mutliple subpaths."];

                      v9 = v103;
                      v14 = &_s10Foundation9IndexPathVSHAAMc_ptr;
                    }

                    [(NSMapTable *)self->_patternOffsetsBySubpathForHitTesterPaths setObject:array forKeyedSubscript:bezierPath];
                  }
                }

                v47 = v47 + 1;
              }

              while (v47 != v107);
              v107 = [childInfos countByEnumeratingWithState:&v112 objects:v128 count:16];
            }

            while (v107);
          }

          v42 = v102 + 1;
        }

        while ((v102 + 1) != v100);
        v100 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
      }

      while (v100);
    }

    v73 = [[CRLFreehandDrawingPathCreator alloc] initWithPencilKitSmoothing:0];
    strokePathCreator = self->_strokePathCreator;
    self->_strokePathCreator = v73;

    pointCopy = v97;
    -[CRLFreehandDrawingPathCreator beginDrawingWithViewScale:inputType:](self->_strokePathCreator, "beginDrawingWithViewScale:inputType:", [v97 inputType], v11);
    v75 = objc_alloc_init(CRLFreehandDrawingPathCreator);
    fillPathCreator = self->_fillPathCreator;
    self->_fillPathCreator = v75;

    -[CRLFreehandDrawingPathCreator beginDrawingWithViewScale:inputType:](self->_fillPathCreator, "beginDrawingWithViewScale:inputType:", [v97 inputType], v11);
    LOBYTE(initialPointCopy) = v96;
  }

  if ([(CRLFreehandDrawingPathCreator *)self->_strokePathCreator inputPointCount]>= 0x64)
  {
    handoffToNewPathCreator = [(CRLFreehandDrawingPathCreator *)self->_strokePathCreator handoffToNewPathCreator];
    v78 = self->_strokePathCreator;
    self->_strokePathCreator = handoffToNewPathCreator;
  }

  if (initialPointCopy || ([pointCopy wasAddedByTouchesEnded] & 1) == 0)
  {
    v79 = self->_strokePathCreator;
    [pointCopy unscaledPoint];
    v81 = v80;
    v83 = v82;
    [pointCopy time];
    -[CRLFreehandDrawingPathCreator drawToPoint:atTime:predicted:](v79, "drawToPoint:atTime:predicted:", [pointCopy isPredicted], v81, v83, v84);
    v85 = self->_fillPathCreator;
    [pointCopy unscaledPoint];
    v87 = v86;
    v89 = v88;
    [pointCopy time];
    -[CRLFreehandDrawingPathCreator drawToPoint:atTime:predicted:](v85, "drawToPoint:atTime:predicted:", [pointCopy isPredicted], v87, v89, v90);
  }

  [(CRLFreehandDrawingToolEraser *)self p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing];
  if ([pointCopy inputType] == 2 && (objc_msgSend(pointCopy, "wasAddedByTouchesEnded") & 1) == 0)
  {
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    memset(buf, 0, sizeof(buf));
    v91 = [(CRLFreehandDrawingTool *)self icc];
    freehandDrawingToolkit = [v91 freehandDrawingToolkit];
    v93 = freehandDrawingToolkit;
    if (pointCopy)
    {
      [pointCopy PKInputPoint];
      if (v93)
      {
LABEL_50:
        [v93 inputPointInPKCanvasViewFromUnscaledSpace:v110];
LABEL_53:

        v94 = [(CRLFreehandDrawingTool *)self icc];
        freehandDrawingToolkit2 = [v94 freehandDrawingToolkit];
        v108[6] = v125;
        v108[7] = v126;
        v109 = v127;
        v108[2] = *&buf[32];
        v108[3] = v122;
        v108[4] = v123;
        v108[5] = v124;
        v108[0] = *buf;
        v108[1] = *&buf[16];
        [freehandDrawingToolkit2 updatePencilShadowWithInputPoint:v108];

        goto LABEL_54;
      }
    }

    else
    {
      v111 = 0;
      memset(v110, 0, sizeof(v110));
      if (freehandDrawingToolkit)
      {
        goto LABEL_50;
      }
    }

    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
    memset(buf, 0, sizeof(buf));
    goto LABEL_53;
  }

LABEL_54:
  [v9 invalidateLayersForDecorator:self];
}

- (void)doWorkBeforeCanvasLayout
{
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingToolEraser;
  [(CRLFreehandDrawingTool *)&v4 doWorkBeforeCanvasLayout];
  if (![(CRLFreehandDrawingToolEraser *)self isWholeObjectEraser]&& (self->_currentUnscaledEraserPoint.x != INFINITY || self->_currentUnscaledEraserPoint.y != INFINITY))
  {
    if ([(CRLBezierHitTester *)self->_strokeHitTester pathCount])
    {
      [(CRLFreehandDrawingToolEraser *)self p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser];
    }

    if ([(CRLBezierHitTester *)self->_fillHitTester pathCount])
    {
      [(CRLFreehandDrawingToolEraser *)self p_updateFillMaskImage];
    }
  }
}

- (BOOL)finalizeAndResetWithSuccess:(BOOL)success
{
  selfCopy = self;
  v138.receiver = self;
  v138.super_class = CRLFreehandDrawingToolEraser;
  LODWORD(v4) = [(CRLFreehandDrawingTool *)&v138 finalizeAndResetWithSuccess:success];
  v114 = [(CRLFreehandDrawingTool *)selfCopy icc];
  [(CRLFreehandDrawingPathCreator *)selfCopy->_strokePathCreator endDrawing];
  [(CRLFreehandDrawingPathCreator *)selfCopy->_fillPathCreator endDrawing];
  v5 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  v6 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  if (!v4)
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v22 = selfCopy->_hitTesterPathsNeedingFinalizationAtEnd;
    v23 = [(NSHashTable *)v22 countByEnumeratingWithState:&v126 objects:v139 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v127;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v127 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(NSMapTable *)selfCopy->_shapeLayoutsForHitTesterPaths objectForKeyedSubscript:*(*(&v126 + 1) + 8 * i)];
          [v27 endDynamicOperation];
        }

        v24 = [(NSHashTable *)v22 countByEnumeratingWithState:&v126 objects:v139 count:16];
      }

      while (v24);
    }

    goto LABEL_63;
  }

  [(CRLFreehandDrawingToolEraser *)selfCopy p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing];
  if (![(CRLFreehandDrawingToolEraser *)selfCopy isWholeObjectEraser])
  {
    [(CRLFreehandDrawingToolEraser *)selfCopy p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser];
  }

  v7 = [(NSMutableArray *)selfCopy->_allHitTesterPathsZOrdered crl_arrayWithObjectsInHashTable:selfCopy->_hitTesterPathsNeedingFinalizationAtEnd];
  v8 = [NSHashTable hashTableWithOptions:512];
  v9 = [(CRLFreehandDrawingTool *)selfCopy icc];
  editingCoordinator = [v9 editingCoordinator];
  commandController = [editingCoordinator commandController];

  [commandController openGroup];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Erase" value:0 table:@"UndoStrings"];
  v113 = commandController;
  [commandController setCurrentGroupActionString:v13];

  v125 = v8;
  v112 = v4;
  if (![(CRLFreehandDrawingToolEraser *)selfCopy isWholeObjectEraser])
  {
    obj = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v111 = v7;
    v115 = v7;
    v120 = [v115 countByEnumeratingWithState:&v130 objects:v142 count:16];
    strokedCopy = 0;
    if (!v120)
    {
      goto LABEL_57;
    }

    v118 = *v131;
    p_isa = &selfCopy->super.super.isa;
    while (1)
    {
      v28 = 0;
      do
      {
        if (*v131 != v118)
        {
          objc_enumerationMutation(v115);
        }

        v29 = *(*(&v130 + 1) + 8 * v28);
        v30 = [*(&selfCopy->super.super.isa + v5[767]) objectForKeyedSubscript:v29];
        shapeInfo = [v30 shapeInfo];
        isTreatedAsFillForFreehandDrawing = [shapeInfo isTreatedAsFillForFreehandDrawing];

        if (isTreatedAsFillForFreehandDrawing)
        {
          if (!strokedCopy)
          {
            copyOfEntirePath = [(CRLFreehandDrawingPathCreator *)selfCopy->_fillPathCreator copyOfEntirePath];
            [(CRLFreehandDrawingToolEraser *)selfCopy p_unscaledEraserDiameter];
            [copyOfEntirePath setLineWidth:?];
            [copyOfEntirePath setLineCapStyle:1];
            [copyOfEntirePath setLineJoinStyle:1];
            strokedCopy = [copyOfEntirePath strokedCopy];
          }

          v34 = objc_opt_class();
          v35 = [v114 repForLayout:v30];
          shapeInfo3 = sub_100014370(v34, v35);

          [shapeInfo3 setFreehandDrawingDynamicFillErasingDelegate:0];
          v116 = v29;
          v37 = [(NSMapTable *)selfCopy->_currentPathsForHitTesterPaths objectForKeyedSubscript:v29];
          v141[0] = v37;
          v123 = strokedCopy;
          v141[1] = strokedCopy;
          v38 = [NSArray arrayWithObjects:v141 count:2];
          v39 = [CRLBezierPath subtractBezierPaths:v38];

          if (!v39)
          {
            v40 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013854A4();
            }

            v41 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v140.a) = 67110146;
              HIDWORD(v140.a) = v40;
              LOWORD(v140.b) = 2082;
              *(&v140.b + 2) = "[CRLFreehandDrawingToolEraser finalizeAndResetWithSuccess:]";
              WORD1(v140.c) = 2082;
              *(&v140.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
              WORD2(v140.d) = 1024;
              *(&v140.d + 6) = 337;
              WORD1(v140.tx) = 2082;
              *(&v140.tx + 4) = "pathWithErasure";
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &v140, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013854CC();
            }

            v42 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v75 = v42;
              v76 = +[CRLAssertionHandler packedBacktraceString];
              LODWORD(v140.a) = 67109378;
              HIDWORD(v140.a) = v40;
              LOWORD(v140.b) = 2114;
              *(&v140.b + 2) = v76;
              _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v140, 0x12u);
            }

            v43 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser finalizeAndResetWithSuccess:]"];
            v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:337 isFatal:0 description:"invalid nil value for '%{public}s'", "pathWithErasure"];

            v5 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
            v8 = v125;
          }

          if (![v39 containsElementsOtherThanMoveAndClose])
          {
            [v30 endDynamicOperation];
            shapeInfo2 = [v30 shapeInfo];
            [v8 addObject:shapeInfo2];

            strokedCopy = v123;
            goto LABEL_55;
          }

          v45 = [v39 copy];
          [v45 bounds];
          v47 = v46;
          v49 = v48;
          CGAffineTransformMakeTranslation(&v140, -v46, -v48);
          [v45 transformUsingAffineTransform:&v140];
          v50 = [CRLBezierPathSource pathSourceWithBezierPath:v45];
          [v30 dynamicallySetBezierPathSource:v50 atUnscaledOrigin:{v47, v49}];
        }

        else
        {
          if ([v30 isInvisible])
          {
            [v30 endDynamicOperation];
            shapeInfo3 = [v30 shapeInfo];
            [v8 addObject:shapeInfo3];
            goto LABEL_55;
          }

          v116 = v29;
          v123 = strokedCopy;
        }

        pathSource = [v30 pathSource];
        finalInfoGeometryForResize = [v30 finalInfoGeometryForResize];
        [v30 endDynamicOperation];
        shapeInfo4 = [v30 shapeInfo];
        v122 = pathSource;
        v55 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:shapeInfo4 pathSource:pathSource];
        [v113 enqueueCommand:v55];
        v56 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:shapeInfo4 geometry:finalInfoGeometryForResize];
        [v113 enqueueCommand:v56];
        parentInfo = [shapeInfo4 parentInfo];
        v58 = objc_opt_class();
        v64 = sub_100303920(parentInfo, v58, 1, v59, v60, v61, v62, v63, &OBJC_PROTOCOL___CRLCanvasElementInfo);

        if (v64 && ([obj objectForKeyedSubscript:v64], (v65 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v66 = v65;
          integerValue = [v65 integerValue];
        }

        else
        {
          integerValue = 0;
        }

        shapeInfo5 = [v30 shapeInfo];
        isTreatedAsFillForFreehandDrawing2 = [shapeInfo5 isTreatedAsFillForFreehandDrawing];

        if (isTreatedAsFillForFreehandDrawing2)
        {
          bezierPath = [v122 bezierPath];
          v71 = [p_isa p_breakApartFilledShapeIfPossible:shapeInfo4 withDesiredGeometry:finalInfoGeometryForResize bezierPath:bezierPath previousZOrderOffset:integerValue];
        }

        else
        {
          bezierPath = [p_isa[14] objectForKeyedSubscript:v116];
          [v122 bezierPath];
          v117 = v56;
          v73 = v72 = v55;
          v71 = [p_isa p_breakApartOpenShapeIfPossible:shapeInfo4 withDesiredGeometry:finalInfoGeometryForResize bezierPath:v73 strokePatternOffsetArray:bezierPath previousZOrderOffset:integerValue];

          v55 = v72;
          v56 = v117;
        }

        if (v64)
        {
          v74 = [NSNumber numberWithInteger:&integerValue[v71]];
          [obj setObject:v74 forKeyedSubscript:v64];
        }

        selfCopy = p_isa;
        v5 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
        strokedCopy = v123;
        v8 = v125;
        shapeInfo3 = v122;
LABEL_55:

        v28 = v28 + 1;
      }

      while (v120 != v28);
      v120 = [v115 countByEnumeratingWithState:&v130 objects:v142 count:16];
      if (!v120)
      {
LABEL_57:

        v6 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
        v7 = v111;
        goto LABEL_59;
      }
    }
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v134 objects:v143 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = v7;
    v17 = *v135;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v135 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [(NSMapTable *)selfCopy->_shapeLayoutsForHitTesterPaths objectForKeyedSubscript:*(*(&v134 + 1) + 8 * j)];
        [v19 endDynamicOperation];
        shapeInfo6 = [v19 shapeInfo];
        [v125 addObject:shapeInfo6];
      }

      v15 = [obj countByEnumeratingWithState:&v134 objects:v143 count:16];
    }

    while (v15);
    strokedCopy = 0;
    v7 = v16;
    v8 = v125;
  }

  else
  {
    strokedCopy = 0;
  }

LABEL_59:
  v124 = strokedCopy;

  if ([v8 count])
  {
    setRepresentation = [v8 setRepresentation];
    v78 = [(CRLFreehandDrawingTool *)selfCopy icc];
    [v78 canvasEditor];
    v80 = v79 = v7;
    canvasEditorHelper = [v80 canvasEditorHelper];
    [canvasEditorHelper selectionBehaviorForDeletingBoardItems:setRepresentation];
    v83 = v82 = v8;

    [v83 setSelectionFlags:{objc_msgSend(v83, "selectionFlags") & 0xFFFFFFFFFFFFFFFBLL}];
    canvasEditor = [v114 canvasEditor];
    canvasEditorHelper2 = [canvasEditor canvasEditorHelper];
    v86 = [canvasEditorHelper2 commandForDeletingInfosPossiblyFromMultipleContainers:setRepresentation shouldRemoveEmptyContainers:1];

    v7 = v79;
    v4 = v113;
    [v113 enqueueCommand:v86 withSelectionBehavior:v83];

    v87 = 0;
  }

  else
  {
    v88 = [(CRLFreehandDrawingTool *)selfCopy icc];
    [v88 editorController];
    v89 = v82 = v8;
    setRepresentation = [v89 selectionPath];

    v87 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:setRepresentation reverseSelectionPath:setRepresentation];
    v4 = v113;
  }

  v90 = [(CRLFreehandDrawingTool *)selfCopy icc];
  pkDrawingProvider = [v90 pkDrawingProvider];
  [pkDrawingProvider activeDrawingWillEndAfterInsertingFinalizedDrawingItem];

  [v4 closeGroupWithSelectionBehavior:v87];
  v22 = v124;
  LOBYTE(v4) = v112;
LABEL_63:

  v92 = [(CRLFreehandDrawingTool *)selfCopy icc];
  [v92 removeDecorator:selfCopy];

  selfCopy->_currentUnscaledEraserPoint = xmmword_1014629F0;
  strokePathCreator = selfCopy->_strokePathCreator;
  selfCopy->_strokePathCreator = 0;

  fillPathCreator = selfCopy->_fillPathCreator;
  selfCopy->_fillPathCreator = 0;

  strokeHitTester = selfCopy->_strokeHitTester;
  selfCopy->_strokeHitTester = 0;

  fillHitTester = selfCopy->_fillHitTester;
  selfCopy->_fillHitTester = 0;

  v97 = v6[766];
  v98 = *(&selfCopy->super.super.isa + v97);
  *(&selfCopy->super.super.isa + v97) = 0;

  v99 = v5[767];
  v100 = *(&selfCopy->super.super.isa + v99);
  *(&selfCopy->super.super.isa + v99) = 0;

  currentPathsForHitTesterPaths = selfCopy->_currentPathsForHitTesterPaths;
  selfCopy->_currentPathsForHitTesterPaths = 0;

  hitTesterPathsNeedingFinalizationAtEnd = selfCopy->_hitTesterPathsNeedingFinalizationAtEnd;
  selfCopy->_hitTesterPathsNeedingFinalizationAtEnd = 0;

  selfCopy->_widthOfThickestStrokePossiblyBeingErased = 0.0;
  fillMaskImageForErasing = selfCopy->_fillMaskImageForErasing;
  selfCopy->_fillMaskImageForErasing = 0;

  unscaledStrokeEraserPathToCommit = selfCopy->_unscaledStrokeEraserPathToCommit;
  selfCopy->_unscaledStrokeEraserPathToCommit = 0;

  unscaledFillEraserPathToCommit = selfCopy->_unscaledFillEraserPathToCommit;
  selfCopy->_unscaledFillEraserPathToCommit = 0;

  committedFillEraserPathCtx = selfCopy->_committedFillEraserPathCtx;
  if (committedFillEraserPathCtx)
  {
    CGContextRelease(committedFillEraserPathCtx);
    selfCopy->_committedFillEraserPathCtx = 0;
  }

  fillEraserPathCtx = selfCopy->_fillEraserPathCtx;
  if (fillEraserPathCtx)
  {
    CGContextRelease(fillEraserPathCtx);
    selfCopy->_fillEraserPathCtx = 0;
  }

  committedFillMaskImageForErasingPositionedInVisibleCanvasRect = selfCopy->_committedFillMaskImageForErasingPositionedInVisibleCanvasRect;
  if (committedFillMaskImageForErasingPositionedInVisibleCanvasRect)
  {
    CGImageRelease(committedFillMaskImageForErasingPositionedInVisibleCanvasRect);
    selfCopy->_committedFillMaskImageForErasingPositionedInVisibleCanvasRect = 0;
  }

  size = CGRectNull.size;
  selfCopy->_lastDirtyRectForUncommittedFillMask.origin = CGRectNull.origin;
  selfCopy->_lastDirtyRectForUncommittedFillMask.size = size;

  return v4;
}

- (void)updatePencilKitToolIfAppropriateFor:(id)for
{
  forCopy = for;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v5 freehandDrawingToolkit];
  toolkitUIState = [freehandDrawingToolkit toolkitUIState];
  v11 = [toolkitUIState strokeWidthsForFreehandDrawingToolType:{-[CRLFreehandDrawingToolEraser type](self, "type")}];

  v8 = [PKEraserTool alloc];
  lastObject = [v11 lastObject];
  [lastObject crl_CGFloatValue];
  v10 = [v8 initWithEraserType:2 width:?];

  [forCopy setTool:v10];
}

- (NSArray)decoratorOverlayRenderables
{
  p_currentUnscaledEraserPoint = &self->_currentUnscaledEraserPoint;
  if (self->_currentUnscaledEraserPoint.x == INFINITY && self->_currentUnscaledEraserPoint.y == INFINITY)
  {
    v26 = &__NSArray0__struct;
  }

  else
  {
    [(CRLFreehandDrawingToolEraser *)self p_unscaledEraserDiameter];
    v6 = v5;
    v7 = +[CRLCanvasShapeRenderable renderable];
    v8 = [(CRLFreehandDrawingTool *)self icc];
    [v7 setDelegate:v8];

    [v7 setLineWidth:1.0];
    [v7 setFillColor:0];
    v9 = +[_TtC8Freeform26CRLiOSPencilDecoratorStyle defaultOutlineColor];
    [v7 setStrokeColor:{objc_msgSend(v9, "CGColor")}];

    v10 = sub_10011EC70(p_currentUnscaledEraserPoint->x, p_currentUnscaledEraserPoint->y, v6);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CRLFreehandDrawingTool *)self icc];
    [v17 viewScale];
    v19 = v18;
    v20 = [(CRLFreehandDrawingTool *)self icc];
    [v20 viewScale];
    CGAffineTransformMakeScale(&v45, v19, v21);
    v47.origin.x = v10;
    v47.origin.y = v12;
    v47.size.width = v14;
    v47.size.height = v16;
    v48 = CGRectApplyAffineTransform(v47, &v45);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;

    [v7 setFrame:{x, y, width, height}];
    if ([(CRLFreehandDrawingToolEraser *)self isWholeObjectEraser])
    {
      [v7 setPath:0];
    }

    else
    {
      v27 = sub_10011ECB4();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = [(CRLFreehandDrawingTool *)self icc];
      [v34 viewScale];
      v36 = v35;
      v37 = [(CRLFreehandDrawingTool *)self icc];
      [v37 viewScale];
      CGAffineTransformMakeScale(&v45, v36, v38);
      v49.origin.x = v27;
      v49.origin.y = v29;
      v49.size.width = v31;
      v49.size.height = v33;
      v50 = CGRectApplyAffineTransform(v49, &v45);
      v39 = v50.origin.x;
      v40 = v50.origin.y;
      v41 = v50.size.width;
      v42 = v50.size.height;

      v43 = [CRLBezierPath bezierPathWithOvalInRect:v39, v40, v41, v42];
      [v7 setPath:{objc_msgSend(v43, "CGPath")}];
    }

    v26 = [&__NSArray0__struct arrayByAddingObject:v7];
  }

  return v26;
}

- (CGRect)unscaledRectForMaskImageForErasing
{
  v2 = [(CRLFreehandDrawingTool *)self icc];
  canvasView = [v2 canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  canvasView2 = [v2 canvasView];
  canvasLayer = [canvasView2 canvasLayer];

  canvasView3 = [v2 canvasView];
  enclosingScrollView2 = [canvasView3 enclosingScrollView];
  layer = [enclosingScrollView2 layer];

  [enclosingScrollView bounds];
  [layer convertRect:canvasLayer toLayer:?];
  [v2 convertBoundsToUnscaledRect:?];
  v19 = CGRectIntegral(v18);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)maskImageForErasing
{
  fillMaskImageForErasing = self->_fillMaskImageForErasing;
  if (!fillMaskImageForErasing)
  {
    [(CRLFreehandDrawingToolEraser *)self p_updateFillMaskImage];
    fillMaskImageForErasing = self->_fillMaskImageForErasing;
  }

  return fillMaskImageForErasing;
}

- (double)currentScaledEraserDiameter
{
  if ([(CRLFreehandDrawingToolEraser *)self isWholeObjectEraser])
  {
    return 16.0;
  }

  [(CRLFreehandDrawingToolEraser *)self scaledWidthForSlicingEraser];
  return result;
}

- (double)p_unscaledEraserDiameter
{
  [(CRLFreehandDrawingToolEraser *)self currentScaledEraserDiameter];
  v4 = v3;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  [v5 viewScale];
  v7 = v4 / v6;

  return v7;
}

- (id)p_copyOfPathCreatorPathCommittingAllAvailablePoints:(id)points optionallyAdditionallyCommittingIntoAdditionalPath:(id)path
{
  pointsCopy = points;
  pathCopy = path;
  if (![pointsCopy pointCountAvailableToCommit])
  {
    copyOfUncommittedPath = [pointsCopy copyOfUncommittedPath];
    if (copyOfUncommittedPath)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  copyOfUncommittedPath = [pointsCopy commitAllAvailablePoints];
  if (pathCopy)
  {
    [pathCopy appendBezierPath:copyOfUncommittedPath skippingInitialMoveIfPossible:1];
  }

  copyOfUncommittedPath2 = [pointsCopy copyOfUncommittedPath];
  [copyOfUncommittedPath appendBezierPath:copyOfUncommittedPath2 skippingInitialMoveIfPossible:1];

  if (!copyOfUncommittedPath)
  {
LABEL_7:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013854F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101385508();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385590();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_copyOfPathCreatorPathCommittingAllAvailablePoints:optionallyAdditionallyCommittingIntoAdditionalPath:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:579 isFatal:0 description:"Path creator should always provide some kind of path."];

    copyOfUncommittedPath = +[CRLBezierPath bezierPath];
  }

LABEL_16:
  [(CRLFreehandDrawingToolEraser *)self p_unscaledEraserDiameter];
  [copyOfUncommittedPath setLineWidth:?];
  [copyOfUncommittedPath setLineCapStyle:1];
  [copyOfUncommittedPath setLineJoinStyle:1];

  return copyOfUncommittedPath;
}

- (void)p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser
{
  selfCopy = self;
  if ([(CRLFreehandDrawingToolEraser *)self isWholeObjectEraser])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013855B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013855CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385654();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:591 isFatal:0 description:"This method should only be called for slicing erasers."];
  }

  [(CRLFreehandDrawingToolEraser *)selfCopy p_unscaledEraserDiameter];
  v7 = v6;
  widthOfThickestStrokePossiblyBeingErased = selfCopy->_widthOfThickestStrokePossiblyBeingErased;
  if ([(CRLBezierPath *)selfCopy->_unscaledStrokeEraserPathToCommit containsElementsOtherThanMoveAndClose])
  {
    v9 = [(CRLBezierHitTester *)selfCopy->_strokeHitTester wrappedAllHitsAlongPath:selfCopy->_unscaledStrokeEraserPathToCommit withSearchThreshold:(v7 + widthOfThickestStrokePossiblyBeingErased) * 0.5];
    v10 = +[CRLBezierPath bezierPath];
    unscaledStrokeEraserPathToCommit = selfCopy->_unscaledStrokeEraserPathToCommit;
    selfCopy->_unscaledStrokeEraserPathToCommit = v10;

    v74 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v9;
    v75 = selfCopy;
    v72 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
    if (v72)
    {
      v12 = *v95;
      v70 = *v95;
      do
      {
        for (i = 0; i != v72; i = i + 1)
        {
          if (*v95 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v94 + 1) + 8 * i);
          currentPathsForHitTesterPaths = selfCopy->_currentPathsForHitTesterPaths;
          hitPath = [v14 hitPath];
          v17 = [(NSMapTable *)currentPathsForHitTesterPaths objectForKeyedSubscript:hitPath];

          if (v17)
          {
            shapeLayoutsForHitTesterPaths = selfCopy->_shapeLayoutsForHitTesterPaths;
            hitPath2 = [v14 hitPath];
            v20 = [(NSMapTable *)shapeLayoutsForHitTesterPaths objectForKeyedSubscript:hitPath2];

            stroke = [v20 stroke];
            v22 = 0.0;
            if (stroke && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && [stroke cap])
            {
              [stroke width];
              v22 = v23;
              v24 = 0;
            }

            else
            {
              v24 = 1;
            }

            [stroke width];
            v26 = v25;
            if (v14)
            {
              [v14 hitInfo];
              v27 = v93;
            }

            else
            {
              v93 = 0.0;
              v91 = 0u;
              v92 = 0u;
              v27 = 0.0;
              v90 = 0u;
            }

            if (v27 < (v7 + v26) * 0.5)
            {
              patternOffsetsBySubpathForHitTesterPaths = selfCopy->_patternOffsetsBySubpathForHitTesterPaths;
              hitPath3 = [v14 hitPath];
              v30 = [(NSMapTable *)patternOffsetsBySubpathForHitTesterPaths objectForKeyedSubscript:hitPath3];
              v31 = [v30 mutableCopy];

              if (v14)
              {
                [v14 hitInfo];
                v32 = *(&v86 + 1);
                v33 = *&v86;
              }

              else
              {
                v89 = 0;
                v87 = 0u;
                v88 = 0u;
                v32 = 0.0;
                v33 = 0.0;
                v86 = 0u;
              }

              v80[0] = _NSConcreteStackBlock;
              v80[1] = 3221225472;
              v80[2] = sub_1004E090C;
              v80[3] = &unk_101869760;
              v83 = v7;
              v34 = stroke;
              v85 = v24;
              v81 = v34;
              v82 = v14;
              v84 = v7 + v22;
              [v34 width];
              v36 = [v17 pathByCreatingHoleInPathAtPoint:v80 withDiameter:v31 andThreshold:v33 updatingPatternOffsetsBySubpath:{v32, (v7 + v35) * 0.5}];
              if (v36)
              {
                hitPath4 = [v14 hitPath];
                [v74 setObject:v36 forKeyedSubscript:hitPath4];

                v38 = v75->_currentPathsForHitTesterPaths;
                hitPath5 = [v14 hitPath];
                [(NSMapTable *)v38 setObject:v36 forKeyedSubscript:hitPath5];

                v40 = v75->_patternOffsetsBySubpathForHitTesterPaths;
                hitPath6 = [v14 hitPath];
                [(NSMapTable *)v40 setObject:v31 forKeyedSubscript:hitPath6];
              }

              selfCopy = v75;
              v12 = v70;
            }
          }
        }

        v72 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
      }

      while (v72);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    crl_allKeys = [v74 crl_allKeys];
    v42 = [crl_allKeys countByEnumeratingWithState:&v76 objects:v99 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v77;
      do
      {
        v45 = 0;
        do
        {
          if (*v77 != v44)
          {
            objc_enumerationMutation(crl_allKeys);
          }

          v46 = *(*(&v76 + 1) + 8 * v45);
          v47 = [(NSMapTable *)selfCopy->_shapeLayoutsForHitTesterPaths objectForKeyedSubscript:v46];
          if (!v47)
          {
            v48 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138567C();
            }

            v49 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v98.a) = 67110146;
              HIDWORD(v98.a) = v48;
              LOWORD(v98.b) = 2082;
              *(&v98.b + 2) = "[CRLFreehandDrawingToolEraser p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser]";
              WORD1(v98.c) = 2082;
              *(&v98.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
              WORD2(v98.d) = 1024;
              *(&v98.d + 6) = 683;
              WORD1(v98.tx) = 2082;
              *(&v98.tx + 4) = "currentShapeLayout";
              _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &v98, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013856A4();
            }

            selfCopy = v75;
            v50 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v66 = v50;
              v67 = +[CRLAssertionHandler packedBacktraceString];
              LODWORD(v98.a) = 67109378;
              HIDWORD(v98.a) = v48;
              LOWORD(v98.b) = 2114;
              *(&v98.b + 2) = v67;
              _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v98, 0x12u);
            }

            v51 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser]"];
            v52 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v51 file:v52 lineNumber:683 isFatal:0 description:"invalid nil value for '%{public}s'", "currentShapeLayout"];
          }

          v53 = [v74 objectForKeyedSubscript:v46];
          if (!v53)
          {
            v54 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013856CC();
            }

            v55 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v98.a) = 67110146;
              HIDWORD(v98.a) = v54;
              LOWORD(v98.b) = 2082;
              *(&v98.b + 2) = "[CRLFreehandDrawingToolEraser p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser]";
              WORD1(v98.c) = 2082;
              *(&v98.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
              WORD2(v98.d) = 1024;
              *(&v98.d + 6) = 686;
              WORD1(v98.tx) = 2082;
              *(&v98.tx + 4) = "unscaledUpdatedPath";
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &v98, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013856F4();
            }

            v56 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v68 = v56;
              v69 = +[CRLAssertionHandler packedBacktraceString];
              LODWORD(v98.a) = 67109378;
              HIDWORD(v98.a) = v54;
              LOWORD(v98.b) = 2114;
              *(&v98.b + 2) = v69;
              _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v98, 0x12u);
            }

            v57 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_sliceAndDynamicallyUpdateStrokePathsForSlicingEraser]"];
            v58 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v57 file:v58 lineNumber:686 isFatal:0 description:"invalid nil value for '%{public}s'", "unscaledUpdatedPath"];

            selfCopy = v75;
          }

          if (![(NSHashTable *)selfCopy->_hitTesterPathsNeedingFinalizationAtEnd containsObject:v46])
          {
            [(NSHashTable *)selfCopy->_hitTesterPathsNeedingFinalizationAtEnd addObject:v46];
            [v47 beginDynamicOperationWithRealTimeCommands:0];
          }

          if ([v53 containsElementsOtherThanMoveAndClose])
          {
            v59 = [v53 copy];
            [v59 bounds];
            v61 = v60;
            v63 = v62;
            CGAffineTransformMakeTranslation(&v98, -v60, -v62);
            [v59 transformUsingAffineTransform:&v98];
            v64 = [CRLBezierPathSource pathSourceWithBezierPath:v59];
            v65 = [(NSMapTable *)v75->_patternOffsetsBySubpathForHitTesterPaths objectForKeyedSubscript:v46];
            [v47 dynamicallySetBezierPathSource:v64 atUnscaledOrigin:v65 withPatternOffsetsBySubpath:{v61, v63}];

            selfCopy = v75;
          }

          else
          {
            [v47 dynamicallyMakeShapeInvisible];
            [(CRLBezierHitTester *)selfCopy->_strokeHitTester removePath:v46];
          }

          v45 = v45 + 1;
        }

        while (v43 != v45);
        v43 = [crl_allKeys countByEnumeratingWithState:&v76 objects:v99 count:16];
      }

      while (v43);
    }
  }
}

- (CGRect)p_drawPath:(id)path inContext:(CGContext *)context drawingCommittedImageBehind:(BOOL)behind additionalAlreadyOutsetUnscaledDirtyRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  CGContextSaveGState(context);
  [(CRLFreehandDrawingToolEraser *)self p_unscaledEraserDiameter];
  v15 = v14 * 0.5 + 2.5;
  [pathCopy bounds];
  v48 = CGRectInset(v47, -v15, -v15);
  v42 = v48.origin.y;
  v43 = v48.origin.x;
  v40 = v48.size.height;
  v41 = v48.size.width;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v49 = CGRectUnion(v48, v57);
  v16 = v49.origin.x;
  v17 = v49.origin.y;
  v18 = v49.size.width;
  v19 = v49.size.height;
  [(CRLFreehandDrawingToolEraser *)self p_maskImageSize];
  v20 = sub_10011ECB4();
  v22 = v21;
  v24 = v23;
  [(CRLFreehandDrawingToolEraser *)self unscaledRectForMaskImageForErasing];
  v26 = v25;
  v28 = v27;
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeScale(&v46, v22 / v29, v24 / v30);
  v44 = v46;
  CGAffineTransformTranslate(&transform, &v44, -v26, -v28);
  v46 = transform;
  if (behind)
  {
    CGContextSaveGState(context);
    transform = v46;
    v50.origin.x = v16;
    v50.origin.y = v17;
    v50.size.width = v18;
    v50.size.height = v19;
    v51 = CGRectApplyAffineTransform(v50, &transform);
    v52 = CGRectIntegral(v51);
    CGContextClipToRect(context, v52);
    [(CRLFreehandDrawingToolEraser *)self p_maskImageSize];
    v53.origin.x = sub_10011ECB4();
    v31 = v53.origin.x;
    v32 = v53.origin.y;
    v33 = v53.size.width;
    v34 = v53.size.height;
    CGContextClearRect(context, v53);
    v54.origin.x = v31;
    v54.origin.y = v32;
    v54.size.width = v33;
    v54.size.height = v34;
    CGContextDrawImage(context, v54, self->_committedFillMaskImageForErasingPositionedInVisibleCanvasRect);
    CGContextRestoreGState(context);
  }

  transform = v46;
  CGContextConcatCTM(context, &transform);
  v55.origin.x = v16;
  v55.origin.y = v17;
  v55.size.width = v18;
  v55.size.height = v19;
  CGContextClipToRect(context, v55);
  CGContextSetBlendMode(context, kCGBlendModeDestinationOut);
  CGContextSetGrayStrokeColor(context, 0.0, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  [(CRLFreehandDrawingToolEraser *)self p_unscaledEraserDiameter];
  CGContextSetLineWidth(context, v35);
  CGContextAddPath(context, [pathCopy CGPath]);
  CGContextStrokePath(context);
  CGContextRestoreGState(context);

  v37 = v42;
  v36 = v43;
  v39 = v40;
  v38 = v41;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGSize)p_maskImageSize
{
  v3 = [(CRLFreehandDrawingTool *)self icc];
  canvas = [v3 canvas];
  [canvas contentsScale];
  v6 = v5;
  canvas2 = [v3 canvas];
  [canvas2 viewScale];
  v9 = v6 * v8;

  [(CRLFreehandDrawingToolEraser *)self unscaledRectForMaskImageForErasing];
  v12 = sub_10011F340(v10, v11, v9);
  v13 = sub_10012211C(v12);
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)p_updateFillMaskImage
{
  if (!self->_committedFillEraserPathCtx)
  {
    [(CRLFreehandDrawingToolEraser *)self p_maskImageSize];
    v5 = sub_10050DF80(2, v3, v4);
    self->_committedFillEraserPathCtx = v5;
    CGContextSaveGState(v5);
    CGContextSetBlendMode(self->_committedFillEraserPathCtx, kCGBlendModeNormal);
    CGContextSetGrayFillColor(self->_committedFillEraserPathCtx, 0.0, 1.0);
    committedFillEraserPathCtx = self->_committedFillEraserPathCtx;
    v32.origin.x = sub_10011ECB4();
    CGContextFillRect(committedFillEraserPathCtx, v32);
    CGContextRestoreGState(self->_committedFillEraserPathCtx);
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([(CRLBezierPath *)self->_unscaledFillEraserPathToCommit elementCount]< 0x65)
  {
    p_committedFillMaskImageForErasingPositionedInVisibleCanvasRect = &self->_committedFillMaskImageForErasingPositionedInVisibleCanvasRect;
    if (self->_committedFillMaskImageForErasingPositionedInVisibleCanvasRect)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [(CRLFreehandDrawingToolEraser *)self p_drawPath:self->_unscaledFillEraserPathToCommit inContext:self->_committedFillEraserPathCtx drawingCommittedImageBehind:0 additionalAlreadyOutsetUnscaledDirtyRect:CGRectNull.origin.x, y, width, height];
    x = v11;
    y = v12;
    width = v13;
    height = v14;
    v15 = +[CRLBezierPath bezierPath];
    unscaledFillEraserPathToCommit = self->_unscaledFillEraserPathToCommit;
    self->_unscaledFillEraserPathToCommit = v15;

    p_committedFillMaskImageForErasingPositionedInVisibleCanvasRect = &self->_committedFillMaskImageForErasingPositionedInVisibleCanvasRect;
    committedFillMaskImageForErasingPositionedInVisibleCanvasRect = self->_committedFillMaskImageForErasingPositionedInVisibleCanvasRect;
    if (committedFillMaskImageForErasingPositionedInVisibleCanvasRect)
    {
      CGImageRelease(committedFillMaskImageForErasingPositionedInVisibleCanvasRect);
      *p_committedFillMaskImageForErasingPositionedInVisibleCanvasRect = 0;
    }
  }

  *p_committedFillMaskImageForErasingPositionedInVisibleCanvasRect = CGBitmapContextCreateImage(self->_committedFillEraserPathCtx);
LABEL_8:
  if (!self->_fillEraserPathCtx)
  {
    [(CRLFreehandDrawingToolEraser *)self p_maskImageSize];
    v21 = sub_10050DF80(2, v19, v20);
    self->_fillEraserPathCtx = v21;
    v33.origin.x = sub_10011ECB4();
    CGContextDrawImage(v21, v33, *p_committedFillMaskImageForErasingPositionedInVisibleCanvasRect);
  }

  v30 = [(CRLBezierPath *)self->_unscaledFillEraserPathToCommit copy];
  copyOfUncommittedPath = [(CRLFreehandDrawingPathCreator *)self->_fillPathCreator copyOfUncommittedPath];
  [v30 appendBezierPath:copyOfUncommittedPath skippingInitialMoveIfPossible:1];

  if ([v30 containsElementsOtherThanMoveAndClose])
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v34 = CGRectUnion(self->_lastDirtyRectForUncommittedFillMask, v35);
    [(CRLFreehandDrawingToolEraser *)self p_drawPath:v30 inContext:self->_fillEraserPathCtx drawingCommittedImageBehind:1 additionalAlreadyOutsetUnscaledDirtyRect:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    self->_lastDirtyRectForUncommittedFillMask.origin.x = v23;
    self->_lastDirtyRectForUncommittedFillMask.origin.y = v24;
    self->_lastDirtyRectForUncommittedFillMask.size.width = v25;
    self->_lastDirtyRectForUncommittedFillMask.size.height = v26;
  }

  Image = CGBitmapContextCreateImage(self->_fillEraserPathCtx);
  v28 = [CRLImage imageWithCGImage:Image];
  fillMaskImageForErasing = self->_fillMaskImageForErasing;
  self->_fillMaskImageForErasing = v28;

  CGImageRelease(Image);
}

- (void)p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing
{
  v3 = [(CRLFreehandDrawingTool *)self icc];
  [(CRLFreehandDrawingToolEraser *)self p_unscaledEraserDiameter];
  v5 = v4;
  isWholeObjectEraser = [(CRLFreehandDrawingToolEraser *)self isWholeObjectEraser];
  strokePathCreator = self->_strokePathCreator;
  if (isWholeObjectEraser)
  {
    v8 = [(CRLFreehandDrawingToolEraser *)self p_copyOfPathCreatorPathCommittingAllAvailablePoints:strokePathCreator optionallyAdditionallyCommittingIntoAdditionalPath:0];
    v9 = [(CRLFreehandDrawingToolEraser *)self p_copyOfPathCreatorPathCommittingAllAvailablePoints:self->_fillPathCreator optionallyAdditionallyCommittingIntoAdditionalPath:0];
    v10 = v5 * 0.5;
    v120 = v8;
    v11 = [(CRLBezierHitTester *)self->_strokeHitTester pathsCrossingPath:v8 withSearchThreshold:v10];
    v119 = v9;
    v12 = [(CRLBezierHitTester *)self->_fillHitTester pathsCrossingPath:v9 withSearchThreshold:v10];
    v13 = [NSHashTable hashTableWithOptions:512];
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    obj = v11;
    v14 = [obj countByEnumeratingWithState:&v144 objects:v162 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v145;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v145 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v144 + 1) + 8 * i);
          [(CRLBezierHitTester *)self->_strokeHitTester removePath:v18];
          [v13 addObject:v18];
        }

        v15 = [obj countByEnumeratingWithState:&v144 objects:v162 count:16];
      }

      while (v15);
    }

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v140 objects:v161 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v141;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v141 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v140 + 1) + 8 * j);
          [(CRLBezierHitTester *)self->_fillHitTester removePath:v24];
          [v13 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v140 objects:v161 count:16];
      }

      while (v21);
    }

    v117 = v19;

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v123 = v13;
    v25 = [v123 countByEnumeratingWithState:&v136 objects:v160 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v137;
      do
      {
        v28 = 0;
        do
        {
          if (*v137 != v27)
          {
            objc_enumerationMutation(v123);
          }

          v29 = *(*(&v136 + 1) + 8 * v28);
          if ([(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd containsObject:v29])
          {
            v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013857BC();
            }

            v31 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v151 = v30;
              v152 = 2082;
              v153 = "[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]";
              v154 = 2082;
              v155 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
              v156 = 1024;
              v157 = 845;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not be trying to delete a whole path that has already been deleted.", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013857E4();
            }

            v32 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v44 = v32;
              v45 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v151 = v30;
              v152 = 2114;
              v153 = v45;
              _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v33 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]"];
            v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:845 isFatal:0 description:"Should not be trying to delete a whole path that has already been deleted."];
          }

          v35 = [(NSMapTable *)self->_shapeLayoutsForHitTesterPaths objectForKeyedSubscript:v29];
          [(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd addObject:v29];
          [v35 beginDynamicOperationWithRealTimeCommands:0];
          [v35 dynamicallyMakeShapeInvisible];
          v36 = objc_opt_class();
          v37 = [v3 repForLayout:v35];
          v38 = sub_100013F00(v36, v37);

          if (v38)
          {
            [v38 setNeedsDisplay];
          }

          else
          {
            v39 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138580C();
            }

            v40 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v151 = v39;
              v152 = 2082;
              v153 = "[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]";
              v154 = 2082;
              v155 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
              v156 = 1024;
              v157 = 853;
              v158 = 2082;
              v159 = "currentShapeRep";
              _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101385834();
            }

            v41 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v46 = v41;
              v47 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v151 = v39;
              v152 = 2114;
              v153 = v47;
              _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v42 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]"];
            v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v42 file:v43 lineNumber:853 isFatal:0 description:"invalid nil value for '%{public}s'", "currentShapeRep"];
          }

          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [v123 countByEnumeratingWithState:&v136 objects:v160 count:16];
      }

      while (v26);
    }

    v48 = v123;

    v49 = v117;
  }

  else
  {
    v50 = [(CRLFreehandDrawingToolEraser *)self p_copyOfPathCreatorPathCommittingAllAvailablePoints:strokePathCreator optionallyAdditionallyCommittingIntoAdditionalPath:self->_unscaledStrokeEraserPathToCommit];
    v51 = [(CRLFreehandDrawingToolEraser *)self p_copyOfPathCreatorPathCommittingAllAvailablePoints:self->_fillPathCreator optionallyAdditionallyCommittingIntoAdditionalPath:self->_unscaledFillEraserPathToCommit];
    v124 = (v5 + self->_widthOfThickestStrokePossiblyBeingErased) * 0.5;
    [(CRLFreehandDrawingPathCreator *)self->_strokePathCreator takeDirtyRect];
    obja = v5;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    [(CRLFreehandDrawingToolEraser *)self p_unscaledEraserDiameter];
    v61 = -(v60 * 0.5 + 7.5);
    v163.origin.x = v53;
    v163.origin.y = v55;
    v163.size.width = v57;
    v163.size.height = v59;
    v164 = CGRectInset(v163, v61, v61);
    x = v164.origin.x;
    y = v164.origin.y;
    width = v164.size.width;
    height = v164.size.height;
    [(CRLFreehandDrawingPathCreator *)self->_fillPathCreator takeDirtyRect];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    [(CRLFreehandDrawingToolEraser *)self p_unscaledEraserDiameter];
    v75 = -(v74 * 0.5 + 2.5);
    v165.origin.x = v67;
    v165.origin.y = v69;
    v165.size.width = v71;
    v165.size.height = v73;
    v166 = CGRectInset(v165, v75, v75);
    v121 = v166.origin.x;
    v118 = v166.origin.y;
    v76 = v166.size.width;
    v77 = v166.size.height;
    v120 = v50;
    v78 = [(CRLBezierHitTester *)self->_strokeHitTester pathsCrossingPath:v50 withSearchThreshold:v124];
    v119 = v51;
    v122 = [(CRLBezierHitTester *)self->_fillHitTester pathsCrossingPath:v51 withSearchThreshold:obja * 0.5];
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    obj = v78;
    v79 = [obj countByEnumeratingWithState:&v132 objects:v149 count:16];
    v80 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    if (v79)
    {
      v81 = v79;
      v82 = *v133;
      do
      {
        v83 = 0;
        do
        {
          if (*v133 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v84 = *(*(&v132 + 1) + 8 * v83);
          v85 = [(NSMapTable *)self->_shapeLayoutsForHitTesterPaths objectForKeyedSubscript:v84];
          if (![(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd containsObject:v84])
          {
            [(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd addObject:v84];
            [v85 beginDynamicOperationWithRealTimeCommands:0];
          }

          v86 = objc_opt_class();
          v87 = [v3 repForLayout:v85];
          v88 = sub_100013F00(v86, v87);

          if (v88)
          {
            stroke = [v85 stroke];
            [stroke width];
            v91 = v90;

            v167.origin.x = x;
            v167.origin.y = y;
            v167.size.width = width;
            v167.size.height = height;
            v168 = CGRectInset(v167, v91 * -1.41421354, v91 * -1.41421354);
            [v88 convertNaturalRectFromUnscaledCanvas:{v168.origin.x, v168.origin.y, v168.size.width, v168.size.height}];
            [v88 setNeedsDisplayInRect:?];
            [v3 invalidateContentLayersForRep:v88];
          }

          else
          {
            v92 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138571C();
            }

            v93 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v151 = v92;
              v152 = 2082;
              v153 = "[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]";
              v154 = 2082;
              v155 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
              v156 = 1024;
              v157 = 890;
              v158 = 2082;
              v159 = "currentShapeRep";
              _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101385744();
            }

            v94 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v97 = v94;
              v98 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v151 = v92;
              v152 = 2114;
              v153 = v98;
              _os_log_error_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v95 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]"];
            v96 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v95 file:v96 lineNumber:890 isFatal:0 description:"invalid nil value for '%{public}s'", "currentShapeRep"];

            v80 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
          }

          v83 = v83 + 1;
        }

        while (v81 != v83);
        v81 = [obj countByEnumeratingWithState:&v132 objects:v149 count:16];
      }

      while (v81);
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v48 = v122;
    v99 = [v48 countByEnumeratingWithState:&v128 objects:v148 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v129;
      v125 = v3;
      do
      {
        v102 = 0;
        do
        {
          if (*v129 != v101)
          {
            objc_enumerationMutation(v48);
          }

          v103 = *(*(&v128 + 1) + 8 * v102);
          v104 = [*(&self->super.super.isa + v80[767]) objectForKeyedSubscript:v103];
          if (![(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd containsObject:v103])
          {
            [(NSHashTable *)self->_hitTesterPathsNeedingFinalizationAtEnd addObject:v103];
            [v104 beginDynamicOperationWithRealTimeCommands:0];
          }

          v105 = objc_opt_class();
          v106 = [v3 repForLayout:v104];
          v107 = sub_100013F00(v105, v106);

          if (v107)
          {
            freehandDrawingDynamicFillErasingDelegate = [v107 freehandDrawingDynamicFillErasingDelegate];

            if (!freehandDrawingDynamicFillErasingDelegate)
            {
              [v107 setFreehandDrawingDynamicFillErasingDelegate:self];
            }

            [v107 convertNaturalRectFromUnscaledCanvas:{v121, v118, v76, v77}];
            [v107 setNeedsDisplayInRect:?];
            [v3 invalidateContentLayersForRep:v107];
          }

          else
          {
            v109 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138576C();
            }

            v110 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v151 = v109;
              v152 = 2082;
              v153 = "[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]";
              v154 = 2082;
              v155 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
              v156 = 1024;
              v157 = 914;
              v158 = 2082;
              v159 = "currentShapeRep";
              _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101385794();
            }

            v111 = v48;
            v112 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v115 = v112;
              v116 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v151 = v109;
              v152 = 2114;
              v153 = v116;
              _os_log_error_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v113 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_updatePathsFromPathCreatorsHidingShapesForWholeObjectAndDirtyingRectsForSlicing]"];
            v114 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
            [CRLAssertionHandler handleFailureInFunction:v113 file:v114 lineNumber:914 isFatal:0 description:"invalid nil value for '%{public}s'", "currentShapeRep"];

            v48 = v111;
            v3 = v125;
            v80 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
          }

          v102 = v102 + 1;
        }

        while (v100 != v102);
        v100 = [v48 countByEnumeratingWithState:&v128 objects:v148 count:16];
      }

      while (v100);
    }

    v49 = v48;
  }
}

- (int64_t)p_breakApartShape:(id)shape withGeometry:(id)geometry subpaths:(id)subpaths strokePatternOffsetArray:(id)array previousZOrderOffset:(int64_t)offset
{
  shapeCopy = shape;
  geometryCopy = geometry;
  subpathsCopy = subpaths;
  arrayCopy = array;
  v55 = [(CRLFreehandDrawingTool *)self icc];
  editingCoordinator = [v55 editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];

  v56 = geometryCopy;
  if (arrayCopy)
  {
    v16 = [arrayCopy count];
    if (v16 == [subpathsCopy count])
    {
      v57 = arrayCopy;
    }

    else
    {
      v17 = arrayCopy;
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138585C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101385870();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013858F8();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_breakApartShape:withGeometry:subpaths:strokePatternOffsetArray:previousZOrderOffset:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:937 isFatal:0 description:"strokePatternOffsetArray must have the same count as the number of provided subpaths (if it's provided)"];

      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [subpathsCopy count]);
  if ([subpathsCopy count])
  {
    v22 = 0;
    do
    {
      v23 = [subpathsCopy objectAtIndexedSubscript:v22];
      v24 = objc_opt_class();
      v25 = [boardItemFactory makeDuplicateOfBoardItem:shapeCopy];
      v26 = sub_100013F00(v24, v25);

      [v23 bounds];
      v27 = [geometryCopy geometryWithNewBounds:?];
      [v26 setGeometry:v27];

      v28 = [CRLBezierPathSource pathSourceWithBezierPath:v23];
      [v26 setPathSource:v28];

      [v26 setAspectRatioLocked:{objc_msgSend(shapeCopy, "aspectRatioLocked")}];
      v29 = objc_opt_class();
      stroke = [shapeCopy stroke];
      v31 = sub_100014370(v29, stroke);

      if (v31)
      {
        if (v57)
        {
          v32 = [v57 objectAtIndexedSubscript:v22];
          [v32 crl_CGFloatValue];
          v34 = v33;

          [v26 setStrokePatternOffsetDistance:v34];
        }

        else
        {
          v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101385920();
          }

          v36 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v60 = v35;
            v61 = 2082;
            v62 = "[CRLFreehandDrawingToolEraser p_breakApartShape:withGeometry:subpaths:strokePatternOffsetArray:previousZOrderOffset:]";
            v63 = 2082;
            v64 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m";
            v65 = 1024;
            v66 = 959;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Must have a strokePatternOffsetArray if we are erasing a brush stroke.", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101385948();
          }

          v37 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v52 = CRLAssertionHandler;
            log = v37;
            v40 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v60 = v35;
            v61 = 2114;
            v62 = v40;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v38 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolEraser p_breakApartShape:withGeometry:subpaths:strokePatternOffsetArray:previousZOrderOffset:]", v52];
          v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolEraser.m"];
          [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:959 isFatal:0 description:"Must have a strokePatternOffsetArray if we are erasing a brush stroke."];

          geometryCopy = v56;
        }
      }

      [v21 addObject:v26];

      ++v22;
    }

    while (v22 < [subpathsCopy count]);
  }

  v41 = objc_opt_class();
  parentInfo = [shapeCopy parentInfo];
  v43 = sub_100013F00(v41, parentInfo);

  childInfos = [v43 childInfos];
  v45 = [childInfos indexOfObject:shapeCopy];

  v46 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v43 boardItems:v21 index:&v45[offset]];
  commandController = [v55 commandController];
  [commandController enqueueCommand:v46];

  v48 = [[_TtC8Freeform26CRLCommandDeleteBoardItems alloc] initWithBoardItemToDelete:shapeCopy];
  commandController2 = [v55 commandController];
  [commandController2 enqueueCommand:v48];

  v50 = [v21 count];
  return v50 - 1;
}

- (int64_t)p_breakApartOpenShapeIfPossible:(id)possible withDesiredGeometry:(id)geometry bezierPath:(id)path strokePatternOffsetArray:(id)array previousZOrderOffset:(int64_t)offset
{
  possibleCopy = possible;
  geometryCopy = geometry;
  arrayCopy = array;
  v15 = [path arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:1];
  v16 = [v15 count];
  if (arrayCopy || v16 >= 2)
  {
    v17 = [(CRLFreehandDrawingToolEraser *)self p_breakApartShape:possibleCopy withGeometry:geometryCopy subpaths:v15 strokePatternOffsetArray:arrayCopy previousZOrderOffset:offset];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (int64_t)p_breakApartFilledShapeIfPossible:(id)possible withDesiredGeometry:(id)geometry bezierPath:(id)path previousZOrderOffset:(int64_t)offset
{
  possibleCopy = possible;
  geometryCopy = geometry;
  visuallyDistinctSubregions = [path visuallyDistinctSubregions];
  if ([visuallyDistinctSubregions count] >= 2)
  {
    v13 = [(CRLFreehandDrawingToolEraser *)self p_breakApartShape:possibleCopy withGeometry:geometryCopy subpaths:visuallyDistinctSubregions strokePatternOffsetArray:0 previousZOrderOffset:offset];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end