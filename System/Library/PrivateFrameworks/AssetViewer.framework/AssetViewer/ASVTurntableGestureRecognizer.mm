@interface ASVTurntableGestureRecognizer
- (ASVTurntableGestureRecognizer)initWithTurntableDelegate:(id)delegate feedbackGenerator:(id)generator;
- (ASVTurntableGestureRecognizerDelegate)turntableDelegate;
- (BOOL)isDecelerating;
- (float)decelerationPitchDelta;
- (float)decelerationYawDelta;
- (float)maximumObjectScale;
- (float)minimumObjectScale;
- (id)singleFingerGestureForTouch:(id)touch dataSource:(id)source enabledGestureTypes:(unint64_t)types;
- (id)twoFingerGestureForFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source;
- (void)cancelDeceleration;
- (void)gesture:(id)gesture beganPanningAtScreenPoint:;
- (void)gesture:(id)gesture pannedToScreenPoint:;
- (void)gestureEndedPanning:(id)panning;
- (void)pitchRangeWithMinPitch:(float *)pitch maxPitch:(float *)maxPitch;
- (void)setEnabledGestureTypes:(unint64_t)types;
- (void)startSnappingPitch;
- (void)startSpinningPitchWithInitialVelocity:(float)velocity;
- (void)startSpinningYawWithInitialVelocity:(float)velocity;
@end

@implementation ASVTurntableGestureRecognizer

- (ASVTurntableGestureRecognizer)initWithTurntableDelegate:(id)delegate feedbackGenerator:(id)generator
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = ASVTurntableGestureRecognizer;
  v7 = [(ASVUnifiedGestureRecognizer *)&v24 initWithDelegate:delegateCopy feedbackGenerator:generator];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_turntableDelegate, delegateCopy);
    *v8->_initialPanLocation = 0;
    *v8->_lastPanLocation = 0;
    v8->_lastPanTime = 0.0;
    v8->_lastOverallDeltaX = 0.0;
    v8->_lastRubberBandedPitch = 0.0;
    v23 = 0;
    [(ASVTurntableGestureRecognizer *)v8 pitchRangeWithMinPitch:&v23 + 4 maxPitch:&v23];
    v9 = [ASVRubberBand alloc];
    [ASVSettings floatForKey:@"ASVSettingTurntablePitchRubberBandFactor"];
    v11 = v10;
    v12 = v23;
    [ASVSettings floatForKey:@"ASVSettingTurntablePitchOvershoot"];
    LODWORD(v14) = v13;
    LODWORD(v15) = v11;
    LODWORD(v16) = HIDWORD(v12);
    LODWORD(v17) = v12;
    v18 = [(ASVRubberBand *)v9 initWithRubberBandFactor:v15 minOffset:v16 maxOffset:v17 overshoot:v14];
    rubberBand = v8->_rubberBand;
    v8->_rubberBand = v18;

    v8->_panThresholdPassed = 0;
    v8->_yawThresholdPassed = 0;
    v8->_pitchThresholdPassed = 0;
    velocitySample = v8->_velocitySample;
    v8->_velocitySample = 0;

    previousVelocitySample = v8->_previousVelocitySample;
    v8->_previousVelocitySample = 0;
  }

  return v8;
}

- (void)setEnabledGestureTypes:(unint64_t)types
{
  v4.receiver = self;
  v4.super_class = ASVTurntableGestureRecognizer;
  [(ASVUnifiedGestureRecognizer *)&v4 setEnabledGestureTypes:types];
  [(ASVTurntableGestureRecognizer *)self cancelDeceleration];
}

- (id)singleFingerGestureForTouch:(id)touch dataSource:(id)source enabledGestureTypes:(unint64_t)types
{
  touchCopy = touch;
  v8 = [ASVTurntableSingleFingerGesture alloc];
  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v10 = [(ASVTurntableSingleFingerGesture *)v8 initWithTouch:touchCopy dataSource:dataSource turntableDelegate:self enabledGestureTypes:types];

  return v10;
}

- (id)twoFingerGestureForFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source
{
  secondTouchCopy = secondTouch;
  touchCopy = touch;
  v9 = [ASVTurntableTwoFingerGesture alloc];
  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v11 = [(ASVTurntableTwoFingerGesture *)v9 initWithFirstTouch:touchCopy secondTouch:secondTouchCopy dataSource:dataSource turntableDelegate:self];

  return v11;
}

- (float)minimumObjectScale
{
  if ([(ASVUnifiedGestureRecognizer *)self allowObjectScaling])
  {

    [ASVSettings floatForKey:@"ASVSettingMinimumAssetTurntableScale"];
  }

  else
  {

    [(ASVUnifiedGestureRecognizer *)self currentObjectScale];
  }

  return result;
}

- (float)maximumObjectScale
{
  if ([(ASVUnifiedGestureRecognizer *)self allowObjectScaling])
  {

    [ASVSettings floatForKey:@"ASVSettingMaximumAssetTurntableScale"];
  }

  else
  {

    [(ASVUnifiedGestureRecognizer *)self currentObjectScale];
  }

  return result;
}

- (void)startSpinningYawWithInitialVelocity:(float)velocity
{
  v5 = fabsf(velocity);
  [ASVSettings floatForKey:@"ASVSettingMinimumVelocityToBeginYawSpinDeceleration"];
  if (v5 > v6)
  {
    v7 = [ASVDampingDeceleration alloc];
    [ASVSettings floatForKey:@"ASVSettingMinimumDeltaToEndSpinDeceleration"];
    v9 = v8;
    [ASVSettings floatForKey:@"ASVSettingTurntableYawSpinDecelerationRate"];
    LODWORD(v11) = v10;
    *&v12 = velocity;
    LODWORD(v13) = v9;
    v14 = [(ASVDampingDeceleration *)v7 initWithVelocity:v12 minEndDelta:v13 decelerationRate:v11];
    [(ASVTurntableGestureRecognizer *)self setYawDeceleration:v14];
  }
}

- (void)startSpinningPitchWithInitialVelocity:(float)velocity
{
  v5 = fabsf(velocity);
  [ASVSettings floatForKey:@"ASVSettingMinimumVelocityToBeginPitchSpinDeceleration"];
  if (v5 > v6)
  {
    [ASVSettings floatForKey:@"ASVSettingTurntablePitchDecelerationRubberBandUndershoot"];
    v8 = v7;
    v9 = [ASVRubberBand alloc];
    rubberBand = [(ASVTurntableGestureRecognizer *)self rubberBand];
    [rubberBand rubberBandFactor];
    v12 = v11;
    rubberBand2 = [(ASVTurntableGestureRecognizer *)self rubberBand];
    [rubberBand2 minOffset];
    v15 = v8 + v14;
    rubberBand3 = [(ASVTurntableGestureRecognizer *)self rubberBand];
    [rubberBand3 maxOffset];
    *&v18 = v17 - v8;
    LODWORD(v19) = v12;
    *&v20 = v15;
    *&v21 = v8;
    v34 = [(ASVRubberBand *)v9 initWithRubberBandFactor:v19 minOffset:v20 maxOffset:v18 overshoot:v21];

    v22 = [ASVRubberBandedSpinDeceleration alloc];
    [ASVSettings floatForKey:@"ASVSettingMinimumDeltaToEndSpinDeceleration"];
    v24 = v23;
    dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
    [dataSource assetPitch];
    v27 = v26;
    [ASVSettings floatForKey:@"ASVSettingTurntablePitchSpinDecelerationRate"];
    LODWORD(v29) = v28;
    *&v30 = velocity;
    LODWORD(v31) = v24;
    LODWORD(v32) = v27;
    v33 = [(ASVRubberBandedSpinDeceleration *)v22 initWithVelocity:v34 minEndDelta:v30 startingOffset:v31 decelerationRate:v32 rubberBand:v29];
    [(ASVTurntableGestureRecognizer *)self setPitchDeceleration:v33];
  }
}

- (void)startSnappingPitch
{
  v3 = [ASVSnapDeceleration alloc];
  [ASVSettings floatForKey:@"ASVSettingMinimumDeltaToEndSnapDeceleration"];
  v5 = v4;
  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  [dataSource assetPitch];
  v7 = v6;
  rubberBand = [(ASVTurntableGestureRecognizer *)self rubberBand];
  [rubberBand minOffset];
  v10 = v9;
  rubberBand2 = [(ASVTurntableGestureRecognizer *)self rubberBand];
  [rubberBand2 maxOffset];
  LODWORD(v13) = v12;
  LODWORD(v14) = v5;
  LODWORD(v15) = v7;
  LODWORD(v16) = v10;
  v17 = [(ASVSnapDeceleration *)v3 initWithVelocity:0.0 minEndDelta:v14 startingOffset:v15 minOffset:v16 maxOffset:v13];
  [(ASVTurntableGestureRecognizer *)self setPitchDeceleration:v17];
}

- (BOOL)isDecelerating
{
  yawDeceleration = [(ASVTurntableGestureRecognizer *)self yawDeceleration];
  if (yawDeceleration)
  {
    yawDeceleration2 = [(ASVTurntableGestureRecognizer *)self yawDeceleration];
    if ([yawDeceleration2 isDecelerating])
    {
      isDecelerating = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  pitchDeceleration = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];
  if (pitchDeceleration)
  {
    pitchDeceleration2 = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];
    isDecelerating = [pitchDeceleration2 isDecelerating];
  }

  else
  {
    isDecelerating = 0;
  }

  if (yawDeceleration)
  {
    goto LABEL_8;
  }

LABEL_9:

  return isDecelerating;
}

- (float)decelerationYawDelta
{
  yawDeceleration = [(ASVTurntableGestureRecognizer *)self yawDeceleration];

  if (!yawDeceleration)
  {
    return 0.0;
  }

  yawDeceleration2 = [(ASVTurntableGestureRecognizer *)self yawDeceleration];
  [yawDeceleration2 decelerationDelta];
  v6 = v5;

  return v6;
}

- (float)decelerationPitchDelta
{
  pitchDeceleration = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];

  if (!pitchDeceleration)
  {
    return 0.0;
  }

  pitchDeceleration2 = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];
  [pitchDeceleration2 decelerationDelta];
  v6 = v5;

  return v6;
}

- (void)cancelDeceleration
{
  [(ASVTurntableGestureRecognizer *)self setYawDeceleration:0];

  [(ASVTurntableGestureRecognizer *)self setPitchDeceleration:0];
}

- (void)pitchRangeWithMinPitch:(float *)pitch maxPitch:(float *)maxPitch
{
  [ASVSettings floatForKey:@"ASVSettingTurntablePitchLimit"];
  *pitch = -v6;
  *maxPitch = v6;
}

- (void)gesture:(id)gesture beganPanningAtScreenPoint:
{
  v4 = v3;
  [(ASVTurntableGestureRecognizer *)self setInitialPanLocation:gesture];
  [(ASVTurntableGestureRecognizer *)self setPanThresholdPassed:0];
  [(ASVTurntableGestureRecognizer *)self setYawThresholdPassed:0];
  [(ASVTurntableGestureRecognizer *)self setPitchThresholdPassed:0];
  [(ASVTurntableGestureRecognizer *)self setLastPanTime:0.0];
  [(ASVTurntableGestureRecognizer *)self setLastOverallDeltaX:0.0];
  [(ASVTurntableGestureRecognizer *)self setVelocitySample:0];
  [(ASVTurntableGestureRecognizer *)self setPreviousVelocitySample:0];
  [(ASVTurntableGestureRecognizer *)self setLastPanLocation:v4];
  v6 = CACurrentMediaTime();

  [(ASVTurntableGestureRecognizer *)self setLastPanTime:v6];
}

- (void)gesture:(id)gesture pannedToScreenPoint:
{
  v4 = v3;
  if (![(ASVTurntableGestureRecognizer *)self panThresholdPassed])
  {
    [(ASVTurntableGestureRecognizer *)self initialPanLocation];
    v7 = vsub_f32(*&v4, v6);
    v8 = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
    [ASVSettings floatForKey:@"ASVSettingTurntableMinimumPanMoveDistance"];
    if (v8 < v9)
    {
      return;
    }

    [(ASVTurntableGestureRecognizer *)self setPanThresholdPassed:1];
  }

  v10 = CACurrentMediaTime();
  velocitySample = [(ASVTurntableGestureRecognizer *)self velocitySample];
  [(ASVTurntableGestureRecognizer *)self setPreviousVelocitySample:velocitySample];

  v12 = [ASVVelocitySample2D alloc];
  [(ASVTurntableGestureRecognizer *)self lastPanLocation];
  v14 = v13;
  [(ASVTurntableGestureRecognizer *)self lastPanTime];
  v16 = [(ASVVelocitySample2D *)v12 initWithStart:v14 end:v4 deltaTime:v10 - v15];
  [(ASVTurntableGestureRecognizer *)self setVelocitySample:v16];

  if (![(ASVTurntableGestureRecognizer *)self yawThresholdPassed]|| ![(ASVTurntableGestureRecognizer *)self pitchThresholdPassed])
  {
    v58 = v10;
    [ASVSettings floatForKey:@"ASVSettingTurntableSafeZoneAngle"];
    v18 = v17;
    v19 = 0.7854 - v17;
    [(ASVTurntableGestureRecognizer *)self initialPanLocation];
    v21 = fabsf(vsub_f32(*&v4, v20).f32[0]);
    [(ASVTurntableGestureRecognizer *)self initialPanLocation];
    v23 = fabsf(COERCE_FLOAT(vsub_f32(*&v4, v22).i32[1]));
    v24 = atanf(v23 / v21);
    if (![(ASVTurntableGestureRecognizer *)self yawThresholdPassed])
    {
      v57 = v23;
      v25 = 1.57079633 - v18;
      v26 = 1.0;
      if (v24 < v25)
      {
        v26 = 0.0;
        if (v24 >= 0.7854)
        {
          v26 = 1.0 - ((v25 - v24) / v19);
        }
      }

      v27 = v19;
      [ASVSettings floatForKey:@"ASVSettingTurntablePitchYawRotationThreshold"];
      v29 = v28;
      if ([(ASVTurntableGestureRecognizer *)self pitchThresholdPassed])
      {
        [ASVSettings floatForKey:@"ASVSettingTurntablePitchYawRotationThresholdHarder"];
        v29 = v30;
      }

      v31 = v21 < (v26 * v29);
      v19 = v27;
      v23 = v57;
      if (!v31)
      {
        [(ASVTurntableGestureRecognizer *)self setYawThresholdPassed:1];
        [(ASVTurntableGestureRecognizer *)self setYawThresholdLocation:v4];
      }
    }

    v10 = v58;
    if (![(ASVTurntableGestureRecognizer *)self pitchThresholdPassed])
    {
      v32 = 1.0;
      if (v24 > v18)
      {
        v32 = 0.0;
        if (v24 <= 0.7854)
        {
          v32 = 1.0 - ((v24 - v18) / v19);
        }
      }

      [ASVSettings floatForKey:@"ASVSettingTurntablePitchYawRotationThreshold"];
      v34 = v33;
      if ([(ASVTurntableGestureRecognizer *)self yawThresholdPassed])
      {
        [ASVSettings floatForKey:@"ASVSettingTurntablePitchYawRotationThresholdHarder"];
        v34 = v35;
      }

      if (v23 >= (v32 * v34))
      {
        [(ASVTurntableGestureRecognizer *)self setPitchThresholdPassed:1];
        [(ASVTurntableGestureRecognizer *)self setPitchThresholdLocation:v4];
        dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
        [dataSource assetPitch];
        [(ASVTurntableGestureRecognizer *)self setInitialAssetPitch:?];

        [(ASVTurntableGestureRecognizer *)self initialAssetPitch];
        [(ASVTurntableGestureRecognizer *)self setLastRubberBandedPitch:?];
      }
    }
  }

  v37 = 0.0;
  v38 = 0.0;
  if ([(ASVTurntableGestureRecognizer *)self yawThresholdPassed])
  {
    [(ASVTurntableGestureRecognizer *)self yawThresholdLocation];
    v59 = COERCE_DOUBLE(vsub_f32(*&v4, v39));
    [(ASVTurntableGestureRecognizer *)self lastOverallDeltaX];
    v41 = *&v59 - v40;
    [ASVSettings floatForKey:@"ASVSettingTurntableYawRadiansPerPoint"];
    v38 = v41 * v42;
    [(ASVTurntableGestureRecognizer *)self setLastOverallDeltaX:v59];
  }

  if ([(ASVTurntableGestureRecognizer *)self pitchThresholdPassed])
  {
    [(ASVTurntableGestureRecognizer *)self pitchThresholdLocation];
    v60 = vsub_f32(*&v4, v43);
    [ASVSettings floatForKey:@"ASVSettingTurntablePitchRadiansPerPoint"];
    v45 = vmuls_lane_f32(v44, v60, 1);
    [(ASVTurntableGestureRecognizer *)self initialAssetPitch];
    v47 = v46 + v45;
    rubberBand = [(ASVTurntableGestureRecognizer *)self rubberBand];
    *&v49 = v47;
    [rubberBand rubberBandOffsetForOffset:v49];
    v51 = v50;

    [(ASVTurntableGestureRecognizer *)self lastRubberBandedPitch];
    v37 = v51 - v52;
    *&v53 = v51;
    [(ASVTurntableGestureRecognizer *)self setLastRubberBandedPitch:v53];
  }

  if (v38 != 0.0 || v37 != 0.0)
  {
    turntableDelegate = [(ASVTurntableGestureRecognizer *)self turntableDelegate];
    *&v55 = v38;
    *&v56 = v37;
    [turntableDelegate turntableGestureRecognizer:self rotatedAssetByDeltaYaw:v55 deltaPitch:v56];
  }

  [(ASVTurntableGestureRecognizer *)self setLastPanLocation:v4];

  [(ASVTurntableGestureRecognizer *)self setLastPanTime:v10];
}

- (void)gestureEndedPanning:(id)panning
{
  panningCopy = panning;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  velocitySample = [(ASVTurntableGestureRecognizer *)self velocitySample];
  previousVelocitySample = [(ASVTurntableGestureRecognizer *)self previousVelocitySample];
  [velocitySample calcFinalVelocityFromPreviousSample:previousVelocitySample];
  v21 = v8;

  [ASVSettings floatForKey:@"ASVSettingTurntableYawRadiansPerPoint"];
  v10 = v9;
  [ASVSettings floatForKey:@"ASVSettingTurntablePitchRadiansPerPoint"];
  v12 = v11;
  if (isKindOfClass)
  {
    HIDWORD(v13) = DWORD1(v21);
    *&v13 = v10 * *&v21;
    [(ASVTurntableGestureRecognizer *)self startSpinningYawWithInitialVelocity:v13];
  }

  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  [dataSource assetPitch];
  v16 = v15;

  rubberBand = [(ASVTurntableGestureRecognizer *)self rubberBand];
  LODWORD(v18) = v16;
  v19 = [rubberBand offsetIsWithinRubberBandedRange:v18];

  if (v19)
  {

    [(ASVTurntableGestureRecognizer *)self startSnappingPitch];
  }

  else if (isKindOfClass)
  {
    HIDWORD(v20) = v22.i32[1];
    *&v20 = vmuls_lane_f32(v12, v22, 1);

    [(ASVTurntableGestureRecognizer *)self startSpinningPitchWithInitialVelocity:v20];
  }
}

- (ASVTurntableGestureRecognizerDelegate)turntableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_turntableDelegate);

  return WeakRetained;
}

@end