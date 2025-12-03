@interface CRLFreehandDrawingLayout
+ (BOOL)p_anyFreehandDrawingsVisibleInInteractiveCanvasController:(id)controller findSelected:(BOOL)selected;
+ (BOOL)p_layoutIsFreehandDrawing:(id)drawing andSelected:(BOOL)selected icc:(id)icc;
+ (id)freehandDrawingLayoutsToInteractWithFromLayouts:(id)layouts;
- (BOOL)isInteractable;
- (BOOL)p_shouldSetupMathPaperRecognitionOnICC:(id)c forStrokes:(id)strokes;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)pureTransformInRootWithoutMathResults;
- (CGRect)boundsForMathResultViews;
- (CGRect)boundsInRoot;
- (CGRect)cachedFrameForMiniFormatterPositioning;
- (CGRect)computeBoundsForStandardKnobs;
- (CGRect)frameAtMathViewAttachment;
- (CGRect)frameForMiniFormatterPositioning;
- (CGRect)p_boundsForMathResultViews;
- (CGRect)p_boundsInNaturalSpaceForMathView:(id)view;
- (CGRect)p_getUnRotatedFrameWithoutMathResults;
- (CGSize)minimumSize;
- (CRLCanvasLayoutGeometry)pureGeometryInRootWithoutMathResults;
- (CRLCanvasLayoutGeometry)pureGeometryWithoutMathResults;
- (CRLFreehandDrawingLayout)initWithInfo:(id)info;
- (NSSet)subscribedFreehandDrawingIDs;
- (_TtC8Freeform22CRLFreehandDrawingItem)freehandInfo;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)childInfosForChildLayouts;
- (id)computeLayoutGeometry;
- (id)computeWrapPath;
- (id)pathForClippingConnectionLines;
- (unint64_t)maxFilledShapeIndex;
- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:(id)c;
- (void)p_setUpDrawingShapeItemUUIDToStrokeDataUUIDBidirectionalMapFromDrawingProvider:(id)provider;
- (void)p_setUpRecognitionIfNeededOnICC:(id)c;
- (void)p_setupMathRecognitionHandlerOnICC:(id)c;
- (void)p_tearDownRecognitionIfNeededOnICC:(id)c;
- (void)p_updateBoundsForMathResultSubviewsWillChangeWithDelay:(BOOL)delay;
- (void)p_updateLayoutBoundsForMathResultView;
- (void)parentDidChange;
- (void)pkStrokesForFreehandItemsDidChange:(id)change;
- (void)processChangedProperty:(unint64_t)property;
- (void)resetMathRecognitionHandlerIfRequestedAndEnabled;
- (void)setBoundsForMathResultViews:(CGRect)views;
- (void)setCachedFrameForMiniFormatterPositioning:(CGRect)positioning;
- (void)setFrameAtMathViewAttachment:(CGRect)attachment;
- (void)showSubselectionAffordanceForSelectedInfos:(id)infos;
- (void)transformLayoutDidBeginDynamicOperation;
- (void)transformLayoutDidEndDynamicOperation;
- (void)updateDrawingShapeItemUUIDToStrokeDataUUIDDict:(id)dict;
- (void)willBeAddedToLayoutController:(id)controller;
- (void)willBeRemovedFromLayoutController:(id)controller;
@end

@implementation CRLFreehandDrawingLayout

- (CRLFreehandDrawingLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingLayout;
  result = [(CRLCanvasLayout *)&v6 initWithInfo:info];
  if (result)
  {
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    *(&result->_transformInfo + 2) = CGRectNull.origin;
    *(&result->_frameForMiniFormatterPositioning.origin.y + 2) = size;
    *(&result->_drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap + 2) = origin;
    *(&result->_boundsForMathResultViews.origin.y + 2) = size;
    *(&result->_frameForMiniFormatterPositioning.size.height + 2) = origin;
    *(&result->_boundsForStandardKnobsWithoutMathResultsViews.origin.y + 2) = size;
  }

  return result;
}

- (_TtC8Freeform22CRLFreehandDrawingItem)freehandInfo
{
  v3 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, info);

  return v5;
}

- (CGSize)minimumSize
{
  v4.receiver = self;
  v4.super_class = CRLFreehandDrawingLayout;
  [(CRLGroupLayout *)&v4 minimumSize];
  if (v2 < 0.00000000999999994)
  {
    v2 = 0.00000000999999994;
  }

  if (v3 < 0.00000000999999994)
  {
    v3 = 0.00000000999999994;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (id)childInfosForChildLayouts
{
  if (*(&self->_isTransformLayoutInDynamicOperation + 2))
  {
    v3 = [&__NSArray0__struct arrayByAddingObject:?];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  v7.receiver = self;
  v7.super_class = CRLFreehandDrawingLayout;
  childInfosForChildLayouts = [(CRLGroupLayout *)&v7 childInfosForChildLayouts];
  v5 = [v3 arrayByAddingObjectsFromArray:childInfosForChildLayouts];

  return v5;
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = CRLFreehandDrawingLayout;
  v5 = [(CRLGroupLayout *)&v14 additionalDependenciesForChildLayout:layoutCopy];
  layoutController = [(CRLCanvasLayout *)self layoutController];
  v7 = [layoutController layoutForInfo:*(&self->_isTransformLayoutInDynamicOperation + 2)];

  if (v7)
  {
    v8 = v7 == layoutCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
    info = [layoutCopy info];
    v11 = [freehandInfo isNonGroupedChild:info];

    if ((v11 & 1) == 0)
    {
      v12 = [v5 arrayByAddingObject:v7];

      v5 = v12;
    }
  }

  return v5;
}

- (BOOL)shouldSnapWhileResizing
{
  freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
  childInfos = [freehandInfo childInfos];
  v5 = [childInfos count];

  if (v5 > 0xC8)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CRLFreehandDrawingLayout;
  return [(CRLGroupLayout *)&v7 shouldSnapWhileResizing];
}

- (CGRect)boundsInRoot
{
  pureGeometryInRoot = [(CRLCanvasLayout *)self pureGeometryInRoot];
  [pureGeometryInRoot frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)willBeAddedToLayoutController:(id)controller
{
  v7.receiver = self;
  v7.super_class = CRLFreehandDrawingLayout;
  controllerCopy = controller;
  [(CRLCanvasLayout *)&v7 willBeAddedToLayoutController:controllerCopy];
  canvas = [controllerCopy canvas];

  if ([canvas isCanvasInteractive])
  {
    canvasController = [canvas canvasController];
    [(CRLFreehandDrawingLayout *)self p_setUpRecognitionIfNeededOnICC:canvasController];
  }
}

- (void)willBeRemovedFromLayoutController:(id)controller
{
  controllerCopy = controller;
  canvas = [controllerCopy canvas];
  if ([canvas isCanvasInteractive])
  {
    canvasController = [canvas canvasController];
    [(CRLFreehandDrawingLayout *)self p_tearDownRecognitionIfNeededOnICC:canvasController];

    v7 = *(&self->_baseMathView + 2);
    *(&self->_baseMathView + 2) = 0;

    [*(&self->_pkRecognitionController + 2) removeFromSuperview];
    v8 = *(&self->_pkRecognitionController + 2);
    *(&self->_pkRecognitionController + 2) = 0;

    [*(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2) removeFromParentViewController];
    v9 = *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2);
    *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2) = 0.0;
  }

  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingLayout;
  [(CRLCanvasLayout *)&v10 willBeRemovedFromLayoutController:controllerCopy];
}

- (BOOL)p_shouldSetupMathPaperRecognitionOnICC:(id)c forStrokes:(id)strokes
{
  cCopy = c;
  strokesCopy = strokes;
  v7 = +[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled];
  mathCalculationController = [cCopy mathCalculationController];
  v9 = mathCalculationController;
  if (v7)
  {
    v10 = mathCalculationController == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    LOBYTE(v11) = 0;
  }

  else if ([mathCalculationController mathHintsMode])
  {
    LOBYTE(v11) = [v9 mathHintsMode] != 3;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = strokesCopy;
    v11 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v13 = *v17;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v12);
          }

          if (([*(*(&v16 + 1) + 8 * i) _flags] & 0x20000000000) != 0)
          {
            LOBYTE(v11) = 1;
            goto LABEL_19;
          }
        }

        v11 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  return v11;
}

- (void)p_setUpRecognitionIfNeededOnICC:(id)c
{
  cCopy = c;
  if (!*(&self->_baseMathViewController + 2))
  {
    freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
    if ([freehandInfo prohibitsClustering])
    {
LABEL_17:

      goto LABEL_18;
    }

    pkDrawingProvider = [cCopy pkDrawingProvider];
    if (pkDrawingProvider)
    {
      v7 = [freehandInfo id];
      v8 = [pkDrawingProvider pkStrokesForFreehandDrawingItemUUID:v7];

      if (![(CRLFreehandDrawingLayout *)self p_shouldSetupMathPaperRecognitionOnICC:cCopy forStrokes:v8])
      {
LABEL_16:

        goto LABEL_17;
      }

      v9 = objc_alloc_init(PKDrawing);
      v10 = [freehandInfo id];
      [v9 _setUUID:v10];

      v11 = [v9 undoableAddNewStrokes:v8];
      v12 = [PKRecognitionController alloc];
      strokes = [v9 strokes];
      v14 = [v12 initWithDrawing:v9 visibleOnscreenStrokes:strokes useSessionCache:1];
      v15 = *(&self->_baseMathViewController + 2);
      *(&self->_baseMathViewController + 2) = v14;

      [(CRLFreehandDrawingLayout *)self p_setUpDrawingShapeItemUUIDToStrokeDataUUIDBidirectionalMapFromDrawingProvider:pkDrawingProvider];
      [pkDrawingProvider addPKDrawingsObserver:self];
      [(CRLFreehandDrawingLayout *)self p_setupMathRecognitionHandlerOnICC:cCopy];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131FFCC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131FFE0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132007C();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout p_setUpRecognitionIfNeededOnICC:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:219 isFatal:0 description:"invalid nil value for '%{public}s'", "drawingProvider"];
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)p_setUpDrawingShapeItemUUIDToStrokeDataUUIDBidirectionalMapFromDrawingProvider:(id)provider
{
  providerCopy = provider;
  if (*(&self->_previousAspectRatio + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013200A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013200B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320154();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout p_setUpDrawingShapeItemUUIDToStrokeDataUUIDBidirectionalMapFromDrawingProvider:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:246 isFatal:0 description:"expected nil value for '%{public}s'", "_drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap"];
  }

  v8 = objc_alloc_init(CRLBidirectionalMap);
  v9 = *(&self->_previousAspectRatio + 2);
  *(&self->_previousAspectRatio + 2) = v8;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
  childItems = [freehandInfo childItems];

  v12 = [childItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(childItems);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 id];
        v18 = [providerCopy strokeDataUUIDForDrawingShapeItemUUID:v17];

        if (v18)
        {
          v19 = *(&self->_previousAspectRatio + 2);
          v20 = [v16 id];
          [v19 setObject:v18 forKeyedSubscript:v20];
        }
      }

      v13 = [childItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)p_tearDownRecognitionIfNeededOnICC:(id)c
{
  if (*(&self->_baseMathViewController + 2))
  {
    pkDrawingProvider = [c pkDrawingProvider];
    [pkDrawingProvider removePKDrawingsObserver:self];

    v5 = *(&self->_previousAspectRatio + 2);
    *(&self->_previousAspectRatio + 2) = 0.0;

    [*(&self->_baseMathView + 2) willBeRemoved];
    v6 = *(&self->_baseMathView + 2);
    *(&self->_baseMathView + 2) = 0;

    [*(&self->_pkRecognitionController + 2) removeFromSuperview];
    v7 = *(&self->_pkRecognitionController + 2);
    *(&self->_pkRecognitionController + 2) = 0;

    [*(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2) removeFromParentViewController];
    v8 = *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2);
    *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2) = 0.0;

    v9 = *(&self->_baseMathViewController + 2);
    *(&self->_baseMathViewController + 2) = 0;
  }
}

- (void)parentDidChange
{
  v5.receiver = self;
  v5.super_class = CRLFreehandDrawingLayout;
  [(CRLCanvasLayout *)&v5 parentDidChange];
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];

  if ([canvas isCanvasInteractive])
  {
    [(CRLFreehandDrawingLayout *)self resetMathRecognitionHandlerIfRequestedAndEnabled];
  }
}

- (void)processChangedProperty:(unint64_t)property
{
  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingLayout;
  [(CRLGroupLayout *)&v10 processChangedProperty:?];
  if (property == 28)
  {
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];

    if ([canvas isCanvasInteractive])
    {
      canvasController = [canvas canvasController];
      freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
      prohibitsClustering = [freehandInfo prohibitsClustering];

      if (prohibitsClustering)
      {
        [(CRLFreehandDrawingLayout *)self p_tearDownRecognitionIfNeededOnICC:canvasController];
      }

      else
      {
        [(CRLFreehandDrawingLayout *)self p_setUpRecognitionIfNeededOnICC:canvasController];
      }

      [(CRLGroupLayout *)self invalidate];
    }
  }
}

- (CGRect)computeBoundsForStandardKnobs
{
  v19.receiver = self;
  v19.super_class = CRLFreehandDrawingLayout;
  [(CRLGroupLayout *)&v19 computeBoundsForStandardKnobs];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  *(&self->_frameForMiniFormatterPositioning.size.height + 2) = v3;
  *(&self->_boundsForStandardKnobsWithoutMathResultsViews.origin.x + 2) = v5;
  *(&self->_boundsForStandardKnobsWithoutMathResultsViews.origin.y + 2) = v7;
  *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.width + 2) = v9;
  [(CRLFreehandDrawingLayout *)self boundsForMathResultViews];
  if (!CGRectIsNull(v20))
  {
    [(CRLFreehandDrawingLayout *)self boundsForMathResultViews];
    v24.origin.x = v11;
    v24.origin.y = v12;
    v24.size.width = v13;
    v24.size.height = v14;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectUnion(v21, v24);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)computeLayoutGeometry
{
  v21.receiver = self;
  v21.super_class = CRLFreehandDrawingLayout;
  computeLayoutGeometry = [(CRLGroupLayout *)&v21 computeLayoutGeometry];
  if ([(CRLCanvasLayout *)self isSelectable])
  {
    [(CRLGroupLayout *)self boundsForStandardKnobs];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (computeLayoutGeometry)
    {
      [computeLayoutGeometry transform];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    *(&self->_transformInfo + 2) = CGRectApplyAffineTransform(v23, &v20);
    layoutController = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController canvas];
    canvasController = [canvas canvasController];

    if (canvasController)
    {
      info = [(CRLCanvasLayout *)self info];
      if ([canvasController currentSelectionPathContainsInfo:info])
      {
        layerHost = [canvasController layerHost];
        miniFormatterPresenter = [layerHost miniFormatterPresenter];

        asiOSPresenter = [miniFormatterPresenter asiOSPresenter];
        [asiOSPresenter forceMiniFormatterVCToReposition];
      }
    }
  }

  return computeLayoutGeometry;
}

- (CRLCanvasLayoutGeometry)pureGeometryWithoutMathResults
{
  v3 = (&self->_frameForMiniFormatterPositioning.size.height + 2);
  v21.origin.x = *(&self->_frameForMiniFormatterPositioning.size.height + 2);
  v21.origin.y = *(&self->_boundsForStandardKnobsWithoutMathResultsViews.origin.x + 2);
  v21.size.width = *(&self->_boundsForStandardKnobsWithoutMathResultsViews.origin.y + 2);
  v21.size.height = *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.width + 2);
  if (CGRectIsNull(v21))
  {
    [(CRLFreehandDrawingLayout *)self computeBoundsForStandardKnobs];
    if (CGRectIsNull(*v3))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132017C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101320190();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101320220();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v4);
      }

      v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout pureGeometryWithoutMathResults]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:337 isFatal:0 description:"_boundsForStandardKnobsWithoutMathResultsViews shouldn't be null after calling computeBoundsForStandardKnobs."];
    }
  }

  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  memset(&v19, 0, sizeof(v19));
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v12 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformMakeTranslation(&t1, v7, v8);
  v16 = v19;
  CGAffineTransformConcat(&v18, &t1, &v16);
  v19 = v18;
  v13 = [CRLCanvasLayoutGeometry alloc];
  v18 = v19;
  v14 = [(CRLCanvasLayoutGeometry *)v13 initWithSize:&v18 transform:v9, v10];

  return v14;
}

- (CRLCanvasLayoutGeometry)pureGeometryInRootWithoutMathResults
{
  pureGeometryWithoutMathResults = [(CRLFreehandDrawingLayout *)self pureGeometryWithoutMathResults];
  v4 = [(CRLCanvasAbstractLayout *)self geometryInRoot:pureGeometryWithoutMathResults];

  return v4;
}

- (CGAffineTransform)pureTransformInRootWithoutMathResults
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  pureGeometryWithoutMathResults = [(CRLFreehandDrawingLayout *)self pureGeometryWithoutMathResults];
  v6 = pureGeometryWithoutMathResults;
  if (pureGeometryWithoutMathResults)
  {
    [pureGeometryWithoutMathResults transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  result = [(CRLCanvasAbstractLayout *)self parent];
  if (result)
  {
    v8 = result;
    do
    {
      geometry = [(CGAffineTransform *)v8 geometry];
      v10 = geometry;
      if (geometry)
      {
        v11 = *&retstr->c;
        v14[0] = *&retstr->a;
        v14[1] = v11;
        v14[2] = *&retstr->tx;
        [geometry transformByConcatenatingTransformTo:v14];
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
      }

      v12 = v16;
      *&retstr->a = v15;
      *&retstr->c = v12;
      *&retstr->tx = v17;

      parent = [(CGAffineTransform *)v8 parent];

      v8 = parent;
    }

    while (parent);
  }

  return result;
}

- (void)p_setupMathRecognitionHandlerOnICC:(id)c
{
  cCopy = c;
  v5 = *(&self->_pkRecognitionController + 2);
  if (!v5 || ([v5 frame], CGRectIsEmpty(v27)))
  {
    [(CRLFreehandDrawingLayout *)self p_getUnRotatedFrameWithoutMathResults];
    [cCopy convertUnscaledToBoundsRect:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [[_TtC8Freeform17CRLMathResultView alloc] initWithFrame:self delegate:v6, v8, v10, v12];
    v15 = *(&self->_pkRecognitionController + 2);
    *(&self->_pkRecognitionController + 2) = v14;

    v16 = *(&self->_pkRecognitionController + 2);
    v17 = +[UIColor clearColor];
    [v16 setBackgroundColor:v17];

    [*(&self->_pkRecognitionController + 2) setClipsToBounds:0];
    *(&self->_boundsForMathResultViews.size.height + 2) = v7;
    *(&self->_frameAtMathViewAttachment.origin.x + 2) = v9;
    *(&self->_frameAtMathViewAttachment.origin.y + 2) = v11;
    *(&self->_frameAtMathViewAttachment.size.width + 2) = v13;
    pureGeometryInRoot = [(CRLCanvasLayout *)self pureGeometryInRoot];
    v19 = pureGeometryInRoot;
    if (pureGeometryInRoot)
    {
      [pureGeometryInRoot transform];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
    }

    *(&self->_mathRecognitionHandler + 2) = sub_1001399C0(&v24);

    *(&self->_rotationAtMathViewAttachment + 2) = v11 / v13;
    v20 = objc_alloc_init(UIViewController);
    v21 = *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2);
    *(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2) = v20;

    [*(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2) setView:*(&self->_pkRecognitionController + 2)];
    layerHost = [cCopy layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    [asiOSCVC addChildViewController:*(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2)];
  }

  [(CRLFreehandDrawingLayout *)self p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:cCopy, v24, v25, v26];
}

- (void)resetMathRecognitionHandlerIfRequestedAndEnabled
{
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  [(CRLFreehandDrawingLayout *)self p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:canvasController];
}

- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:(id)c
{
  mathCalculationController = [c mathCalculationController];
  if (!mathCalculationController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101320248();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132025C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013202F8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:393 isFatal:0 description:"invalid nil value for '%{public}s'", "mathCalculationController"];
  }

  if (([mathCalculationController isSolvingSuspended] & 1) == 0)
  {
    [*(&self->_baseMathView + 2) willBeRemoved];
    v8 = *(&self->_baseMathView + 2);
    *(&self->_baseMathView + 2) = 0;

    if ([mathCalculationController mathHintsMode] != 3)
    {
      v9 = [[_TtC8Freeform30CRLMathRecognitionItemsHandler alloc] initWithLayout:self view:*(&self->_pkRecognitionController + 2) viewController:*(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2)];
      v10 = *(&self->_baseMathView + 2);
      *(&self->_baseMathView + 2) = v9;
    }
  }
}

- (CGRect)p_getUnRotatedFrameWithoutMathResults
{
  if ([(CRLCanvasLayout *)self layoutState])
  {
    dynamicGeometry = [(CRLCanvasLayout *)self dynamicGeometry];
    [dynamicGeometry infoGeometry];
  }

  else
  {
    dynamicGeometry = [(CRLCanvasLayout *)self info];
    [dynamicGeometry geometry];
  }
  v4 = ;
  [v4 boundsBeforeRotation];
  v6 = v5;
  v8 = v7;

  pureGeometryWithoutMathResults = [(CRLFreehandDrawingLayout *)self pureGeometryWithoutMathResults];
  [pureGeometryWithoutMathResults size];
  v11 = v10;
  v13 = v12;

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  [(CRLFreehandDrawingLayout *)self pureTransformInRootWithoutMathResults];
  v15 = *&CGAffineTransformIdentity.c;
  *&v19.a = *&CGAffineTransformIdentity.a;
  v16 = *&v19.a;
  *&v19.c = v15;
  *&v19.tx = *&CGAffineTransformIdentity.tx;
  v14 = *&v19.tx;
  CGAffineTransformMakeTranslation(&t2, *&v22 - v6, *(&v22 + 1) - v8);
  *&t1.a = v16;
  *&t1.c = v15;
  *&t1.tx = v14;
  CGAffineTransformConcat(&v19, &t1, &t2);
  t2 = v19;
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v11;
  v23.size.height = v13;
  return CGRectApplyAffineTransform(v23, &t2);
}

- (void)p_updateBoundsForMathResultSubviewsWillChangeWithDelay:(BOOL)delay
{
  delayCopy = delay;
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v8 = [canvasController repForInfo:freehandInfo];

  [v8 invalidateKnobs];
  [(CRLCanvasLayout *)self invalidateFrame];
  if (delayCopy)
  {
    [(CRLFreehandDrawingLayout *)self performSelector:"p_updateLayoutBoundsForMathResultView" withObject:0 afterDelay:0.0];
  }

  else
  {
    [(CRLFreehandDrawingLayout *)self p_updateLayoutBoundsForMathResultView];
  }
}

- (void)p_updateLayoutBoundsForMathResultView
{
  [(CRLFreehandDrawingLayout *)self p_boundsForMathResultViews];
  [(CRLFreehandDrawingLayout *)self setBoundsForMathResultViews:?];

  [(CRLCanvasLayout *)self invalidateFrame];
}

- (CGRect)p_boundsForMathResultViews
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  subviews = [*(&self->_pkRecognitionController + 2) subviews];
  v8 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        subviews2 = [v12 subviews];
        if ([subviews2 count])
        {
          NSClassFromString(@"PKOverlayDrawingView");
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [(CRLFreehandDrawingLayout *)self p_boundsInNaturalSpaceForMathView:v12];
            v31.origin.x = v15;
            v31.origin.y = v16;
            v31.size.width = v17;
            v31.size.height = v18;
            v28.origin.x = x;
            v28.origin.y = y;
            v28.size.width = width;
            v28.size.height = height;
            v29 = CGRectUnion(v28, v31);
            x = v29.origin.x;
            y = v29.origin.y;
            width = v29.size.width;
            height = v29.size.height;
          }
        }

        else
        {
        }
      }

      v9 = [subviews countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)p_boundsInNaturalSpaceForMathView:(id)view
{
  viewCopy = view;
  layoutController = [(CRLCanvasLayout *)self layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];

  [viewCopy bounds];
  v9 = v8;
  v11 = v10;
  [viewCopy bounds];
  v16 = sub_1001204D4(v12, v13, v14, v15);
  v18 = v17;
  [*(&self->_pkRecognitionController + 2) convertPoint:viewCopy fromView:{v9, v11}];
  v20 = v19;
  v22 = v21;
  [*(&self->_pkRecognitionController + 2) convertPoint:viewCopy fromView:{v16, v18}];
  v24 = v23;
  v26 = v25;

  canvasView = [canvasController canvasView];
  [canvasView convertPoint:*(&self->_pkRecognitionController + 2) fromView:{v20, v22}];
  v29 = v28;
  v31 = v30;

  canvasView2 = [canvasController canvasView];
  [canvasView2 convertPoint:*(&self->_pkRecognitionController + 2) fromView:{v24, v26}];
  v34 = v33;
  v36 = v35;

  [canvasController convertBoundsToUnscaledPoint:{v29, v31}];
  v38 = v37;
  v40 = v39;
  [canvasController convertBoundsToUnscaledPoint:{v34, v36}];
  v42 = v41;
  v44 = v43;
  [(CRLCanvasLayout *)self convertNaturalPointFromUnscaledCanvas:v38, v40];
  v46 = v45;
  v48 = v47;
  [(CRLCanvasLayout *)self convertNaturalPointFromUnscaledCanvas:v42, v44];
  v50 = sub_10011EC88(v46, v48, v49);
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = v50;
  v58 = v52;
  v59 = v54;
  v60 = v56;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (NSSet)subscribedFreehandDrawingIDs
{
  freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v3 = [freehandInfo id];
  v4 = [NSSet setWithObject:v3];

  return v4;
}

- (void)pkStrokesForFreehandItemsDidChange:(id)change
{
  changeCopy = change;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101320320();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101320334();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013203C4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout pkStrokesForFreehandItemsDidChange:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:488 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v8 = objc_opt_class();
  info = [(CRLCanvasLayout *)self info];
  v10 = sub_100014370(v8, info);

  parentItem = [v10 parentItem];

  if (parentItem)
  {
    v12 = [v10 id];
    v13 = [changeCopy objectForKeyedSubscript:v12];

    if (v13)
    {
      layoutController = [(CRLCanvasLayout *)self layoutController];
      canvas = [layoutController canvas];
      canvasController = [canvas canvasController];

      if ([(CRLFreehandDrawingLayout *)self p_shouldSetupMathPaperRecognitionOnICC:canvasController forStrokes:v13])
      {
        if (*(&self->_baseMathViewController + 2))
        {
          goto LABEL_24;
        }

        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013203EC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101320414();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013204B0();
        }

        v17 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v17);
        }

        v18 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout pkStrokesForFreehandItemsDidChange:]"];
        v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
        [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:503 isFatal:0 description:"invalid nil value for '%{public}s'", "_pkRecognitionController"];

        if (*(&self->_baseMathViewController + 2))
        {
LABEL_24:
          v20 = +[NSDate now];
          [v20 timeIntervalSince1970];
          [*(&self->_baseMathView + 2) setLastStrokeTimestamp:?];

          drawing = [*(&self->_baseMathViewController + 2) drawing];
          v22 = [drawing copy];

          v23 = +[NSMutableArray array];
          [v22 _setAllStrokes:v23];

          [v22 invalidateVisibleStrokes];
          v24 = [v22 undoableAddNewStrokes:v13];
          v25 = *(&self->_baseMathViewController + 2);
          strokes = [v22 strokes];
          [v25 setDrawing:v22 withVisibleOnscreenStrokes:strokes];
        }
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013204D8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101320500();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132059C();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v27);
      }

      v13 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout pkStrokesForFreehandItemsDidChange:]"];
      canvasController = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:canvasController lineNumber:493 isFatal:0 description:"invalid nil value for '%{public}s'", "strokes"];
    }
  }
}

- (void)updateDrawingShapeItemUUIDToStrokeDataUUIDDict:(id)dict
{
  dictCopy = dict;
  v5 = dictCopy;
  if (dictCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    forwardKeys = [dictCopy forwardKeys];
    v7 = [forwardKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(forwardKeys);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v5 objectForKeyedSubscript:v11];
          [*(&self->_previousAspectRatio + 2) setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [forwardKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)computeWrapPath
{
  v3 = objc_alloc_init(NSMutableArray);
  freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  children = [(CRLCanvasAbstractLayout *)self children];
  v6 = [children countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(children);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        if (v12)
        {
          info = [v10 info];
          v14 = [freehandInfo isNonGroupedChild:info];

          if ((v14 & 1) == 0)
          {
            [v3 addObject:v12];
          }
        }
      }

      v7 = [children countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    layoutController = [(CRLCanvasLayout *)selfCopy layoutController];
    canvas = [layoutController canvas];

    if (!canvas)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013205C4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013205EC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101320688();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout computeWrapPath]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:553 isFatal:0 description:"invalid nil value for '%{public}s'", "canvas"];
    }

    [canvas viewScale];
    v21 = [CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:v3 scaledOutset:0.0 viewScale:v20];
    v22 = v21;
    if (v21 && ([v21 isEmpty] & 1) == 0)
    {
      [(CRLCanvasAbstractLayout *)selfCopy transformInRoot];
      CGAffineTransformInvert(&v27, &v26);
      [v22 transformUsingAffineTransform:&v27];
    }

    else
    {
      [(CRLGroupLayout *)selfCopy boundsForStandardKnobs];
      v23 = [CRLBezierPath bezierPathWithRect:?];

      v22 = v23;
    }
  }

  else
  {
    [(CRLGroupLayout *)selfCopy boundsForStandardKnobs];
    v22 = [CRLBezierPath bezierPathWithRect:?];
  }

  return v22;
}

- (id)pathForClippingConnectionLines
{
  freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
  shouldBeTreatedAsBoxForConnectionLinesForPerf = [freehandInfo shouldBeTreatedAsBoxForConnectionLinesForPerf];

  if (shouldBeTreatedAsBoxForConnectionLinesForPerf)
  {
    [(CRLGroupLayout *)self boundsForStandardKnobs];
    pathForClippingConnectionLines = [CRLBezierPath bezierPathWithRect:?];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLFreehandDrawingLayout;
    pathForClippingConnectionLines = [(CRLGroupLayout *)&v7 pathForClippingConnectionLines];
  }

  return pathForClippingConnectionLines;
}

- (CGRect)frameForMiniFormatterPositioning
{
  v16.receiver = self;
  v16.super_class = CRLFreehandDrawingLayout;
  [(CRLGroupLayout *)&v16 frameForMiniFormatterPositioning];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = (&self->_transformInfo + 2);
  v17.origin.x = v11->origin.x;
  v17.origin.y = v11->origin.y;
  v17.size.width = v11->size.width;
  v17.size.height = v11->size.height;
  if (!CGRectIsNull(v17))
  {
    v19.origin.x = CGRectZero.origin.x;
    v19.origin.y = CGRectZero.origin.y;
    v19.size.width = CGRectZero.size.width;
    v19.size.height = CGRectZero.size.height;
    if (!CGRectEqualToRect(*v11, v19))
    {
      x = v11->origin.x;
      y = v11->origin.y;
      width = v11->size.width;
      height = v11->size.height;
    }
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)maxFilledShapeIndex
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
  childInfos = [freehandInfo childInfos];

  v4 = [childInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(childInfos);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        v13 = v12;
        if (!v12 || ([v12 fill], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
        {

          v6 = v9;
          goto LABEL_13;
        }

        ++v9;

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [childInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (void)transformLayoutDidBeginDynamicOperation
{
  if (*(&self->super._hasInvalidated + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013206B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013206C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320754();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout transformLayoutDidBeginDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:618 isFatal:0 description:"Should only begin a transform dynamic operation when not in one already."];
  }

  *(&self->super._hasInvalidated + 2) = 1;
}

- (void)transformLayoutDidEndDynamicOperation
{
  if (!*(&self->super._hasInvalidated + 2))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132077C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101320790();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320820();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout transformLayoutDidEndDynamicOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:623 isFatal:0 description:"Should only end a transform dynamic operation when in one already."];
  }

  *(&self->super._hasInvalidated + 2) = 0;
}

- (BOOL)isInteractable
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    canvasController = selfCopy;
    while (1)
    {
      v5 = objc_opt_class();
      info = [canvasController info];
      v7 = sub_100013F00(v5, info);

      if ([v7 locked])
      {
        break;
      }

      v8 = objc_opt_class();
      parent = [canvasController parent];
      v10 = sub_100014370(v8, parent);

      canvasController = v10;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_5:
    layoutController = [(CRLCanvasLayout *)v3 layoutController];
    canvas = [layoutController canvas];
    canvasController = [canvas canvasController];

    if (!canvasController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101320848();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132085C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013208F8();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLFreehandDrawingLayout isInteractable]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:655 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    canvasEditor = [canvasController canvasEditor];
    v17 = [canvasEditor isLayoutSelectable:v3];
  }

  return v17;
}

- (void)showSubselectionAffordanceForSelectedInfos:(id)infos
{
  infosCopy = infos;
  v4 = [infosCopy count];
  v5 = *(&self->_isTransformLayoutInDynamicOperation + 2);
  if (v4)
  {
    if (!v5)
    {
      v6 = [CRLFreehandDrawingTransformInfo alloc];
      freehandInfo = [(CRLFreehandDrawingLayout *)self freehandInfo];
      v8 = [(CRLFreehandDrawingTransformInfo *)v6 initWithParentInfo:freehandInfo];
      v9 = *(&self->_isTransformLayoutInDynamicOperation + 2);
      *(&self->_isTransformLayoutInDynamicOperation + 2) = v8;

      [(CRLCanvasLayout *)self invalidateChildren];
    }

    v10 = objc_opt_class();
    layoutController = [(CRLCanvasLayout *)self layoutController];
    v12 = [layoutController layoutForInfo:*(&self->_isTransformLayoutInDynamicOperation + 2)];
    v13 = sub_100013F00(v10, v12);

    v14 = *(&self->_isTransformLayoutInDynamicOperation + 2);
    layoutController2 = [(CRLCanvasLayout *)self layoutController];
    [v14 setRepresentedShapeInfos:infosCopy currentlyLaidOutOnLayoutController:layoutController2];

    [v13 invalidateFrame];
    v16 = objc_opt_class();
    layoutController3 = [(CRLCanvasLayout *)self layoutController];
    canvas = [layoutController3 canvas];
    canvasController = [canvas canvasController];
    v20 = [canvasController repForInfo:*(&self->_isTransformLayoutInDynamicOperation + 2)];
    v21 = sub_100013F00(v16, v20);

    if (v21)
    {
      [v21 invalidateSubselectionAffordance];
      [v21 invalidateKnobs];
    }
  }

  else if (v5)
  {
    *(&self->_isTransformLayoutInDynamicOperation + 2) = 0;

    [(CRLCanvasLayout *)self invalidateChildren];
  }
}

+ (id)freehandDrawingLayoutsToInteractWithFromLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v29 = +[NSMutableArray array];
  if ([layoutsCopy count])
  {
    crl_anyObject = [layoutsCopy crl_anyObject];
    layoutController = [crl_anyObject layoutController];
    canvas = [layoutController canvas];
    canvasController = [canvas canvasController];

    if (!canvasController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101320920();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101320934();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013209D0();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingLayout freehandDrawingLayoutsToInteractWithFromLayouts:]");
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:698 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = layoutsCopy;
    v11 = layoutsCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = objc_opt_class();
          v18 = sub_100014370(v17, v16);
          v19 = objc_opt_class();
          info = [v18 info];
          v21 = sub_100013F00(v19, info);

          if (!v18 || ([v21 locked] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              canvasEditor = [canvasController canvasEditor];
              v23 = [canvasEditor isLayoutSelectable:v16];

              if (v23)
              {
                [v29 addObject:v16];
              }
            }

            else if (v18)
            {
              children = [v18 children];
              v25 = [self freehandDrawingLayoutsToInteractWithFromLayouts:children];
              [v29 addObjectsFromArray:v25];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    layoutsCopy = v27;
  }

  return v29;
}

+ (BOOL)p_anyFreehandDrawingsVisibleInInteractiveCanvasController:(id)controller findSelected:(BOOL)selected
{
  selectedCopy = selected;
  controllerCopy = controller;
  layoutController = [controllerCopy layoutController];
  [controllerCopy visibleUnscaledRect];
  [layoutController layoutsInRect:1 deep:?];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([self p_layoutIsFreehandDrawing:*(*(&v15 + 1) + 8 * i) andSelected:selectedCopy icc:{controllerCopy, v15}])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (BOOL)p_layoutIsFreehandDrawing:(id)drawing andSelected:(BOOL)selected icc:(id)icc
{
  selectedCopy = selected;
  drawingCopy = drawing;
  iccCopy = icc;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && selectedCopy)
  {
    info = [drawingCopy info];
    isKindOfClass = [iccCopy currentSelectionPathContainsInfo:info];
  }

  return isKindOfClass & 1;
}

- (CGRect)boundsForMathResultViews
{
  v2 = *(&self->_drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap + 2);
  v3 = *(&self->_boundsForMathResultViews.origin.x + 2);
  v4 = *(&self->_boundsForMathResultViews.origin.y + 2);
  v5 = *(&self->_boundsForMathResultViews.size.width + 2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBoundsForMathResultViews:(CGRect)views
{
  *(&self->_drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap + 2) = *&views.origin.x;
  *(&self->_boundsForMathResultViews.origin.x + 2) = views.origin.y;
  *(&self->_boundsForMathResultViews.origin.y + 2) = views.size.width;
  *(&self->_boundsForMathResultViews.size.width + 2) = views.size.height;
}

- (CGRect)frameAtMathViewAttachment
{
  v2 = *(&self->_boundsForMathResultViews.size.height + 2);
  v3 = *(&self->_frameAtMathViewAttachment.origin.x + 2);
  v4 = *(&self->_frameAtMathViewAttachment.origin.y + 2);
  v5 = *(&self->_frameAtMathViewAttachment.size.width + 2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrameAtMathViewAttachment:(CGRect)attachment
{
  *(&self->_boundsForMathResultViews.size.height + 2) = attachment.origin.x;
  *(&self->_frameAtMathViewAttachment.origin.x + 2) = attachment.origin.y;
  *(&self->_frameAtMathViewAttachment.origin.y + 2) = attachment.size.width;
  *(&self->_frameAtMathViewAttachment.size.width + 2) = attachment.size.height;
}

- (CGRect)cachedFrameForMiniFormatterPositioning
{
  v2 = *(&self->_frameAtMathViewAttachment.size.height + 2);
  v3 = *(&self->_cachedFrameForMiniFormatterPositioning.origin.x + 2);
  v4 = *(&self->_cachedFrameForMiniFormatterPositioning.origin.y + 2);
  v5 = *(&self->_cachedFrameForMiniFormatterPositioning.size.width + 2);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setCachedFrameForMiniFormatterPositioning:(CGRect)positioning
{
  *(&self->_frameAtMathViewAttachment.size.height + 2) = positioning.origin.x;
  *(&self->_cachedFrameForMiniFormatterPositioning.origin.x + 2) = positioning.origin.y;
  *(&self->_cachedFrameForMiniFormatterPositioning.origin.y + 2) = positioning.size.width;
  *(&self->_cachedFrameForMiniFormatterPositioning.size.width + 2) = positioning.size.height;
}

@end