@interface ASVTurntableGestureRecognizer
- (ASVTurntableGestureRecognizer)initWithTurntableDelegate:(id)a3 feedbackGenerator:(id)a4;
- (ASVTurntableGestureRecognizerDelegate)turntableDelegate;
- (BOOL)isDecelerating;
- (float)decelerationPitchDelta;
- (float)decelerationYawDelta;
- (float)maximumObjectScale;
- (float)minimumObjectScale;
- (id)singleFingerGestureForTouch:(id)a3 dataSource:(id)a4 enabledGestureTypes:(unint64_t)a5;
- (id)twoFingerGestureForFirstTouch:(id)a3 secondTouch:(id)a4 dataSource:(id)a5;
- (void)cancelDeceleration;
- (void)gesture:(id)a3 beganPanningAtScreenPoint:;
- (void)gesture:(id)a3 pannedToScreenPoint:;
- (void)gestureEndedPanning:(id)a3;
- (void)pitchRangeWithMinPitch:(float *)a3 maxPitch:(float *)a4;
- (void)setEnabledGestureTypes:(unint64_t)a3;
- (void)startSnappingPitch;
- (void)startSpinningPitchWithInitialVelocity:(float)a3;
- (void)startSpinningYawWithInitialVelocity:(float)a3;
@end

@implementation ASVTurntableGestureRecognizer

- (ASVTurntableGestureRecognizer)initWithTurntableDelegate:(id)a3 feedbackGenerator:(id)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = ASVTurntableGestureRecognizer;
  v7 = [(ASVUnifiedGestureRecognizer *)&v24 initWithDelegate:v6 feedbackGenerator:a4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_turntableDelegate, v6);
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

- (void)setEnabledGestureTypes:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = ASVTurntableGestureRecognizer;
  [(ASVUnifiedGestureRecognizer *)&v4 setEnabledGestureTypes:a3];
  [(ASVTurntableGestureRecognizer *)self cancelDeceleration];
}

- (id)singleFingerGestureForTouch:(id)a3 dataSource:(id)a4 enabledGestureTypes:(unint64_t)a5
{
  v7 = a3;
  v8 = [ASVTurntableSingleFingerGesture alloc];
  v9 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v10 = [(ASVTurntableSingleFingerGesture *)v8 initWithTouch:v7 dataSource:v9 turntableDelegate:self enabledGestureTypes:a5];

  return v10;
}

- (id)twoFingerGestureForFirstTouch:(id)a3 secondTouch:(id)a4 dataSource:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ASVTurntableTwoFingerGesture alloc];
  v10 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v11 = [(ASVTurntableTwoFingerGesture *)v9 initWithFirstTouch:v8 secondTouch:v7 dataSource:v10 turntableDelegate:self];

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

- (void)startSpinningYawWithInitialVelocity:(float)a3
{
  v5 = fabsf(a3);
  [ASVSettings floatForKey:@"ASVSettingMinimumVelocityToBeginYawSpinDeceleration"];
  if (v5 > v6)
  {
    v7 = [ASVDampingDeceleration alloc];
    [ASVSettings floatForKey:@"ASVSettingMinimumDeltaToEndSpinDeceleration"];
    v9 = v8;
    [ASVSettings floatForKey:@"ASVSettingTurntableYawSpinDecelerationRate"];
    LODWORD(v11) = v10;
    *&v12 = a3;
    LODWORD(v13) = v9;
    v14 = [(ASVDampingDeceleration *)v7 initWithVelocity:v12 minEndDelta:v13 decelerationRate:v11];
    [(ASVTurntableGestureRecognizer *)self setYawDeceleration:v14];
  }
}

- (void)startSpinningPitchWithInitialVelocity:(float)a3
{
  v5 = fabsf(a3);
  [ASVSettings floatForKey:@"ASVSettingMinimumVelocityToBeginPitchSpinDeceleration"];
  if (v5 > v6)
  {
    [ASVSettings floatForKey:@"ASVSettingTurntablePitchDecelerationRubberBandUndershoot"];
    v8 = v7;
    v9 = [ASVRubberBand alloc];
    v10 = [(ASVTurntableGestureRecognizer *)self rubberBand];
    [v10 rubberBandFactor];
    v12 = v11;
    v13 = [(ASVTurntableGestureRecognizer *)self rubberBand];
    [v13 minOffset];
    v15 = v8 + v14;
    v16 = [(ASVTurntableGestureRecognizer *)self rubberBand];
    [v16 maxOffset];
    *&v18 = v17 - v8;
    LODWORD(v19) = v12;
    *&v20 = v15;
    *&v21 = v8;
    v34 = [(ASVRubberBand *)v9 initWithRubberBandFactor:v19 minOffset:v20 maxOffset:v18 overshoot:v21];

    v22 = [ASVRubberBandedSpinDeceleration alloc];
    [ASVSettings floatForKey:@"ASVSettingMinimumDeltaToEndSpinDeceleration"];
    v24 = v23;
    v25 = [(ASVUnifiedGestureRecognizer *)self dataSource];
    [v25 assetPitch];
    v27 = v26;
    [ASVSettings floatForKey:@"ASVSettingTurntablePitchSpinDecelerationRate"];
    LODWORD(v29) = v28;
    *&v30 = a3;
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
  v18 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  [v18 assetPitch];
  v7 = v6;
  v8 = [(ASVTurntableGestureRecognizer *)self rubberBand];
  [v8 minOffset];
  v10 = v9;
  v11 = [(ASVTurntableGestureRecognizer *)self rubberBand];
  [v11 maxOffset];
  LODWORD(v13) = v12;
  LODWORD(v14) = v5;
  LODWORD(v15) = v7;
  LODWORD(v16) = v10;
  v17 = [(ASVSnapDeceleration *)v3 initWithVelocity:0.0 minEndDelta:v14 startingOffset:v15 minOffset:v16 maxOffset:v13];
  [(ASVTurntableGestureRecognizer *)self setPitchDeceleration:v17];
}

- (BOOL)isDecelerating
{
  v4 = [(ASVTurntableGestureRecognizer *)self yawDeceleration];
  if (v4)
  {
    v2 = [(ASVTurntableGestureRecognizer *)self yawDeceleration];
    if ([v2 isDecelerating])
    {
      v5 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v6 = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];
  if (v6)
  {
    v7 = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];
    v5 = [v7 isDecelerating];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (float)decelerationYawDelta
{
  v3 = [(ASVTurntableGestureRecognizer *)self yawDeceleration];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(ASVTurntableGestureRecognizer *)self yawDeceleration];
  [v4 decelerationDelta];
  v6 = v5;

  return v6;
}

- (float)decelerationPitchDelta
{
  v3 = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(ASVTurntableGestureRecognizer *)self pitchDeceleration];
  [v4 decelerationDelta];
  v6 = v5;

  return v6;
}

- (void)cancelDeceleration
{
  [(ASVTurntableGestureRecognizer *)self setYawDeceleration:0];

  [(ASVTurntableGestureRecognizer *)self setPitchDeceleration:0];
}

- (void)pitchRangeWithMinPitch:(float *)a3 maxPitch:(float *)a4
{
  [ASVSettings floatForKey:@"ASVSettingTurntablePitchLimit"];
  *a3 = -v6;
  *a4 = v6;
}

- (void)gesture:(id)a3 beganPanningAtScreenPoint:
{
  v4 = v3;
  [(ASVTurntableGestureRecognizer *)self setInitialPanLocation:a3];
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

- (void)gesture:(id)a3 pannedToScreenPoint:
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
  v11 = [(ASVTurntableGestureRecognizer *)self velocitySample];
  [(ASVTurntableGestureRecognizer *)self setPreviousVelocitySample:v11];

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
        v36 = [(ASVUnifiedGestureRecognizer *)self dataSource];
        [v36 assetPitch];
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
    v48 = [(ASVTurntableGestureRecognizer *)self rubberBand];
    *&v49 = v47;
    [v48 rubberBandOffsetForOffset:v49];
    v51 = v50;

    [(ASVTurntableGestureRecognizer *)self lastRubberBandedPitch];
    v37 = v51 - v52;
    *&v53 = v51;
    [(ASVTurntableGestureRecognizer *)self setLastRubberBandedPitch:v53];
  }

  if (v38 != 0.0 || v37 != 0.0)
  {
    v54 = [(ASVTurntableGestureRecognizer *)self turntableDelegate];
    *&v55 = v38;
    *&v56 = v37;
    [v54 turntableGestureRecognizer:self rotatedAssetByDeltaYaw:v55 deltaPitch:v56];
  }

  [(ASVTurntableGestureRecognizer *)self setLastPanLocation:v4];

  [(ASVTurntableGestureRecognizer *)self setLastPanTime:v10];
}

- (void)gestureEndedPanning:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [(ASVTurntableGestureRecognizer *)self velocitySample];
  v7 = [(ASVTurntableGestureRecognizer *)self previousVelocitySample];
  [v6 calcFinalVelocityFromPreviousSample:v7];
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

  v14 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  [v14 assetPitch];
  v16 = v15;

  v17 = [(ASVTurntableGestureRecognizer *)self rubberBand];
  LODWORD(v18) = v16;
  v19 = [v17 offsetIsWithinRubberBandedRange:v18];

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