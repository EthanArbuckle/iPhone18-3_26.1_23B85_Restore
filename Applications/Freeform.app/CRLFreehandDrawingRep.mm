@interface CRLFreehandDrawingRep
+ (BOOL)requestingTechnologyShouldProvideAdditionalContext:(id)context;
- (BOOL)accessibilityActivate;
- (BOOL)crlaxNeedsEditRotorMenu;
- (BOOL)directlyManagesLayerContent;
- (BOOL)drawsDescendantsIntoLayer;
- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (BOOL)handledDirectTouchForDrawingModePencilOnlyAtPoint:(CGPoint)point;
- (BOOL)handledLassoTapAtPoint:(CGPoint)point withInputType:(int64_t)type;
- (BOOL)intersectsUnscaledRect:(CGRect)rect;
- (BOOL)manuallyControlsMiniFormatter;
- (BOOL)p_handledTapAtPoint:(CGPoint)point;
- (BOOL)p_hasMathResultViews;
- (BOOL)p_shouldAllowSetNeedsDisplay;
- (BOOL)p_shouldDrawShapeRep:(id)rep withOtherShapeRep:(id)shapeRep;
- (BOOL)p_triggerMathTapAtPoint:(CGPoint)point;
- (BOOL)shouldHitTestChildKnobs;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)skipsRerenderForTranslation;
- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)point;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)parentScaledCanvasFrameOriginForTrifurcationContainer:(id)container;
- (CGRect)clipRectInScaledCanvasForTrifurcationContainer:(id)container;
- (CGRect)crlaxAttachedMathResultViewFrame;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)frameInUnscaledCanvasForMarqueeSelecting;
- (CGRect)i_baseFrameInUnscaledCanvasForPositioningLayer;
- (CGRect)p_boundsForMathResultViews;
- (CGRect)p_boundsInNaturalSpaceForMathView:(id)view;
- (CGRect)p_getUnRotatedFrameWithoutMathResults;
- (CRLFreehandDrawingLayout)freehandDrawingLayout;
- (CRLFreehandDrawingRep)initWithLayout:(id)layout canvas:(id)canvas;
- (CRLWidthLimitedQueue)queueForConcurrentlyDrawingChildrenIntoLayersIfSafe;
- (Class)layerClass;
- (NSArray)decoratorOverlayViews;
- (NSString)crlaxRecognizedMathDescription;
- (_TtC8Freeform22CRLFreehandDrawingItem)freehandDrawingInfo;
- (double)canvasContentsScaleForTrifurcationContainer:(id)container;
- (double)canvasViewScaleForTrifurcationContainer:(id)container;
- (double)p_zPositionForSelectionHighlightLayer;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityHint;
- (id)additionalPlatformViewOverChildRenderables;
- (id)additionalRenderablesOverRenderable;
- (id)additionalRepsForDraggingConnectionLine:(id)line;
- (id)beginEditingChildrenIfAllowedAtUnscaledPoint:(CGPoint)point pickingDeepestChild:(BOOL)child;
- (id)createAdditionalBoardItemsForCopyImaging;
- (id)dragAndDropHighlightRenderable;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point;
- (id)dragItemsForBeginningDragOfChildRep:(id)rep;
- (id)hitRep:(CGPoint)rep withPrecision:(BOOL)precision passingTest:(id)test;
- (id)p_baseMathView;
- (id)p_childrenToExcludeFromFlattenedDrawing;
- (id)p_ingestibleItemSourceForDragInfo:(id)info;
- (id)p_selectionPath;
- (id)p_shapeChildrenForDrawingRecursively;
- (id)p_shapeChildrenForDrawingRecursivelyInRect:(CGRect)rect passingTest:(id)test;
- (id)p_trifurcationContainer;
- (id)renderablesDescendingDirectlyFromContentRenderable;
- (id)unscaledPathToIncludeForSystemPreviewOutline;
- (int64_t)dragTypeAtCanvasPoint:(CGPoint)point forTouchType:(int64_t)type;
- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)beginTrifurcatedRenderForChildRep:(id)rep;
- (void)didAddSixChannelEnabledChildRep:(id)rep;
- (void)didAddSixChannelSuppressingChildRep:(id)rep;
- (void)didEndZoomingOperation;
- (void)didEnterBackground;
- (void)didProcessAllChanges;
- (void)didRemoveSixChannelEnabledChildRep:(id)rep;
- (void)didRemoveSixChannelSuppressingChildRep:(id)rep;
- (void)didUpdateChildLayers;
- (void)didUpdateMathResultView;
- (void)didUpdateRenderable:(id)renderable;
- (void)didUpdateShouldSolveMathForTriggerStroke:(id)stroke shouldSolveMath:(BOOL)math undoable:(BOOL)undoable;
- (void)documentModeDidChange;
- (void)drawShapeReps:(id)reps intoContext:(CGContext *)context forLayer:(id)layer inTrifurcationContainer:(id)container;
- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker;
- (void)dynamicOperationDidEnd;
- (void)dynamicResizeDidEndWithTracker:(id)tracker;
- (void)endTrifurcatedRenderForChildRep:(id)rep;
- (void)handleEditMenuTapAtPoint:(CGPoint)point inputType:(int64_t)type;
- (void)p_attachToRecognitionControllerIfNeeded;
- (void)p_cleanUpExistingStrokeAnimationIfNeeded;
- (void)p_concatenatePathDrawChildShapeReps:(id)reps togetherInContext:(CGContext *)context;
- (void)p_drawChildShapeReps:(id)reps togetherInContext:(CGContext *)context;
- (void)p_drawChildShapeRepsWithPencilKitStrokes:(id)strokes togetherInContext:(CGContext *)context;
- (void)p_drawShapeChildren:(id)children inContext:(CGContext *)context;
- (void)p_hideMiniFormatter;
- (void)p_removeSubselectionAffordanceIfNeeded;
- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabled;
- (void)p_selectionOrSelectedInfosChanged;
- (void)p_setupMathPaper;
- (void)p_showMiniFormatter;
- (void)p_showSubselectionAffordanceForInfos:(id)infos;
- (void)p_toggleMiniFormatter;
- (void)p_updateBaseMathViewIfNeeded;
- (void)p_updateLayoutBoundsForMathResultView;
- (void)p_updateSubselectionAffordance;
- (void)prepareForPencilKitSnapshotting;
- (void)processChangedProperty:(unint64_t)property;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)runStrokeAnimation:(id)animation;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)suppressionOfFreehandContentDidChange;
- (void)updateFromLayout;
- (void)updateRenderableGeometryFromLayout:(id)layout;
- (void)viewScaleDidChange;
- (void)viewScrollDidChange;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willEnterForeground;
@end

@implementation CRLFreehandDrawingRep

- (CRLFreehandDrawingRep)initWithLayout:(id)layout canvas:(id)canvas
{
  canvasCopy = canvas;
  v28.receiver = self;
  v28.super_class = CRLFreehandDrawingRep;
  v7 = [(CRLCanvasRep *)&v28 initWithLayout:layout canvas:canvasCopy];
  if (v7 && [canvasCopy isCanvasInteractive])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = +[_TtC8Freeform28CRLMathCalculationController mathHintsModeChangedNotificationName];
    [v8 addObserver:v7 selector:"p_mathHintsModeChanged" name:v9 object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[_TtC8Freeform28CRLMathCalculationController mathHintsSuspensionStatusChangedNotificationName];
    [v10 addObserver:v7 selector:"p_suspensionStatusChanged" name:v11 object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    interactiveCanvasController = [(CRLCanvasRep *)v7 interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    [v12 addObserver:v7 selector:"p_selectionOrSelectedInfosChanged" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];

    v15 = +[NSSet set];
    currentlySelectedInfosShowingAffordance = v7->_currentlySelectedInfosShowingAffordance;
    v7->_currentlySelectedInfosShowingAffordance = v15;

    canvas = [(CRLCanvasRep *)v7 canvas];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100256540;
    v26[3] = &unk_10183AB38;
    v18 = v7;
    v27 = v18;
    [canvas performBlockAfterLayoutIfNecessary:v26];

    v19 = +[NSMutableSet set];
    childRepsForTrifurcation = v18->_childRepsForTrifurcation;
    v18->_childRepsForTrifurcation = v19;

    v21 = +[NSMutableSet set];
    childRepsWithSixChannelRenderEnabled = v18->_childRepsWithSixChannelRenderEnabled;
    v18->_childRepsWithSixChannelRenderEnabled = v21;

    v23 = +[NSMutableSet set];
    childRepsSuppressingSixChannelRender = v18->_childRepsSuppressingSixChannelRender;
    v18->_childRepsSuppressingSixChannelRender = v23;

    v18->_needsRedrawnMathResults = 1;
    [(CRLFreehandDrawingRep *)v18 p_attachToRecognitionControllerIfNeeded];
  }

  return v7;
}

- (_TtC8Freeform22CRLFreehandDrawingItem)freehandDrawingInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v5 = sub_100013F00(v3, info);

  return v5;
}

- (CRLFreehandDrawingLayout)freehandDrawingLayout
{
  v3 = objc_opt_class();
  layout = [(CRLCanvasRep *)self layout];
  v5 = sub_100013F00(v3, layout);

  return v5;
}

- (void)willBeRemoved
{
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[_TtC8Freeform28CRLMathCalculationController mathHintsModeChangedNotificationName];
    [v5 removeObserver:self name:v6 object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[_TtC8Freeform28CRLMathCalculationController mathHintsSuspensionStatusChangedNotificationName];
    [v7 removeObserver:self name:v8 object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    [v9 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];

    [(NSMutableSet *)self->_childRepsForTrifurcation removeAllObjects];
    [(CRLFreehandDrawingRepTrifurcationContainer *)self->_activeTrifurcationContainer tearDown];
    activeTrifurcationContainer = self->_activeTrifurcationContainer;
    self->_activeTrifurcationContainer = 0;

    [(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled removeAllObjects];
    [(NSMutableSet *)self->_childRepsSuppressingSixChannelRender removeAllObjects];
  }

  [(CRLFreehandDrawingRep *)self p_removeSubselectionAffordanceIfNeeded];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    canvas2 = [(CRLCanvasRep *)self canvas];
    isCanvasInteractive2 = [canvas2 isCanvasInteractive];

    if (isCanvasInteractive2)
    {
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      [interactiveCanvasController2 removeDecorator:self];
    }
  }

  v16.receiver = self;
  v16.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v16 willBeRemoved];
}

- (id)additionalRepsForDraggingConnectionLine:(id)line
{
  lineCopy = line;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

  v9 = objc_opt_class();
  info = [(CRLCanvasRep *)self info];
  v11 = sub_100014370(v9, info);

  if (v8 && v11 && ([v8 containerGroups], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v11), v12, v13))
  {
    childReps = [(CRLCanvasRep *)self childReps];
    v15 = [NSSet setWithArray:childReps];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CRLFreehandDrawingRep;
    v15 = [(CRLCanvasRep *)&v17 additionalRepsForDraggingConnectionLine:lineCopy];
  }

  return v15;
}

- (BOOL)p_shouldDrawShapeRep:(id)rep withOtherShapeRep:(id)shapeRep
{
  repCopy = rep;
  shapeRepCopy = shapeRep;
  if ([repCopy isMoreOptimalToDrawWithOtherShapeRepsIfPossible])
  {
    v7 = [repCopy canDrawWithOtherShapeRep:shapeRepCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)p_drawChildShapeReps:(id)reps togetherInContext:(CGContext *)context
{
  repsCopy = reps;
  if ([repsCopy count])
  {
    if ([repsCopy count] == 1)
    {
      CGContextSaveGState(context);
      v6 = [repsCopy objectAtIndexedSubscript:0];
      [v6 recursivelyDrawInContext:context keepingChildrenPassingTest:0];

      CGContextRestoreGState(context);
    }

    else
    {
      firstObject = [repsCopy firstObject];
      [firstObject opacity];
      v9 = v8;

      if (v9 != 0.0)
      {
        firstObject2 = [repsCopy firstObject];
        layout = [firstObject2 layout];
        stroke = [layout stroke];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(CRLFreehandDrawingRep *)self p_drawChildShapeRepsWithPencilKitStrokes:repsCopy togetherInContext:context];
        }

        else
        {
          [(CRLFreehandDrawingRep *)self p_concatenatePathDrawChildShapeReps:repsCopy togetherInContext:context];
        }
      }
    }
  }
}

- (void)p_concatenatePathDrawChildShapeReps:(id)reps togetherInContext:(CGContext *)context
{
  repsCopy = reps;
  if ([repsCopy count] <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133BC50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133BC64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133BCF4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_concatenatePathDrawChildShapeReps:togetherInContext:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:514 isFatal:0 description:"Should be drawing at least two shape reps here."];
  }

  v9 = +[CRLBezierPath bezierPath];
  [repsCopy firstObject];
  v83 = memset(&v94, 0, sizeof(v94));
  layout = [v83 layout];
  v11 = layout;
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    memset(&v94, 0, sizeof(v94));
  }

  v12 = objc_opt_class();
  shapeLayout = [v83 shapeLayout];
  stroke = [shapeLayout stroke];
  v15 = sub_100014370(v12, stroke);

  v78 = v9;
  if (v15)
  {
    strokeName = [v15 strokeName];
    if ([strokeName isEqualToString:@"Pencil"])
    {

LABEL_18:
      v19 = +[NSMutableArray array];
      goto LABEL_20;
    }

    strokeName2 = [v15 strokeName];
    v18 = [strokeName2 isEqualToString:@"Crayon"];

    if (v18)
    {
      goto LABEL_18;
    }
  }

  v19 = 0;
LABEL_20:

  [v83 opacity];
  if (v20 != 1.0 && fabs(v20 + -1.0) >= 0.000000999999997 || ([v83 layout], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "stroke"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "color"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "alphaComponent"), v25 = v24, v23, v22, v21, v26 = 0, v25 != 1.0) && fabs(v25 + -1.0) >= 0.000000999999997)
  {
    v26 = +[NSMutableArray array];
  }

  c = context;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = repsCopy;
  v84 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
  if (v84)
  {
    v82 = *v91;
    v81 = (v19 | v26) != 0;
    p_info = CRLiOSMultiSelectGestureRecognizer.info;
    v32 = v78;
    v85 = v19;
    while (1)
    {
      v33 = 0;
      do
      {
        if (*v91 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v90 + 1) + 8 * v33);
        shapeLayout2 = [v34 shapeLayout];
        pathSource = [shapeLayout2 pathSource];
        bezierPath = [pathSource bezierPath];
        v86 = [bezierPath copy];

        [v34 clipRect];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;
        if (v34 != v83)
        {
          memset(&transform, 0, sizeof(transform));
          if (shapeLayout2)
          {
            [shapeLayout2 transformInRoot];
          }

          else
          {
            memset(&t1, 0, sizeof(t1));
          }

          v87 = v94;
          CGAffineTransformInvert(&t2, &v87);
          CGAffineTransformConcat(&transform, &t1, &t2);
          t1 = transform;
          [v86 transformUsingAffineTransform:&t1];
          t1 = transform;
          v97.origin.x = v39;
          v97.origin.y = v41;
          v97.size.width = v43;
          v97.size.height = v45;
          v98 = CGRectApplyAffineTransform(v97, &t1);
          v39 = v98.origin.x;
          v41 = v98.origin.y;
          v43 = v98.size.width;
          v45 = v98.size.height;
        }

        if (v81)
        {
          totalSubpathCountIncludingEffectivelyEmptySubpaths = [v86 totalSubpathCountIncludingEffectivelyEmptySubpaths];
          if (v19)
          {
            stroke2 = [shapeLayout2 stroke];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              _atomicIncrementAssertCount = [p_info + 206 _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10133BD1C();
              }

              v50 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                LODWORD(transform.a) = 67109890;
                HIDWORD(transform.a) = _atomicIncrementAssertCount;
                LOWORD(transform.b) = 2082;
                *(&transform.b + 2) = "[CRLFreehandDrawingRep p_concatenatePathDrawChildShapeReps:togetherInContext:]";
                WORD1(transform.c) = 2082;
                *(&transform.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m";
                WORD2(transform.d) = 1024;
                *(&transform.d + 6) = 558;
                _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Trying to draw a shape without a brush stroke along with one with a brush stroke.", &transform, 0x22u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10133BD44();
              }

              v51 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v72 = v51;
                packedBacktraceString = [p_info + 206 packedBacktraceString];
                LODWORD(transform.a) = 67109378;
                HIDWORD(transform.a) = _atomicIncrementAssertCount;
                LOWORD(transform.b) = 2114;
                *(&transform.b + 2) = packedBacktraceString;
                _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &transform, 0x12u);
              }

              v52 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_concatenatePathDrawChildShapeReps:togetherInContext:]"];
              v53 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
              [p_info + 206 handleFailureInFunction:v52 file:v53 lineNumber:558 isFatal:0 description:"Trying to draw a shape without a brush stroke along with one with a brush stroke."];
            }

            v80 = height;
            dynamicPatternOffsetsBySubpath = [shapeLayout2 dynamicPatternOffsetsBySubpath];
            v55 = [dynamicPatternOffsetsBySubpath count];
            shapeInfo = [v34 shapeInfo];
            [shapeInfo strokePatternOffsetDistance];
            v58 = v57;

            if (totalSubpathCountIncludingEffectivelyEmptySubpaths)
            {
              for (i = 0; totalSubpathCountIncludingEffectivelyEmptySubpaths != i; ++i)
              {
                if (dynamicPatternOffsetsBySubpath)
                {
                  if (i >= v55)
                  {
                    _atomicIncrementAssertCount2 = [p_info + 206 _atomicIncrementAssertCount];
                    if (qword_101AD5A10 != -1)
                    {
                      sub_10133BD6C();
                    }

                    v63 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(transform.a) = 67109890;
                      HIDWORD(transform.a) = _atomicIncrementAssertCount2;
                      LOWORD(transform.b) = 2082;
                      *(&transform.b + 2) = "[CRLFreehandDrawingRep p_concatenatePathDrawChildShapeReps:togetherInContext:]";
                      WORD1(transform.c) = 2082;
                      *(&transform.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m";
                      WORD2(transform.d) = 1024;
                      *(&transform.d + 6) = 575;
                      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out of range of dynamicPatternOffsetsBySubpath. Falling back to info value.", &transform, 0x22u);
                    }

                    if (qword_101AD5A10 != -1)
                    {
                      sub_10133BD94();
                    }

                    v64 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      v67 = v64;
                      v68 = +[CRLAssertionHandler packedBacktraceString];
                      LODWORD(transform.a) = 67109378;
                      HIDWORD(transform.a) = _atomicIncrementAssertCount2;
                      LOWORD(transform.b) = 2114;
                      *(&transform.b + 2) = v68;
                      _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &transform, 0x12u);
                    }

                    v65 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_concatenatePathDrawChildShapeReps:togetherInContext:]"];
                    v66 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
                    p_info = (CRLiOSMultiSelectGestureRecognizer + 32);
                    [CRLAssertionHandler handleFailureInFunction:v65 file:v66 lineNumber:575 isFatal:0 description:"Out of range of dynamicPatternOffsetsBySubpath. Falling back to info value."];

                    v61 = [NSNumber numberWithDouble:v58];
                    v19 = v85;
                    goto LABEL_63;
                  }

                  v60 = [dynamicPatternOffsetsBySubpath objectAtIndexedSubscript:i];
                }

                else
                {
                  v60 = [NSNumber numberWithDouble:v58];
                }

                v61 = v60;
LABEL_63:
                [v19 addObject:v61];
              }
            }

            v32 = v78;
            height = v80;
          }

          if (v26 && totalSubpathCountIncludingEffectivelyEmptySubpaths)
          {
            for (j = 0; j != totalSubpathCountIncludingEffectivelyEmptySubpaths; ++j)
            {
              if (j || (v99.origin.x = x, v99.origin.y = y, v99.size.width = width, v99.size.height = height, v103.origin.x = v39, v103.origin.y = v41, v103.size.width = v43, v103.size.height = v45, v70 = CGRectIntersectsRect(v99, v103), v71 = &__kCFBooleanTrue, !v70))
              {
                v71 = &__kCFBooleanFalse;
              }

              [v26 addObject:v71];
            }
          }
        }

        [v32 appendBezierPath:v86];
        v100.origin.x = x;
        v100.origin.y = y;
        v100.size.width = width;
        v100.size.height = height;
        v104.origin.x = v39;
        v104.origin.y = v41;
        v104.size.width = v43;
        v104.size.height = v45;
        v101 = CGRectUnion(v100, v104);
        x = v101.origin.x;
        y = v101.origin.y;
        width = v101.size.width;
        height = v101.size.height;

        v33 = v33 + 1;
      }

      while (v33 != v84);
      v84 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
      if (!v84)
      {
        goto LABEL_76;
      }
    }
  }

  v32 = v78;
LABEL_76:

  CGContextSaveGState(c);
  layout2 = [v83 layout];
  geometry = [layout2 geometry];
  v76 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(c, &transform);

  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  CGContextClipToRect(c, v102);
  [v83 drawInContext:c usingPathOverride:v32 patternOffsetsBySubpathOverride:v19 transparencyLayersBySubpath:v26];
  CGContextRestoreGState(c);
}

- (CGRect)p_boundsInNaturalSpaceForMathView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  [viewCopy bounds];
  v13 = sub_1001204D4(v9, v10, v11, v12);
  v15 = v14;
  p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [p_baseMathView convertPoint:viewCopy fromView:{v6, v8}];
  v18 = v17;
  v20 = v19;

  p_baseMathView2 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [p_baseMathView2 convertPoint:viewCopy fromView:{v13, v15}];
  v23 = v22;
  v25 = v24;

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];
  p_baseMathView3 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [canvasView convertPoint:p_baseMathView3 fromView:{v18, v20}];
  v30 = v29;
  v32 = v31;

  interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
  canvasView2 = [interactiveCanvasController2 canvasView];
  p_baseMathView4 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [canvasView2 convertPoint:p_baseMathView4 fromView:{v23, v25}];
  v37 = v36;
  v39 = v38;

  interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController3 convertBoundsToUnscaledPoint:{v30, v32}];
  v42 = v41;
  v44 = v43;

  interactiveCanvasController4 = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController4 convertBoundsToUnscaledPoint:{v37, v39}];
  v47 = v46;
  v49 = v48;

  [(CRLGroupRep *)self convertNaturalPointFromUnscaledCanvas:v42, v44];
  v51 = v50;
  v53 = v52;
  [(CRLGroupRep *)self convertNaturalPointFromUnscaledCanvas:v47, v49];

  v55 = sub_10011EC88(v51, v53, v54);
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (id)createAdditionalBoardItemsForCopyImaging
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    canvas = [interactiveCanvasController canvas];
    [canvas contentsScale];
    v7 = v6;

    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    canvas2 = [interactiveCanvasController2 canvas];
    [canvas2 viewScale];
    v11 = v10;

    v12 = v7 * v11;
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = sub_10011F340(v17, v19, v12);
    v23 = sub_10050DF80(11, v21, v22);
    CGContextScaleCTM(v23, v12, v12);
    *rect = v14;
    CGContextTranslateCTM(v23, -v14, -v16);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
    subviews = [p_baseMathView subviews];

    v26 = [subviews countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v66;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v66 != v28)
          {
            objc_enumerationMutation(subviews);
          }

          v30 = *(*(&v65 + 1) + 8 * i);
          [(CRLFreehandDrawingRep *)self p_boundsInNaturalSpaceForMathView:v30];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          CGContextSaveGState(v23);
          [v30 bounds];
          v40 = -v39;
          [v30 bounds];
          CGContextTranslateCTM(v23, v40, -v41);
          CGContextTranslateCTM(v23, v32, v34);
          [v30 bounds];
          v43 = v36 / v42;
          [v30 bounds];
          CGContextScaleCTM(v23, v43, v38 / v44);
          layer = [v30 layer];
          [layer renderInContext:v23];

          CGContextRestoreGState(v23);
        }

        v27 = [subviews countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v27);
    }

    Image = CGBitmapContextCreateImage(v23);
    v47 = sub_1005357BC(Image);
    CGImageRelease(Image);
    CGContextRelease(v23);
    interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController3 editingCoordinator];
    boardItemFactory = [editingCoordinator boardItemFactory];

    v51 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    assetOwner = [boardItemFactory assetOwner];
    v53 = [(CRLPreinsertionAssetWrapper *)v51 initWithData:v47 filename:@"freehand-drawing-math-solve-image-for-copying" owner:assetOwner error:0];

    synchronouslyCreateAsset = [(CRLPreinsertionAssetWrapper *)v53 synchronouslyCreateAsset];
    layout = [(CRLCanvasRep *)self layout];
    v56 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      memset(&rect[8], 0, 48);
    }

    v71.origin.x = *rect;
    v71.origin.y = v16;
    v71.size.width = v18;
    v71.size.height = v20;
    v72 = CGRectApplyAffineTransform(v71, &rect[8]);
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;

    height = [[CRLCanvasInfoGeometry alloc] initWithPosition:x size:y, width, height];
    v62 = [boardItemFactory makeImageItemWithGeometry:height imageData:synchronouslyCreateAsset thumbnailData:0];
    [v62 setStroke:0];
    [v62 setShadow:0];
    [v62 setMaskInfo:0];
    [v3 addObject:v62];
  }

  return v3;
}

- (void)viewScaleDidChange
{
  v25.receiver = self;
  v25.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v25 viewScaleDidChange];
  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews])
  {
    self->_needsRedrawnMathResults = 1;
  }

  else
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [(CRLFreehandDrawingRep *)self p_getUnRotatedFrameWithoutMathResults];
    [interactiveCanvasController convertUnscaledToBoundsRect:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v13 = *&CGAffineTransformIdentity.c;
    v22 = *&CGAffineTransformIdentity.a;
    v23 = v13;
    v24 = *&CGAffineTransformIdentity.tx;
    [p_baseMathView setTransform:&v22];

    p_baseMathView2 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    [p_baseMathView2 setFrame:{v5, v7, v9, v11}];

    freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [freehandDrawingLayout setFrameAtMathViewAttachment:{v5, v7, v9, v11}];

    layout = [(CRLCanvasRep *)self layout];
    pureGeometryInRoot = [layout pureGeometryInRoot];
    v18 = pureGeometryInRoot;
    if (pureGeometryInRoot)
    {
      [pureGeometryInRoot transform];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
    }

    v19 = sub_1001399C0(&v22);
    freehandDrawingLayout2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [freehandDrawingLayout2 setRotationAtMathViewAttachment:v19];

    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController2 invalidateContentLayersForRep:self];
  }
}

- (void)didEndZoomingOperation
{
  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews])
  {
    layout = [(CRLCanvasRep *)self layout];
    [layout invalidateFrame];

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (void)viewScrollDidChange
{
  v3.receiver = self;
  v3.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v3 viewScrollDidChange];
  self->_isViewScrolling = 1;
}

- (void)viewScrollingEnded
{
  v3.receiver = self;
  v3.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v3 viewScrollingEnded];
  self->_isViewScrolling = 0;
  if (self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation)
  {
    self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation = 0;
    [(CRLFreehandDrawingRep *)self p_requestNewMathRecognitionHandler];
  }
}

- (void)dynamicOperationDidEnd
{
  v3.receiver = self;
  v3.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v3 dynamicOperationDidEnd];
  [(CRLFreehandDrawingRep *)self p_updateLayoutBoundsForMathResultView];
  if (self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation)
  {
    self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation = 0;
    [(CRLFreehandDrawingRep *)self p_requestNewMathRecognitionHandler];
  }
}

- (void)willEnterForeground
{
  v7.receiver = self;
  v7.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v7 willEnterForeground];
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  pkRecognitionController = [freehandDrawingLayout pkRecognitionController];
  [pkRecognitionController tagAsActive];

  if (qword_101AD5A08 != -1)
  {
    sub_10133BDBC();
  }

  v5 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Tagging recognition controller as active.", v6, 2u);
  }
}

- (void)didEnterBackground
{
  v7.receiver = self;
  v7.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v7 didEnterBackground];
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  pkRecognitionController = [freehandDrawingLayout pkRecognitionController];
  [pkRecognitionController tagAsIdle];

  if (qword_101AD5A08 != -1)
  {
    sub_10133BDE4();
  }

  v5 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Tagging recognition controller as idle.", v6, 2u);
  }
}

- (int64_t)dragTypeAtCanvasPoint:(CGPoint)point forTouchType:(int64_t)type
{
  y = point.y;
  x = point.x;
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingRep;
  v7 = [(CRLCanvasRep *)&v11 dragTypeAtCanvasPoint:type forTouchType:?];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  drawingIntelligenceProvider = [interactiveCanvasController drawingIntelligenceProvider];
  [interactiveCanvasController convertUnscaledToBoundsPoint:{x, y}];
  if ([drawingIntelligenceProvider isDetectionDecoratorViewHitAtScaledPoint:?])
  {
    v7 = 4;
  }

  return v7;
}

- (void)p_attachToRecognitionControllerIfNeeded
{
  if (!self->_isAttachedToRecognitionController)
  {
    freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    pkRecognitionController = [freehandDrawingLayout pkRecognitionController];

    if (pkRecognitionController)
    {
      self->_isAttachedToRecognitionController = 1;
      [(CRLFreehandDrawingRep *)self p_setupMathPaper];
    }
  }
}

- (void)p_setupMathPaper
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    self->_allowedToToggleMathPopoverUI = 0;
    self->_isPresentingMathPopoverUI = 0;
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController addDecorator:self];
  }
}

- (void)didUpdateMathResultView
{
  p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
  subviews = [p_baseMathView subviews];
  [subviews setValue:&__kCFBooleanFalse forKey:@"hidden"];

  if (self->_isViewScrolling)
  {
    self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation = 1;
  }

  else
  {
    isInDynamicOperation = [(CRLCanvasRep *)self isInDynamicOperation];
    self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation = isInDynamicOperation;
    if (!isInDynamicOperation)
    {
      goto LABEL_5;
    }
  }

  p_baseMathView2 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  subviews2 = [p_baseMathView2 subviews];
  [subviews2 setValue:&__kCFBooleanTrue forKey:@"hidden"];

LABEL_5:
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];

  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    [(CRLFreehandDrawingRep *)self p_updateLayoutBoundsForMathResultView];
    layout = [(CRLCanvasRep *)self layout];
    [layout invalidateFrame];

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (BOOL)p_hasMathResultViews
{
  p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
  subviews = [p_baseMathView subviews];
  v4 = [subviews count] != 0;

  return v4;
}

- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabled
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  mathCalculationController = [interactiveCanvasController mathCalculationController];

  if (!mathCalculationController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133BE0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133BE20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133BEBC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_resetMathRecognitionHandlerIfRequestedAndEnabled]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:845 isFatal:0 description:"invalid nil value for '%{public}s'", "mathCalculationController"];
  }

  if (self->_requestedNewMathRecognitionHandler && ([mathCalculationController isSolvingSuspended] & 1) == 0)
  {
    self->_requestedNewMathRecognitionHandler = 0;
    freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [freehandDrawingLayout resetMathRecognitionHandlerIfRequestedAndEnabled];
  }
}

- (NSArray)decoratorOverlayViews
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled]&& ([(CRLFreehandDrawingRep *)self p_baseMathView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [(CRLFreehandDrawingRep *)self p_updateBaseMathViewIfNeeded];
    p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v7 = p_baseMathView;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (CGRect)p_getUnRotatedFrameWithoutMathResults
{
  isInDynamicOperation = [(CRLCanvasRep *)self isInDynamicOperation];
  layout = [(CRLCanvasRep *)self layout];
  v5 = layout;
  if (isInDynamicOperation)
  {
    dynamicGeometry = [layout dynamicGeometry];
    [dynamicGeometry infoGeometry];
  }

  else
  {
    dynamicGeometry = [layout info];
    [dynamicGeometry geometry];
  }
  v7 = ;
  [v7 boundsBeforeRotation];
  v9 = v8;
  v11 = v10;

  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  pureGeometryWithoutMathResults = [freehandDrawingLayout pureGeometryWithoutMathResults];
  [pureGeometryWithoutMathResults size];
  v15 = v14;
  v17 = v16;

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  freehandDrawingLayout2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v19 = freehandDrawingLayout2;
  if (freehandDrawingLayout2)
  {
    [freehandDrawingLayout2 pureTransformInRootWithoutMathResults];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
  }

  v21 = *&CGAffineTransformIdentity.c;
  *&v25.a = *&CGAffineTransformIdentity.a;
  v22 = *&v25.a;
  *&v25.c = v21;
  *&v25.tx = *&CGAffineTransformIdentity.tx;
  v20 = *&v25.tx;
  CGAffineTransformMakeTranslation(&t2, *&v28 - v9, *(&v28 + 1) - v11);
  *&t1.a = v22;
  *&t1.c = v21;
  *&t1.tx = v20;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t2 = v25;
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v15;
  v29.size.height = v17;
  return CGRectApplyAffineTransform(v29, &t2);
}

- (id)p_baseMathView
{
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  baseMathView = [freehandDrawingLayout baseMathView];

  return baseMathView;
}

- (void)didUpdateShouldSolveMathForTriggerStroke:(id)stroke shouldSolveMath:(BOOL)math undoable:(BOOL)undoable
{
  undoableCopy = undoable;
  mathCopy = math;
  strokeCopy = stroke;
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap = [freehandDrawingLayout drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap];
  path = [strokeCopy path];

  _strokeDataUUID = [path _strokeDataUUID];
  v13 = [drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap objectForKeyedSubscript:_strokeDataUUID];

  if (v13)
  {
    freehandDrawingInfo = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
    v15 = freehandDrawingInfo;
    if (freehandDrawingInfo && ([freehandDrawingInfo childItems], v16 = objc_claimAutoreleasedReturnValue(), v34[0] = _NSConcreteStackBlock, v34[1] = 3221225472, v34[2] = sub_100258FD0, v34[3] = &unk_10184CB50, v34[4] = v13, v17 = objc_msgSend(v16, "indexOfObjectPassingTest:", v34), v16, v17 != 0x7FFFFFFFFFFFFFFFLL) && (v18 = objc_opt_class(), objc_msgSend(v15, "childItems"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectAtIndexedSubscript:", v17), v20 = objc_claimAutoreleasedReturnValue(), sub_100014370(v18, v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v21))
    {
      interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
      commandController = [interactiveCanvasController commandController];
      pencilKitStrokePathCompactData = [v21 pencilKitStrokePathCompactData];
      v25 = [pencilKitStrokePathCompactData copy];

      [v25 setShouldSolveMath:mathCopy];
      [commandController openGroup];
      v26 = +[NSBundle mainBundle];
      v27 = v26;
      if (mathCopy)
      {
        v28 = @"Insert Result";
      }

      else
      {
        v28 = @"Remove Result";
      }

      v29 = [v26 localizedStringForKey:v28 value:0 table:@"UndoStrings"];

      [commandController setCurrentGroupActionString:v29];
      v30 = [_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData alloc];
      maskPath = [v21 maskPath];
      v32 = [(CRLCommandSetFreehandDrawingShapeItemPKData *)v30 initWithFreehandDrawingShapeItem:v21 strokePathCompactData:v25 maskPath:maskPath];

      [(CRLCommand *)v32 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
      if (undoableCopy)
      {
        [commandController enqueueCommand:v32];
      }

      else
      {
        [commandController enqueueWithNonUndoableCommand:v32];
      }

      [commandController closeGroup];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133BEE4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133BF0C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133BF9C();
      }

      v33 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v33);
      }

      v21 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didUpdateShouldSolveMathForTriggerStroke:shouldSolveMath:undoable:]"];
      interactiveCanvasController = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:interactiveCanvasController lineNumber:934 isFatal:0 description:"Could not locate freehand drawing shapeItem for _strokeDataUUID given by trigger stroke"];
    }
  }
}

- (void)updateFromLayout
{
  v46.receiver = self;
  v46.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v46 updateFromLayout];
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (!isCanvasInteractive)
  {
    return;
  }

  [(CRLFreehandDrawingRep *)self p_attachToRecognitionControllerIfNeeded];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLFreehandDrawingRep *)self p_getUnRotatedFrameWithoutMathResults];
  [interactiveCanvasController convertUnscaledToBoundsRect:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [freehandDrawingLayout previousAspectRatio];
  v16 = vabdd_f64(v11 / v13, v15);

  if (v16 <= 0.001)
  {
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController2 invalidateContentLayersForRep:self];

    p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
    subviews = [p_baseMathView subviews];
    if ([subviews count])
    {
      p_baseMathView2 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      subviews2 = [p_baseMathView2 subviews];
      firstObject = [subviews2 firstObject];
      isHidden = [firstObject isHidden];

      if (!isHidden)
      {
        goto LABEL_19;
      }

      p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
      subviews = [p_baseMathView subviews];
      [subviews setValue:&__kCFBooleanFalse forKey:@"hidden"];
    }

    goto LABEL_17;
  }

  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    p_baseMathView3 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v18 = *&CGAffineTransformIdentity.c;
    v43 = *&CGAffineTransformIdentity.a;
    v44 = v18;
    v45 = *&CGAffineTransformIdentity.tx;
    [p_baseMathView3 setTransform:&v43];

    p_baseMathView4 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    [p_baseMathView4 setFrame:{v7, v9, v11, v13}];

    freehandDrawingLayout2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [freehandDrawingLayout2 setFrameAtMathViewAttachment:{v7, v9, v11, v13}];

    layout = [(CRLCanvasRep *)self layout];
    pureGeometryInRoot = [layout pureGeometryInRoot];
    v23 = pureGeometryInRoot;
    if (pureGeometryInRoot)
    {
      [pureGeometryInRoot transform];
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
    }

    v31 = sub_1001399C0(&v43);
    freehandDrawingLayout3 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [freehandDrawingLayout3 setRotationAtMathViewAttachment:v31];
  }

  v33 = [(CRLCanvasRep *)self interactiveCanvasController:v43];
  [v33 invalidateContentLayersForRep:self];

  p_baseMathView5 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  subviews3 = [p_baseMathView5 subviews];
  [subviews3 setValue:&__kCFBooleanTrue forKey:@"hidden"];

  v36 = objc_opt_class();
  interactiveCanvasController3 = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController3 freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  p_baseMathView = sub_100014370(v36, currentTool);

  subviews = [(CRLCanvasRep *)self interactiveCanvasController];
  if (![subviews isInDynamicOperation])
  {

LABEL_16:
    subviews = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    mathRecognitionHandler = [subviews mathRecognitionHandler];
    [mathRecognitionHandler redrawSubviews];

    goto LABEL_17;
  }

  if (p_baseMathView)
  {
    shouldAllowMathViewsToRedraw = [p_baseMathView shouldAllowMathViewsToRedraw];

    if ((shouldAllowMathViewsToRedraw & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
LABEL_19:
  freehandDrawingLayout4 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [freehandDrawingLayout4 setPreviousAspectRatio:v11 / v13];

  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews])
  {
    [(CRLFreehandDrawingRep *)self p_updateBaseMathViewIfNeeded];
    if (![(CRLCanvasRep *)self isInDynamicOperation])
    {
      [(CRLCanvasRep *)self invalidateKnobs];
    }
  }
}

- (void)p_updateBaseMathViewIfNeeded
{
  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews])
  {
    [(CRLFreehandDrawingRep *)self p_getUnRotatedFrameWithoutMathResults];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController convertUnscaledToBoundsRect:{v4, v6, v8, v10}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
    [p_baseMathView frame];
    v25 = sub_10011EE4C(v21, v22, v23, v24, v13, v15, v17, v19);

    if (!v25)
    {
      freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [freehandDrawingLayout frameAtMathViewAttachment];
      v28 = v17 / v27;

      freehandDrawingLayout2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [freehandDrawingLayout2 frameAtMathViewAttachment];
      v31 = v19 / v30;

      freehandDrawingLayout3 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [freehandDrawingLayout3 frameAtMathViewAttachment];
      v37 = sub_100120414(v33, v34, v35, v36);

      v38 = sub_100120414(v13, v15, v17, v19);
      v40 = sub_10011F31C(v38, v39, v37);
      v42 = v41;
      memset(&v72, 0, sizeof(v72));
      p_baseMathView2 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [p_baseMathView2 bounds];
      v45 = v28 * (v44 * 0.5);
      p_baseMathView3 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [p_baseMathView3 bounds];
      CGAffineTransformMakeTranslation(&v72, v45, v31 * (v47 * 0.5));

      memset(&v71, 0, sizeof(v71));
      p_baseMathView4 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [p_baseMathView4 bounds];
      v50 = v28 * (v49 * -0.5);
      p_baseMathView5 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [p_baseMathView5 bounds];
      CGAffineTransformMakeTranslation(&v71, v50, v31 * (v52 * -0.5));

      layout = [(CRLCanvasRep *)self layout];
      pureGeometryInRoot = [layout pureGeometryInRoot];
      v55 = pureGeometryInRoot;
      if (pureGeometryInRoot)
      {
        [pureGeometryInRoot transform];
      }

      else
      {
        memset(&v70, 0, sizeof(v70));
      }

      v56 = sub_1001399C0(&v70.a);

      memset(&v70, 0, sizeof(v70));
      freehandDrawingLayout4 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [freehandDrawingLayout4 rotationAtMathViewAttachment];
      CGAffineTransformMakeRotation(&t2, v56 - v58);
      t1 = v72;
      CGAffineTransformConcat(&v69, &t1, &t2);
      t2 = v71;
      CGAffineTransformConcat(&v70, &v69, &t2);

      v63 = *&CGAffineTransformIdentity.c;
      *&v69.a = *&CGAffineTransformIdentity.a;
      v64 = *&v69.a;
      *&v69.c = v63;
      *&v69.tx = *&CGAffineTransformIdentity.tx;
      v62 = *&v69.tx;
      CGAffineTransformMakeScale(&t2, v28, v31);
      *&t1.a = v64;
      *&t1.c = v63;
      *&t1.tx = v62;
      CGAffineTransformConcat(&v69, &t1, &t2);
      t1 = v69;
      v66 = v70;
      CGAffineTransformConcat(&t2, &t1, &v66);
      v69 = t2;
      CGAffineTransformMakeTranslation(&t1, v40, v42);
      v66 = v69;
      CGAffineTransformConcat(&t2, &v66, &t1);
      v69 = t2;
      v65 = t2;
      p_baseMathView6 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      t2 = v65;
      [p_baseMathView6 setTransform:&t2];
    }

    if (self->_needsRedrawnMathResults)
    {
      freehandDrawingLayout5 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      mathRecognitionHandler = [freehandDrawingLayout5 mathRecognitionHandler];
      [mathRecognitionHandler redrawSubviews];

      self->_needsRedrawnMathResults = 0;
    }
  }
}

- (CGRect)p_boundsForMathResultViews
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
  subviews = [p_baseMathView subviews];

  v9 = [subviews countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        subviews2 = [v13 subviews];
        v15 = [subviews2 count];

        if (v15)
        {
          [(CRLFreehandDrawingRep *)self p_boundsInNaturalSpaceForMathView:v13];
          v32.origin.x = v16;
          v32.origin.y = v17;
          v32.size.width = v18;
          v32.size.height = v19;
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          v30 = CGRectUnion(v29, v32);
          x = v30.origin.x;
          y = v30.origin.y;
          width = v30.size.width;
          height = v30.size.height;
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)p_updateLayoutBoundsForMathResultView
{
  [(CRLFreehandDrawingRep *)self p_boundsForMathResultViews];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [freehandDrawingLayout setBoundsForMathResultViews:{v4, v6, v8, v10}];

  layout = [(CRLCanvasRep *)self layout];
  [layout invalidateFrame];
}

- (void)p_drawChildShapeRepsWithPencilKitStrokes:(id)strokes togetherInContext:(CGContext *)context
{
  strokesCopy = strokes;
  if ([strokesCopy count] <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133BFC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133BFD8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C068();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_drawChildShapeRepsWithPencilKitStrokes:togetherInContext:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1046 isFatal:0 description:"Should be drawing at least two shape reps here."];
  }

  v8 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = strokesCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        shapeLayout = [*(*(&v27 + 1) + 8 * v13) shapeLayout];
        pencilKitStrokesInParentInfoSpace = [shapeLayout pencilKitStrokesInParentInfoSpace];
        if (pencilKitStrokesInParentInfoSpace)
        {
          [v8 addObjectsFromArray:pencilKitStrokesInParentInfoSpace];
        }

        else
        {
          v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10133C090();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v32 = v16;
            v33 = 2082;
            v34 = "[CRLFreehandDrawingRep p_drawChildShapeRepsWithPencilKitStrokes:togetherInContext:]";
            v35 = 2082;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m";
            v37 = 1024;
            v38 = 1052;
            v39 = 2082;
            v40 = "currentStrokesInDrawingSpace";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10133C0B8();
          }

          v18 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v21 = v18;
            v22 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v32 = v16;
            v33 = 2114;
            v34 = v22;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v19 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_drawChildShapeRepsWithPencilKitStrokes:togetherInContext:]"];
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
          [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1052 isFatal:0 description:"invalid nil value for '%{public}s'", "currentStrokesInDrawingSpace"];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v11);
  }

  canvas = [(CRLCanvasRep *)self canvas];
  backgroundColor = [canvas backgroundColor];
  [CRLPencilKitInkStroke drawStrokes:v8 inContext:context overTransparentCanvas:backgroundColor == 0];
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  if (![(CRLFreehandDrawingRep *)self p_isTrifurcatedRenderingEnabled])
  {
    ClipBoundingBox = CGContextGetClipBoundingBox(context);
    v7 = [(CRLFreehandDrawingRep *)self p_shapeChildrenForDrawingRecursivelyInRect:testCopy passingTest:ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width, ClipBoundingBox.size.height];
    [(CRLFreehandDrawingRep *)self p_drawShapeChildren:v7 inContext:context];
    p_childrenToExcludeFromFlattenedDrawing = [(CRLFreehandDrawingRep *)self p_childrenToExcludeFromFlattenedDrawing];
    if ([p_childrenToExcludeFromFlattenedDrawing count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      childReps = [(CRLCanvasRep *)self childReps];
      v10 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(childReps);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            if ([p_childrenToExcludeFromFlattenedDrawing containsObject:v14] && (!testCopy || testCopy[2](testCopy, v14)))
            {
              CGContextSaveGState(context);
              [v14 recursivelyDrawInContext:context keepingChildrenPassingTest:testCopy];
              CGContextRestoreGState(context);
            }
          }

          v11 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (id)p_shapeChildrenForDrawingRecursivelyInRect:(CGRect)rect passingTest:(id)test
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  testCopy = test;
  v48 = +[NSMutableArray array];
  p_shapeChildrenForDrawingRecursively = [(CRLFreehandDrawingRep *)self p_shapeChildrenForDrawingRecursively];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = [p_shapeChildrenForDrawingRecursively countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v13 = 0;
  v47 = *v51;
  v46 = p_shapeChildrenForDrawingRecursively;
  do
  {
    v14 = 0;
    do
    {
      if (*v51 != v47)
      {
        objc_enumerationMutation(p_shapeChildrenForDrawingRecursively);
      }

      v15 = *(*(&v50 + 1) + 8 * v14);
      if (!testCopy || testCopy[2](testCopy, *(*(&v50 + 1) + 8 * v14)))
      {
        v16 = objc_opt_class();
        lastObject = [v48 lastObject];
        info = [lastObject info];
        v19 = sub_100014370(v16, info);

        v20 = objc_opt_class();
        info2 = [v15 info];
        v22 = sub_100014370(v20, info2);

        [v15 clipRect];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        layout = [v15 layout];
        v32 = layout;
        if (layout)
        {
          [layout transform];
        }

        else
        {
          memset(&v49, 0, sizeof(v49));
        }

        v56.origin.x = v24;
        v56.origin.y = v26;
        v56.size.width = v28;
        v56.size.height = v30;
        v57 = CGRectApplyAffineTransform(v56, &v49);
        v33 = v57.origin.x;
        v34 = v57.origin.y;
        v35 = v57.size.width;
        v36 = v57.size.height;

        v58.origin.x = v33;
        v58.origin.y = v34;
        v58.size.width = v35;
        v58.size.height = v36;
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v59 = CGRectIntersection(v58, v60);
        if (CGRectIsEmpty(v59))
        {
          if (!v13)
          {
            if ([v48 count])
            {
              renderGroupID = [v19 renderGroupID];
              renderGroupID2 = [v22 renderGroupID];
              if (renderGroupID | renderGroupID2)
              {
                v39 = renderGroupID2;
                v40 = [renderGroupID isEqual:renderGroupID2];

                if (v40)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = v15;
                }

                p_shapeChildrenForDrawingRecursively = v46;
                goto LABEL_25;
              }
            }

LABEL_24:
            v13 = 0;
          }

LABEL_25:

          goto LABEL_26;
        }

        if (v13)
        {
          renderGroupID3 = [v19 renderGroupID];
          renderGroupID4 = [v22 renderGroupID];
          v43 = renderGroupID4;
          if (renderGroupID3 && renderGroupID4 && [renderGroupID3 isEqual:renderGroupID4])
          {
            [v48 addObject:v13];
          }

          p_shapeChildrenForDrawingRecursively = v46;
        }

        [v48 addObject:{v15, v46}];
        goto LABEL_24;
      }

LABEL_26:
      v14 = v14 + 1;
    }

    while (v12 != v14);
    v44 = [p_shapeChildrenForDrawingRecursively countByEnumeratingWithState:&v50 objects:v54 count:16];
    v12 = v44;
  }

  while (v44);
LABEL_33:

  return v48;
}

- (void)p_drawShapeChildren:(id)children inContext:(CGContext *)context
{
  childrenCopy = children;
  v7 = sub_100510804(context);
  if (v7)
  {
    [(CRLGroupRep *)self clipRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    ClipBoundingBox = CGContextGetClipBoundingBox(context);
    v57.origin.x = v9;
    v57.origin.y = v11;
    v57.size.width = v13;
    v57.size.height = v15;
    v58 = CGRectIntersection(v57, ClipBoundingBox);
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    height = v58.size.height;
    if (CGRectIsEmpty(v58))
    {
      goto LABEL_23;
    }

    v51 = v7;
    v20 = sub_10011F340(width, height, 3.0);
    v22 = v21;
    v23 = sub_10050CFD8();
    v25 = sub_100121E8C(v20, v22, v23, v24);
    v26 = v20 / v25;
    contextCopy = sub_10050DF80(35, v25, v27);
    v29 = sub_10051058C(context);
    v30 = sub_100510804(context);
    v31 = sub_100510940(context);
    v32 = sub_100510A7C(context);
    v33 = sub_1005106C8(context);
    sub_10050DE7C(contextCopy, v29, v30, v31, v33, v32);
    CGContextScaleCTM(contextCopy, 1.0 / v26, 1.0 / v26);
    CGContextScaleCTM(contextCopy, 3.0, 3.0);
    CGContextTranslateCTM(contextCopy, -x, -y);
  }

  else
  {
    v51 = 0;
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    contextCopy = context;
  }

  v34 = +[NSMutableArray array];
  if ([childrenCopy count])
  {
    v35 = 0;
    v36 = 1;
    while (1)
    {
      v37 = [childrenCopy objectAtIndexedSubscript:v36 - 1];
      if (v36 == [childrenCopy count])
      {
        break;
      }

      v38 = [childrenCopy objectAtIndexedSubscript:v36];
      if (![(CRLFreehandDrawingRep *)self p_shouldDrawShapeRep:v37 withOtherShapeRep:v38])
      {
        goto LABEL_10;
      }

LABEL_11:

      if (v36++ >= [childrenCopy count])
      {
        goto LABEL_13;
      }
    }

    v38 = 0;
LABEL_10:
    v39 = [NSValue valueWithRange:v35, v36 - v35];
    [v34 addObject:v39];

    v35 = v36;
    goto LABEL_11;
  }

LABEL_13:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v41 = v34;
  v42 = [v41 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v53;
    do
    {
      v45 = 0;
      do
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(v41);
        }

        rangeValue = [*(*(&v52 + 1) + 8 * v45) rangeValue];
        v48 = [childrenCopy subarrayWithRange:{rangeValue, v47}];
        [(CRLFreehandDrawingRep *)self p_drawChildShapeReps:v48 togetherInContext:contextCopy];

        v45 = v45 + 1;
      }

      while (v43 != v45);
      v43 = [v41 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v43);
  }

  if (v51)
  {
    v49 = sub_10050FEFC(context);
    [v49 beginFreehandDrawing:self];
    Image = CGBitmapContextCreateImage(contextCopy);
    CGContextRelease(contextCopy);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    CGContextDrawImage(context, v59, Image);
    CGImageRelease(Image);
    [v49 endFreehandDrawing:self];
  }

LABEL_23:
}

- (void)didUpdateRenderable:(id)renderable
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  renderableCopy = renderable;
  [(CRLCanvasRep *)&v5 didUpdateRenderable:renderableCopy];
  layer = [renderableCopy layer];

  [layer setDrawsAsynchronously:1];
}

- (CRLWidthLimitedQueue)queueForConcurrentlyDrawingChildrenIntoLayersIfSafe
{
  if (qword_101A34908 != -1)
  {
    sub_10133C0E0();
  }

  v3 = atomic_load(&self->_safeForChildrenToDrawConcurrently);
  if (v3)
  {
    v4 = qword_101A34900;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C0F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C108();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C198();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep queueForConcurrentlyDrawingChildrenIntoLayersIfSafe]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1334 isFatal:0 description:"Trying to get the concurrent queue when it isn't safe to do so."];

    v4 = 0;
  }

  return v4;
}

- (void)didUpdateChildLayers
{
  queueForConcurrentlyDrawingChildrenIntoLayersIfSafe = [(CRLFreehandDrawingRep *)self queueForConcurrentlyDrawingChildrenIntoLayersIfSafe];
  if (!queueForConcurrentlyDrawingChildrenIntoLayersIfSafe)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C1C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C1D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C270();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didUpdateChildLayers]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1350 isFatal:0 description:"invalid nil value for '%{public}s'", "queue"];
  }

  atomic_store(0, &self->_safeForChildrenToDrawConcurrently);
  [queueForConcurrentlyDrawingChildrenIntoLayersIfSafe performSync:&stru_10184CCD0];
}

- (id)additionalRenderablesOverRenderable
{
  v29.receiver = self;
  v29.super_class = CRLFreehandDrawingRep;
  additionalRenderablesOverRenderable = [(CRLCanvasRep *)&v29 additionalRenderablesOverRenderable];
  if (![(CRLFreehandDrawingRep *)self p_isTrifurcatedRenderingEnabled])
  {
    [(CRLFreehandDrawingRepTrifurcationContainer *)self->_activeTrifurcationContainer tearDown];
    activeTrifurcationContainer = self->_activeTrifurcationContainer;
    self->_activeTrifurcationContainer = 0;
    goto LABEL_40;
  }

  activeTrifurcationContainer = [(CRLFreehandDrawingRep *)self p_trifurcationContainer];
  backRenderable = [activeTrifurcationContainer backRenderable];
  middleRenderable = [activeTrifurcationContainer middleRenderable];
  frontRenderable = [activeTrifurcationContainer frontRenderable];
  if (backRenderable)
  {
    if (middleRenderable)
    {
      goto LABEL_4;
    }

LABEL_19:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C384();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C3AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C448();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep additionalRenderablesOverRenderable]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1368 isFatal:0 description:"invalid nil value for '%{public}s'", "middleRenderable"];

    if (frontRenderable)
    {
      goto LABEL_5;
    }

LABEL_28:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C470();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C498();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C534();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep additionalRenderablesOverRenderable]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1369 isFatal:0 description:"invalid nil value for '%{public}s'", "frontRenderable"];

    goto LABEL_39;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133C298();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133C2C0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133C35C();
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v8);
  }

  v9 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep additionalRenderablesOverRenderable]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1367 isFatal:0 description:"invalid nil value for '%{public}s'", "backRenderable"];

  if (!middleRenderable)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (!frontRenderable)
  {
    goto LABEL_28;
  }

LABEL_5:
  if (backRenderable && middleRenderable)
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    if (activeTrifurcationContainer)
    {
      [activeTrifurcationContainer transformForMiddleRenderable:0];
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      [activeTrifurcationContainer transformForMiddleRenderable:1];
    }

    else
    {
      v24 = 0uLL;
      v25 = 0uLL;
      v23 = 0uLL;
    }

    v20 = v26;
    v21 = v27;
    v22 = v28;
    [backRenderable setAffineTransform:&v20];
    v20 = v23;
    v21 = v24;
    v22 = v25;
    [middleRenderable setAffineTransform:&v20];
    v20 = v26;
    v21 = v27;
    v22 = v28;
    [frontRenderable setAffineTransform:&v20];
    v30[0] = backRenderable;
    v30[1] = middleRenderable;
    v30[2] = frontRenderable;
    v17 = [NSArray arrayWithObjects:v30 count:3];
    v18 = [additionalRenderablesOverRenderable arrayByAddingObjectsFromArray:v17];

    additionalRenderablesOverRenderable = v18;
  }

LABEL_39:

LABEL_40:

  return additionalRenderablesOverRenderable;
}

- (id)renderablesDescendingDirectlyFromContentRenderable
{
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  renderablesDescendingDirectlyFromContentRenderable = [(CRLCanvasRep *)&v4 renderablesDescendingDirectlyFromContentRenderable];

  return renderablesDescendingDirectlyFromContentRenderable;
}

- (id)additionalPlatformViewOverChildRenderables
{
  v3 = self->_strokeAnimator;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  if (-[CRLiOSFreehandDrawingStrokeAnimator didBeginRunning](v3, "didBeginRunning") || (-[CRLiOSFreehandDrawingStrokeAnimator canvasViewScale](v4, "canvasViewScale"), v6 = v5, -[CRLCanvasRep canvas](self, "canvas"), v7 = objc_claimAutoreleasedReturnValue(), [v7 viewScale], v9 = v8, v7, v6 != v9) && vabdd_f64(v6, v9) >= 0.001)
  {
    [(CRLFreehandDrawingRep *)self p_cleanUpExistingStrokeAnimationIfNeeded];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10025B910;
  v21 = &unk_10184CDB8;
  objc_copyWeak(&v23, &location);
  v22 = v4;
  [(CRLiOSFreehandDrawingStrokeAnimator *)v4 runAnimationWithCompletionHandler:&v18];
  v10 = objc_alloc_init(UIView);
  [v10 setClipsToBounds:0];
  [(CRLCanvasRep *)self layerFrameInScaledCanvas];
  v28 = CGRectIntegral(v27);
  [v10 setBounds:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];
  view = [(CRLiOSFreehandDrawingStrokeAnimator *)v4 view];
  if (view)
  {
    [v10 addSubview:view];
  }

  else
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C55C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C584();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C620();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v15, buf, v13, v14);
    }

    v16 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep additionalPlatformViewOverChildRenderables]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1530 isFatal:0 description:"invalid nil value for '%{public}s'", "animationView", v18, v19, v20, v21];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
LABEL_7:

  return v10;
}

- (void)beginTrifurcatedRenderForChildRep:(id)rep
{
  repCopy = rep;
  parentRep = [repCopy parentRep];

  if (parentRep != self)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C648();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C65C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C708();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep beginTrifurcatedRenderForChildRep:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1542 isFatal:0 description:"expected equality between %{public}s and %{public}s", "childRep.parentRep", "self"];
  }

  if ([(NSMutableSet *)self->_childRepsForTrifurcation containsObject:repCopy])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C730();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C758();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C7E8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep beginTrifurcatedRenderForChildRep:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1543 isFatal:0 description:"Should not ask to begin trifurcated render for a child rep for which it has already begun."];
  }

  [(NSMutableSet *)self->_childRepsForTrifurcation addObject:repCopy];
  [(CRLFreehandDrawingRepTrifurcationContainer *)self->_activeTrifurcationContainer tearDown];
  activeTrifurcationContainer = self->_activeTrifurcationContainer;
  self->_activeTrifurcationContainer = 0;

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];

  if ([(NSMutableSet *)self->_childRepsForTrifurcation count]== 1)
  {
    [(CRLFreehandDrawingRep *)self setNeedsDisplay];
  }
}

- (void)endTrifurcatedRenderForChildRep:(id)rep
{
  repCopy = rep;
  parentRep = [repCopy parentRep];

  if (parentRep != self)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C810();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C824();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C8D0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep endTrifurcatedRenderForChildRep:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1561 isFatal:0 description:"expected equality between %{public}s and %{public}s", "childRep.parentRep", "self"];
  }

  if (([(NSMutableSet *)self->_childRepsForTrifurcation containsObject:repCopy]& 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C8F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C920();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133C9B0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep endTrifurcatedRenderForChildRep:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1562 isFatal:0 description:"Should not ask to end trifurcated render for a child rep that did not begin it."];
  }

  [(NSMutableSet *)self->_childRepsForTrifurcation removeObject:repCopy];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];

  if (![(NSMutableSet *)self->_childRepsForTrifurcation count])
  {
    [(CRLFreehandDrawingRep *)self setNeedsDisplay];
  }
}

- (id)p_trifurcationContainer
{
  if (![(CRLFreehandDrawingRep *)self p_isTrifurcatedRenderingEnabled])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133C9D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133C9EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133CA7C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_trifurcationContainer]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1581 isFatal:0 description:"Should not ask for the trifurcation container when rendering is not trifurcated."];
  }

  activeTrifurcationContainer = self->_activeTrifurcationContainer;
  if (activeTrifurcationContainer)
  {
    v7 = activeTrifurcationContainer;
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    v11 = [(NSMutableSet *)self->_childRepsForTrifurcation mutableCopy];
    p_shapeChildrenForDrawingRecursively = [(CRLFreehandDrawingRep *)self p_shapeChildrenForDrawingRecursively];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [p_shapeChildrenForDrawingRecursively countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(p_shapeChildrenForDrawingRecursively);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v11 count];
          v19 = v10;
          if (v18)
          {
            v20 = [v11 containsObject:v17];
            v19 = v8;
            if (v20)
            {
              [v11 removeObject:v17];
              v19 = v9;
            }
          }

          [v19 addObject:v17];
        }

        v14 = [p_shapeChildrenForDrawingRecursively countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v21 = [[CRLFreehandDrawingRepTrifurcationContainer alloc] initWithDelegate:self backReps:v8 middleReps:v9 frontReps:v10];
    v22 = self->_activeTrifurcationContainer;
    self->_activeTrifurcationContainer = v21;

    v7 = self->_activeTrifurcationContainer;
  }

  return v7;
}

- (void)didAddSixChannelEnabledChildRep:(id)rep
{
  repCopy = rep;
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if ((isCanvasInteractive & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133CAA4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133CAB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133CB48();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didAddSixChannelEnabledChildRep:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1623 isFatal:0 description:"Should not call -didAddSixChannelEnabledChildRep: on a non-interactive canvas."];
  }

  if ([(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled containsObject:repCopy])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133CB70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133CB98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133CC28();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didAddSixChannelEnabledChildRep:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1624 isFatal:0 description:"Should not report to add a six channel enabled child rep that is already added."];
  }

  parentRep = [repCopy parentRep];

  if (parentRep != self)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133CC50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133CC78();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133CD24();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didAddSixChannelEnabledChildRep:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1625 isFatal:0 description:"expected equality between %{public}s and %{public}s", "childRep.parentRep", "self"];
  }

  [(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled addObject:repCopy];
  if ([(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled count]== 1)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];
  }
}

- (void)didRemoveSixChannelEnabledChildRep:(id)rep
{
  repCopy = rep;
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if ((isCanvasInteractive & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133CD4C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133CD60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133CDF0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didRemoveSixChannelEnabledChildRep:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1636 isFatal:0 description:"Should not call -didRemoveSixChannelEnabledChildRep: on a non-interactive canvas."];
  }

  if (([(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled containsObject:repCopy]& 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133CE18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133CE40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133CED0();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didRemoveSixChannelEnabledChildRep:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1637 isFatal:0 description:"Should not report to remove a six channel enabled child rep that was not added."];
  }

  [(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled removeObject:repCopy];
  if (![(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled count])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];
  }
}

- (void)didAddSixChannelSuppressingChildRep:(id)rep
{
  repCopy = rep;
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if ((isCanvasInteractive & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133CEF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133CF0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133CF9C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didAddSixChannelSuppressingChildRep:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1649 isFatal:0 description:"Should not call -didAddSixChannelSuppressingChildRep: on a non-interactive canvas."];
  }

  if ([(NSMutableSet *)self->_childRepsSuppressingSixChannelRender containsObject:repCopy])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133CFC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133CFEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133D07C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didAddSixChannelSuppressingChildRep:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1650 isFatal:0 description:"Should not report to add a six channel suppressing child rep that is already added."];
  }

  parentRep = [repCopy parentRep];

  if (parentRep != self)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133D0A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133D0CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133D178();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didAddSixChannelSuppressingChildRep:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1651 isFatal:0 description:"expected equality between %{public}s and %{public}s", "childRep.parentRep", "self"];
  }

  [(NSMutableSet *)self->_childRepsSuppressingSixChannelRender addObject:repCopy];
  if ([(NSMutableSet *)self->_childRepsSuppressingSixChannelRender count]== 1)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];
  }
}

- (void)didRemoveSixChannelSuppressingChildRep:(id)rep
{
  repCopy = rep;
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if ((isCanvasInteractive & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133D1A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133D1B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133D244();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didRemoveSixChannelSuppressingChildRep:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1662 isFatal:0 description:"Should not call -didRemoveSixChannelSuppressingChildRep: on a non-interactive canvas."];
  }

  if (([(NSMutableSet *)self->_childRepsSuppressingSixChannelRender containsObject:repCopy]& 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133D26C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133D294();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133D324();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep didRemoveSixChannelSuppressingChildRep:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1663 isFatal:0 description:"Should not report to remove a six channel suppressing child rep that was not added."];
  }

  [(NSMutableSet *)self->_childRepsSuppressingSixChannelRender removeObject:repCopy];
  if (![(NSMutableSet *)self->_childRepsSuppressingSixChannelRender count])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    [interactiveCanvasController invalidateContentLayersForRep:self];
  }
}

- (void)runStrokeAnimation:(id)animation
{
  animationCopy = animation;
  [(CRLFreehandDrawingRep *)self p_cleanUpExistingStrokeAnimationIfNeeded];
  strokeAnimator = self->_strokeAnimator;
  self->_strokeAnimator = animationCopy;

  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  [interactiveCanvasController invalidateContentLayersForRep:self];
}

- (void)prepareForPencilKitSnapshotting
{
  v3.receiver = self;
  v3.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v3 prepareForPencilKitSnapshotting];
  [(CRLFreehandDrawingRep *)self p_cleanUpExistingStrokeAnimationIfNeeded];
}

- (void)p_cleanUpExistingStrokeAnimationIfNeeded
{
  v3 = self->_strokeAnimator;
  if (v3)
  {
    if (qword_101AD5C40 != -1)
    {
      sub_10133D34C();
    }

    v4 = off_1019EDC98;
    if (os_log_type_enabled(off_1019EDC98, OS_LOG_TYPE_DEFAULT))
    {
      strokeAnimator = self->_strokeAnimator;
      *buf = 134349056;
      v24 = strokeAnimator;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up existing stroke animation %{public}p.", buf, 0xCu);
    }

    v6 = self->_strokeAnimator;
    self->_strokeAnimator = 0;

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    mainBoard = [editingCoordinator mainBoard];

    [interactiveCanvasController invalidateContentLayersForRep:self];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    incomingShapeItemUUIDs = [(CRLiOSFreehandDrawingStrokeAnimator *)v3 incomingShapeItemUUIDs];
    v11 = [incomingShapeItemUUIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(incomingShapeItemUUIDs);
          }

          v15 = [mainBoard getBoardItemForUUID:*(*(&v18 + 1) + 8 * i)];
          if (v15)
          {
            v16 = [interactiveCanvasController repForInfo:v15];
            v17 = v16;
            if (v16)
            {
              [v16 setNeedsDisplay];
            }
          }
        }

        v12 = [incomingShapeItemUUIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (id)beginEditingChildrenIfAllowedAtUnscaledPoint:(CGPoint)point pickingDeepestChild:(BOOL)child
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController:child];
  freehandDrawingToolkit = [v5 freehandDrawingToolkit];
  canBeginFreehandDrawingMode = [freehandDrawingToolkit canBeginFreehandDrawingMode];

  if (canBeginFreehandDrawingMode)
  {
    selfCopy = self;
    interactiveCanvasController = [(CRLCanvasRep *)selfCopy interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    interactiveCanvasController2 = [(CRLCanvasRep *)selfCopy interactiveCanvasController];
    canvasEditor = [interactiveCanvasController2 canvasEditor];
    info = [(CRLCanvasRep *)selfCopy info];
    v14 = [canvasEditor selectionPathWithInfo:info];
    [editorController setSelectionPath:v14];

    interactiveCanvasController3 = [(CRLCanvasRep *)selfCopy interactiveCanvasController];
    freehandDrawingToolkit2 = [interactiveCanvasController3 freehandDrawingToolkit];
    [freehandDrawingToolkit2 beginDrawingModeIfNeededForTouchType:1];
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)hitRep:(CGPoint)rep withPrecision:(BOOL)precision passingTest:(id)test
{
  precisionCopy = precision;
  y = rep.y;
  x = rep.x;
  testCopy = test;
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];
  freehandDrawingToolkit = [canvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (isInDrawingMode)
  {
    v17.receiver = self;
    v17.super_class = CRLFreehandDrawingRep;
    selfCopy = [(CRLCanvasRep *)&v17 hitRep:precisionCopy withPrecision:testCopy passingTest:x, y];
LABEL_9:
    v15 = selfCopy;
    goto LABEL_11;
  }

  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews]&& ([(CRLCanvasRep *)self boundsForStandardKnobs], v19.x = x, v19.y = y, CGRectContainsPoint(v20, v19)) || [(CRLGroupRep *)self containsPoint:precisionCopy withPrecision:x, y]&& (!testCopy || testCopy[2](testCopy, self)))
  {
    selfCopy = self;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (CGRect)frameInUnscaledCanvasForMarqueeSelecting
{
  v19.receiver = self;
  v19.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v19 frameInUnscaledCanvasForMarqueeSelecting];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews])
  {
    [(CRLCanvasRep *)self boundsForStandardKnobs];
    [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:?];
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)intersectsUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingRep;
  if ([(CRLGroupRep *)&v10 intersectsUnscaledRect:?])
  {
    LOBYTE(p_hasMathResultViews) = 1;
  }

  else
  {
    p_hasMathResultViews = [(CRLFreehandDrawingRep *)self p_hasMathResultViews];
    if (p_hasMathResultViews)
    {
      [(CRLFreehandDrawingRep *)self frameInUnscaledCanvasForMarqueeSelecting];
      v13.origin.x = x;
      v13.origin.y = y;
      v13.size.width = width;
      v13.size.height = height;
      v12 = CGRectIntersection(v11, v13);
      v14.origin.x = CGRectNull.origin.x;
      v14.origin.y = CGRectNull.origin.y;
      v14.size.width = CGRectNull.size.width;
      v14.size.height = CGRectNull.size.height;
      LOBYTE(p_hasMathResultViews) = !CGRectEqualToRect(v12, v14);
    }
  }

  return p_hasMathResultViews;
}

- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)point
{
  if ([_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled:point.x])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [interactiveCanvasController documentIsSharedReadOnly] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)handleEditMenuTapAtPoint:(CGPoint)point inputType:(int64_t)type
{
  y = point.y;
  x = point.x;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled]&& [(CRLCanvasRep *)self isSelected])
  {
    freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    mathRecognitionHandler = [freehandDrawingLayout mathRecognitionHandler];
    [mathRecognitionHandler setShouldCallEditMenuTapForRep:1];

    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    miniFormatterPresenter = [layerHost miniFormatterPresenter];

    asiOSPresenter = [miniFormatterPresenter asiOSPresenter];
    isPresentingInFixedPosition = [asiOSPresenter isPresentingInFixedPosition];

    if (self->_allowedToToggleMathPopoverUI)
    {
      if (-[CRLFreehandDrawingRep p_triggerMathTapAtPoint:](self, "p_triggerMathTapAtPoint:", x, y) && !(isPresentingInFixedPosition & 1 | (([miniFormatterPresenter isPresentingMiniFormatter] & 1) == 0)))
      {
        [(CRLFreehandDrawingRep *)self p_hideMiniFormatter];
      }
    }

    else
    {
      self->_allowedToToggleMathPopoverUI = 1;
    }

    if (((self->_isPresentingMathPopoverUI | isPresentingInFixedPosition) & 1) == 0)
    {
      [(CRLFreehandDrawingRep *)self p_toggleMiniFormatter];
    }
  }

  else if ([(CRLGroupRep *)self isSelectedIgnoringLocking])
  {

    [(CRLFreehandDrawingRep *)self p_toggleMiniFormatter];
  }
}

- (BOOL)p_triggerMathTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  mathRecognitionHandler = [freehandDrawingLayout mathRecognitionHandler];
  mathViewController = [mathRecognitionHandler mathViewController];
  v9 = [mathViewController handleSingleTapAtDrawingLocation:{x, y}];

  freehandDrawingLayout2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  mathRecognitionHandler2 = [freehandDrawingLayout2 mathRecognitionHandler];
  self->_isPresentingMathPopoverUI = [mathRecognitionHandler2 isPresentingPopoverUI];

  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
    subviews = [p_baseMathView subviews];

    v14 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(subviews);
          }

          subviews2 = [*(*(&v22 + 1) + 8 * i) subviews];
          v19 = [subviews2 count];

          if (v19)
          {
            interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
            [interactiveCanvasController invalidateContentLayersForRep:self];

            goto LABEL_12;
          }
        }

        v15 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v9;
}

- (BOOL)manuallyControlsMiniFormatter
{
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  manuallyControlsMiniFormatter = [(CRLCanvasRep *)&v4 manuallyControlsMiniFormatter];
  return (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled]| manuallyControlsMiniFormatter) & 1;
}

- (void)p_toggleMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  if (isPresentingMiniFormatter)
  {

    [(CRLFreehandDrawingRep *)self p_hideMiniFormatter];
  }

  else
  {

    [(CRLFreehandDrawingRep *)self p_showMiniFormatter];
  }
}

- (void)p_showMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  if (([interactiveCanvasController documentIsSharedReadOnly] & 1) == 0)
  {
    layerHost = [interactiveCanvasController layerHost];
    miniFormatterPresenter = [layerHost miniFormatterPresenter];
    p_selectionPath = [(CRLFreehandDrawingRep *)self p_selectionPath];
    [miniFormatterPresenter presentMiniFormatterForSelectionPath:p_selectionPath];
  }
}

- (void)p_hideMiniFormatter
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  miniFormatterPresenter = [layerHost miniFormatterPresenter];
  [miniFormatterPresenter dismissMiniFormatterForRep:self];
}

- (id)p_selectionPath
{
  isSelected = [(CRLCanvasRep *)self isSelected];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = interactiveCanvasController;
  if (isSelected)
  {
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
  }

  else
  {
    editorController = [interactiveCanvasController canvasEditor];
    freehandDrawingInfo = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
    selectionPath = [editorController selectionPathWithInfo:freehandDrawingInfo];
  }

  return selectionPath;
}

- (BOOL)handledLassoTapAtPoint:(CGPoint)point withInputType:(int64_t)type
{
  y = point.y;
  x = point.x;
  v9.receiver = self;
  v9.super_class = CRLFreehandDrawingRep;
  v7 = [(CRLCanvasRep *)&v9 handledLassoTapAtPoint:type withInputType:?];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    v7 |= [(CRLFreehandDrawingRep *)self p_handledTapAtPoint:x, y];
  }

  return v7 & 1;
}

- (BOOL)handledDirectTouchForDrawingModePencilOnlyAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingRep;
  v6 = [(CRLCanvasRep *)&v8 handledDirectTouchForDrawingModePencilOnlyAtPoint:?];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    v6 |= [(CRLFreehandDrawingRep *)self p_handledTapAtPoint:x, y];
  }

  return v6 & 1;
}

- (BOOL)p_handledTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  mathRecognitionHandler = [freehandDrawingLayout mathRecognitionHandler];
  [mathRecognitionHandler setShouldCallEditMenuTapForRep:0];

  if ([(CRLCanvasRep *)self isLocked])
  {
    return 0;
  }

  freehandDrawingLayout2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  mathRecognitionHandler2 = [freehandDrawingLayout2 mathRecognitionHandler];
  mathViewController = [mathRecognitionHandler2 mathViewController];
  v12 = [mathViewController handleSingleTapAtDrawingLocation:{x, y}];

  return v12;
}

- (BOOL)directlyManagesLayerContent
{
  if ([(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  return [(CRLGroupRep *)&v4 directlyManagesLayerContent];
}

- (Class)layerClass
{
  if ([(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer])
  {
    [(CRLFreehandDrawingRep *)self p_wantsSixChannelLayer];
    layerClass = objc_opt_class();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLFreehandDrawingRep;
    layerClass = [(CRLGroupRep *)&v5 layerClass];
  }

  return layerClass;
}

- (BOOL)drawsDescendantsIntoLayer
{
  if (!self->_drawsDescendantsIntoLayer)
  {
    self->_drawsDescendantsIntoLayer = 1;
    [(CRLFreehandDrawingRep *)self setNeedsDisplay];
  }

  return 1;
}

- (CGRect)frameInUnscaledCanvas
{
  if ([(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer])
  {
    [(CRLGroupRep *)self clipRect];
    [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:?];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLFreehandDrawingRep;
    [(CRLGroupRep *)&v7 frameInUnscaledCanvas];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)i_baseFrameInUnscaledCanvasForPositioningLayer
{
  if ([(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer])
  {
    [(CRLFreehandDrawingRep *)self frameInUnscaledCanvas];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLFreehandDrawingRep;
    [(CRLGroupRep *)&v7 i_baseFrameInUnscaledCanvasForPositioningLayer];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)skipsRerenderForTranslation
{
  canvas = [(CRLCanvasRep *)self canvas];
  canvasController = [canvas canvasController];
  shouldSupportedDynamicOperationsEnqueueCommandsInRealTime = [canvasController shouldSupportedDynamicOperationsEnqueueCommandsInRealTime];

  return shouldSupportedDynamicOperationsEnqueueCommandsInRealTime;
}

- (void)setNeedsDisplay
{
  if ([(CRLFreehandDrawingRep *)self p_shouldAllowSetNeedsDisplay])
  {
    v3.receiver = self;
    v3.super_class = CRLFreehandDrawingRep;
    [(CRLGroupRep *)&v3 setNeedsDisplay];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(CRLFreehandDrawingRep *)self p_shouldAllowSetNeedsDisplay])
  {
    v8.receiver = self;
    v8.super_class = CRLFreehandDrawingRep;
    [(CRLCanvasRep *)&v8 setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)updateRenderableGeometryFromLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy frame];
  v6 = v5;
  v8 = v7;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v15 updateRenderableGeometryFromLayout:layoutCopy];
  [layoutCopy frame];
  v10 = v9;
  v12 = v11;
  layout = [(CRLCanvasRep *)self layout];
  layoutState = [layout layoutState];

  if (layoutState != 3 && !sub_10011ECC8(v6, v8, v10, v12) && [(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer]&& ![(CRLFreehandDrawingRep *)self p_isTrifurcatedRenderingEnabled]&& [(CRLFreehandDrawingRep *)self p_shouldAllowSetNeedsDisplay])
  {
    [layoutCopy setNeedsDisplay];
  }
}

- (void)becameSelected
{
  v3.receiver = self;
  v3.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v3 becameSelected];
  self->_allowedToToggleMathPopoverUI = 0;
  self->_isPresentingMathPopoverUI = 0;
}

- (void)becameNotSelected
{
  v2.receiver = self;
  v2.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v2 becameNotSelected];
}

- (BOOL)shouldShowSelectionHighlight
{
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingRep;
  shouldShowSelectionHighlight = [(CRLGroupRep *)&v8 shouldShowSelectionHighlight];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  return (isInDrawingMode ^ 1) & shouldShowSelectionHighlight;
}

- (double)p_zPositionForSelectionHighlightLayer
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  result = 0.0;
  if (isInDrawingMode)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)shouldShowKnobs
{
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingRep;
  shouldShowKnobs = [(CRLCanvasRep *)&v8 shouldShowKnobs];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  return (isInDrawingMode ^ 1) & shouldShowKnobs;
}

- (BOOL)shouldHitTestChildKnobs
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  if ([freehandDrawingToolkit isInDrawingMode])
  {
    freehandDrawingToolkit2 = [interactiveCanvasController freehandDrawingToolkit];
    v5 = [freehandDrawingToolkit2 wantsToSuppressKnobsOnTransformReps] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)processChangedProperty:(unint64_t)property
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v5 processChangedProperty:?];
  if (property == 5)
  {
    if ([(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer])
    {
      [(CRLFreehandDrawingRep *)self setNeedsDisplay];
    }
  }
}

- (id)p_ingestibleItemSourceForDragInfo:(id)info
{
  itemSource = [info itemSource];
  v10 = sub_1003035DC(itemSource, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLIngestibleItemSource);

  return v10;
}

- (id)dragAndDropHighlightRenderable
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  dragAndDropHighlightRenderable = [(CRLCanvasRep *)&v5 dragAndDropHighlightRenderable];
  if ([(CRLFreehandDrawingRep *)self shouldShowSelectionHighlight])
  {
    [(CRLFreehandDrawingRep *)self p_zPositionForSelectionHighlightLayer];
    [dragAndDropHighlightRenderable setZPosition:?];
  }

  return dragAndDropHighlightRenderable;
}

- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingRep;
  v8 = [(CRLCanvasRep *)&v10 dragOperationForDragInfo:infoCopy atUnscaledPoint:x, y];
  if ([(CRLFreehandDrawingRep *)self p_canReceiveDropWithDragInfo:infoCopy])
  {
    v8 = [infoCopy dragOperationMask] & 1;
  }

  return v8;
}

- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  freehandDrawingInfo = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
  v13 = [canvasEditor selectionPathWithInfo:freehandDrawingInfo];
  [editorController setSelectionPath:v13];

  v14 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];
  v15 = [(CRLFreehandDrawingRep *)self p_ingestibleItemSourceForDragInfo:infoCopy];

  [v14 insertContentsOfFreehandDrawingsFromItemSource:v15 atUnscaledPoint:&stru_10184D218 completionHandler:{x, y}];
  return 1;
}

- (void)dynamicResizeDidEndWithTracker:(id)tracker
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v5 dynamicResizeDidEndWithTracker:tracker];
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v4 setNeedsDisplay];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)tracker
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v5 dynamicFreeTransformDidEndWithTracker:tracker];
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v4 setNeedsDisplay];
}

- (double)canvasViewScaleForTrifurcationContainer:(id)container
{
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas viewScale];
  v5 = v4;

  return v5;
}

- (double)canvasContentsScaleForTrifurcationContainer:(id)container
{
  canvas = [(CRLCanvasRep *)self canvas];
  [canvas contentsScale];
  v5 = v4;

  return v5;
}

- (CGPoint)parentScaledCanvasFrameOriginForTrifurcationContainer:(id)container
{
  parentRep = [(CRLCanvasRep *)self parentRep];
  v4 = parentRep;
  if (parentRep)
  {
    [parentRep layerFrameInScaledCanvas];
    x = v5;
    y = v7;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)clipRectInScaledCanvasForTrifurcationContainer:(id)container
{
  canvas = [(CRLCanvasRep *)self canvas];
  [(CRLGroupRep *)self clipRect];
  [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:?];
  [canvas convertUnscaledToBoundsRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)drawShapeReps:(id)reps intoContext:(CGContext *)context forLayer:(id)layer inTrifurcationContainer:(id)container
{
  layerCopy = layer;
  repsCopy = reps;
  CGContextSaveGState(context);
  [layerCopy frame];
  CGContextTranslateCTM(context, -v11, -v12);
  [(CRLCanvasRep *)self layerFrameInScaledCanvasRelativeToParent];
  CGContextTranslateCTM(context, v13, v14);
  [(CRLCanvasRep *)self setupForDrawingInLayer:layerCopy context:context];
  [(CRLFreehandDrawingRep *)self p_drawShapeChildren:repsCopy inContext:context];

  [(CRLCanvasRep *)self didDrawInLayer:layerCopy context:context];

  CGContextRestoreGState(context);
}

- (void)documentModeDidChange
{
  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v6 documentModeDidChange];
  [(CRLCanvasRep *)self invalidateKnobs];
  [(CRLCanvasRep *)self invalidateSelectionHighlightRenderable];
  [(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer];
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if ((isInDrawingMode & 1) == 0)
  {
    [(CRLFreehandDrawingRep *)self p_removeSubselectionAffordanceIfNeeded];
  }
}

- (void)suppressionOfFreehandContentDidChange
{
  if (![(CRLCanvasRep *)self isLocked])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    shouldSuppressFreehandContent = [interactiveCanvasController shouldSuppressFreehandContent];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [interactiveCanvasController containerRenderablesForRep:{self, 0}];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [*(*(&v10 + 1) + 8 * v9) setHidden:shouldSuppressFreehandContent];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (+[CRLFeatureFlagsHelper isOSFeatureEnabled:](CRLFeatureFlagsHelper, "isOSFeatureEnabled:", 3) && (-[CRLCanvasRep interactiveCanvasController](self, "interactiveCanvasController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 drawingIntelligenceProvider], v7 = objc_claimAutoreleasedReturnValue(), -[CRLCanvasRep convertNaturalPointToUnscaledCanvas:](self, "convertNaturalPointToUnscaledCanvas:", x, y), objc_msgSend(v6, "convertUnscaledToBoundsPoint:"), v8 = objc_msgSend(v7, "isDetectionDecoratorViewHitAtScaledPoint:"), v7, v6, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRLFreehandDrawingRep;
    v9 = [(CRLCanvasRep *)&v11 dragItemsForBeginningDragAtPoint:x, y];
  }

  return v9;
}

- (id)dragItemsForBeginningDragOfChildRep:(id)rep
{
  if ([rep isSelected])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    v6 = [editorController mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLFreehandDrawingHostingEditor];
    v13 = sub_1003035DC(v6, 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLFreehandDrawingHostingEditor);

    if (!v13)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133D360();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133D374();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133D410();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep dragItemsForBeginningDragOfChildRep:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:2366 isFatal:0 description:"invalid nil value for '%{public}s'", "hostingEditor"];
    }

    if (([v13 canCopySubselection] & 1) == 0)
    {

      v40 = &__NSArray0__struct;
      goto LABEL_45;
    }

    selfCopy = self;
    v43 = [CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:v13];
    v45 = v13;
    boardItemsForDragAndDropTracing = [v13 boardItemsForDragAndDropTracing];
    v18 = +[NSMutableArray array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = boardItemsForDragAndDropTracing;
    v19 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
    v20 = &off_1019EDA68;
    if (v19)
    {
      v21 = v19;
      v22 = *v48;
      do
      {
        v23 = 0;
        do
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [interactiveCanvasController repForInfo:*(*(&v47 + 1) + 8 * v23)];
          if (!v24)
          {
            v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10133D438();
            }

            v26 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v52 = v25;
              v53 = 2082;
              v54 = "[CRLFreehandDrawingRep dragItemsForBeginningDragOfChildRep:]";
              v55 = 2082;
              v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m";
              v57 = 1024;
              v58 = 2376;
              v59 = 2082;
              v60 = "rep";
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10133D460();
            }

            v27 = v20;
            v28 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              v32 = v28;
              v33 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v52 = v25;
              v53 = 2114;
              v54 = v33;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v29 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep dragItemsForBeginningDragOfChildRep:]"];
            v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
            [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:2376 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

            v20 = v27;
          }

          unscaledPathToIncludeForSystemPreviewOutline = [v24 unscaledPathToIncludeForSystemPreviewOutline];
          [v18 crl_addNonNilObject:unscaledPathToIncludeForSystemPreviewOutline];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v21);
    }

    v34 = objc_alloc_init(CRLItemProviderItemWriter);
    interactiveCanvasController2 = [(CRLCanvasRep *)selfCopy interactiveCanvasController];
    v36 = [(CRLItemProviderItemWriter *)v34 createItemProviderWithCopyOfBoardItems:v43 fromInteractiveCanvasController:interactiveCanvasController2 outCopiedBoardItems:0];

    if (v36)
    {
      v37 = [v18 copy];
      v38 = +[UIColor clearColor];
      v39 = [(CRLCanvasRep *)selfCopy dragItemsForBeginningDragWithItemProvider:v36 deepCopiedBoardItems:v43 withUnscaledTracedPaths:v37 previewBackgroundColor:v38 localObjectProvider:0];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133D488();
      }

      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        sub_10133D4B0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133D54C();
      }

      v41 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v41);
      }

      v37 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep dragItemsForBeginningDragOfChildRep:]"];
      v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:2384 isFatal:0 description:"invalid nil value for '%{public}s'", "itemProvider"];
      v39 = &__NSArray0__struct;
    }
  }

  else
  {
    v39 = &__NSArray0__struct;
  }

  v40 = v39;
LABEL_45:

  return v40;
}

- (id)unscaledPathToIncludeForSystemPreviewOutline
{
  layout = [(CRLCanvasRep *)self layout];
  v4 = +[CRLBezierPath bezierPath];
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  if (sub_1001399E4(&v11) && ![v4 isEmpty] || (-[CRLFreehandDrawingRep freehandDrawingInfo](self, "freehandDrawingInfo", v11, v12, v13), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "shouldBeTreatedAsBoxForConnectionLinesForPerf"), v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    i_wrapPath = [layout i_wrapPath];
    v7 = [i_wrapPath copy];

    if (v7)
    {
      v8 = v7;
      if (![v7 isEmpty])
      {
        goto LABEL_9;
      }
    }
  }

  [(CRLCanvasRep *)self boundsForStandardKnobs:v11];
  v8 = [CRLBezierPath bezierPathWithRect:?];

LABEL_9:
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  [v8 transformUsingAffineTransform:&v11];
  [v4 appendBezierPath:v8];

  return v4;
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  changesCopy = changes;
  sourceCopy = source;
  if (!self->_shouldUpdateAffordanceOnNextDidProcessAllChanges)
  {
    v22 = sourceCopy;
    v7 = [(NSSet *)self->_currentlySelectedInfosShowingAffordance containsObject:sourceCopy];
    sourceCopy = v22;
    if (v7)
    {
      selfCopy = self;
      v8 = objc_opt_class();
      v21 = sub_100013F00(v8, v22);
      if (!v21)
      {
LABEL_19:

        sourceCopy = v22;
        goto LABEL_20;
      }

      layout = [(CRLCanvasRep *)self layout];
      layoutController = [layout layoutController];
      v19 = [layoutController layoutForInfo:v21];

      v11 = v19;
      if ([v19 layoutState] != 2)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v12 = changesCopy;
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          v14 = *v30;
          v15 = 1;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v12);
              }

              details = [*(*(&v29 + 1) + 8 * i) details];
              v18 = details;
              if (details)
              {
                v25 = 0;
                v26 = &v25;
                v27 = 0x2020000000;
                v28 = 1;
                v24[0] = _NSConcreteStackBlock;
                v24[1] = 3221225472;
                v24[2] = sub_1002601A4;
                v24[3] = &unk_10184D300;
                v24[4] = &v25;
                [details enumeratePropertiesUsingBlock:v24];
                v15 &= *(v26 + 24) ^ 1;
                _Block_object_dispose(&v25, 8);
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v13);

          v11 = v19;
          if ((v15 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {

          v11 = v19;
        }

        selfCopy->_shouldUpdateAffordanceOnNextDidProcessAllChanges = 1;
      }

LABEL_18:

      goto LABEL_19;
    }
  }

LABEL_20:
}

- (void)didProcessAllChanges
{
  if (self->_shouldUpdateAffordanceOnNextDidProcessAllChanges)
  {
    self->_shouldUpdateAffordanceOnNextDidProcessAllChanges = 0;
    [(CRLFreehandDrawingRep *)self p_selectionOrSelectedInfosChanged];
  }
}

- (void)p_selectionOrSelectedInfosChanged
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (isInDrawingMode)
  {
    interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
    editorController = [interactiveCanvasController2 editorController];
    selectionPath = [editorController selectionPath];
    v12 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

    if (v12 && ([v12 boardItems], v9 = objc_claimAutoreleasedReturnValue(), -[CRLFreehandDrawingRep freehandDrawingInfo](self, "freehandDrawingInfo"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "containsObject:", v10), v10, v9, v11))
    {
      [(CRLFreehandDrawingRep *)self p_updateSubselectionAffordance];
    }

    else
    {
      [(CRLFreehandDrawingRep *)self p_removeSubselectionAffordanceIfNeeded];
    }
  }
}

- (void)p_updateSubselectionAffordance
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v6 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

  boardItems = [v6 boardItems];
  v20 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = boardItems;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, v13);
        v16 = v15;
        if (v15)
        {
          parentInfo = [v15 parentInfo];
          containerInfo = [(CRLGroupRep *)self containerInfo];
          v19 = [parentInfo isEqual:containerInfo];

          if (v19)
          {
            [v20 addObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  [(CRLFreehandDrawingRep *)self p_showSubselectionAffordanceForInfos:v20];
}

- (void)p_removeSubselectionAffordanceIfNeeded
{
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  showingSubselectionAffordance = [freehandDrawingLayout showingSubselectionAffordance];

  if (showingSubselectionAffordance)
  {
    v5 = +[NSSet set];
    [(CRLFreehandDrawingRep *)self p_showSubselectionAffordanceForInfos:v5];
  }
}

- (void)p_showSubselectionAffordanceForInfos:(id)infos
{
  infosCopy = infos;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_currentlySelectedInfosShowingAffordance;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        editingCoordinator = [interactiveCanvasController editingCoordinator];
        changeNotifier = [editingCoordinator changeNotifier];
        [changeNotifier removeObserver:self forChangeSource:v10];
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [freehandDrawingLayout showSubselectionAffordanceForSelectedInfos:infosCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = infosCopy;
  v16 = [(NSSet *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
        editingCoordinator2 = [interactiveCanvasController2 editingCoordinator];
        changeNotifier2 = [editingCoordinator2 changeNotifier];
        [changeNotifier2 addObserver:self forChangeSource:v20];
      }

      v17 = [(NSSet *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  currentlySelectedInfosShowingAffordance = self->_currentlySelectedInfosShowingAffordance;
  self->_currentlySelectedInfosShowingAffordance = v15;
}

- (id)p_shapeChildrenForDrawingRecursively
{
  childReps = [(CRLCanvasRep *)self childReps];
  p_childrenToExcludeFromFlattenedDrawing = [(CRLFreehandDrawingRep *)self p_childrenToExcludeFromFlattenedDrawing];
  v20 = p_childrenToExcludeFromFlattenedDrawing;
  if ([p_childrenToExcludeFromFlattenedDrawing count])
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100260A48;
    v27[3] = &unk_10183F5F8;
    v27[4] = p_childrenToExcludeFromFlattenedDrawing;
    v5 = [childReps crl_arrayOfObjectsPassingTest:v27];

    childReps = v5;
  }

  incomingShapeItemUUIDs = [(CRLiOSFreehandDrawingStrokeAnimator *)self->_strokeAnimator incomingShapeItemUUIDs];
  v21 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = childReps;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = sub_100013F00(v12, v11);
        v14 = v13;
        if (v13)
        {
          shapeLayout = [v13 shapeLayout];
          if ([shapeLayout isInvisible])
          {
          }

          else
          {
            shapeInfo = [v14 shapeInfo];
            v17 = [shapeInfo id];
            v18 = [incomingShapeItemUUIDs containsObject:v17];

            if ((v18 & 1) == 0)
            {
              [v21 addObject:v14];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  return v21;
}

- (id)p_childrenToExcludeFromFlattenedDrawing
{
  v3 = +[NSMutableSet set];
  canvas = [(CRLCanvasRep *)self canvas];
  isCanvasInteractive = [canvas isCanvasInteractive];

  if (isCanvasInteractive)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    transformInfo = [freehandDrawingLayout transformInfo];
    if (transformInfo)
    {
      v9 = [interactiveCanvasController repForInfo:transformInfo];
      if (v9)
      {
        [v3 addObject:v9];
      }
    }

    v10 = objc_opt_class();
    freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
    currentTool = [freehandDrawingToolkit currentTool];
    v13 = sub_100014370(v10, currentTool);

    if (v13)
    {
      drawingReps = [v13 drawingReps];
      allObjects = [drawingReps allObjects];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100260C34;
      v18[3] = &unk_10184D328;
      v18[4] = self;
      v16 = [allObjects crl_arrayOfObjectsPassingTest:v18];

      [v3 addObjectsFromArray:v16];
    }
  }

  return v3;
}

- (BOOL)p_shouldAllowSetNeedsDisplay
{
  if ([(CRLCanvasRep *)self isBeingResized]|| [(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    freehandDrawingInfo = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
    if ([freehandDrawingInfo aspectRatioLocked])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      layout = [(CRLCanvasRep *)self layout];
      geometryInRoot = [layout geometryInRoot];
      v7 = geometryInRoot;
      if (geometryInRoot)
      {
        [geometryInRoot transform];
      }

      else
      {
        memset(v9, 0, sizeof(v9));
      }

      v4 = !sub_100139B5C(v9);
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)accessibilityHint
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (isInDrawingMode)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Double tap and hold, then drag to draw.";
LABEL_5:
    accessibilityHint = [v6 localizedStringForKey:v8 value:0 table:0];

    goto LABEL_7;
  }

  if ([(CRLCanvasRep *)self isSelected])
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Double tap to edit drawing.";
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingRep;
  accessibilityHint = [(CRLFreehandDrawingRep *)&v11 accessibilityHint];
LABEL_7:

  return accessibilityHint;
}

- (BOOL)accessibilityActivate
{
  if ([(CRLCanvasRep *)self isSelected])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
    freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
    isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

    if (isInDrawingMode)
    {
      return 0;
    }

    else
    {
      interactiveCanvasController2 = [(CRLCanvasRep *)self interactiveCanvasController];
      freehandDrawingToolkit2 = [interactiveCanvasController2 freehandDrawingToolkit];
      v6 = 1;
      [freehandDrawingToolkit2 beginDrawingModeIfNeededForTouchType:1];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLFreehandDrawingRep;
    return [(CRLFreehandDrawingRep *)&v10 accessibilityActivate];
  }

  return v6;
}

- (id)accessibilityDragSourceDescriptors
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (isInDrawingMode)
  {
    accessibilityDragSourceDescriptors = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLFreehandDrawingRep;
    accessibilityDragSourceDescriptors = [(CRLFreehandDrawingRep *)&v8 accessibilityDragSourceDescriptors];
  }

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityCustomActions
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (isInDrawingMode)
  {
    accessibilityCustomActions = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLFreehandDrawingRep;
    accessibilityCustomActions = [(CRLFreehandDrawingRep *)&v8 accessibilityCustomActions];
  }

  return accessibilityCustomActions;
}

- (CGPoint)accessibilityActivationPoint
{
  interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  MidX = -1.0;
  MidY = -1.0;
  if ((isInDrawingMode & 1) == 0)
  {
    [(CRLFreehandDrawingRep *)self accessibilityFrame];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    MidX = CGRectGetMidX(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    MidY = CGRectGetMidY(v15);
  }

  v12 = MidX;
  result.y = MidY;
  result.x = v12;
  return result;
}

- (BOOL)crlaxNeedsEditRotorMenu
{
  info = [(CRLCanvasRep *)self info];
  v4 = [NSMutableArray arrayWithObject:info];

  freehandDrawingInfo = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
  childInfos = [freehandDrawingInfo childInfos];
  [v4 addObjectsFromArray:childInfos];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        interactiveCanvasController = [(CRLCanvasRep *)self interactiveCanvasController];
        LOBYTE(v12) = [interactiveCanvasController currentSelectionPathContainsInfo:v12];

        if (v12)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (CGRect)crlaxAttachedMathResultViewFrame
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  p_baseMathView = [(CRLFreehandDrawingRep *)self p_baseMathView];
  subviews = [p_baseMathView subviews];

  v8 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v24 = height;
    v25 = width;
    v26 = y;
    v27 = CGRectNull.origin.x;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v28 + 1) + 8 * v11) accessibilityFrame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v37.origin.y = v26;
        v37.origin.x = v27;
        v37.size.height = v24;
        v37.size.width = v25;
        if (CGRectEqualToRect(v33, v37))
        {
          height = v19;
          width = v17;
          y = v15;
          x = v13;
        }

        else
        {
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v38.origin.x = v13;
          v38.origin.y = v15;
          v38.size.width = v17;
          v38.size.height = v19;
          v35 = CGRectIntersection(v34, v38);
          x = v35.origin.x;
          y = v35.origin.y;
          width = v35.size.width;
          height = v35.size.height;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (NSString)crlaxRecognizedMathDescription
{
  freehandDrawingLayout = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  mathRecognitionHandler = [freehandDrawingLayout mathRecognitionHandler];
  crlaxRecognizedMathDescription = [mathRecognitionHandler crlaxRecognizedMathDescription];

  return crlaxRecognizedMathDescription;
}

+ (BOOL)requestingTechnologyShouldProvideAdditionalContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v9[0] = AXTechnologyAutomation;
    v9[1] = AXTechnologyVoiceOver;
    v9[2] = AXTechnologySwitchControl;
    v4 = [NSArray arrayWithObjects:v9 count:3];
    v8[0] = AXTechnologyHoverText;
    v8[1] = AXTechnologySpeakScreen;
    v8[2] = AXTechnologyVoiceControl;
    v8[3] = AXTechnologyZoom;
    v8[4] = AXTechnologyFullKeyboardAccess;
    v5 = [NSArray arrayWithObjects:v8 count:5];
    v6 = [v4 containsObject:contextCopy];
    if ((v6 & 1) == 0)
    {
      [v5 containsObject:contextCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end