@interface ASVTurntableTwoFingerGesture
- (ASVTurntableTwoFingerGesture)initWithFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source turntableDelegate:(id)delegate;
- (ASVTurntableTwoFingerGestureDelegate)turntableDelegate;
- (void)finishGesture;
- (void)updatePanWithFirstTouchLocation:(ASVTurntableTwoFingerGesture *)self secondTouchLocation:(SEL)location midPoint:;
@end

@implementation ASVTurntableTwoFingerGesture

- (ASVTurntableTwoFingerGesture)initWithFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source turntableDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = ASVTurntableTwoFingerGesture;
  v11 = [(ASVTwoFingerGesture *)&v14 initWithFirstTouch:touch secondTouch:secondTouch dataSource:source delegate:delegateCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_turntableDelegate, delegateCopy);
  }

  return v12;
}

- (void)updatePanWithFirstTouchLocation:(ASVTurntableTwoFingerGesture *)self secondTouchLocation:(SEL)location midPoint:
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
      turntableDelegate = [(ASVTurntableTwoFingerGesture *)self turntableDelegate];
      [turntableDelegate gesture:self beganPanningAtScreenPoint:v3];
    }
  }

  if ([(ASVTwoFingerGesture *)self panThresholdPassed])
  {
    turntableDelegate2 = [(ASVTurntableTwoFingerGesture *)self turntableDelegate];
    [turntableDelegate2 gesture:self pannedToScreenPoint:v3];
  }
}

- (void)finishGesture
{
  if ([(ASVTwoFingerGesture *)self panThresholdPassed])
  {
    turntableDelegate = [(ASVTurntableTwoFingerGesture *)self turntableDelegate];
    [turntableDelegate gestureEndedPanning:self];
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