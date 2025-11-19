@interface CRLFreehandDrawingLayout
+ (BOOL)p_anyFreehandDrawingsVisibleInInteractiveCanvasController:(id)a3 findSelected:(BOOL)a4;
+ (BOOL)p_layoutIsFreehandDrawing:(id)a3 andSelected:(BOOL)a4 icc:(id)a5;
+ (id)freehandDrawingLayoutsToInteractWithFromLayouts:(id)a3;
- (BOOL)isInteractable;
- (BOOL)p_shouldSetupMathPaperRecognitionOnICC:(id)a3 forStrokes:(id)a4;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)pureTransformInRootWithoutMathResults;
- (CGRect)boundsForMathResultViews;
- (CGRect)boundsInRoot;
- (CGRect)cachedFrameForMiniFormatterPositioning;
- (CGRect)computeBoundsForStandardKnobs;
- (CGRect)frameAtMathViewAttachment;
- (CGRect)frameForMiniFormatterPositioning;
- (CGRect)p_boundsForMathResultViews;
- (CGRect)p_boundsInNaturalSpaceForMathView:(id)a3;
- (CGRect)p_getUnRotatedFrameWithoutMathResults;
- (CGSize)minimumSize;
- (CRLCanvasLayoutGeometry)pureGeometryInRootWithoutMathResults;
- (CRLCanvasLayoutGeometry)pureGeometryWithoutMathResults;
- (CRLFreehandDrawingLayout)initWithInfo:(id)a3;
- (NSSet)subscribedFreehandDrawingIDs;
- (_TtC8Freeform22CRLFreehandDrawingItem)freehandInfo;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)childInfosForChildLayouts;
- (id)computeLayoutGeometry;
- (id)computeWrapPath;
- (id)pathForClippingConnectionLines;
- (unint64_t)maxFilledShapeIndex;
- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:(id)a3;
- (void)p_setUpDrawingShapeItemUUIDToStrokeDataUUIDBidirectionalMapFromDrawingProvider:(id)a3;
- (void)p_setUpRecognitionIfNeededOnICC:(id)a3;
- (void)p_setupMathRecognitionHandlerOnICC:(id)a3;
- (void)p_tearDownRecognitionIfNeededOnICC:(id)a3;
- (void)p_updateBoundsForMathResultSubviewsWillChangeWithDelay:(BOOL)a3;
- (void)p_updateLayoutBoundsForMathResultView;
- (void)parentDidChange;
- (void)pkStrokesForFreehandItemsDidChange:(id)a3;
- (void)processChangedProperty:(unint64_t)a3;
- (void)resetMathRecognitionHandlerIfRequestedAndEnabled;
- (void)setBoundsForMathResultViews:(CGRect)a3;
- (void)setCachedFrameForMiniFormatterPositioning:(CGRect)a3;
- (void)setFrameAtMathViewAttachment:(CGRect)a3;
- (void)showSubselectionAffordanceForSelectedInfos:(id)a3;
- (void)transformLayoutDidBeginDynamicOperation;
- (void)transformLayoutDidEndDynamicOperation;
- (void)updateDrawingShapeItemUUIDToStrokeDataUUIDDict:(id)a3;
- (void)willBeAddedToLayoutController:(id)a3;
- (void)willBeRemovedFromLayoutController:(id)a3;
@end

@implementation CRLFreehandDrawingLayout

- (CRLFreehandDrawingLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingLayout;
  result = [(CRLCanvasLayout *)&v6 initWithInfo:a3];
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
  v4 = [(CRLCanvasLayout *)self info];
  v5 = sub_100014370(v3, v4);

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
  v4 = [(CRLGroupLayout *)&v7 childInfosForChildLayouts];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)additionalDependenciesForChildLayout:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRLFreehandDrawingLayout;
  v5 = [(CRLGroupLayout *)&v14 additionalDependenciesForChildLayout:v4];
  v6 = [(CRLCanvasLayout *)self layoutController];
  v7 = [v6 layoutForInfo:*(&self->_isTransformLayoutInDynamicOperation + 2)];

  if (v7)
  {
    v8 = v7 == v4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [(CRLFreehandDrawingLayout *)self freehandInfo];
    v10 = [v4 info];
    v11 = [v9 isNonGroupedChild:v10];

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
  v3 = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v4 = [v3 childInfos];
  v5 = [v4 count];

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
  v2 = [(CRLCanvasLayout *)self pureGeometryInRoot];
  [v2 frame];
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

- (void)willBeAddedToLayoutController:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRLFreehandDrawingLayout;
  v4 = a3;
  [(CRLCanvasLayout *)&v7 willBeAddedToLayoutController:v4];
  v5 = [v4 canvas];

  if ([v5 isCanvasInteractive])
  {
    v6 = [v5 canvasController];
    [(CRLFreehandDrawingLayout *)self p_setUpRecognitionIfNeededOnICC:v6];
  }
}

- (void)willBeRemovedFromLayoutController:(id)a3
{
  v4 = a3;
  v5 = [v4 canvas];
  if ([v5 isCanvasInteractive])
  {
    v6 = [v5 canvasController];
    [(CRLFreehandDrawingLayout *)self p_tearDownRecognitionIfNeededOnICC:v6];

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
  [(CRLCanvasLayout *)&v10 willBeRemovedFromLayoutController:v4];
}

- (BOOL)p_shouldSetupMathPaperRecognitionOnICC:(id)a3 forStrokes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled];
  v8 = [v5 mathCalculationController];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    LOBYTE(v11) = 0;
  }

  else if ([v8 mathHintsMode])
  {
    LOBYTE(v11) = [v9 mathHintsMode] != 3;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = v6;
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

- (void)p_setUpRecognitionIfNeededOnICC:(id)a3
{
  v4 = a3;
  if (!*(&self->_baseMathViewController + 2))
  {
    v5 = [(CRLFreehandDrawingLayout *)self freehandInfo];
    if ([v5 prohibitsClustering])
    {
LABEL_17:

      goto LABEL_18;
    }

    v6 = [v4 pkDrawingProvider];
    if (v6)
    {
      v7 = [v5 id];
      v8 = [v6 pkStrokesForFreehandDrawingItemUUID:v7];

      if (![(CRLFreehandDrawingLayout *)self p_shouldSetupMathPaperRecognitionOnICC:v4 forStrokes:v8])
      {
LABEL_16:

        goto LABEL_17;
      }

      v9 = objc_alloc_init(PKDrawing);
      v10 = [v5 id];
      [v9 _setUUID:v10];

      v11 = [v9 undoableAddNewStrokes:v8];
      v12 = [PKRecognitionController alloc];
      v13 = [v9 strokes];
      v14 = [v12 initWithDrawing:v9 visibleOnscreenStrokes:v13 useSessionCache:1];
      v15 = *(&self->_baseMathViewController + 2);
      *(&self->_baseMathViewController + 2) = v14;

      [(CRLFreehandDrawingLayout *)self p_setUpDrawingShapeItemUUIDToStrokeDataUUIDBidirectionalMapFromDrawingProvider:v6];
      [v6 addPKDrawingsObserver:self];
      [(CRLFreehandDrawingLayout *)self p_setupMathRecognitionHandlerOnICC:v4];
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

- (void)p_setUpDrawingShapeItemUUIDToStrokeDataUUIDBidirectionalMapFromDrawingProvider:(id)a3
{
  v4 = a3;
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
  v10 = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v11 = [v10 childItems];

  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 id];
        v18 = [v4 strokeDataUUIDForDrawingShapeItemUUID:v17];

        if (v18)
        {
          v19 = *(&self->_previousAspectRatio + 2);
          v20 = [v16 id];
          [v19 setObject:v18 forKeyedSubscript:v20];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)p_tearDownRecognitionIfNeededOnICC:(id)a3
{
  if (*(&self->_baseMathViewController + 2))
  {
    v4 = [a3 pkDrawingProvider];
    [v4 removePKDrawingsObserver:self];

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
  v3 = [(CRLCanvasLayout *)self layoutController];
  v4 = [v3 canvas];

  if ([v4 isCanvasInteractive])
  {
    [(CRLFreehandDrawingLayout *)self resetMathRecognitionHandlerIfRequestedAndEnabled];
  }
}

- (void)processChangedProperty:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = CRLFreehandDrawingLayout;
  [(CRLGroupLayout *)&v10 processChangedProperty:?];
  if (a3 == 28)
  {
    v5 = [(CRLCanvasLayout *)self layoutController];
    v6 = [v5 canvas];

    if ([v6 isCanvasInteractive])
    {
      v7 = [v6 canvasController];
      v8 = [(CRLFreehandDrawingLayout *)self freehandInfo];
      v9 = [v8 prohibitsClustering];

      if (v9)
      {
        [(CRLFreehandDrawingLayout *)self p_tearDownRecognitionIfNeededOnICC:v7];
      }

      else
      {
        [(CRLFreehandDrawingLayout *)self p_setUpRecognitionIfNeededOnICC:v7];
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
  v3 = [(CRLGroupLayout *)&v21 computeLayoutGeometry];
  if ([(CRLCanvasLayout *)self isSelectable])
  {
    [(CRLGroupLayout *)self boundsForStandardKnobs];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (v3)
    {
      [v3 transform];
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
    v12 = [(CRLCanvasLayout *)self layoutController];
    v13 = [v12 canvas];
    v14 = [v13 canvasController];

    if (v14)
    {
      v15 = [(CRLCanvasLayout *)self info];
      if ([v14 currentSelectionPathContainsInfo:v15])
      {
        v16 = [v14 layerHost];
        v17 = [v16 miniFormatterPresenter];

        v18 = [v17 asiOSPresenter];
        [v18 forceMiniFormatterVCToReposition];
      }
    }
  }

  return v3;
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
  v11 = [(CRLCanvasAbstractLayout *)self geometry];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
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
  v3 = [(CRLFreehandDrawingLayout *)self pureGeometryWithoutMathResults];
  v4 = [(CRLCanvasAbstractLayout *)self geometryInRoot:v3];

  return v4;
}

- (CGAffineTransform)pureTransformInRootWithoutMathResults
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(CRLFreehandDrawingLayout *)self pureGeometryWithoutMathResults];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
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
      v9 = [(CGAffineTransform *)v8 geometry];
      v10 = v9;
      if (v9)
      {
        v11 = *&retstr->c;
        v14[0] = *&retstr->a;
        v14[1] = v11;
        v14[2] = *&retstr->tx;
        [v9 transformByConcatenatingTransformTo:v14];
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

      v13 = [(CGAffineTransform *)v8 parent];

      v8 = v13;
    }

    while (v13);
  }

  return result;
}

- (void)p_setupMathRecognitionHandlerOnICC:(id)a3
{
  v4 = a3;
  v5 = *(&self->_pkRecognitionController + 2);
  if (!v5 || ([v5 frame], CGRectIsEmpty(v27)))
  {
    [(CRLFreehandDrawingLayout *)self p_getUnRotatedFrameWithoutMathResults];
    [v4 convertUnscaledToBoundsRect:?];
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
    v18 = [(CRLCanvasLayout *)self pureGeometryInRoot];
    v19 = v18;
    if (v18)
    {
      [v18 transform];
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
    v22 = [v4 layerHost];
    v23 = [v22 asiOSCVC];

    [v23 addChildViewController:*(&self->_boundsForStandardKnobsWithoutMathResultsViews.size.height + 2)];
  }

  [(CRLFreehandDrawingLayout *)self p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:v4, v24, v25, v26];
}

- (void)resetMathRecognitionHandlerIfRequestedAndEnabled
{
  v3 = [(CRLCanvasLayout *)self layoutController];
  v4 = [v3 canvas];
  v5 = [v4 canvasController];

  [(CRLFreehandDrawingLayout *)self p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:v5];
}

- (void)p_resetMathRecognitionHandlerIfRequestedAndEnabledOnICC:(id)a3
{
  v4 = [a3 mathCalculationController];
  if (!v4)
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

  if (([v4 isSolvingSuspended] & 1) == 0)
  {
    [*(&self->_baseMathView + 2) willBeRemoved];
    v8 = *(&self->_baseMathView + 2);
    *(&self->_baseMathView + 2) = 0;

    if ([v4 mathHintsMode] != 3)
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
    v3 = [(CRLCanvasLayout *)self dynamicGeometry];
    [v3 infoGeometry];
  }

  else
  {
    v3 = [(CRLCanvasLayout *)self info];
    [v3 geometry];
  }
  v4 = ;
  [v4 boundsBeforeRotation];
  v6 = v5;
  v8 = v7;

  v9 = [(CRLFreehandDrawingLayout *)self pureGeometryWithoutMathResults];
  [v9 size];
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

- (void)p_updateBoundsForMathResultSubviewsWillChangeWithDelay:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLCanvasLayout *)self layoutController];
  v6 = [v5 canvas];
  v9 = [v6 canvasController];

  v7 = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v8 = [v9 repForInfo:v7];

  [v8 invalidateKnobs];
  [(CRLCanvasLayout *)self invalidateFrame];
  if (v3)
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
  v7 = [*(&self->_pkRecognitionController + 2) subviews];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 subviews];
        if ([v13 count])
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

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (CGRect)p_boundsInNaturalSpaceForMathView:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasLayout *)self layoutController];
  v6 = [v5 canvas];
  v7 = [v6 canvasController];

  [v4 bounds];
  v9 = v8;
  v11 = v10;
  [v4 bounds];
  v16 = sub_1001204D4(v12, v13, v14, v15);
  v18 = v17;
  [*(&self->_pkRecognitionController + 2) convertPoint:v4 fromView:{v9, v11}];
  v20 = v19;
  v22 = v21;
  [*(&self->_pkRecognitionController + 2) convertPoint:v4 fromView:{v16, v18}];
  v24 = v23;
  v26 = v25;

  v27 = [v7 canvasView];
  [v27 convertPoint:*(&self->_pkRecognitionController + 2) fromView:{v20, v22}];
  v29 = v28;
  v31 = v30;

  v32 = [v7 canvasView];
  [v32 convertPoint:*(&self->_pkRecognitionController + 2) fromView:{v24, v26}];
  v34 = v33;
  v36 = v35;

  [v7 convertBoundsToUnscaledPoint:{v29, v31}];
  v38 = v37;
  v40 = v39;
  [v7 convertBoundsToUnscaledPoint:{v34, v36}];
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
  v2 = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v3 = [v2 id];
  v4 = [NSSet setWithObject:v3];

  return v4;
}

- (void)pkStrokesForFreehandItemsDidChange:(id)a3
{
  v4 = a3;
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
  v9 = [(CRLCanvasLayout *)self info];
  v10 = sub_100014370(v8, v9);

  v11 = [v10 parentItem];

  if (v11)
  {
    v12 = [v10 id];
    v13 = [v4 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = [(CRLCanvasLayout *)self layoutController];
      v15 = [v14 canvas];
      v16 = [v15 canvasController];

      if ([(CRLFreehandDrawingLayout *)self p_shouldSetupMathPaperRecognitionOnICC:v16 forStrokes:v13])
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

          v21 = [*(&self->_baseMathViewController + 2) drawing];
          v22 = [v21 copy];

          v23 = +[NSMutableArray array];
          [v22 _setAllStrokes:v23];

          [v22 invalidateVisibleStrokes];
          v24 = [v22 undoableAddNewStrokes:v13];
          v25 = *(&self->_baseMathViewController + 2);
          v26 = [v22 strokes];
          [v25 setDrawing:v22 withVisibleOnscreenStrokes:v26];
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
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingLayout.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v16 lineNumber:493 isFatal:0 description:"invalid nil value for '%{public}s'", "strokes"];
    }
  }
}

- (void)updateDrawingShapeItemUUIDToStrokeDataUUIDDict:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 forwardKeys];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v5 objectForKeyedSubscript:v11];
          [*(&self->_previousAspectRatio + 2) setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)computeWrapPath
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self;
  v5 = [(CRLCanvasAbstractLayout *)self children];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        if (v12)
        {
          v13 = [v10 info];
          v14 = [v4 isNonGroupedChild:v13];

          if ((v14 & 1) == 0)
          {
            [v3 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v15 = [(CRLCanvasLayout *)v25 layoutController];
    v16 = [v15 canvas];

    if (!v16)
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

    [v16 viewScale];
    v21 = [CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:v3 scaledOutset:0.0 viewScale:v20];
    v22 = v21;
    if (v21 && ([v21 isEmpty] & 1) == 0)
    {
      [(CRLCanvasAbstractLayout *)v25 transformInRoot];
      CGAffineTransformInvert(&v27, &v26);
      [v22 transformUsingAffineTransform:&v27];
    }

    else
    {
      [(CRLGroupLayout *)v25 boundsForStandardKnobs];
      v23 = [CRLBezierPath bezierPathWithRect:?];

      v22 = v23;
    }
  }

  else
  {
    [(CRLGroupLayout *)v25 boundsForStandardKnobs];
    v22 = [CRLBezierPath bezierPathWithRect:?];
  }

  return v22;
}

- (id)pathForClippingConnectionLines
{
  v3 = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v4 = [v3 shouldBeTreatedAsBoxForConnectionLinesForPerf];

  if (v4)
  {
    [(CRLGroupLayout *)self boundsForStandardKnobs];
    v5 = [CRLBezierPath bezierPathWithRect:?];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLFreehandDrawingLayout;
    v5 = [(CRLGroupLayout *)&v7 pathForClippingConnectionLines];
  }

  return v5;
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
  v2 = [(CRLFreehandDrawingLayout *)self freehandInfo];
  v3 = [v2 childInfos];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (1)
    {
      v5 = objc_opt_class();
      v6 = [v4 info];
      v7 = sub_100013F00(v5, v6);

      if ([v7 locked])
      {
        break;
      }

      v8 = objc_opt_class();
      v9 = [v4 parent];
      v10 = sub_100014370(v8, v9);

      v4 = v10;
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
    v11 = [(CRLCanvasLayout *)v3 layoutController];
    v12 = [v11 canvas];
    v4 = [v12 canvasController];

    if (!v4)
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

    v16 = [v4 canvasEditor];
    v17 = [v16 isLayoutSelectable:v3];
  }

  return v17;
}

- (void)showSubselectionAffordanceForSelectedInfos:(id)a3
{
  v22 = a3;
  v4 = [v22 count];
  v5 = *(&self->_isTransformLayoutInDynamicOperation + 2);
  if (v4)
  {
    if (!v5)
    {
      v6 = [CRLFreehandDrawingTransformInfo alloc];
      v7 = [(CRLFreehandDrawingLayout *)self freehandInfo];
      v8 = [(CRLFreehandDrawingTransformInfo *)v6 initWithParentInfo:v7];
      v9 = *(&self->_isTransformLayoutInDynamicOperation + 2);
      *(&self->_isTransformLayoutInDynamicOperation + 2) = v8;

      [(CRLCanvasLayout *)self invalidateChildren];
    }

    v10 = objc_opt_class();
    v11 = [(CRLCanvasLayout *)self layoutController];
    v12 = [v11 layoutForInfo:*(&self->_isTransformLayoutInDynamicOperation + 2)];
    v13 = sub_100013F00(v10, v12);

    v14 = *(&self->_isTransformLayoutInDynamicOperation + 2);
    v15 = [(CRLCanvasLayout *)self layoutController];
    [v14 setRepresentedShapeInfos:v22 currentlyLaidOutOnLayoutController:v15];

    [v13 invalidateFrame];
    v16 = objc_opt_class();
    v17 = [(CRLCanvasLayout *)self layoutController];
    v18 = [v17 canvas];
    v19 = [v18 canvasController];
    v20 = [v19 repForInfo:*(&self->_isTransformLayoutInDynamicOperation + 2)];
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

+ (id)freehandDrawingLayoutsToInteractWithFromLayouts:(id)a3
{
  v3 = a3;
  v29 = +[NSMutableArray array];
  if ([v3 count])
  {
    v4 = [v3 crl_anyObject];
    v5 = [v4 layoutController];
    v6 = [v5 canvas];
    v7 = [v6 canvasController];

    if (!v7)
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
    v27 = v3;
    v11 = v3;
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
          v20 = [v18 info];
          v21 = sub_100013F00(v19, v20);

          if (!v18 || ([v21 locked] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [v7 canvasEditor];
              v23 = [v22 isLayoutSelectable:v16];

              if (v23)
              {
                [v29 addObject:v16];
              }
            }

            else if (v18)
            {
              v24 = [v18 children];
              v25 = [a1 freehandDrawingLayoutsToInteractWithFromLayouts:v24];
              [v29 addObjectsFromArray:v25];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v3 = v27;
  }

  return v29;
}

+ (BOOL)p_anyFreehandDrawingsVisibleInInteractiveCanvasController:(id)a3 findSelected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 layoutController];
  [v6 visibleUnscaledRect];
  [v7 layoutsInRect:1 deep:?];
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

        if ([a1 p_layoutIsFreehandDrawing:*(*(&v15 + 1) + 8 * i) andSelected:v4 icc:{v6, v15}])
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

+ (BOOL)p_layoutIsFreehandDrawing:(id)a3 andSelected:(BOOL)a4 icc:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && v6)
  {
    v10 = [v7 info];
    isKindOfClass = [v8 currentSelectionPathContainsInfo:v10];
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

- (void)setBoundsForMathResultViews:(CGRect)a3
{
  *(&self->_drawingShapeItemUUIDToStrokeDataUUIDBidirectionalMap + 2) = *&a3.origin.x;
  *(&self->_boundsForMathResultViews.origin.x + 2) = a3.origin.y;
  *(&self->_boundsForMathResultViews.origin.y + 2) = a3.size.width;
  *(&self->_boundsForMathResultViews.size.width + 2) = a3.size.height;
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

- (void)setFrameAtMathViewAttachment:(CGRect)a3
{
  *(&self->_boundsForMathResultViews.size.height + 2) = a3.origin.x;
  *(&self->_frameAtMathViewAttachment.origin.x + 2) = a3.origin.y;
  *(&self->_frameAtMathViewAttachment.origin.y + 2) = a3.size.width;
  *(&self->_frameAtMathViewAttachment.size.width + 2) = a3.size.height;
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

- (void)setCachedFrameForMiniFormatterPositioning:(CGRect)a3
{
  *(&self->_frameAtMathViewAttachment.size.height + 2) = a3.origin.x;
  *(&self->_cachedFrameForMiniFormatterPositioning.origin.x + 2) = a3.origin.y;
  *(&self->_cachedFrameForMiniFormatterPositioning.origin.y + 2) = a3.size.width;
  *(&self->_cachedFrameForMiniFormatterPositioning.size.width + 2) = a3.size.height;
}

@end