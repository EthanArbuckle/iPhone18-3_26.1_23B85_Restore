@interface ASVWorldSingleFingerGesture
- (ASVWorldSingleFingerGesture)initWithTouch:(id)touch dataSource:(id)source worldDelegate:(id)delegate enabledGestureTypes:(unint64_t)types;
- (ASVWorldSingleFingerGestureDelegate)worldDelegate;
- (float)potentialAssetDistanceFromInitialLocationOnScreen;
- (void)finishGesture;
- (void)updateGesture;
- (void)updateTranslation;
@end

@implementation ASVWorldSingleFingerGesture

- (ASVWorldSingleFingerGesture)initWithTouch:(id)touch dataSource:(id)source worldDelegate:(id)delegate enabledGestureTypes:(unint64_t)types
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = ASVWorldSingleFingerGesture;
  v11 = [(ASVSingleFingerGesture *)&v15 initWithTouch:touch dataSource:source delegate:delegateCopy enabledGestureTypes:types];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_worldDelegate, delegateCopy);
    dragOffsetCorrector = v12->_dragOffsetCorrector;
    v12->_dragOffsetCorrector = 0;
  }

  return v12;
}

- (void)updateGesture
{
  v3.receiver = self;
  v3.super_class = ASVWorldSingleFingerGesture;
  [(ASVSingleFingerGesture *)&v3 updateGesture];
  if ([(ASVSingleFingerGesture *)self generatesTransforms])
  {
    [(ASVWorldSingleFingerGesture *)self updateTranslation];
  }
}

- (float)potentialAssetDistanceFromInitialLocationOnScreen
{
  [(ASVSingleFingerGesture *)self latestTouchLocation];
  v4 = v3;
  [(ASVSingleFingerGesture *)self initialTouchLocation];
  v6 = vsub_f32(v4, v5);
  [(ASVGesture *)self latestAssetLocationOnScreen];
  v8 = v7;
  [(ASVGesture *)self initialAssetLocationOnScreen];
  v10 = vadd_f32(v6, vsub_f32(v8, v9));
  return sqrtf(vaddv_f32(vmul_f32(v10, v10)));
}

- (void)updateTranslation
{
  if ([(ASVGesture *)self firstTouchWasOnAsset])
  {
    dataSource = [(ASVGesture *)self dataSource];
    [dataSource assetScreenPosition];
    [(ASVGesture *)self setLatestAssetLocationOnScreen:?];

    if (![(ASVSingleFingerGesture *)self panThresholdPassed])
    {
      [(ASVWorldSingleFingerGesture *)self potentialAssetDistanceFromInitialLocationOnScreen];
      v5 = v4;
      [ASVSettings floatForKey:@"ASVSettingSingleFingerTranslationThreshold"];
      if (v5 >= v6)
      {
        [(ASVSingleFingerGesture *)self setPanThresholdPassed:1];
        [(ASVSingleFingerGesture *)self latestTouchLocation];
        v8 = v7;
        [(ASVGesture *)self initialAssetLocationOnScreen];
        v10 = COERCE_DOUBLE(vsub_f32(v8, v9));
        [(ASVSingleFingerGesture *)self latestTouchLocation];
        v12 = v11;
        [(ASVGesture *)self latestAssetLocationOnScreen];
        v14 = [[ASVWorldGestureDragOffsetCorrector alloc] initWithInitialDragOffset:v10 thresholdDragOffset:COERCE_DOUBLE(vsub_f32(v12, v13))];
        [(ASVWorldSingleFingerGesture *)self setDragOffsetCorrector:v14];

        worldDelegate = [(ASVWorldSingleFingerGesture *)self worldDelegate];
        [worldDelegate gestureBeganTranslation:self];
      }
    }

    if ([(ASVSingleFingerGesture *)self panThresholdPassed])
    {
      dragOffsetCorrector = [(ASVWorldSingleFingerGesture *)self dragOffsetCorrector];
      [dragOffsetCorrector currentDragOffset];
      v18 = v17;

      [(ASVSingleFingerGesture *)self latestTouchLocation];
      v20 = COERCE_DOUBLE(vsub_f32(v19, v18));
      worldDelegate2 = [(ASVWorldSingleFingerGesture *)self worldDelegate];
      [worldDelegate2 gesture:self translatedAssetToScreenPoint:v20];
    }
  }
}

- (void)finishGesture
{
  if ([(ASVSingleFingerGesture *)self panThresholdPassed])
  {
    worldDelegate = [(ASVWorldSingleFingerGesture *)self worldDelegate];
    [worldDelegate gestureEndedTranslation:self];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ASVWorldSingleFingerGesture;
    [(ASVSingleFingerGesture *)&v4 finishGesture];
  }
}

- (ASVWorldSingleFingerGestureDelegate)worldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_worldDelegate);

  return WeakRetained;
}

@end