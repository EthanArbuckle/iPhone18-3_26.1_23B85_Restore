@interface ASVTurntableTwoFingerGesture
- (ASVTurntableTwoFingerGesture)initWithFirstTouch:(id)a3 secondTouch:(id)a4 dataSource:(id)a5 turntableDelegate:(id)a6;
- (ASVTurntableTwoFingerGestureDelegate)turntableDelegate;
- (void)finishGesture;
- (void)updatePanWithFirstTouchLocation:(ASVTurntableTwoFingerGesture *)self secondTouchLocation:(SEL)a2 midPoint:;
@end

@implementation ASVTurntableTwoFingerGesture

- (ASVTurntableTwoFingerGesture)initWithFirstTouch:(id)a3 secondTouch:(id)a4 dataSource:(id)a5 turntableDelegate:(id)a6
{
  v10 = a6;
  v14.receiver = self;
  v14.super_class = ASVTurntableTwoFingerGesture;
  v11 = [(ASVTwoFingerGesture *)&v14 initWithFirstTouch:a3 secondTouch:a4 dataSource:a5 delegate:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_turntableDelegate, v10);
  }

  return v12;
}

- (void)updatePanWithFirstTouchLocation:(ASVTurntableTwoFingerGesture *)self secondTouchLocation:(SEL)a2 midPoint:
{
  v3 = v2;
  if (![(ASVTwoFingerGesture *)self panThresholdPassed])
  {
    [ASVSettings floatForKey:@"ASVSettingTurntableTwoFingerPanThreshold"];
    v6 = v5;
    [(ASVTwoFingerGesture *)self initialMidPoint];
    v8 = vsub_f32(*&v3, v7);
    if (sqrtf(vaddv_f32(vmul_f32(v8, v8))) >= v6)
    {
      [(ASVTwoFingerGesture *)self setPanThresholdPassed:1];
      v9 = [(ASVTurntableTwoFingerGesture *)self turntableDelegate];
      [v9 gesture:self beganPanningAtScreenPoint:v3];
    }
  }

  if ([(ASVTwoFingerGesture *)self panThresholdPassed])
  {
    v10 = [(ASVTurntableTwoFingerGesture *)self turntableDelegate];
    [v10 gesture:self pannedToScreenPoint:v3];
  }
}

- (void)finishGesture
{
  if ([(ASVTwoFingerGesture *)self panThresholdPassed])
  {
    v3 = [(ASVTurntableTwoFingerGesture *)self turntableDelegate];
    [v3 gestureEndedPanning:self];
  }

  v4.receiver = self;
  v4.super_class = ASVTurntableTwoFingerGesture;
  [(ASVTwoFingerGesture *)&v4 finishGesture];
}

- (ASVTurntableTwoFingerGestureDelegate)turntableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_turntableDelegate);

  return WeakRetained;
}

@end