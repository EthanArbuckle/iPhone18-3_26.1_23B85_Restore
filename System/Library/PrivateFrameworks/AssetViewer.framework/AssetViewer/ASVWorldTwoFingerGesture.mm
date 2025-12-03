@interface ASVWorldTwoFingerGesture
- (ASVWorldTwoFingerGesture)initWithFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source worldDelegate:(id)delegate;
- (ASVWorldTwoFingerGestureDelegate)worldDelegate;
- (void)finishGesture;
- (void)updatePanWithFirstTouchLocation:(ASVWorldTwoFingerGesture *)self secondTouchLocation:(SEL)location midPoint:;
@end

@implementation ASVWorldTwoFingerGesture

- (ASVWorldTwoFingerGesture)initWithFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source worldDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = ASVWorldTwoFingerGesture;
  v11 = [(ASVTwoFingerGesture *)&v16 initWithFirstTouch:touch secondTouch:secondTouch dataSource:source delegate:delegateCopy];
  v12 = v11;
  if (v11)
  {
    if (![(ASVGesture *)v11 firstTouchWasOnAsset])
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeWeak(&v12->_worldDelegate, delegateCopy);
    dragOffsetCorrector = v12->_dragOffsetCorrector;
    v12->_dragOffsetCorrector = 0;
  }

  v14 = v12;
LABEL_6:

  return v14;
}

- (void)updatePanWithFirstTouchLocation:(ASVWorldTwoFingerGesture *)self secondTouchLocation:(SEL)location midPoint:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  worldDelegate = [(ASVWorldTwoFingerGesture *)self worldDelegate];
  if (![(ASVTwoFingerGesture *)self panThresholdPassed])
  {
    [ASVSettings floatForKey:@"ASVSettingTwoFingerTranslationThreshold"];
    v44 = v9;
    if ([(ASVTwoFingerGesture *)self rotationThresholdPassed]|| [(ASVTwoFingerGesture *)self scaleThresholdPassed])
    {
      [ASVSettings floatForKey:@"ASVSettingTwoFingerTranslationThresholdHarder"];
      v10 = 0;
      [(ASVGesture *)self latestAssetLocationOnScreen:v11];
    }

    else
    {
      v10 = 1;
      [(ASVGesture *)self latestAssetLocationOnScreen];
    }

    v14 = v13;
    [(ASVGesture *)self initialAssetLocationOnScreen];
    v16 = vsub_f32(v14, v15);
    if (sqrtf(vaddv_f32(vmul_f32(v16, v16))) >= *v45.i32)
    {
      [(ASVTwoFingerGesture *)self setPanThresholdPassed:1];
    }

    if (![(ASVTwoFingerGesture *)self panThresholdPassed])
    {
      [(ASVTwoFingerGesture *)self initialFirstTouchLocation];
      v18 = vsub_f32(v7, v17);
      v19 = sqrtf(vaddv_f32(vmul_f32(v18, v18)));
      [(ASVTwoFingerGesture *)self initialSecondTouchLocation];
      v21 = v20;
      [(ASVTwoFingerGesture *)self initialMidPoint];
      if (v19 >= *v45.i32)
      {
        v23 = vsub_f32(v5, v22);
        v24 = vmul_f32(v23, v23);
        v25 = vsub_f32(v6, v21);
        v26 = vmul_f32(v25, v25);
        v27 = vmvn_s8(vcge_f32(vsqrt_f32(vadd_f32(vzip1_s32(v24, v26), vzip2_s32(v24, v26))), vdup_lane_s32(v45, 0)));
        if (((v27.i32[1] | v27.i32[0]) & 1) == 0)
        {
          [(ASVTwoFingerGesture *)self setPanThresholdPassed:1];
        }
      }
    }

    if ([(ASVTwoFingerGesture *)self panThresholdPassed])
    {
      if (v10)
      {
        [(ASVTwoFingerGesture *)self initialMidPoint];
        v29 = vsub_f32(v5, v28);
        v30 = fabsf(atan2f(v29.f32[0], v29.f32[1]) * 57.296);
        [(ASVGesture *)self initialAssetLocationOnScreen];
        v32 = COERCE_DOUBLE(vsub_f32(v5, v31));
        [(ASVGesture *)self latestAssetLocationOnScreen];
        v34 = [[ASVWorldGestureDragOffsetCorrector alloc] initWithInitialDragOffset:v32 thresholdDragOffset:COERCE_DOUBLE(vsub_f32(v5, v33))];
        [(ASVWorldTwoFingerGesture *)self setDragOffsetCorrector:v34];

        if (v30 < 30.0 || v30 > 150.0)
        {
          [(ASVTwoFingerGesture *)self setLevitationThresholdPassed:1];
          [worldDelegate gestureBeganLevitation:self];
          goto LABEL_21;
        }
      }

      else
      {
        [(ASVGesture *)self initialAssetLocationOnScreen];
        v37 = COERCE_DOUBLE(vsub_f32(v5, v36));
        [(ASVGesture *)self latestAssetLocationOnScreen];
        v39 = [[ASVWorldGestureDragOffsetCorrector alloc] initWithInitialDragOffset:v37 thresholdDragOffset:COERCE_DOUBLE(vsub_f32(v5, v38))];
        [(ASVWorldTwoFingerGesture *)self setDragOffsetCorrector:v39];
      }

      [worldDelegate gestureBeganTranslation:self];
    }
  }

LABEL_21:
  if ([(ASVTwoFingerGesture *)self panThresholdPassed]|| [(ASVTwoFingerGesture *)self levitationThresholdPassed])
  {
    dragOffsetCorrector = [(ASVWorldTwoFingerGesture *)self dragOffsetCorrector];
    [dragOffsetCorrector currentDragOffset];
    v42 = v41;

    v43 = COERCE_DOUBLE(vsub_f32(v5, v42));
    if ([(ASVTwoFingerGesture *)self levitationThresholdPassed])
    {
      [worldDelegate gesture:self levitatedAssetToScreenPoint:v43];
    }

    else
    {
      [worldDelegate gesture:self translatedAssetToScreenPoint:v43];
    }
  }
}

- (void)finishGesture
{
  if ([(ASVTwoFingerGesture *)self panThresholdPassed])
  {
    worldDelegate = [(ASVWorldTwoFingerGesture *)self worldDelegate];
    if ([(ASVTwoFingerGesture *)self levitationThresholdPassed])
    {
      [worldDelegate gestureEndedLevitation:self];
    }

    else
    {
      [worldDelegate gestureEndedTranslation:self];
    }
  }

  v4.receiver = self;
  v4.super_class = ASVWorldTwoFingerGesture;
  [(ASVTwoFingerGesture *)&v4 finishGesture];
}

- (ASVWorldTwoFingerGestureDelegate)worldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_worldDelegate);

  return WeakRetained;
}

@end