@interface ASVTurntableSingleFingerGesture
- (ASVTurntableSingleFingerGesture)initWithTouch:(id)touch dataSource:(id)source turntableDelegate:(id)delegate enabledGestureTypes:(unint64_t)types;
- (ASVTurntableSingleFingerGestureDelegate)turntableDelegate;
- (void)finishGesture;
- (void)updateGesture;
- (void)updatePan;
@end

@implementation ASVTurntableSingleFingerGesture

- (ASVTurntableSingleFingerGesture)initWithTouch:(id)touch dataSource:(id)source turntableDelegate:(id)delegate enabledGestureTypes:(unint64_t)types
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = ASVTurntableSingleFingerGesture;
  v11 = [(ASVSingleFingerGesture *)&v14 initWithTouch:touch dataSource:source delegate:delegateCopy enabledGestureTypes:types];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_turntableDelegate, delegateCopy);
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
      turntableDelegate = [(ASVTurntableSingleFingerGesture *)self turntableDelegate];
      [(ASVSingleFingerGesture *)self latestTouchLocation];
      [turntableDelegate gesture:self beganPanningAtScreenPoint:?];
    }
  }

  if ([(ASVSingleFingerGesture *)self panThresholdPassed])
  {
    turntableDelegate2 = [(ASVTurntableSingleFingerGesture *)self turntableDelegate];
    [(ASVSingleFingerGesture *)self latestTouchLocation];
    [turntableDelegate2 gesture:self pannedToScreenPoint:?];
  }
}

- (void)finishGesture
{
  if ([(ASVSingleFingerGesture *)self panThresholdPassed])
  {
    turntableDelegate = [(ASVTurntableSingleFingerGesture *)self turntableDelegate];
    [turntableDelegate gestureEndedPanning:self];
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