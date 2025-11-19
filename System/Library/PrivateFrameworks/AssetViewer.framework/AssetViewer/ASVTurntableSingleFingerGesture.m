@interface ASVTurntableSingleFingerGesture
- (ASVTurntableSingleFingerGesture)initWithTouch:(id)a3 dataSource:(id)a4 turntableDelegate:(id)a5 enabledGestureTypes:(unint64_t)a6;
- (ASVTurntableSingleFingerGestureDelegate)turntableDelegate;
- (void)finishGesture;
- (void)updateGesture;
- (void)updatePan;
@end

@implementation ASVTurntableSingleFingerGesture

- (ASVTurntableSingleFingerGesture)initWithTouch:(id)a3 dataSource:(id)a4 turntableDelegate:(id)a5 enabledGestureTypes:(unint64_t)a6
{
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ASVTurntableSingleFingerGesture;
  v11 = [(ASVSingleFingerGesture *)&v14 initWithTouch:a3 dataSource:a4 delegate:v10 enabledGestureTypes:a6];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_turntableDelegate, v10);
  }

  return v12;
}

- (void)updateGesture
{
  v3.receiver = self;
  v3.super_class = ASVTurntableSingleFingerGesture;
  [(ASVSingleFingerGesture *)&v3 updateGesture];
  if ([(ASVSingleFingerGesture *)self generatesTransforms])
  {
    [(ASVTurntableSingleFingerGesture *)self updatePan];
  }
}

- (void)updatePan
{
  if (![(ASVSingleFingerGesture *)self panThresholdPassed])
  {
    [(ASVSingleFingerGesture *)self latestTouchLocation];
    v4 = v3;
    [(ASVSingleFingerGesture *)self initialTouchLocation];
    v6 = vsub_f32(v4, v5);
    v4.f32[0] = sqrtf(vaddv_f32(vmul_f32(v6, v6)));
    [ASVSettings floatForKey:@"ASVSettingTurntableSingleFingerPanThreshold"];
    if (v4.f32[0] >= v7)
    {
      [(ASVSingleFingerGesture *)self setPanThresholdPassed:1];
      v8 = [(ASVTurntableSingleFingerGesture *)self turntableDelegate];
      [(ASVSingleFingerGesture *)self latestTouchLocation];
      [v8 gesture:self beganPanningAtScreenPoint:?];
    }
  }

  if ([(ASVSingleFingerGesture *)self panThresholdPassed])
  {
    v9 = [(ASVTurntableSingleFingerGesture *)self turntableDelegate];
    [(ASVSingleFingerGesture *)self latestTouchLocation];
    [v9 gesture:self pannedToScreenPoint:?];
  }
}

- (void)finishGesture
{
  if ([(ASVSingleFingerGesture *)self panThresholdPassed])
  {
    v3 = [(ASVTurntableSingleFingerGesture *)self turntableDelegate];
    [v3 gestureEndedPanning:self];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ASVTurntableSingleFingerGesture;
    [(ASVSingleFingerGesture *)&v4 finishGesture];
  }
}

- (ASVTurntableSingleFingerGestureDelegate)turntableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_turntableDelegate);

  return WeakRetained;
}

@end