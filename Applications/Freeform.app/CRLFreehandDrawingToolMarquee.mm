@interface CRLFreehandDrawingToolMarquee
+ (id)dottedMarqueeRenderableAnimationWithOffsetDashes:(BOOL)dashes clockwise:(BOOL)clockwise;
+ (id)dottedMarqueeRenderableOfColor:(id)color offsetDashes:(BOOL)dashes;
- (BOOL)finalizeAndResetWithSuccess:(BOOL)success;
- (BOOL)handleMarqueeOrFingerTapOnMathResultStrokesInDrawingModeWithInput:(id)input;
- (BOOL)p_unlockedAncestorOfRepIsAlreadySelected:(id)selected;
- (BOOL)wantsDragForTouchType:(int64_t)type atUnscaledPoint:(CGPoint)point;
- (CRLFreehandDrawingToolMarquee)initWithInteractiveCanvasController:(id)controller;
- (NSArray)decoratorOverlayRenderables;
- (id)p_allSelectableItemsToInteractWithFromLayouts:(id)layouts;
- (id)p_allSelectionIneligibleItemsWithinMarqueeSelectionAreaInParentContainerAtPoint:(CGPoint)point;
- (id)p_allSelectionIneligibleLayoutsWithinMarqueeSelectionAreaFromLayouts:(id)layouts;
- (id)p_infosToSelectFromHitRep:(id)rep repForSelectingFromHitRep:(id)hitRep selectedInfosBeforeTapping:(id)tapping;
- (void)doWorkBeforeCanvasLayout;
- (void)handleMarqueeTapWithInput:(id)input;
- (void)p_deselectSmartSelectedDrawingShapeItemsFromInfosToSelect:(id)select;
- (void)p_handleMarqueeCircleSelectionWithMarqueePath:(id)path;
- (void)p_hideEditMenuForLassoSelection;
- (void)p_prepareForHitTestingInBackgroundWithMarqueeSelectionEligibleInfos:(id)infos marqueeSelectionIneligibleInfos:(id)ineligibleInfos viewScale:(double)scale visibleUnscaledRect:(CGRect)rect;
- (void)p_presentEditMenuForLassoSelection;
- (void)p_updateDottedMarqueeDecoratorRenderable:(id)renderable;
- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint;
- (void)updatePencilKitToolIfAppropriateFor:(id)for;
@end

@implementation CRLFreehandDrawingToolMarquee

- (CRLFreehandDrawingToolMarquee)initWithInteractiveCanvasController:(id)controller
{
  v8.receiver = self;
  v8.super_class = CRLFreehandDrawingToolMarquee;
  v3 = [(CRLFreehandDrawingTool *)&v8 initWithInteractiveCanvasController:controller];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.freeform.freehand-drawing.marquee-select-hit-testing", v4);
    hitTestingQueue = v3->_hitTestingQueue;
    v3->_hitTestingQueue = v5;

    v3->_initialUnscaledPoint = xmmword_1014629F0;
  }

  return v3;
}

- (void)performActionWithInputPoint:(id)point isInitialPoint:(BOOL)initialPoint isFinalPoint:(BOOL)finalPoint
{
  finalPointCopy = finalPoint;
  initialPointCopy = initialPoint;
  pointCopy = point;
  v70.receiver = self;
  v70.super_class = CRLFreehandDrawingToolMarquee;
  [(CRLFreehandDrawingTool *)&v70 performActionWithInputPoint:pointCopy isInitialPoint:initialPointCopy isFinalPoint:finalPointCopy];
  v9 = [(CRLFreehandDrawingTool *)self icc];
  [pointCopy unscaledPoint];
  v12 = v10;
  v13 = v11;
  v14 = &OBJC_IVAR___CRLPdfTaggerTextStorageChunkContext__textStorageChunk;
  if (initialPointCopy)
  {
    self->_initialUnscaledPoint.x = v10;
    self->_initialUnscaledPoint.y = v11;
    [pointCopy time];
    self->_initialTouchTime = v15;
    v16 = [(CRLFreehandDrawingTool *)self icc];
    [pointCopy unscaledPoint];
    v17 = [v16 parentForFreehandDrawingLayoutsAtPoint:?];

    children = [v17 children];
    v19 = [(CRLFreehandDrawingToolMarquee *)self p_allSelectableItemsToInteractWithFromLayouts:children];

    v20 = [(CRLFreehandDrawingTool *)self icc];
    freehandDrawingToolkit = [v20 freehandDrawingToolkit];
    isLassoAbleToSelectMixedType = [freehandDrawingToolkit isLassoAbleToSelectMixedType];

    if (isLassoAbleToSelectMixedType)
    {
      [pointCopy unscaledPoint];
      [(CRLFreehandDrawingToolMarquee *)self p_allSelectionIneligibleItemsWithinMarqueeSelectionAreaInParentContainerAtPoint:?];
    }

    else
    {
      +[NSArray array];
    }
    v25 = ;
    if ([v19 count])
    {
      [v9 viewScale];
      v27 = v26;
      [v9 visibleUnscaledRect];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      atomic_store(0, &self->_cancelledBackgroundHitTesting);
      hitTestingQueue = self->_hitTestingQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10055B3C8;
      block[3] = &unk_10186ED40;
      block[4] = self;
      block[5] = v19;
      v64 = v25;
      v65 = v27;
      v66 = v29;
      v67 = v31;
      v68 = v33;
      v69 = v35;
      dispatch_async(hitTestingQueue, block);
    }

    v37 = objc_alloc_init(CRLFreehandDrawingPathCreator);
    v14 = &OBJC_IVAR___CRLPdfTaggerTextStorageChunkContext__textStorageChunk;
    pathCreator = self->_pathCreator;
    self->_pathCreator = v37;

    v39 = self->_pathCreator;
    [v9 viewScale];
    -[CRLFreehandDrawingPathCreator beginDrawingWithViewScale:inputType:](v39, "beginDrawingWithViewScale:inputType:", [pointCopy inputType], v40);
    [v9 addDecorator:self];
    self->_didProvideDecoratorRenderable = 0;
    v41 = objc_alloc_init(CRLFreehandDrawingWindingCalculator);
    windingCalculator = self->_windingCalculator;
    self->_windingCalculator = v41;

    [(CRLFreehandDrawingWindingCalculator *)self->_windingCalculator addPoint:v12, v13];
  }

  else if (([pointCopy isPredicted] & 1) == 0)
  {
    if (!self->_movedFarEnoughNotToBeTap)
    {
      v23 = sub_100120090(self->_initialUnscaledPoint.x, self->_initialUnscaledPoint.y, v12, v13);
      [v9 viewScale];
      if (v23 * v24 > 45.0)
      {
        self->_movedFarEnoughNotToBeTap = 1;
      }
    }

    [(CRLFreehandDrawingWindingCalculator *)self->_windingCalculator addPoint:v12, v13];
  }

  if (([pointCopy isPredicted] & 1) == 0)
  {
    [pointCopy time];
    self->_mostRecentTouchTime = v43;
  }

  if (initialPointCopy || ([pointCopy wasAddedByTouchesEnded] & 1) == 0)
  {
    v44 = *(&self->super.super.isa + v14[111]);
    [pointCopy time];
    [v44 drawToPoint:objc_msgSend(pointCopy atTime:"isPredicted") predicted:{v12, v13, v45}];
  }

  if ([pointCopy inputType] == 2 && (objc_msgSend(pointCopy, "wasAddedByTouchesEnded") & 1) == 0)
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    freehandDrawingToolkit2 = [v9 freehandDrawingToolkit];
    v47 = freehandDrawingToolkit2;
    if (pointCopy)
    {
      [pointCopy PKInputPoint];
      if (v47)
      {
LABEL_22:
        [v47 inputPointInPKCanvasViewFromUnscaledSpace:v52];
LABEL_25:

        freehandDrawingToolkit3 = [v9 freehandDrawingToolkit];
        v50[6] = v60;
        v50[7] = v61;
        v51 = v62;
        v50[2] = v56;
        v50[3] = v57;
        v50[4] = v58;
        v50[5] = v59;
        v50[0] = v54;
        v50[1] = v55;
        [freehandDrawingToolkit3 updatePencilShadowWithInputPoint:v50];

        goto LABEL_26;
      }
    }

    else
    {
      v53 = 0;
      memset(v52, 0, sizeof(v52));
      if (freehandDrawingToolkit2)
      {
        goto LABEL_22;
      }
    }

    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_25;
  }

LABEL_26:
  [v9 invalidateLayersForDecorator:self];
  if (self->_didProvideDecoratorRenderable && ([v9 i_currentlySuppressingLayerUpdates] & 1) == 0)
  {
    v49 = +[NSSet set];
    [v9 i_beginSuppressingLayerUpdatesExceptForReps:v49];
  }
}

- (BOOL)finalizeAndResetWithSuccess:(BOOL)success
{
  v21.receiver = self;
  v21.super_class = CRLFreehandDrawingToolMarquee;
  v4 = [(CRLFreehandDrawingTool *)&v21 finalizeAndResetWithSuccess:success];
  v5 = [(CRLFreehandDrawingTool *)self icc];
  if ([v5 i_currentlySuppressingLayerUpdates])
  {
    [v5 i_endSuppressingLayerUpdates];
  }

  if (v4)
  {
    byte_101A35508 = [(CRLFreehandDrawingWindingCalculator *)self->_windingCalculator isWindingClockwise];
  }

  windingCalculator = self->_windingCalculator;
  self->_windingCalculator = 0;

  [(CRLFreehandDrawingPathCreator *)self->_pathCreator endDrawing];
  if (v4)
  {
    if (self->_movedFarEnoughNotToBeTap || self->_mostRecentTouchTime - self->_initialTouchTime > 0.75)
    {
      copyOfEntirePath = [(CRLFreehandDrawingPathCreator *)self->_pathCreator copyOfEntirePath];
      [(CRLFreehandDrawingToolMarquee *)self p_handleMarqueeCircleSelectionWithMarqueePath:copyOfEntirePath];
    }

    else
    {
      atomic_store(1u, &self->_cancelledBackgroundHitTesting);
      copyOfEntirePath2 = [(CRLFreehandDrawingPathCreator *)self->_pathCreator copyOfEntirePath];
      [copyOfEntirePath2 bounds];
      v17 = sub_100120414(v13, v14, v15, v16);
      v19 = v18;

      copyOfEntirePath = [[CRLFreehandDrawingToolMarqueeInput alloc] initWithUnscaledTapPoint:[(CRLFreehandDrawingTool *)self currentInputType] inputType:v17, v19];
      if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
      {
        if (self->_isHandlingDoubleTapGesture)
        {
          self->_isHandlingDoubleTapGesture = 0;
        }

        else
        {
          [(CRLFreehandDrawingToolMarquee *)self performSelector:"handleMarqueeTapWithInput:" withObject:copyOfEntirePath afterDelay:0.3];
        }
      }

      else
      {
        [(CRLFreehandDrawingToolMarquee *)self handleMarqueeTapWithInput:copyOfEntirePath];
      }
    }
  }

  else
  {
    atomic_store(1u, &self->_cancelledBackgroundHitTesting);
  }

  v8 = [(CRLFreehandDrawingTool *)self icc];
  [v8 removeDecorator:self];

  self->_didProvideDecoratorRenderable = 0;
  self->_mostRecentTouchTime = 0.0;
  self->_initialTouchTime = 0.0;
  self->_movedFarEnoughNotToBeTap = 0;
  self->_initialUnscaledPoint = xmmword_1014629F0;
  pathCreator = self->_pathCreator;
  self->_pathCreator = 0;

  hitTestingQueue = self->_hitTestingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10055B69C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(hitTestingQueue, block);

  return v4;
}

- (void)updatePencilKitToolIfAppropriateFor:(id)for
{
  forCopy = for;
  v4 = objc_alloc_init(PKLassoTool);
  [forCopy setTool:v4];
}

+ (id)dottedMarqueeRenderableOfColor:(id)color offsetDashes:(BOOL)dashes
{
  dashesCopy = dashes;
  colorCopy = color;
  v6 = +[CRLCanvasShapeRenderable renderable];
  [v6 setLineWidth:4.0];
  [v6 setLineDashPattern:&off_1018E1F20];
  [v6 setLineJoin:kCALineJoinRound];
  [v6 setLineCap:kCALineCapRound];
  [v6 setFillColor:0];
  v7 = [colorCopy colorWithAlphaComponent:0.5];

  [v6 setStrokeColor:{objc_msgSend(v7, "CGColor")}];
  v8 = 0.0;
  if (dashesCopy)
  {
    v8 = 5.5;
  }

  [v6 setLineDashPhase:v8];

  return v6;
}

+ (id)dottedMarqueeRenderableAnimationWithOffsetDashes:(BOOL)dashes clockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  dashesCopy = dashes;
  v6 = [CABasicAnimation animationWithKeyPath:@"lineDashPhase"];
  v7 = 5.5;
  if (!dashesCopy)
  {
    v7 = 0.0;
  }

  if (clockwiseCopy)
  {
    v8 = v7 + 11.0;
  }

  else
  {
    v8 = v7;
  }

  if (clockwiseCopy)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 11.0;
  }

  v10 = [NSNumber numberWithDouble:v8];
  [v6 setFromValue:v10];

  v11 = [NSNumber numberWithDouble:v9];
  [v6 setToValue:v11];

  [v6 setDuration:1.0];
  LODWORD(v12) = 2139095040;
  [v6 setRepeatCount:v12];

  return v6;
}

- (NSArray)decoratorOverlayRenderables
{
  if (!self->_blackMarqueeRenderable || !self->_whiteMarqueeRenderable)
  {
    v3 = objc_opt_class();
    v4 = +[CRLColor blackColor];
    v5 = [v3 dottedMarqueeRenderableOfColor:v4 offsetDashes:0];
    blackMarqueeRenderable = self->_blackMarqueeRenderable;
    self->_blackMarqueeRenderable = v5;

    v7 = objc_opt_class();
    v8 = +[CRLColor whiteColor];
    v9 = [v7 dottedMarqueeRenderableOfColor:v8 offsetDashes:1];
    whiteMarqueeRenderable = self->_whiteMarqueeRenderable;
    self->_whiteMarqueeRenderable = v9;
  }

  if (self->_pathCreator && self->_blackMarqueeRenderable && self->_whiteMarqueeRenderable)
  {
    [(CRLFreehandDrawingToolMarquee *)self p_updateDottedMarqueeDecoratorRenderable:?];
    [(CRLFreehandDrawingToolMarquee *)self p_updateDottedMarqueeDecoratorRenderable:self->_whiteMarqueeRenderable];
    v11 = self->_whiteMarqueeRenderable;
    v14[0] = self->_blackMarqueeRenderable;
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  self->_didProvideDecoratorRenderable = 1;

  return v12;
}

- (void)doWorkBeforeCanvasLayout
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingToolMarquee;
  [(CRLFreehandDrawingTool *)&v5 doWorkBeforeCanvasLayout];
  v3 = [(CRLFreehandDrawingTool *)self icc];
  if ([v3 i_currentlySuppressingLayerUpdates] && self->_pathCreator && self->_blackMarqueeRenderable)
  {
    whiteMarqueeRenderable = self->_whiteMarqueeRenderable;

    if (whiteMarqueeRenderable)
    {
      [(CRLFreehandDrawingToolMarquee *)self p_updateDottedMarqueeDecoratorRenderable:self->_blackMarqueeRenderable];
      [(CRLFreehandDrawingToolMarquee *)self p_updateDottedMarqueeDecoratorRenderable:self->_whiteMarqueeRenderable];
    }
  }

  else
  {
  }
}

- (void)p_updateDottedMarqueeDecoratorRenderable:(id)renderable
{
  renderableCopy = renderable;
  if (!self->_pathCreator)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013928C8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013928DC(v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101392998();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v7, v5);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolMarquee p_updateDottedMarqueeDecoratorRenderable:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolMarquee.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:369 isFatal:0 description:"invalid nil value for '%{public}s'", "_pathCreator"];
  }

  v10 = [(CRLFreehandDrawingTool *)self icc];
  [v10 viewScale];
  v12 = v11;

  copyOfEntirePath = [(CRLFreehandDrawingPathCreator *)self->_pathCreator copyOfEntirePath];
  CGAffineTransformMakeScale(&v14, v12, v12);
  [copyOfEntirePath transformUsingAffineTransform:&v14];
  [renderableCopy setPath:{objc_msgSend(copyOfEntirePath, "CGPath")}];
}

- (void)p_prepareForHitTestingInBackgroundWithMarqueeSelectionEligibleInfos:(id)infos marqueeSelectionIneligibleInfos:(id)ineligibleInfos viewScale:(double)scale visibleUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  infosCopy = infos;
  ineligibleInfosCopy = ineligibleInfos;
  v76 = [(CRLFreehandDrawingTool *)self icc];
  v15 = ceil(10.0 / fmin(scale, 1.0));
  v16 = [[CRLBezierHitTester alloc] initWithBucketSize:v15];
  hitTester = self->_hitTester;
  self->_hitTester = v16;

  [(CRLBezierHitTester *)self->_hitTester setAllowsLargeCrawlingDistances:1];
  v18 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:16];
  selectionEligiblePathToInfoDictionary = self->_selectionEligiblePathToInfoDictionary;
  self->_selectionEligiblePathToInfoDictionary = v18;

  v20 = [NSHashTable hashTableWithOptions:0];
  selectionIneligiblePaths = self->_selectionIneligiblePaths;
  self->_selectionIneligiblePaths = v20;

  v22 = 120;
  v23 = atomic_load(&self->_cancelledBackgroundHitTesting);
  if ((v23 & 1) == 0)
  {
    v68 = ineligibleInfosCopy;
    v69 = infosCopy;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v24 = ineligibleInfosCopy;
    v25 = [v24 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v86;
LABEL_4:
      v28 = 0;
      while (1)
      {
        if (*v86 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v85 + 1) + 8 * v28);
        v30 = atomic_load(&self->_cancelledBackgroundHitTesting);
        if (v30)
        {
          break;
        }

        v31 = [(CRLFreehandDrawingTool *)self icc];
        v32 = [v31 layoutForInfo:v29];

        if (v32)
        {
          i_wrapPath = [v32 i_wrapPath];
          v34 = [i_wrapPath copy];

          [v32 transformInRoot];
          [v34 transformUsingAffineTransform:buf];
          -[CRLBezierHitTester addPath:filled:](self->_hitTester, "addPath:filled:", v34, [v34 containsClosePathElement]);
          [(NSHashTable *)self->_selectionIneligiblePaths addObject:v34];
        }

        if (v26 == ++v28)
        {
          v26 = [v24 countByEnumeratingWithState:&v85 objects:v99 count:16];
          if (v26)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v69;
    v35 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v82;
      v70 = *v82;
LABEL_14:
      v38 = 0;
      v71 = v36;
      while (1)
      {
        if (*v82 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v81 + 1) + 8 * v38);
        v40 = atomic_load(self + v22);
        if (v40)
        {
          goto LABEL_49;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v66 = [v76 layoutForInfo:v39];
        v65 = v66;
        if (v66)
        {
          i_wrapPath2 = [v66 i_wrapPath];
          v64 = [i_wrapPath2 copy];

          [v65 transformInRoot];
          [v64 transformUsingAffineTransform:buf];
          if (([v64 isEmpty] & 1) == 0)
          {
            [v64 bounds];
            v103.origin.x = x;
            v103.origin.y = y;
            v103.size.width = width;
            v103.size.height = height;
            if (CGRectIntersectsRect(v101, v103))
            {
              [(CRLBezierHitTester *)self->_hitTester addPath:v64 filled:1 crawlingDistance:v15];
              [(NSMapTable *)self->_selectionEligiblePathToInfoDictionary setObject:v39 forKey:v64];
            }
          }

LABEL_46:
        }

        if (++v38 == v36)
        {
          v36 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
          if (v36)
          {
            goto LABEL_14;
          }

          goto LABEL_49;
        }
      }

      v74 = v38;
      v41 = objc_opt_class();
      v73 = sub_100014370(v41, v39);
      childInfos = [v73 childInfos];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v75 = childInfos;
      v43 = [v75 countByEnumeratingWithState:&v77 objects:v89 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v78;
LABEL_21:
        v46 = 0;
        while (1)
        {
          if (*v78 != v45)
          {
            objc_enumerationMutation(v75);
          }

          v47 = *(*(&v77 + 1) + 8 * v46);
          v48 = atomic_load(self + v22);
          if (v48)
          {
            break;
          }

          v49 = objc_opt_class();
          v50 = sub_100014370(v49, v47);
          if (v50)
          {
            v51 = v22;
            v52 = objc_opt_class();
            v53 = [v76 layoutForInfo:v50];
            v54 = sub_100014370(v52, v53);

            if (v54)
            {
              pathSource = [v50 pathSource];
              bezierPath = [pathSource bezierPath];
              v57 = [bezierPath copy];

              [v54 transformInRoot];
              [v57 transformUsingAffineTransform:buf];
              [v57 bounds];
              v102.origin.x = x;
              v102.origin.y = y;
              v102.size.width = width;
              v102.size.height = height;
              if (CGRectIntersectsRect(v100, v102))
              {
                -[CRLBezierHitTester addPath:filled:crawlingDistance:](self->_hitTester, "addPath:filled:crawlingDistance:", v57, [v57 containsClosePathElement], v15);
                [(NSMapTable *)self->_selectionEligiblePathToInfoDictionary setObject:v50 forKey:v57];
              }
            }

            else
            {
              v58 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_1013929C0();
              }

              v59 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109890;
                v92 = v58;
                v93 = 2082;
                v94 = "[CRLFreehandDrawingToolMarquee p_prepareForHitTestingInBackgroundWithMarqueeSelectionEligibleInfos:marqueeSelectionIneligibleInfos:viewScale:visibleUnscaledRect:]";
                v95 = 2082;
                v96 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolMarquee.m";
                v97 = 1024;
                v98 = 440;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d There should be a currentShapeLayout here.", buf, 0x22u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_1013929E8();
              }

              v60 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v62 = v60;
                v63 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v92 = v58;
                v93 = 2114;
                v94 = v63;
                _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v57 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolMarquee p_prepareForHitTestingInBackgroundWithMarqueeSelectionEligibleInfos:marqueeSelectionIneligibleInfos:viewScale:visibleUnscaledRect:]", v68];
              v61 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolMarquee.m"];
              [CRLAssertionHandler handleFailureInFunction:v57 file:v61 lineNumber:440 isFatal:0 description:"There should be a currentShapeLayout here."];
            }

            v22 = v51;
          }

          if (v44 == ++v46)
          {
            v44 = [v75 countByEnumeratingWithState:&v77 objects:v89 count:16];
            if (v44)
            {
              goto LABEL_21;
            }

            break;
          }
        }
      }

      v64 = v75;

      v37 = v70;
      v36 = v71;
      v65 = v73;
      v38 = v74;
      goto LABEL_46;
    }

LABEL_49:

    ineligibleInfosCopy = v68;
    infosCopy = v69;
  }
}

- (void)p_handleMarqueeCircleSelectionWithMarqueePath:(id)path
{
  pathCopy = path;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  v6 = +[NSMutableSet set];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10055CA00;
  v34 = sub_10055CA10;
  v35 = 0;
  hitTestingQueue = self->_hitTestingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10055CA18;
  block[3] = &unk_101868EA0;
  v29 = &v30;
  block[4] = self;
  v21 = pathCopy;
  v27 = v21;
  v8 = v6;
  v28 = v8;
  dispatch_sync(hitTestingQueue, block);
  if (![v8 count] && objc_msgSend(v31[5], "count") && objc_msgSend(v31[5], "isEqualToHashTable:", self->_selectionIneligiblePaths))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    crl_allObjects = [(NSMapTable *)self->_selectionEligiblePathToInfoDictionary crl_allObjects];
    v14 = [crl_allObjects countByEnumeratingWithState:&v22 objects:v36 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(crl_allObjects);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v18 = objc_opt_class();
          v19 = sub_100014370(v18, v17);
          v20 = sub_100125F34(v19);
          if (v20)
          {
            [v8 addObject:v20];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [crl_allObjects countByEnumeratingWithState:&v22 objects:v36 count:16];
      }

      while (v14);
    }
  }

  if (+[CRLFeatureFlagsHelper isOSFeatureEnabled:](CRLFeatureFlagsHelper, "isOSFeatureEnabled:", 9) && [v8 count])
  {
    [(CRLFreehandDrawingToolMarquee *)self p_deselectSmartSelectedDrawingShapeItemsFromInfosToSelect:v8];
  }

  canvasEditor = [v5 canvasEditor];
  v10 = [canvasEditor selectionPathWithInfos:v8];

  editorController = [v5 editorController];
  [editorController setSelectionPath:v10];

  currentInputType = [(CRLFreehandDrawingTool *)self currentInputType];
  if ([v8 count] && currentInputType)
  {
    [(CRLFreehandDrawingToolMarquee *)self p_presentEditMenuForLassoSelection];
  }

  _Block_object_dispose(&v30, 8);
}

- (void)handleMarqueeTapWithInput:(id)input
{
  inputCopy = input;
  v4 = [(CRLFreehandDrawingTool *)self icc];
  [inputCopy unscaledTapPoint];
  v6 = v5;
  v8 = v7;
  inputType = [inputCopy inputType];
  freehandDrawingToolkit = [v4 freehandDrawingToolkit];
  isLassoAbleToSelectMixedType = [freehandDrawingToolkit isLassoAbleToSelectMixedType];

  layerHost = [v4 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v13 = objc_opt_class();
  delegate = [asiOSCVC delegate];
  currentDocumentMode = [delegate currentDocumentMode];
  v16 = sub_100014370(v13, currentDocumentMode);

  v67 = v16;
  currentlyDisplayingLassoSelectionMenu = [v16 currentlyDisplayingLassoSelectionMenu];
  v17 = [v4 hitRep:(inputType & 0xFFFFFFFFFFFFFFFDLL) == 0 withPrecision:{v6, v8}];
  if (!v17 && (inputType & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v17 = [v4 hitRep:0 withPrecision:{v6, v8}];
  }

  if (v17)
  {
    v18 = [(CRLFreehandDrawingToolMarquee *)self p_unlockedAncestorOfRepIsAlreadySelected:v17];
    infosForCurrentSelectionPath = [v4 infosForCurrentSelectionPath];
    if (v18)
    {
      repForSelecting = [v17 repForSelecting];
      canvasEditor = [v4 canvasEditor];
      v20 = [canvasEditor selectionPathWithInfos:0];

      editorController = [v4 editorController];
      [editorController setSelectionPath:v20];

      [(CRLFreehandDrawingToolMarquee *)self p_hideEditMenuForLassoSelection];
      v68 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    infosForCurrentSelectionPath = [v4 infosForCurrentSelectionPath];
  }

  v68 = 0;
  repForSelecting = 0;
LABEL_9:
  repForSelecting2 = [v17 repForSelecting];

  [asiOSCVC setLastTapPoint:{v6, v8}];
  if (repForSelecting2)
  {
    if (([repForSelecting2 handledLassoTapAtPoint:inputType withInputType:{v6, v8}] & 1) == 0)
    {
      v23 = objc_opt_class();
      v24 = sub_100014370(v23, repForSelecting2);
      v25 = v24;
      if (!v24 || ([v24 parentRep], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26) || (v27 = objc_opt_class(), objc_msgSend(v25, "parentRep"), v28 = objc_claimAutoreleasedReturnValue(), sub_100014370(v27, v28), v29 = objc_claimAutoreleasedReturnValue(), v28, !v29))
      {

LABEL_21:
        v32 = 0;
        v33 = 1;
        goto LABEL_23;
      }

      v30 = [v29 handledLassoTapAtPoint:inputType withInputType:{v6, v8}];

      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_19;
  }

  v31 = +[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled];
  v32 = 0;
  v33 = 1;
  if (v31 && v67)
  {
    if (![(CRLFreehandDrawingToolMarquee *)self handleMarqueeOrFingerTapOnMathResultStrokesInDrawingModeWithInput:inputCopy])
    {
      v32 = 0;
      goto LABEL_23;
    }

LABEL_19:
    v33 = 0;
    v32 = 1;
  }

LABEL_23:
  v65 = v32;
  v34 = +[NSSet set];
  if (repForSelecting2)
  {
    canvasEditor2 = [v4 canvasEditor];
    layout = [repForSelecting2 layout];
    v37 = inputType;
    v38 = [canvasEditor2 isLayoutSelectable:layout];

    v39 = v33 & v38;
    inputType = v37;
    if (v39 == 1)
    {
      v40 = objc_opt_class();
      info = [repForSelecting2 info];
      v42 = sub_100014370(v40, info);

      containingGroup = [v42 containingGroup];
      if (!containingGroup)
      {
        v44 = objc_opt_class();
        containingGroup = sub_100014370(v44, v42);
      }

      if ((isLassoAbleToSelectMixedType & 1) == 0)
      {
        layout2 = [repForSelecting2 layout];
        if (![layout2 isInGroup])
        {
          goto LABEL_52;
        }

        isFreehandDrawing = [containingGroup isFreehandDrawing];

        if (!isFreehandDrawing)
        {
          goto LABEL_53;
        }
      }

      v45 = sub_10012602C(containingGroup);
      if ([repForSelecting2 isSelected] & 1) != 0 || (v45)
      {

        inputType = v37;
        LOBYTE(v37) = currentlyDisplayingLassoSelectionMenu;
LABEL_57:

        goto LABEL_58;
      }

      if (isLassoAbleToSelectMixedType)
      {
        layout3 = [repForSelecting2 layout];
        if ([layout3 isInGroup] && containingGroup)
        {
          isFreehandDrawing2 = [containingGroup isFreehandDrawing];

          if ((isFreehandDrawing2 & 1) == 0)
          {
            parentInfo = [v42 parentInfo];
            v48 = objc_opt_class();
            v54 = sub_1003038E0(parentInfo, v48, 1, v49, v50, v51, v52, v53, &OBJC_PROTOCOL___CRLCanvasElementInfo);
            layout2 = sub_100125F34(v54);

            v56 = [NSSet setWithObject:layout2];

            v34 = v56;
LABEL_52:

LABEL_53:
            inputType = v37;
            LODWORD(v37) = currentlyDisplayingLassoSelectionMenu;
            goto LABEL_54;
          }
        }

        else
        {
        }
      }

      if (v68)
      {
        [(CRLFreehandDrawingToolMarquee *)self p_infosToSelectFromHitRep:repForSelecting2 repForSelectingFromHitRep:repForSelecting selectedInfosBeforeTapping:infosForCurrentSelectionPath];
      }

      else
      {
        [NSSet setWithObject:v42];
      }

      v34 = layout2 = v34;
      goto LABEL_52;
    }
  }

  if (repForSelecting)
  {
    v57 = v68;
  }

  else
  {
    v57 = 0;
  }

  if (v57 == 1)
  {
    v58 = [CRLFreehandDrawingToolMarquee p_infosToSelectFromHitRep:"p_infosToSelectFromHitRep:repForSelectingFromHitRep:selectedInfosBeforeTapping:" repForSelectingFromHitRep:repForSelecting2 selectedInfosBeforeTapping:?];

    v34 = v58;
    LODWORD(v37) = currentlyDisplayingLassoSelectionMenu;
    if ((v33 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_54:
    canvasEditor3 = [v4 canvasEditor];
    v42 = [canvasEditor3 selectionPathWithInfos:v34];

    if ((v68 | v37 ^ 1) == 1)
    {
      editorController2 = [v4 editorController];
      [editorController2 setSelectionPath:v42];
    }

    [(CRLFreehandDrawingToolMarquee *)self p_hideEditMenuForLassoSelection];
    goto LABEL_57;
  }

  LODWORD(v37) = currentlyDisplayingLassoSelectionMenu;
  if (v33)
  {
    goto LABEL_54;
  }

LABEL_58:
  if (inputType)
  {
    v62 = v65;
  }

  else
  {
    v62 = 1;
  }

  if ((v62 & 1) == 0)
  {
    if (v37)
    {
      [(CRLFreehandDrawingToolMarquee *)self p_hideEditMenuForLassoSelection];
    }

    else
    {
      [(CRLFreehandDrawingToolMarquee *)self p_presentEditMenuForLassoSelection];
    }
  }
}

- (BOOL)p_unlockedAncestorOfRepIsAlreadySelected:(id)selected
{
  parentRep = [selected parentRep];
  if (!parentRep)
  {
    return 0;
  }

  v5 = parentRep;
  while (![v5 isSelected] || objc_msgSend(v5, "isLocked"))
  {
    info = [v5 info];
    if (info)
    {
      v7 = [(CRLFreehandDrawingTool *)self icc];
      infosForCurrentSelectionPath = [v7 infosForCurrentSelectionPath];
      v9 = [infosForCurrentSelectionPath containsObject:info];

      if (v9)
      {

        break;
      }
    }

    parentRep2 = [v5 parentRep];

    v5 = parentRep2;
    if (!parentRep2)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (id)p_infosToSelectFromHitRep:(id)rep repForSelectingFromHitRep:(id)hitRep selectedInfosBeforeTapping:(id)tapping
{
  repCopy = rep;
  hitRepCopy = hitRep;
  tappingCopy = tapping;
  if ([tappingCopy count] < 2)
  {
    info = [hitRepCopy info];
    v12 = sub_100125F34(info);

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = [NSSet setWithObject:v12];
    }

    else
    {
      v13 = objc_opt_class();
      info2 = [repCopy info];
      v15 = sub_100014370(v13, info2);

      if (v15)
      {
        [NSSet setWithObject:v15];
      }

      else
      {
        +[NSSet set];
      }
      v10 = ;
    }
  }

  else
  {
    v10 = tappingCopy;
  }

  return v10;
}

- (void)p_deselectSmartSelectedDrawingShapeItemsFromInfosToSelect:(id)select
{
  selectCopy = select;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  layerHost = [v5 layerHost];
  asPencilGestureProvider = [layerHost asPencilGestureProvider];

  smartSelectionManager = [asPencilGestureProvider smartSelectionManager];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = selectCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_opt_class();
        editorController = sub_100014370(v15, v14);
        if (!editorController || ![smartSelectionManager doesCurrentSmartSelectedDrawingShapeItemsContainDrawingShapeItem:{editorController, v19}])
        {
          v18 = v9;
          goto LABEL_12;
        }

        [smartSelectionManager removeSelectedShapeItemFromSmartSelectionBookkeeping:editorController];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  canvasEditor = [v5 canvasEditor];
  v18 = [canvasEditor selectionPathWithInfos:0];

  editorController = [v5 editorController];
  [editorController setSelectionPath:v18];
LABEL_12:
}

- (BOOL)handleMarqueeOrFingerTapOnMathResultStrokesInDrawingModeWithInput:(id)input
{
  inputCopy = input;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  [inputCopy unscaledTapPoint];
  v7 = v6;
  v9 = v8;
  inputType = [inputCopy inputType];
  topLevelRepsForHitTesting = [v5 topLevelRepsForHitTesting];
  v11 = +[NSMutableSet set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = topLevelRepsForHitTesting;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = objc_opt_class();
        info = [v16 info];
        parentInfo = [info parentInfo];
        v20 = sub_100014370(v17, parentInfo);

        v21 = objc_opt_class();
        v22 = [v5 repForInfo:v20];
        v23 = sub_100014370(v21, v22);

        [v11 crl_addNonNilObject:v23];
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    canvas = [v5 canvas];
    if ((inputType & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v25 = 20.0;
    }

    else
    {
      v25 = 2.0;
    }

    allObjects = [v11 allObjects];
    v27 = [canvas hitRep:(inputType & 0xFFFFFFFFFFFFFFFDLL) == 0 withPrecision:allObjects inTopLevelReps:0 smallRepOutset:0 unscaledPointTransformForRep:v7 passingTest:{v9, v25}];

    v28 = objc_opt_class();
    v29 = sub_100014370(v28, v27);
    v30 = v29;
    if (v29)
    {
      v31 = [v29 handledLassoTapAtPoint:inputType withInputType:{v7, v9}];
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)wantsDragForTouchType:(int64_t)type atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = (type & 0xFFFFFFFFFFFFFFFELL) == 2;
  v8 = [(CRLFreehandDrawingTool *)self icc];
  v9 = [v8 hitRep:v7 withPrecision:{x, y}];

  repForDragging = [v9 repForDragging];
  v11 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v11 freehandDrawingToolkit];
  isLassoAbleToSelectMixedType = [freehandDrawingToolkit isLassoAbleToSelectMixedType];

  if (!repForDragging || (isLassoAbleToSelectMixedType & 1) != 0)
  {
    if (!repForDragging)
    {
LABEL_9:
      v20 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = objc_opt_class();
    repForDragging2 = [v9 repForDragging];
    v16 = sub_100014370(v14, repForDragging2);

    shapeInfo = [v16 shapeInfo];
    containingGroup = [shapeInfo containingGroup];
    isFreehandDrawing = [containingGroup isFreehandDrawing];

    if ((isFreehandDrawing & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (([repForDragging isLocked] & 1) != 0 || !objc_msgSend(repForDragging, "isSelected"))
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v20 = objc_opt_isKindOfClass() ^ 1;
LABEL_10:

  return v20 & 1;
}

- (id)p_allSelectableItemsToInteractWithFromLayouts:(id)layouts
{
  layoutsCopy = layouts;
  selfCopy = self;
  v5 = [(CRLFreehandDrawingTool *)self icc];
  freehandDrawingToolkit = [v5 freehandDrawingToolkit];
  isLassoAbleToSelectMixedType = [freehandDrawingToolkit isLassoAbleToSelectMixedType];

  v38 = isLassoAbleToSelectMixedType;
  objc_opt_class();
  v41 = +[NSMutableArray array];
  if ([layoutsCopy count])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v37 = layoutsCopy;
    obj = layoutsCopy;
    v44 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (!v44)
    {
      goto LABEL_40;
    }

    v8 = *v50;
    v40 = *v50;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        v13 = objc_opt_class();
        info = [v12 info];
        v15 = sub_100013F00(v13, info);

        if (!v12 || ([v15 locked] & 1) == 0)
        {
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 isMemberOfClass:objc_opt_class()] & 1) == 0)
          {
            [(CRLFreehandDrawingTool *)selfCopy icc];
            v28 = v27 = v15;
            canvasEditor = [v28 canvasEditor];
            v30 = [canvasEditor isLayoutSelectable:v10];

            v15 = v27;
            if (!v30)
            {
              goto LABEL_31;
            }

            v31 = objc_opt_class();
            info2 = [v10 info];
            v16 = sub_100014370(v31, info2);

            if (v16)
            {
              [v41 addObject:v16];
            }

            v15 = v27;
          }

          else
          {
            if (!v12)
            {
              goto LABEL_31;
            }

            v16 = objc_alloc_init(NSMutableArray);
            v17 = objc_alloc_init(NSMutableArray);
            v43 = v15;
            allNestedNonGroupChildItemsTreatingFreehandDrawingAsLeafNode = [v15 allNestedNonGroupChildItemsTreatingFreehandDrawingAsLeafNode];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v19 = [allNestedNonGroupChildItemsTreatingFreehandDrawingAsLeafNode countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v46;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v46 != v21)
                  {
                    objc_enumerationMutation(allNestedNonGroupChildItemsTreatingFreehandDrawingAsLeafNode);
                  }

                  v23 = *(*(&v45 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v24 = v16;
                  }

                  else
                  {
                    v24 = v17;
                  }

                  [v24 addObject:v23];
                }

                v20 = [allNestedNonGroupChildItemsTreatingFreehandDrawingAsLeafNode countByEnumeratingWithState:&v45 objects:v53 count:16];
              }

              while (v20);
            }

            v25 = [v16 count];
            v26 = [v17 count];
            if (!v25 || v26)
            {
              if (v25 || !v26)
              {
                connectedLayouts = [v12 connectedLayouts];
                v34 = ([connectedLayouts count] != 0) & v38;

                if (v34 != 1)
                {
                  goto LABEL_24;
                }

                v15 = v43;
                [v41 addObject:v43];
                v8 = v40;
              }

              else
              {
                v8 = v40;
                v15 = v43;
                if (v38)
                {
                  [v41 addObject:v43];
                }
              }
            }

            else
            {
LABEL_24:
              [v41 addObjectsFromArray:v16];
              v8 = v40;
              v15 = v43;
            }
          }
        }

LABEL_31:

        v9 = v9 + 1;
      }

      while (v9 != v44);
      v35 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      v44 = v35;
      if (!v35)
      {
LABEL_40:

        layoutsCopy = v37;
        break;
      }
    }
  }

  return v41;
}

- (id)p_allSelectionIneligibleItemsWithinMarqueeSelectionAreaInParentContainerAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(CRLFreehandDrawingTool *)self icc];
  v7 = [v6 parentForFreehandDrawingLayoutsAtPoint:{x, y}];

  children = [v7 children];
  v9 = [(CRLFreehandDrawingToolMarquee *)self p_allSelectionIneligibleLayoutsWithinMarqueeSelectionAreaFromLayouts:children];

  v10 = [v9 crl_arrayByTransformingWithBlock:&stru_10186EE00];

  return v10;
}

- (id)p_allSelectionIneligibleLayoutsWithinMarqueeSelectionAreaFromLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v5 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = layoutsCopy;
  v26 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    v7 = *v28;
    v25 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = sub_100014370(v10, v9);
        v12 = objc_opt_class();
        info = [v11 info];
        v14 = sub_100013F00(v12, info);

        if (!v11 || ([v14 locked] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || ([v9 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v9, "isMemberOfClass:", objc_opt_class()))
          {
            if (v11 && ([v14 isFreehandDrawing] & 1) == 0)
            {
              children = [v11 children];
              v16 = [(CRLFreehandDrawingToolMarquee *)self p_allSelectionIneligibleLayoutsWithinMarqueeSelectionAreaFromLayouts:children];
              [v5 addObjectsFromArray:v16];
            }
          }

          else
          {
            v17 = [(CRLFreehandDrawingTool *)self icc];
            [v17 canvasEditor];
            v18 = v6;
            selfCopy = self;
            v21 = v20 = v5;
            v22 = [v21 isLayoutSelectable:v9];

            v5 = v20;
            self = selfCopy;
            v6 = v18;
            v7 = v25;

            if (v22)
            {
              [v5 addObject:v9];
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v26 != v8);
      v23 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v26 = v23;
    }

    while (v23);
  }

  return v5;
}

- (void)p_presentEditMenuForLassoSelection
{
  v9 = [(CRLFreehandDrawingTool *)self icc];
  layerHost = [v9 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  delegate = [asiOSCVC delegate];
  currentDocumentMode = [delegate currentDocumentMode];

  v6 = objc_opt_class();
  v7 = sub_100014370(v6, currentDocumentMode);
  v8 = v7;
  if (v7)
  {
    [v7 presentEditMenuForLassoSelection];
  }
}

- (void)p_hideEditMenuForLassoSelection
{
  v9 = [(CRLFreehandDrawingTool *)self icc];
  layerHost = [v9 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  delegate = [asiOSCVC delegate];
  currentDocumentMode = [delegate currentDocumentMode];

  v6 = objc_opt_class();
  v7 = sub_100014370(v6, currentDocumentMode);
  v8 = v7;
  if (v7)
  {
    [v7 hideEditMenuForLassoSelection];
  }
}

@end