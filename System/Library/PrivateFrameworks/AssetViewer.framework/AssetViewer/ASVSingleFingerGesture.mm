@interface ASVSingleFingerGesture
- (ASVSingleFingerGesture)initWithTouch:(id)touch dataSource:(id)source delegate:(id)delegate enabledGestureTypes:(unint64_t)types;
- (ASVSingleFingerGestureDelegate)delegate;
- (BOOL)generatesTaps;
- (void)finishGesture;
- (void)updateGesture;
@end

@implementation ASVSingleFingerGesture

- (ASVSingleFingerGesture)initWithTouch:(id)touch dataSource:(id)source delegate:(id)delegate enabledGestureTypes:(unint64_t)types
{
  touchCopy = touch;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = ASVSingleFingerGesture;
  v13 = [(ASVGesture *)&v18 initWithDataSource:source];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_enabledGestureTypes = types;
    v14->_panThresholdPassed = 0;
    v14->_touchStartTime = CACurrentMediaTime();
    objc_storeStrong(&v14->_touch, touch);
    [(ASVTouch *)v14->_touch location];
    *&v14->_initialTouchLocation[7] = v15;
    *&v14->_latestTouchLocation[7] = v15;
    dataSource = [(ASVGesture *)v14 dataSource];
    -[ASVGesture setFirstTouchWasOnAsset:](v14, "setFirstTouchWasOnAsset:", [dataSource screenPointIsOnAsset:*&v14->_initialTouchLocation[7]]);
  }

  return v14;
}

- (void)updateGesture
{
  touch = [(ASVSingleFingerGesture *)self touch];
  [touch location];
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
        dataSource = [(ASVGesture *)self dataSource];
        [(ASVSingleFingerGesture *)self latestTouchLocation];
        v13 = [dataSource screenPointIsOnAsset:?];

        v14 = [(ASVGesture *)self firstTouchWasOnAsset]& v13;
        if ((v14 & 1) != 0 || (([(ASVGesture *)self firstTouchWasOnAsset]| v13) & 1) == 0)
        {
          delegate = [(ASVSingleFingerGesture *)self delegate];
          [(ASVSingleFingerGesture *)self latestTouchLocation];
          [delegate gesture:self singleTappedAtScreenPoint:v14 onAsset:?];
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