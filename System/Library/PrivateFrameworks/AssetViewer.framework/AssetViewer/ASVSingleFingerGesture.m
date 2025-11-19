@interface ASVSingleFingerGesture
- (ASVSingleFingerGesture)initWithTouch:(id)a3 dataSource:(id)a4 delegate:(id)a5 enabledGestureTypes:(unint64_t)a6;
- (ASVSingleFingerGestureDelegate)delegate;
- (BOOL)generatesTaps;
- (void)finishGesture;
- (void)updateGesture;
@end

@implementation ASVSingleFingerGesture

- (ASVSingleFingerGesture)initWithTouch:(id)a3 dataSource:(id)a4 delegate:(id)a5 enabledGestureTypes:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = ASVSingleFingerGesture;
  v13 = [(ASVGesture *)&v18 initWithDataSource:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v12);
    v14->_enabledGestureTypes = a6;
    v14->_panThresholdPassed = 0;
    v14->_touchStartTime = CACurrentMediaTime();
    objc_storeStrong(&v14->_touch, a3);
    [(ASVTouch *)v14->_touch location];
    *&v14->_initialTouchLocation[7] = v15;
    *&v14->_latestTouchLocation[7] = v15;
    v16 = [(ASVGesture *)v14 dataSource];
    -[ASVGesture setFirstTouchWasOnAsset:](v14, "setFirstTouchWasOnAsset:", [v16 screenPointIsOnAsset:*&v14->_initialTouchLocation[7]]);
  }

  return v14;
}

- (void)updateGesture
{
  v3 = [(ASVSingleFingerGesture *)self touch];
  [v3 location];
  [(ASVSingleFingerGesture *)self setLatestTouchLocation:?];
}

- (BOOL)generatesTaps
{
  if ([(ASVSingleFingerGesture *)self gestureTypeIsEnabled:1])
  {
    return 1;
  }

  return [(ASVSingleFingerGesture *)self gestureTypeIsEnabled:2];
}

- (void)finishGesture
{
  if ([(ASVSingleFingerGesture *)self generatesTaps])
  {
    [ASVSettings floatForKey:@"ASVSettingTapTimeThreshold"];
    v4 = v3;
    v5 = CACurrentMediaTime();
    [(ASVSingleFingerGesture *)self touchStartTime];
    if (v5 - v6 < v4)
    {
      [(ASVSingleFingerGesture *)self latestTouchLocation];
      v8 = v7;
      [(ASVSingleFingerGesture *)self initialTouchLocation];
      v10 = vsub_f32(v8, v9);
      v8.f32[0] = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
      [ASVSettings floatForKey:@"ASVSettingTapMovementThreshold"];
      if (v8.f32[0] < v11)
      {
        v12 = [(ASVGesture *)self dataSource];
        [(ASVSingleFingerGesture *)self latestTouchLocation];
        v13 = [v12 screenPointIsOnAsset:?];

        v14 = [(ASVGesture *)self firstTouchWasOnAsset]& v13;
        if ((v14 & 1) != 0 || (([(ASVGesture *)self firstTouchWasOnAsset]| v13) & 1) == 0)
        {
          v15 = [(ASVSingleFingerGesture *)self delegate];
          [(ASVSingleFingerGesture *)self latestTouchLocation];
          [v15 gesture:self singleTappedAtScreenPoint:v14 onAsset:?];
        }
      }
    }
  }
}

- (ASVSingleFingerGestureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end