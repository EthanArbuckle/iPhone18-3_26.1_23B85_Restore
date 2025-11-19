@interface CRLFreehandDrawingRep
+ (BOOL)requestingTechnologyShouldProvideAdditionalContext:(id)a3;
- (BOOL)accessibilityActivate;
- (BOOL)crlaxNeedsEditRotorMenu;
- (BOOL)directlyManagesLayerContent;
- (BOOL)drawsDescendantsIntoLayer;
- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5;
- (BOOL)handledDirectTouchForDrawingModePencilOnlyAtPoint:(CGPoint)a3;
- (BOOL)handledLassoTapAtPoint:(CGPoint)a3 withInputType:(int64_t)a4;
- (BOOL)intersectsUnscaledRect:(CGRect)a3;
- (BOOL)manuallyControlsMiniFormatter;
- (BOOL)p_handledTapAtPoint:(CGPoint)a3;
- (BOOL)p_hasMathResultViews;
- (BOOL)p_shouldAllowSetNeedsDisplay;
- (BOOL)p_shouldDrawShapeRep:(id)a3 withOtherShapeRep:(id)a4;
- (BOOL)p_triggerMathTapAtPoint:(CGPoint)a3;
- (BOOL)shouldHitTestChildKnobs;
- (BOOL)shouldShowKnobs;
- (BOOL)shouldShowSelectionHighlight;
- (BOOL)skipsRerenderForTranslation;
- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)a3;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)parentScaledCanvasFrameOriginForTrifurcationContainer:(id)a3;
- (CGRect)clipRectInScaledCanvasForTrifurcationContainer:(id)a3;
- (CGRect)crlaxAttachedMathResultViewFrame;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)frameInUnscaledCanvasForMarqueeSelecting;
- (CGRect)i_baseFrameInUnscaledCanvasForPositioningLayer;
- (CGRect)p_boundsForMathResultViews;
- (CGRect)p_boundsInNaturalSpaceForMathView:(id)a3;
- (CGRect)p_getUnRotatedFrameWithoutMathResults;
- (CRLFreehandDrawingLayout)freehandDrawingLayout;
- (CRLFreehandDrawingRep)initWithLayout:(id)a3 canvas:(id)a4;
- (CRLWidthLimitedQueue)queueForConcurrentlyDrawingChildrenIntoLayersIfSafe;
- (Class)layerClass;
- (NSArray)decoratorOverlayViews;
- (NSString)crlaxRecognizedMathDescription;
- (_TtC8Freeform22CRLFreehandDrawingItem)freehandDrawingInfo;
- (double)canvasContentsScaleForTrifurcationContainer:(id)a3;
- (double)canvasViewScaleForTrifurcationContainer:(id)a3;
- (double)p_zPositionForSelectionHighlightLayer;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityHint;
- (id)additionalPlatformViewOverChildRenderables;
- (id)additionalRenderablesOverRenderable;
- (id)additionalRepsForDraggingConnectionLine:(id)a3;
- (id)beginEditingChildrenIfAllowedAtUnscaledPoint:(CGPoint)a3 pickingDeepestChild:(BOOL)a4;
- (id)createAdditionalBoardItemsForCopyImaging;
- (id)dragAndDropHighlightRenderable;
- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3;
- (id)dragItemsForBeginningDragOfChildRep:(id)a3;
- (id)hitRep:(CGPoint)a3 withPrecision:(BOOL)a4 passingTest:(id)a5;
- (id)p_baseMathView;
- (id)p_childrenToExcludeFromFlattenedDrawing;
- (id)p_ingestibleItemSourceForDragInfo:(id)a3;
- (id)p_selectionPath;
- (id)p_shapeChildrenForDrawingRecursively;
- (id)p_shapeChildrenForDrawingRecursivelyInRect:(CGRect)a3 passingTest:(id)a4;
- (id)p_trifurcationContainer;
- (id)renderablesDescendingDirectlyFromContentRenderable;
- (id)unscaledPathToIncludeForSystemPreviewOutline;
- (int64_t)dragTypeAtCanvasPoint:(CGPoint)a3 forTouchType:(int64_t)a4;
- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)beginTrifurcatedRenderForChildRep:(id)a3;
- (void)didAddSixChannelEnabledChildRep:(id)a3;
- (void)didAddSixChannelSuppressingChildRep:(id)a3;
- (void)didEndZoomingOperation;
- (void)didEnterBackground;
- (void)didProcessAllChanges;
- (void)didRemoveSixChannelEnabledChildRep:(id)a3;
- (void)didRemoveSixChannelSuppressingChildRep:(id)a3;
- (void)didUpdateChildLayers;
- (void)didUpdateMathResultView;
- (void)didUpdateRenderable:(id)a3;
- (void)didUpdateShouldSolveMathForTriggerStroke:(id)a3 shouldSolveMath:(BOOL)a4 undoable:(BOOL)a5;
- (void)documentModeDidChange;
- (void)drawShapeReps:(id)a3 intoContext:(CGContext *)a4 forLayer:(id)a5 inTrifurcationContainer:(id)a6;
- (void)dynamicFreeTransformDidEndWithTracker:(id)a3;
- (void)dynamicOperationDidEnd;
- (void)dynamicResizeDidEndWithTracker:(id)a3;
- (void)endTrifurcatedRenderForChildRep:(id)a3;
- (void)handleEditMenuTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4;
- (void)p_attachToRecognitionControllerIfNeeded;
- (void)p_cleanUpExistingStrokeAnimationIfNeeded;
- (void)p_concatenatePathDrawChildShapeReps:(id)a3 togetherInContext:(CGContext *)a4;
- (void)p_drawChildShapeReps:(id)a3 togetherInContext:(CGContext *)a4;
- (void)p_drawChildShapeRepsWithPencilKitStrokes:(id)a3 togetherInContext:(CGContext *)a4;
- (void)p_drawShapeChildren:(id)a3 inContext:(CGContext *)a4;
- (void)p_hideMiniFormatter;
- (void)p_removeSubselectionAffordanceIfNeeded;
- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabled;
- (void)p_selectionOrSelectedInfosChanged;
- (void)p_setupMathPaper;
- (void)p_showMiniFormatter;
- (void)p_showSubselectionAffordanceForInfos:(id)a3;
- (void)p_toggleMiniFormatter;
- (void)p_updateBaseMathViewIfNeeded;
- (void)p_updateLayoutBoundsForMathResultView;
- (void)p_updateSubselectionAffordance;
- (void)prepareForPencilKitSnapshotting;
- (void)processChangedProperty:(unint64_t)a3;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
- (void)runStrokeAnimation:(id)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)suppressionOfFreehandContentDidChange;
- (void)updateFromLayout;
- (void)updateRenderableGeometryFromLayout:(id)a3;
- (void)viewScaleDidChange;
- (void)viewScrollDidChange;
- (void)viewScrollingEnded;
- (void)willBeRemoved;
- (void)willEnterForeground;
@end

@implementation CRLFreehandDrawingRep

- (CRLFreehandDrawingRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a4;
  v28.receiver = self;
  v28.super_class = CRLFreehandDrawingRep;
  v7 = [(CRLCanvasRep *)&v28 initWithLayout:a3 canvas:v6];
  if (v7 && [v6 isCanvasInteractive])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = +[_TtC8Freeform28CRLMathCalculationController mathHintsModeChangedNotificationName];
    [v8 addObserver:v7 selector:"p_mathHintsModeChanged" name:v9 object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[_TtC8Freeform28CRLMathCalculationController mathHintsSuspensionStatusChangedNotificationName];
    [v10 addObserver:v7 selector:"p_suspensionStatusChanged" name:v11 object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    v13 = [(CRLCanvasRep *)v7 interactiveCanvasController];
    v14 = [v13 editorController];
    [v12 addObserver:v7 selector:"p_selectionOrSelectedInfosChanged" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v14];

    v15 = +[NSSet set];
    currentlySelectedInfosShowingAffordance = v7->_currentlySelectedInfosShowingAffordance;
    v7->_currentlySelectedInfosShowingAffordance = v15;

    v17 = [(CRLCanvasRep *)v7 canvas];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100256540;
    v26[3] = &unk_10183AB38;
    v18 = v7;
    v27 = v18;
    [v17 performBlockAfterLayoutIfNecessary:v26];

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
  v4 = [(CRLCanvasRep *)self info];
  v5 = sub_100013F00(v3, v4);

  return v5;
}

- (CRLFreehandDrawingLayout)freehandDrawingLayout
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRep *)self layout];
  v5 = sub_100013F00(v3, v4);

  return v5;
}

- (void)willBeRemoved
{
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isCanvasInteractive];

  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[_TtC8Freeform28CRLMathCalculationController mathHintsModeChangedNotificationName];
    [v5 removeObserver:self name:v6 object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[_TtC8Freeform28CRLMathCalculationController mathHintsSuspensionStatusChangedNotificationName];
    [v7 removeObserver:self name:v8 object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = [(CRLCanvasRep *)self interactiveCanvasController];
    v11 = [v10 editorController];
    [v9 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v11];

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
    v13 = [(CRLCanvasRep *)self canvas];
    v14 = [v13 isCanvasInteractive];

    if (v14)
    {
      v15 = [(CRLCanvasRep *)self interactiveCanvasController];
      [v15 removeDecorator:self];
    }
  }

  v16.receiver = self;
  v16.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v16 willBeRemoved];
}

- (id)additionalRepsForDraggingConnectionLine:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v6 = [v5 editorController];
  v7 = [v6 selectionPath];
  v8 = [v7 mostSpecificSelectionOfClass:objc_opt_class()];

  v9 = objc_opt_class();
  v10 = [(CRLCanvasRep *)self info];
  v11 = sub_100014370(v9, v10);

  if (v8 && v11 && ([v8 containerGroups], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v11), v12, v13))
  {
    v14 = [(CRLCanvasRep *)self childReps];
    v15 = [NSSet setWithArray:v14];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CRLFreehandDrawingRep;
    v15 = [(CRLCanvasRep *)&v17 additionalRepsForDraggingConnectionLine:v4];
  }

  return v15;
}

- (BOOL)p_shouldDrawShapeRep:(id)a3 withOtherShapeRep:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isMoreOptimalToDrawWithOtherShapeRepsIfPossible])
  {
    v7 = [v5 canDrawWithOtherShapeRep:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)p_drawChildShapeReps:(id)a3 togetherInContext:(CGContext *)a4
{
  v14 = a3;
  if ([v14 count])
  {
    if ([v14 count] == 1)
    {
      CGContextSaveGState(a4);
      v6 = [v14 objectAtIndexedSubscript:0];
      [v6 recursivelyDrawInContext:a4 keepingChildrenPassingTest:0];

      CGContextRestoreGState(a4);
    }

    else
    {
      v7 = [v14 firstObject];
      [v7 opacity];
      v9 = v8;

      if (v9 != 0.0)
      {
        v10 = [v14 firstObject];
        v11 = [v10 layout];
        v12 = [v11 stroke];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(CRLFreehandDrawingRep *)self p_drawChildShapeRepsWithPencilKitStrokes:v14 togetherInContext:a4];
        }

        else
        {
          [(CRLFreehandDrawingRep *)self p_concatenatePathDrawChildShapeReps:v14 togetherInContext:a4];
        }
      }
    }
  }
}

- (void)p_concatenatePathDrawChildShapeReps:(id)a3 togetherInContext:(CGContext *)a4
{
  v5 = a3;
  if ([v5 count] <= 1)
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
  [v5 firstObject];
  v83 = memset(&v94, 0, sizeof(v94));
  v10 = [v83 layout];
  v11 = v10;
  if (v10)
  {
    [v10 transformInRoot];
  }

  else
  {
    memset(&v94, 0, sizeof(v94));
  }

  v12 = objc_opt_class();
  v13 = [v83 shapeLayout];
  v14 = [v13 stroke];
  v15 = sub_100014370(v12, v14);

  v78 = v9;
  if (v15)
  {
    v16 = [v15 strokeName];
    if ([v16 isEqualToString:@"Pencil"])
    {

LABEL_18:
      v19 = +[NSMutableArray array];
      goto LABEL_20;
    }

    v17 = [v15 strokeName];
    v18 = [v17 isEqualToString:@"Crayon"];

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

  c = a4;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v5;
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
        v35 = [v34 shapeLayout];
        v36 = [v35 pathSource];
        v37 = [v36 bezierPath];
        v86 = [v37 copy];

        [v34 clipRect];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;
        if (v34 != v83)
        {
          memset(&transform, 0, sizeof(transform));
          if (v35)
          {
            [v35 transformInRoot];
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
          v46 = [v86 totalSubpathCountIncludingEffectivelyEmptySubpaths];
          if (v19)
          {
            v47 = [v35 stroke];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              v49 = [p_info + 206 _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10133BD1C();
              }

              v50 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                LODWORD(transform.a) = 67109890;
                HIDWORD(transform.a) = v49;
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
                v73 = [p_info + 206 packedBacktraceString];
                LODWORD(transform.a) = 67109378;
                HIDWORD(transform.a) = v49;
                LOWORD(transform.b) = 2114;
                *(&transform.b + 2) = v73;
                _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &transform, 0x12u);
              }

              v52 = [NSString stringWithUTF8String:"[CRLFreehandDrawingRep p_concatenatePathDrawChildShapeReps:togetherInContext:]"];
              v53 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
              [p_info + 206 handleFailureInFunction:v52 file:v53 lineNumber:558 isFatal:0 description:"Trying to draw a shape without a brush stroke along with one with a brush stroke."];
            }

            v80 = height;
            v54 = [v35 dynamicPatternOffsetsBySubpath];
            v55 = [v54 count];
            v56 = [v34 shapeInfo];
            [v56 strokePatternOffsetDistance];
            v58 = v57;

            if (v46)
            {
              for (i = 0; v46 != i; ++i)
              {
                if (v54)
                {
                  if (i >= v55)
                  {
                    v62 = [p_info + 206 _atomicIncrementAssertCount];
                    if (qword_101AD5A10 != -1)
                    {
                      sub_10133BD6C();
                    }

                    v63 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(transform.a) = 67109890;
                      HIDWORD(transform.a) = v62;
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
                      HIDWORD(transform.a) = v62;
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

                  v60 = [v54 objectAtIndexedSubscript:i];
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

          if (v26 && v46)
          {
            for (j = 0; j != v46; ++j)
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
  v74 = [v83 layout];
  v75 = [v74 geometry];
  v76 = v75;
  if (v75)
  {
    [v75 transform];
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

- (CGRect)p_boundsInNaturalSpaceForMathView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  [v4 bounds];
  v13 = sub_1001204D4(v9, v10, v11, v12);
  v15 = v14;
  v16 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [v16 convertPoint:v4 fromView:{v6, v8}];
  v18 = v17;
  v20 = v19;

  v21 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [v21 convertPoint:v4 fromView:{v13, v15}];
  v23 = v22;
  v25 = v24;

  v26 = [(CRLCanvasRep *)self interactiveCanvasController];
  v27 = [v26 canvasView];
  v28 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [v27 convertPoint:v28 fromView:{v18, v20}];
  v30 = v29;
  v32 = v31;

  v33 = [(CRLCanvasRep *)self interactiveCanvasController];
  v34 = [v33 canvasView];
  v35 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  [v34 convertPoint:v35 fromView:{v23, v25}];
  v37 = v36;
  v39 = v38;

  v40 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v40 convertBoundsToUnscaledPoint:{v30, v32}];
  v42 = v41;
  v44 = v43;

  v45 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v45 convertBoundsToUnscaledPoint:{v37, v39}];
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
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v4 canvas];
    [v5 contentsScale];
    v7 = v6;

    v8 = [(CRLCanvasRep *)self interactiveCanvasController];
    v9 = [v8 canvas];
    [v9 viewScale];
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
    v24 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v25 = [v24 subviews];

    v26 = [v25 countByEnumeratingWithState:&v65 objects:v69 count:16];
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
            objc_enumerationMutation(v25);
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
          v45 = [v30 layer];
          [v45 renderInContext:v23];

          CGContextRestoreGState(v23);
        }

        v27 = [v25 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v27);
    }

    Image = CGBitmapContextCreateImage(v23);
    v47 = sub_1005357BC(Image);
    CGImageRelease(Image);
    CGContextRelease(v23);
    v48 = [(CRLCanvasRep *)self interactiveCanvasController];
    v49 = [v48 editingCoordinator];
    v50 = [v49 boardItemFactory];

    v51 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    v52 = [v50 assetOwner];
    v53 = [(CRLPreinsertionAssetWrapper *)v51 initWithData:v47 filename:@"freehand-drawing-math-solve-image-for-copying" owner:v52 error:0];

    v54 = [(CRLPreinsertionAssetWrapper *)v53 synchronouslyCreateAsset];
    v55 = [(CRLCanvasRep *)self layout];
    v56 = v55;
    if (v55)
    {
      [v55 transformInRoot];
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

    v61 = [[CRLCanvasInfoGeometry alloc] initWithPosition:x size:y, width, height];
    v62 = [v50 makeImageItemWithGeometry:v61 imageData:v54 thumbnailData:0];
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
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    [(CRLFreehandDrawingRep *)self p_getUnRotatedFrameWithoutMathResults];
    [v3 convertUnscaledToBoundsRect:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v13 = *&CGAffineTransformIdentity.c;
    v22 = *&CGAffineTransformIdentity.a;
    v23 = v13;
    v24 = *&CGAffineTransformIdentity.tx;
    [v12 setTransform:&v22];

    v14 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    [v14 setFrame:{v5, v7, v9, v11}];

    v15 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [v15 setFrameAtMathViewAttachment:{v5, v7, v9, v11}];

    v16 = [(CRLCanvasRep *)self layout];
    v17 = [v16 pureGeometryInRoot];
    v18 = v17;
    if (v17)
    {
      [v17 transform];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
    }

    v19 = sub_1001399C0(&v22);
    v20 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [v20 setRotationAtMathViewAttachment:v19];

    v21 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v21 invalidateContentLayersForRep:self];
  }
}

- (void)didEndZoomingOperation
{
  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews])
  {
    v3 = [(CRLCanvasRep *)self layout];
    [v3 invalidateFrame];

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
  v3 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v4 = [v3 pkRecognitionController];
  [v4 tagAsActive];

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
  v3 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v4 = [v3 pkRecognitionController];
  [v4 tagAsIdle];

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

- (int64_t)dragTypeAtCanvasPoint:(CGPoint)a3 forTouchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v11.receiver = self;
  v11.super_class = CRLFreehandDrawingRep;
  v7 = [(CRLCanvasRep *)&v11 dragTypeAtCanvasPoint:a4 forTouchType:?];
  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  v9 = [v8 drawingIntelligenceProvider];
  [v8 convertUnscaledToBoundsPoint:{x, y}];
  if ([v9 isDetectionDecoratorViewHitAtScaledPoint:?])
  {
    v7 = 4;
  }

  return v7;
}

- (void)p_attachToRecognitionControllerIfNeeded
{
  if (!self->_isAttachedToRecognitionController)
  {
    v3 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    v4 = [v3 pkRecognitionController];

    if (v4)
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
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v3 addDecorator:self];
  }
}

- (void)didUpdateMathResultView
{
  v3 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  v4 = [v3 subviews];
  [v4 setValue:&__kCFBooleanFalse forKey:@"hidden"];

  if (self->_isViewScrolling)
  {
    self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation = 1;
  }

  else
  {
    v5 = [(CRLCanvasRep *)self isInDynamicOperation];
    self->_attachedMathResultViewDuringAViewScrollOrDynamicOperation = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  v7 = [v6 subviews];
  [v7 setValue:&__kCFBooleanTrue forKey:@"hidden"];

LABEL_5:
  v8 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v8 invalidateContentLayersForRep:self];

  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    [(CRLFreehandDrawingRep *)self p_updateLayoutBoundsForMathResultView];
    v9 = [(CRLCanvasRep *)self layout];
    [v9 invalidateFrame];

    [(CRLCanvasRep *)self invalidateKnobs];
  }
}

- (BOOL)p_hasMathResultViews
{
  v2 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  v3 = [v2 subviews];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabled
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 mathCalculationController];

  if (!v4)
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

  if (self->_requestedNewMathRecognitionHandler && ([v4 isSolvingSuspended] & 1) == 0)
  {
    self->_requestedNewMathRecognitionHandler = 0;
    v8 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [v8 resetMathRecognitionHandlerIfRequestedAndEnabled];
  }
}

- (NSArray)decoratorOverlayViews
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled]&& ([(CRLFreehandDrawingRep *)self p_baseMathView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [(CRLFreehandDrawingRep *)self p_updateBaseMathViewIfNeeded];
    v4 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v7 = v4;
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
  v3 = [(CRLCanvasRep *)self isInDynamicOperation];
  v4 = [(CRLCanvasRep *)self layout];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 dynamicGeometry];
    [v6 infoGeometry];
  }

  else
  {
    v6 = [v4 info];
    [v6 geometry];
  }
  v7 = ;
  [v7 boundsBeforeRotation];
  v9 = v8;
  v11 = v10;

  v12 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v13 = [v12 pureGeometryWithoutMathResults];
  [v13 size];
  v15 = v14;
  v17 = v16;

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v18 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v19 = v18;
  if (v18)
  {
    [v18 pureTransformInRootWithoutMathResults];
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
  v2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v3 = [v2 baseMathView];

  return v3;
}

- (void)didUpdateShouldSolveMathForTriggerStroke:(id)a3 shouldSolveMath:(BOOL)a4 undoable:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v10 = [v9 drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap];
  v11 = [v8 path];

  v12 = [v11 _strokeDataUUID];
  v13 = [v10 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
    v15 = v14;
    if (v14 && ([v14 childItems], v16 = objc_claimAutoreleasedReturnValue(), v34[0] = _NSConcreteStackBlock, v34[1] = 3221225472, v34[2] = sub_100258FD0, v34[3] = &unk_10184CB50, v34[4] = v13, v17 = objc_msgSend(v16, "indexOfObjectPassingTest:", v34), v16, v17 != 0x7FFFFFFFFFFFFFFFLL) && (v18 = objc_opt_class(), objc_msgSend(v15, "childItems"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectAtIndexedSubscript:", v17), v20 = objc_claimAutoreleasedReturnValue(), sub_100014370(v18, v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v21))
    {
      v22 = [(CRLCanvasRep *)self interactiveCanvasController];
      v23 = [v22 commandController];
      v24 = [v21 pencilKitStrokePathCompactData];
      v25 = [v24 copy];

      [v25 setShouldSolveMath:v6];
      [v23 openGroup];
      v26 = +[NSBundle mainBundle];
      v27 = v26;
      if (v6)
      {
        v28 = @"Insert Result";
      }

      else
      {
        v28 = @"Remove Result";
      }

      v29 = [v26 localizedStringForKey:v28 value:0 table:@"UndoStrings"];

      [v23 setCurrentGroupActionString:v29];
      v30 = [_TtC8Freeform43CRLCommandSetFreehandDrawingShapeItemPKData alloc];
      v31 = [v21 maskPath];
      v32 = [(CRLCommandSetFreehandDrawingShapeItemPKData *)v30 initWithFreehandDrawingShapeItem:v21 strokePathCompactData:v25 maskPath:v31];

      [(CRLCommand *)v32 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
      if (v5)
      {
        [v23 enqueueCommand:v32];
      }

      else
      {
        [v23 enqueueWithNonUndoableCommand:v32];
      }

      [v23 closeGroup];
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
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingRep.m"];
      [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:934 isFatal:0 description:"Could not locate freehand drawing shapeItem for _strokeDataUUID given by trigger stroke"];
    }
  }
}

- (void)updateFromLayout
{
  v46.receiver = self;
  v46.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v46 updateFromLayout];
  v3 = [(CRLCanvasRep *)self canvas];
  v4 = [v3 isCanvasInteractive];

  if (!v4)
  {
    return;
  }

  [(CRLFreehandDrawingRep *)self p_attachToRecognitionControllerIfNeeded];
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  [(CRLFreehandDrawingRep *)self p_getUnRotatedFrameWithoutMathResults];
  [v5 convertUnscaledToBoundsRect:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [v14 previousAspectRatio];
  v16 = vabdd_f64(v11 / v13, v15);

  if (v16 <= 0.001)
  {
    v24 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v24 invalidateContentLayersForRep:self];

    v25 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v26 = [v25 subviews];
    if ([v26 count])
    {
      v27 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      v28 = [v27 subviews];
      v29 = [v28 firstObject];
      v30 = [v29 isHidden];

      if (!v30)
      {
        goto LABEL_19;
      }

      v25 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      v26 = [v25 subviews];
      [v26 setValue:&__kCFBooleanFalse forKey:@"hidden"];
    }

    goto LABEL_17;
  }

  if (![(CRLCanvasRep *)self isInDynamicOperation])
  {
    v17 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v18 = *&CGAffineTransformIdentity.c;
    v43 = *&CGAffineTransformIdentity.a;
    v44 = v18;
    v45 = *&CGAffineTransformIdentity.tx;
    [v17 setTransform:&v43];

    v19 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    [v19 setFrame:{v7, v9, v11, v13}];

    v20 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [v20 setFrameAtMathViewAttachment:{v7, v9, v11, v13}];

    v21 = [(CRLCanvasRep *)self layout];
    v22 = [v21 pureGeometryInRoot];
    v23 = v22;
    if (v22)
    {
      [v22 transform];
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
    }

    v31 = sub_1001399C0(&v43);
    v32 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    [v32 setRotationAtMathViewAttachment:v31];
  }

  v33 = [(CRLCanvasRep *)self interactiveCanvasController:v43];
  [v33 invalidateContentLayersForRep:self];

  v34 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  v35 = [v34 subviews];
  [v35 setValue:&__kCFBooleanTrue forKey:@"hidden"];

  v36 = objc_opt_class();
  v37 = [(CRLCanvasRep *)self interactiveCanvasController];
  v38 = [v37 freehandDrawingToolkit];
  v39 = [v38 currentTool];
  v25 = sub_100014370(v36, v39);

  v26 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (![v26 isInDynamicOperation])
  {

LABEL_16:
    v26 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    v41 = [v26 mathRecognitionHandler];
    [v41 redrawSubviews];

    goto LABEL_17;
  }

  if (v25)
  {
    v40 = [v25 shouldAllowMathViewsToRedraw];

    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
LABEL_19:
  v42 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [v42 setPreviousAspectRatio:v11 / v13];

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
    v11 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v11 convertUnscaledToBoundsRect:{v4, v6, v8, v10}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    [v20 frame];
    v25 = sub_10011EE4C(v21, v22, v23, v24, v13, v15, v17, v19);

    if (!v25)
    {
      v26 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [v26 frameAtMathViewAttachment];
      v28 = v17 / v27;

      v29 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [v29 frameAtMathViewAttachment];
      v31 = v19 / v30;

      v32 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [v32 frameAtMathViewAttachment];
      v37 = sub_100120414(v33, v34, v35, v36);

      v38 = sub_100120414(v13, v15, v17, v19);
      v40 = sub_10011F31C(v38, v39, v37);
      v42 = v41;
      memset(&v72, 0, sizeof(v72));
      v43 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [v43 bounds];
      v45 = v28 * (v44 * 0.5);
      v46 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [v46 bounds];
      CGAffineTransformMakeTranslation(&v72, v45, v31 * (v47 * 0.5));

      memset(&v71, 0, sizeof(v71));
      v48 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [v48 bounds];
      v50 = v28 * (v49 * -0.5);
      v51 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      [v51 bounds];
      CGAffineTransformMakeTranslation(&v71, v50, v31 * (v52 * -0.5));

      v53 = [(CRLCanvasRep *)self layout];
      v54 = [v53 pureGeometryInRoot];
      v55 = v54;
      if (v54)
      {
        [v54 transform];
      }

      else
      {
        memset(&v70, 0, sizeof(v70));
      }

      v56 = sub_1001399C0(&v70.a);

      memset(&v70, 0, sizeof(v70));
      v57 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      [v57 rotationAtMathViewAttachment];
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
      v59 = [(CRLFreehandDrawingRep *)self p_baseMathView];
      t2 = v65;
      [v59 setTransform:&t2];
    }

    if (self->_needsRedrawnMathResults)
    {
      v60 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
      v61 = [v60 mathRecognitionHandler];
      [v61 redrawSubviews];

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
  v7 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  v8 = [v7 subviews];

  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 subviews];
        v15 = [v14 count];

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

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  v11 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [v11 setBoundsForMathResultViews:{v4, v6, v8, v10}];

  v12 = [(CRLCanvasRep *)self layout];
  [v12 invalidateFrame];
}

- (void)p_drawChildShapeRepsWithPencilKitStrokes:(id)a3 togetherInContext:(CGContext *)a4
{
  v4 = a3;
  if ([v4 count] <= 1)
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
  v9 = v4;
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

        v14 = [*(*(&v27 + 1) + 8 * v13) shapeLayout];
        v15 = [v14 pencilKitStrokesInParentInfoSpace];
        if (v15)
        {
          [v8 addObjectsFromArray:v15];
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

  v23 = [(CRLCanvasRep *)self canvas];
  v24 = [v23 backgroundColor];
  [CRLPencilKitInkStroke drawStrokes:v8 inContext:a4 overTransparentCanvas:v24 == 0];
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v6 = a4;
  if (![(CRLFreehandDrawingRep *)self p_isTrifurcatedRenderingEnabled])
  {
    ClipBoundingBox = CGContextGetClipBoundingBox(a3);
    v7 = [(CRLFreehandDrawingRep *)self p_shapeChildrenForDrawingRecursivelyInRect:v6 passingTest:ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width, ClipBoundingBox.size.height];
    [(CRLFreehandDrawingRep *)self p_drawShapeChildren:v7 inContext:a3];
    v8 = [(CRLFreehandDrawingRep *)self p_childrenToExcludeFromFlattenedDrawing];
    if ([v8 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [(CRLCanvasRep *)self childReps];
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            if ([v8 containsObject:v14] && (!v6 || v6[2](v6, v14)))
            {
              CGContextSaveGState(a3);
              [v14 recursivelyDrawInContext:a3 keepingChildrenPassingTest:v6];
              CGContextRestoreGState(a3);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (id)p_shapeChildrenForDrawingRecursivelyInRect:(CGRect)a3 passingTest:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v48 = +[NSMutableArray array];
  v10 = [(CRLFreehandDrawingRep *)self p_shapeChildrenForDrawingRecursively];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v13 = 0;
  v47 = *v51;
  v46 = v10;
  do
  {
    v14 = 0;
    do
    {
      if (*v51 != v47)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v50 + 1) + 8 * v14);
      if (!v9 || v9[2](v9, *(*(&v50 + 1) + 8 * v14)))
      {
        v16 = objc_opt_class();
        v17 = [v48 lastObject];
        v18 = [v17 info];
        v19 = sub_100014370(v16, v18);

        v20 = objc_opt_class();
        v21 = [v15 info];
        v22 = sub_100014370(v20, v21);

        [v15 clipRect];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [v15 layout];
        v32 = v31;
        if (v31)
        {
          [v31 transform];
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
              v37 = [v19 renderGroupID];
              v38 = [v22 renderGroupID];
              if (v37 | v38)
              {
                v39 = v38;
                v40 = [v37 isEqual:v38];

                if (v40)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = v15;
                }

                v10 = v46;
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
          v41 = [v19 renderGroupID];
          v42 = [v22 renderGroupID];
          v43 = v42;
          if (v41 && v42 && [v41 isEqual:v42])
          {
            [v48 addObject:v13];
          }

          v10 = v46;
        }

        [v48 addObject:{v15, v46}];
        goto LABEL_24;
      }

LABEL_26:
      v14 = v14 + 1;
    }

    while (v12 != v14);
    v44 = [v10 countByEnumeratingWithState:&v50 objects:v54 count:16];
    v12 = v44;
  }

  while (v44);
LABEL_33:

  return v48;
}

- (void)p_drawShapeChildren:(id)a3 inContext:(CGContext *)a4
{
  v6 = a3;
  v7 = sub_100510804(a4);
  if (v7)
  {
    [(CRLGroupRep *)self clipRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    ClipBoundingBox = CGContextGetClipBoundingBox(a4);
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
    v28 = sub_10050DF80(35, v25, v27);
    v29 = sub_10051058C(a4);
    v30 = sub_100510804(a4);
    v31 = sub_100510940(a4);
    v32 = sub_100510A7C(a4);
    v33 = sub_1005106C8(a4);
    sub_10050DE7C(v28, v29, v30, v31, v33, v32);
    CGContextScaleCTM(v28, 1.0 / v26, 1.0 / v26);
    CGContextScaleCTM(v28, 3.0, 3.0);
    CGContextTranslateCTM(v28, -x, -y);
  }

  else
  {
    v51 = 0;
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v28 = a4;
  }

  v34 = +[NSMutableArray array];
  if ([v6 count])
  {
    v35 = 0;
    v36 = 1;
    while (1)
    {
      v37 = [v6 objectAtIndexedSubscript:v36 - 1];
      if (v36 == [v6 count])
      {
        break;
      }

      v38 = [v6 objectAtIndexedSubscript:v36];
      if (![(CRLFreehandDrawingRep *)self p_shouldDrawShapeRep:v37 withOtherShapeRep:v38])
      {
        goto LABEL_10;
      }

LABEL_11:

      if (v36++ >= [v6 count])
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

        v46 = [*(*(&v52 + 1) + 8 * v45) rangeValue];
        v48 = [v6 subarrayWithRange:{v46, v47}];
        [(CRLFreehandDrawingRep *)self p_drawChildShapeReps:v48 togetherInContext:v28];

        v45 = v45 + 1;
      }

      while (v43 != v45);
      v43 = [v41 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v43);
  }

  if (v51)
  {
    v49 = sub_10050FEFC(a4);
    [v49 beginFreehandDrawing:self];
    Image = CGBitmapContextCreateImage(v28);
    CGContextRelease(v28);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    CGContextDrawImage(a4, v59, Image);
    CGImageRelease(Image);
    [v49 endFreehandDrawing:self];
  }

LABEL_23:
}

- (void)didUpdateRenderable:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  v3 = a3;
  [(CRLCanvasRep *)&v5 didUpdateRenderable:v3];
  v4 = [v3 layer];

  [v4 setDrawsAsynchronously:1];
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
  v3 = [(CRLFreehandDrawingRep *)self queueForConcurrentlyDrawingChildrenIntoLayersIfSafe];
  if (!v3)
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
  [v3 performSync:&stru_10184CCD0];
}

- (id)additionalRenderablesOverRenderable
{
  v29.receiver = self;
  v29.super_class = CRLFreehandDrawingRep;
  v3 = [(CRLCanvasRep *)&v29 additionalRenderablesOverRenderable];
  if (![(CRLFreehandDrawingRep *)self p_isTrifurcatedRenderingEnabled])
  {
    [(CRLFreehandDrawingRepTrifurcationContainer *)self->_activeTrifurcationContainer tearDown];
    activeTrifurcationContainer = self->_activeTrifurcationContainer;
    self->_activeTrifurcationContainer = 0;
    goto LABEL_40;
  }

  activeTrifurcationContainer = [(CRLFreehandDrawingRep *)self p_trifurcationContainer];
  v5 = [activeTrifurcationContainer backRenderable];
  v6 = [activeTrifurcationContainer middleRenderable];
  v7 = [activeTrifurcationContainer frontRenderable];
  if (v5)
  {
    if (v6)
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

    if (v7)
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

  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_5:
  if (v5 && v6)
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
    [v5 setAffineTransform:&v20];
    v20 = v23;
    v21 = v24;
    v22 = v25;
    [v6 setAffineTransform:&v20];
    v20 = v26;
    v21 = v27;
    v22 = v28;
    [v7 setAffineTransform:&v20];
    v30[0] = v5;
    v30[1] = v6;
    v30[2] = v7;
    v17 = [NSArray arrayWithObjects:v30 count:3];
    v18 = [v3 arrayByAddingObjectsFromArray:v17];

    v3 = v18;
  }

LABEL_39:

LABEL_40:

  return v3;
}

- (id)renderablesDescendingDirectlyFromContentRenderable
{
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  v2 = [(CRLCanvasRep *)&v4 renderablesDescendingDirectlyFromContentRenderable];

  return v2;
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
  v12 = [(CRLiOSFreehandDrawingStrokeAnimator *)v4 view];
  if (v12)
  {
    [v10 addSubview:v12];
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

- (void)beginTrifurcatedRenderForChildRep:(id)a3
{
  v4 = a3;
  v5 = [v4 parentRep];

  if (v5 != self)
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

  if ([(NSMutableSet *)self->_childRepsForTrifurcation containsObject:v4])
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

  [(NSMutableSet *)self->_childRepsForTrifurcation addObject:v4];
  [(CRLFreehandDrawingRepTrifurcationContainer *)self->_activeTrifurcationContainer tearDown];
  activeTrifurcationContainer = self->_activeTrifurcationContainer;
  self->_activeTrifurcationContainer = 0;

  v13 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v13 invalidateContentLayersForRep:self];

  if ([(NSMutableSet *)self->_childRepsForTrifurcation count]== 1)
  {
    [(CRLFreehandDrawingRep *)self setNeedsDisplay];
  }
}

- (void)endTrifurcatedRenderForChildRep:(id)a3
{
  v4 = a3;
  v5 = [v4 parentRep];

  if (v5 != self)
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

  if (([(NSMutableSet *)self->_childRepsForTrifurcation containsObject:v4]& 1) == 0)
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

  [(NSMutableSet *)self->_childRepsForTrifurcation removeObject:v4];
  v12 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v12 invalidateContentLayersForRep:self];

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
    v12 = [(CRLFreehandDrawingRep *)self p_shapeChildrenForDrawingRecursively];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v12);
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

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (void)didAddSixChannelEnabledChildRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self canvas];
  v6 = [v5 isCanvasInteractive];

  if ((v6 & 1) == 0)
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

  if ([(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled containsObject:v4])
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

  v13 = [v4 parentRep];

  if (v13 != self)
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

  [(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled addObject:v4];
  if ([(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled count]== 1)
  {
    v17 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v17 invalidateContentLayersForRep:self];
  }
}

- (void)didRemoveSixChannelEnabledChildRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self canvas];
  v6 = [v5 isCanvasInteractive];

  if ((v6 & 1) == 0)
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

  if (([(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled containsObject:v4]& 1) == 0)
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

  [(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled removeObject:v4];
  if (![(NSMutableSet *)self->_childRepsWithSixChannelRenderEnabled count])
  {
    v13 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v13 invalidateContentLayersForRep:self];
  }
}

- (void)didAddSixChannelSuppressingChildRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self canvas];
  v6 = [v5 isCanvasInteractive];

  if ((v6 & 1) == 0)
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

  if ([(NSMutableSet *)self->_childRepsSuppressingSixChannelRender containsObject:v4])
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

  v13 = [v4 parentRep];

  if (v13 != self)
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

  [(NSMutableSet *)self->_childRepsSuppressingSixChannelRender addObject:v4];
  if ([(NSMutableSet *)self->_childRepsSuppressingSixChannelRender count]== 1)
  {
    v17 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v17 invalidateContentLayersForRep:self];
  }
}

- (void)didRemoveSixChannelSuppressingChildRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasRep *)self canvas];
  v6 = [v5 isCanvasInteractive];

  if ((v6 & 1) == 0)
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

  if (([(NSMutableSet *)self->_childRepsSuppressingSixChannelRender containsObject:v4]& 1) == 0)
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

  [(NSMutableSet *)self->_childRepsSuppressingSixChannelRender removeObject:v4];
  if (![(NSMutableSet *)self->_childRepsSuppressingSixChannelRender count])
  {
    v13 = [(CRLCanvasRep *)self interactiveCanvasController];
    [v13 invalidateContentLayersForRep:self];
  }
}

- (void)runStrokeAnimation:(id)a3
{
  v4 = a3;
  [(CRLFreehandDrawingRep *)self p_cleanUpExistingStrokeAnimationIfNeeded];
  strokeAnimator = self->_strokeAnimator;
  self->_strokeAnimator = v4;

  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  [v6 invalidateContentLayersForRep:self];
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

    v7 = [(CRLCanvasRep *)self interactiveCanvasController];
    v8 = [v7 editingCoordinator];
    v9 = [v8 mainBoard];

    [v7 invalidateContentLayersForRep:self];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(CRLiOSFreehandDrawingStrokeAnimator *)v3 incomingShapeItemUUIDs];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [v9 getBoardItemForUUID:*(*(&v18 + 1) + 8 * i)];
          if (v15)
          {
            v16 = [v7 repForInfo:v15];
            v17 = v16;
            if (v16)
            {
              [v16 setNeedsDisplay];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (id)beginEditingChildrenIfAllowedAtUnscaledPoint:(CGPoint)a3 pickingDeepestChild:(BOOL)a4
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController:a4];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 canBeginFreehandDrawingMode];

  if (v7)
  {
    v8 = self;
    v9 = [(CRLCanvasRep *)v8 interactiveCanvasController];
    v10 = [v9 editorController];
    v11 = [(CRLCanvasRep *)v8 interactiveCanvasController];
    v12 = [v11 canvasEditor];
    v13 = [(CRLCanvasRep *)v8 info];
    v14 = [v12 selectionPathWithInfo:v13];
    [v10 setSelectionPath:v14];

    v15 = [(CRLCanvasRep *)v8 interactiveCanvasController];
    v16 = [v15 freehandDrawingToolkit];
    [v16 beginDrawingModeIfNeededForTouchType:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitRep:(CGPoint)a3 withPrecision:(BOOL)a4 passingTest:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = [(CRLCanvasRep *)self canvas];
  v11 = [v10 canvasController];
  v12 = [v11 freehandDrawingToolkit];
  v13 = [v12 isInDrawingMode];

  if (v13)
  {
    v17.receiver = self;
    v17.super_class = CRLFreehandDrawingRep;
    v14 = [(CRLCanvasRep *)&v17 hitRep:v5 withPrecision:v9 passingTest:x, y];
LABEL_9:
    v15 = v14;
    goto LABEL_11;
  }

  if ([(CRLFreehandDrawingRep *)self p_hasMathResultViews]&& ([(CRLCanvasRep *)self boundsForStandardKnobs], v19.x = x, v19.y = y, CGRectContainsPoint(v20, v19)) || [(CRLGroupRep *)self containsPoint:v5 withPrecision:x, y]&& (!v9 || v9[2](v9, self)))
  {
    v14 = self;
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

- (BOOL)intersectsUnscaledRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingRep;
  if ([(CRLGroupRep *)&v10 intersectsUnscaledRect:?])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = [(CRLFreehandDrawingRep *)self p_hasMathResultViews];
    if (v8)
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
      LOBYTE(v8) = !CGRectEqualToRect(v12, v14);
    }
  }

  return v8;
}

- (BOOL)wantsToManuallyHandleEditMenuTapAtPoint:(CGPoint)a3
{
  if ([_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled:a3.x])
  {
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v4 documentIsSharedReadOnly] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)handleEditMenuTapAtPoint:(CGPoint)a3 inputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled]&& [(CRLCanvasRep *)self isSelected])
  {
    v7 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    v8 = [v7 mathRecognitionHandler];
    [v8 setShouldCallEditMenuTapForRep:1];

    v9 = [(CRLCanvasRep *)self interactiveCanvasController];
    v10 = [v9 layerHost];
    v13 = [v10 miniFormatterPresenter];

    v11 = [v13 asiOSPresenter];
    v12 = [v11 isPresentingInFixedPosition];

    if (self->_allowedToToggleMathPopoverUI)
    {
      if (-[CRLFreehandDrawingRep p_triggerMathTapAtPoint:](self, "p_triggerMathTapAtPoint:", x, y) && !(v12 & 1 | (([v13 isPresentingMiniFormatter] & 1) == 0)))
      {
        [(CRLFreehandDrawingRep *)self p_hideMiniFormatter];
      }
    }

    else
    {
      self->_allowedToToggleMathPopoverUI = 1;
    }

    if (((self->_isPresentingMathPopoverUI | v12) & 1) == 0)
    {
      [(CRLFreehandDrawingRep *)self p_toggleMiniFormatter];
    }
  }

  else if ([(CRLGroupRep *)self isSelectedIgnoringLocking])
  {

    [(CRLFreehandDrawingRep *)self p_toggleMiniFormatter];
  }
}

- (BOOL)p_triggerMathTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v7 = [v6 mathRecognitionHandler];
  v8 = [v7 mathViewController];
  v9 = [v8 handleSingleTapAtDrawingLocation:{x, y}];

  v10 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v11 = [v10 mathRecognitionHandler];
  self->_isPresentingMathPopoverUI = [v11 isPresentingPopoverUI];

  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(CRLFreehandDrawingRep *)self p_baseMathView];
    v13 = [v12 subviews];

    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v22 + 1) + 8 * i) subviews];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [(CRLCanvasRep *)self interactiveCanvasController];
            [v20 invalidateContentLayersForRep:self];

            goto LABEL_12;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v2 = [(CRLCanvasRep *)&v4 manuallyControlsMiniFormatter];
  return (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled]| v2) & 1;
}

- (void)p_toggleMiniFormatter
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 layerHost];
  v5 = [v4 miniFormatterPresenter];
  v6 = [v5 isPresentingMiniFormatter];

  if (v6)
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
  v6 = [(CRLCanvasRep *)self interactiveCanvasController];
  if (([v6 documentIsSharedReadOnly] & 1) == 0)
  {
    v3 = [v6 layerHost];
    v4 = [v3 miniFormatterPresenter];
    v5 = [(CRLFreehandDrawingRep *)self p_selectionPath];
    [v4 presentMiniFormatterForSelectionPath:v5];
  }
}

- (void)p_hideMiniFormatter
{
  v5 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v5 layerHost];
  v4 = [v3 miniFormatterPresenter];
  [v4 dismissMiniFormatterForRep:self];
}

- (id)p_selectionPath
{
  v3 = [(CRLCanvasRep *)self isSelected];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 editorController];
    v7 = [v6 selectionPath];
  }

  else
  {
    v6 = [v4 canvasEditor];
    v8 = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
    v7 = [v6 selectionPathWithInfo:v8];
  }

  return v7;
}

- (BOOL)handledLassoTapAtPoint:(CGPoint)a3 withInputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = CRLFreehandDrawingRep;
  v7 = [(CRLCanvasRep *)&v9 handledLassoTapAtPoint:a4 withInputType:?];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    v7 |= [(CRLFreehandDrawingRep *)self p_handledTapAtPoint:x, y];
  }

  return v7 & 1;
}

- (BOOL)handledDirectTouchForDrawingModePencilOnlyAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingRep;
  v6 = [(CRLCanvasRep *)&v8 handledDirectTouchForDrawingModePencilOnlyAtPoint:?];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    v6 |= [(CRLFreehandDrawingRep *)self p_handledTapAtPoint:x, y];
  }

  return v6 & 1;
}

- (BOOL)p_handledTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v7 = [v6 mathRecognitionHandler];
  [v7 setShouldCallEditMenuTapForRep:0];

  if ([(CRLCanvasRep *)self isLocked])
  {
    return 0;
  }

  v9 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v10 = [v9 mathRecognitionHandler];
  v11 = [v10 mathViewController];
  v12 = [v11 handleSingleTapAtDrawingLocation:{x, y}];

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
    v3 = objc_opt_class();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLFreehandDrawingRep;
    v3 = [(CRLGroupRep *)&v5 layerClass];
  }

  return v3;
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
  v2 = [(CRLCanvasRep *)self canvas];
  v3 = [v2 canvasController];
  v4 = [v3 shouldSupportedDynamicOperationsEnqueueCommandsInRealTime];

  return v4;
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

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CRLFreehandDrawingRep *)self p_shouldAllowSetNeedsDisplay])
  {
    v8.receiver = self;
    v8.super_class = CRLFreehandDrawingRep;
    [(CRLCanvasRep *)&v8 setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)updateRenderableGeometryFromLayout:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v15 updateRenderableGeometryFromLayout:v4];
  [v4 frame];
  v10 = v9;
  v12 = v11;
  v13 = [(CRLCanvasRep *)self layout];
  v14 = [v13 layoutState];

  if (v14 != 3 && !sub_10011ECC8(v6, v8, v10, v12) && [(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer]&& ![(CRLFreehandDrawingRep *)self p_isTrifurcatedRenderingEnabled]&& [(CRLFreehandDrawingRep *)self p_shouldAllowSetNeedsDisplay])
  {
    [v4 setNeedsDisplay];
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
  v3 = [(CRLGroupRep *)&v8 shouldShowSelectionHighlight];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 freehandDrawingToolkit];
  v6 = [v5 isInDrawingMode];

  return (v6 ^ 1) & v3;
}

- (double)p_zPositionForSelectionHighlightLayer
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 freehandDrawingToolkit];
  v4 = [v3 isInDrawingMode];

  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)shouldShowKnobs
{
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingRep;
  v3 = [(CRLCanvasRep *)&v8 shouldShowKnobs];
  v4 = [(CRLCanvasRep *)self interactiveCanvasController];
  v5 = [v4 freehandDrawingToolkit];
  v6 = [v5 isInDrawingMode];

  return (v6 ^ 1) & v3;
}

- (BOOL)shouldHitTestChildKnobs
{
  v2 = [(CRLCanvasRep *)self interactiveCanvasController];
  v3 = [v2 freehandDrawingToolkit];
  if ([v3 isInDrawingMode])
  {
    v4 = [v2 freehandDrawingToolkit];
    v5 = [v4 wantsToSuppressKnobsOnTransformReps] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)processChangedProperty:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v5 processChangedProperty:?];
  if (a3 == 5)
  {
    if ([(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer])
    {
      [(CRLFreehandDrawingRep *)self setNeedsDisplay];
    }
  }
}

- (id)p_ingestibleItemSourceForDragInfo:(id)a3
{
  v3 = [a3 itemSource];
  v10 = sub_1003035DC(v3, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLIngestibleItemSource);

  return v10;
}

- (id)dragAndDropHighlightRenderable
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  v3 = [(CRLCanvasRep *)&v5 dragAndDropHighlightRenderable];
  if ([(CRLFreehandDrawingRep *)self shouldShowSelectionHighlight])
  {
    [(CRLFreehandDrawingRep *)self p_zPositionForSelectionHighlightLayer];
    [v3 setZPosition:?];
  }

  return v3;
}

- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingRep;
  v8 = [(CRLCanvasRep *)&v10 dragOperationForDragInfo:v7 atUnscaledPoint:x, y];
  if ([(CRLFreehandDrawingRep *)self p_canReceiveDropWithDragInfo:v7])
  {
    v8 = [v7 dragOperationMask] & 1;
  }

  return v8;
}

- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  v9 = [(CRLCanvasRep *)self interactiveCanvasController];
  v10 = [v9 editorController];
  v11 = [v9 canvasEditor];
  v12 = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
  v13 = [v11 selectionPathWithInfo:v12];
  [v10 setSelectionPath:v13];

  v14 = [v10 mostSpecificCurrentEditorOfClass:objc_opt_class()];
  v15 = [(CRLFreehandDrawingRep *)self p_ingestibleItemSourceForDragInfo:v8];

  [v14 insertContentsOfFreehandDrawingsFromItemSource:v15 atUnscaledPoint:&stru_10184D218 completionHandler:{x, y}];
  return 1;
}

- (void)dynamicResizeDidEndWithTracker:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v5 dynamicResizeDidEndWithTracker:a3];
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v4 setNeedsDisplay];
}

- (void)dynamicFreeTransformDidEndWithTracker:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v5 dynamicFreeTransformDidEndWithTracker:a3];
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingRep;
  [(CRLGroupRep *)&v4 setNeedsDisplay];
}

- (double)canvasViewScaleForTrifurcationContainer:(id)a3
{
  v3 = [(CRLCanvasRep *)self canvas];
  [v3 viewScale];
  v5 = v4;

  return v5;
}

- (double)canvasContentsScaleForTrifurcationContainer:(id)a3
{
  v3 = [(CRLCanvasRep *)self canvas];
  [v3 contentsScale];
  v5 = v4;

  return v5;
}

- (CGPoint)parentScaledCanvasFrameOriginForTrifurcationContainer:(id)a3
{
  v3 = [(CRLCanvasRep *)self parentRep];
  v4 = v3;
  if (v3)
  {
    [v3 layerFrameInScaledCanvas];
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

- (CGRect)clipRectInScaledCanvasForTrifurcationContainer:(id)a3
{
  v4 = [(CRLCanvasRep *)self canvas];
  [(CRLGroupRep *)self clipRect];
  [(CRLCanvasRep *)self convertNaturalRectToUnscaledCanvas:?];
  [v4 convertUnscaledToBoundsRect:?];
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

- (void)drawShapeReps:(id)a3 intoContext:(CGContext *)a4 forLayer:(id)a5 inTrifurcationContainer:(id)a6
{
  v9 = a5;
  v10 = a3;
  CGContextSaveGState(a4);
  [v9 frame];
  CGContextTranslateCTM(a4, -v11, -v12);
  [(CRLCanvasRep *)self layerFrameInScaledCanvasRelativeToParent];
  CGContextTranslateCTM(a4, v13, v14);
  [(CRLCanvasRep *)self setupForDrawingInLayer:v9 context:a4];
  [(CRLFreehandDrawingRep *)self p_drawShapeChildren:v10 inContext:a4];

  [(CRLCanvasRep *)self didDrawInLayer:v9 context:a4];

  CGContextRestoreGState(a4);
}

- (void)documentModeDidChange
{
  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingRep;
  [(CRLCanvasRep *)&v6 documentModeDidChange];
  [(CRLCanvasRep *)self invalidateKnobs];
  [(CRLCanvasRep *)self invalidateSelectionHighlightRenderable];
  [(CRLFreehandDrawingRep *)self drawsDescendantsIntoLayer];
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  if ((v5 & 1) == 0)
  {
    [(CRLFreehandDrawingRep *)self p_removeSubselectionAffordanceIfNeeded];
  }
}

- (void)suppressionOfFreehandContentDidChange
{
  if (![(CRLCanvasRep *)self isLocked])
  {
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 shouldSuppressFreehandContent];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 containerRenderablesForRep:{self, 0}];
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

          [*(*(&v10 + 1) + 8 * v9) setHidden:v4];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)dragItemsForBeginningDragAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (id)dragItemsForBeginningDragOfChildRep:(id)a3
{
  if ([a3 isSelected])
  {
    v4 = [(CRLCanvasRep *)self interactiveCanvasController];
    v5 = [v4 editorController];
    v6 = [v5 mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLFreehandDrawingHostingEditor];
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

    v44 = self;
    v43 = [CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:v13];
    v45 = v13;
    v17 = [v13 boardItemsForDragAndDropTracing];
    v18 = +[NSMutableArray array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v17;
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

          v24 = [v4 repForInfo:*(*(&v47 + 1) + 8 * v23)];
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

          v31 = [v24 unscaledPathToIncludeForSystemPreviewOutline];
          [v18 crl_addNonNilObject:v31];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v21);
    }

    v34 = objc_alloc_init(CRLItemProviderItemWriter);
    v35 = [(CRLCanvasRep *)v44 interactiveCanvasController];
    v36 = [(CRLItemProviderItemWriter *)v34 createItemProviderWithCopyOfBoardItems:v43 fromInteractiveCanvasController:v35 outCopiedBoardItems:0];

    if (v36)
    {
      v37 = [v18 copy];
      v38 = +[UIColor clearColor];
      v39 = [(CRLCanvasRep *)v44 dragItemsForBeginningDragWithItemProvider:v36 deepCopiedBoardItems:v43 withUnscaledTracedPaths:v37 previewBackgroundColor:v38 localObjectProvider:0];
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
  v3 = [(CRLCanvasRep *)self layout];
  v4 = +[CRLBezierPath bezierPath];
  if (v3)
  {
    [v3 transformInRoot];
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
    v9 = [v3 i_wrapPath];
    v7 = [v9 copy];

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
  if (v3)
  {
    [v3 transformInRoot];
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

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (!self->_shouldUpdateAffordanceOnNextDidProcessAllChanges)
  {
    v22 = v6;
    v7 = [(NSSet *)self->_currentlySelectedInfosShowingAffordance containsObject:v6];
    v6 = v22;
    if (v7)
    {
      v20 = self;
      v8 = objc_opt_class();
      v21 = sub_100013F00(v8, v22);
      if (!v21)
      {
LABEL_19:

        v6 = v22;
        goto LABEL_20;
      }

      v9 = [(CRLCanvasRep *)self layout];
      v10 = [v9 layoutController];
      v19 = [v10 layoutForInfo:v21];

      v11 = v19;
      if ([v19 layoutState] != 2)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v12 = v23;
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

              v17 = [*(*(&v29 + 1) + 8 * i) details];
              v18 = v17;
              if (v17)
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
                [v17 enumeratePropertiesUsingBlock:v24];
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

        v20->_shouldUpdateAffordanceOnNextDidProcessAllChanges = 1;
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  if (v5)
  {
    v6 = [(CRLCanvasRep *)self interactiveCanvasController];
    v7 = [v6 editorController];
    v8 = [v7 selectionPath];
    v12 = [v8 mostSpecificSelectionOfClass:objc_opt_class()];

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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v5 = [v4 selectionPath];
  v6 = [v5 mostSpecificSelectionOfClass:objc_opt_class()];

  v7 = [v6 boardItems];
  v20 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
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
          v17 = [v15 parentInfo];
          v18 = [(CRLGroupRep *)self containerInfo];
          v19 = [v17 isEqual:v18];

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
  v3 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v4 = [v3 showingSubselectionAffordance];

  if (v4)
  {
    v5 = +[NSSet set];
    [(CRLFreehandDrawingRep *)self p_showSubselectionAffordanceForInfos:v5];
  }
}

- (void)p_showSubselectionAffordanceForInfos:(id)a3
{
  v4 = a3;
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
        v11 = [(CRLCanvasRep *)self interactiveCanvasController];
        v12 = [v11 editingCoordinator];
        v13 = [v12 changeNotifier];
        [v13 removeObserver:self forChangeSource:v10];
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v14 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  [v14 showSubselectionAffordanceForSelectedInfos:v4];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v4;
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
        v21 = [(CRLCanvasRep *)self interactiveCanvasController];
        v22 = [v21 editingCoordinator];
        v23 = [v22 changeNotifier];
        [v23 addObserver:self forChangeSource:v20];
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
  v3 = [(CRLCanvasRep *)self childReps];
  v4 = [(CRLFreehandDrawingRep *)self p_childrenToExcludeFromFlattenedDrawing];
  v20 = v4;
  if ([v4 count])
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100260A48;
    v27[3] = &unk_10183F5F8;
    v27[4] = v4;
    v5 = [v3 crl_arrayOfObjectsPassingTest:v27];

    v3 = v5;
  }

  v22 = [(CRLiOSFreehandDrawingStrokeAnimator *)self->_strokeAnimator incomingShapeItemUUIDs];
  v21 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v3;
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
          v15 = [v13 shapeLayout];
          if ([v15 isInvisible])
          {
          }

          else
          {
            v16 = [v14 shapeInfo];
            v17 = [v16 id];
            v18 = [v22 containsObject:v17];

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
  v4 = [(CRLCanvasRep *)self canvas];
  v5 = [v4 isCanvasInteractive];

  if (v5)
  {
    v6 = [(CRLCanvasRep *)self interactiveCanvasController];
    v7 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
    v8 = [v7 transformInfo];
    if (v8)
    {
      v9 = [v6 repForInfo:v8];
      if (v9)
      {
        [v3 addObject:v9];
      }
    }

    v10 = objc_opt_class();
    v11 = [v6 freehandDrawingToolkit];
    v12 = [v11 currentTool];
    v13 = sub_100014370(v10, v12);

    if (v13)
    {
      v14 = [v13 drawingReps];
      v15 = [v14 allObjects];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100260C34;
      v18[3] = &unk_10184D328;
      v18[4] = self;
      v16 = [v15 crl_arrayOfObjectsPassingTest:v18];

      [v3 addObjectsFromArray:v16];
    }
  }

  return v3;
}

- (BOOL)p_shouldAllowSetNeedsDisplay
{
  if ([(CRLCanvasRep *)self isBeingResized]|| [(CRLCanvasRep *)self isBeingFreeTransformed])
  {
    v3 = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
    if ([v3 aspectRatioLocked])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v5 = [(CRLCanvasRep *)self layout];
      v6 = [v5 geometryInRoot];
      v7 = v6;
      if (v6)
      {
        [v6 transform];
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Double tap and hold, then drag to draw.";
LABEL_5:
    v9 = [v6 localizedStringForKey:v8 value:0 table:0];

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
  v9 = [(CRLFreehandDrawingRep *)&v11 accessibilityHint];
LABEL_7:

  return v9;
}

- (BOOL)accessibilityActivate
{
  if ([(CRLCanvasRep *)self isSelected])
  {
    v3 = [(CRLCanvasRep *)self interactiveCanvasController];
    v4 = [v3 freehandDrawingToolkit];
    v5 = [v4 isInDrawingMode];

    if (v5)
    {
      return 0;
    }

    else
    {
      v7 = [(CRLCanvasRep *)self interactiveCanvasController];
      v8 = [v7 freehandDrawingToolkit];
      v6 = 1;
      [v8 beginDrawingModeIfNeededForTouchType:1];
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
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLFreehandDrawingRep;
    v6 = [(CRLFreehandDrawingRep *)&v8 accessibilityDragSourceDescriptors];
  }

  return v6;
}

- (id)accessibilityCustomActions
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CRLFreehandDrawingRep;
    v6 = [(CRLFreehandDrawingRep *)&v8 accessibilityCustomActions];
  }

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(CRLCanvasRep *)self interactiveCanvasController];
  v4 = [v3 freehandDrawingToolkit];
  v5 = [v4 isInDrawingMode];

  MidX = -1.0;
  MidY = -1.0;
  if ((v5 & 1) == 0)
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
  v3 = [(CRLCanvasRep *)self info];
  v4 = [NSMutableArray arrayWithObject:v3];

  v5 = [(CRLFreehandDrawingRep *)self freehandDrawingInfo];
  v6 = [v5 childInfos];
  [v4 addObjectsFromArray:v6];

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
        v13 = [(CRLCanvasRep *)self interactiveCanvasController];
        LOBYTE(v12) = [v13 currentSelectionPathContainsInfo:v12];

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
  v6 = [(CRLFreehandDrawingRep *)self p_baseMathView];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v7);
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
      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
  v2 = [(CRLFreehandDrawingRep *)self freehandDrawingLayout];
  v3 = [v2 mathRecognitionHandler];
  v4 = [v3 crlaxRecognizedMathDescription];

  return v4;
}

+ (BOOL)requestingTechnologyShouldProvideAdditionalContext:(id)a3
{
  v3 = a3;
  if (v3)
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
    v6 = [v4 containsObject:v3];
    if ((v6 & 1) == 0)
    {
      [v5 containsObject:v3];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end