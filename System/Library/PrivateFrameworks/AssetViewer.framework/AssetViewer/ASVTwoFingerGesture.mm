@interface ASVTwoFingerGesture
- (ASVTwoFingerGesture)initWithFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source delegate:(id)delegate;
- (ASVTwoFingerGestureDelegate)delegate;
- (void)finishGesture;
- (void)updateGesture;
- (void)updateRotationWithSpan:(ASVTwoFingerGesture *)self;
- (void)updateRubberBand;
- (void)updateScalingWithSpan:(ASVTwoFingerGesture *)self;
@end

@implementation ASVTwoFingerGesture

- (ASVTwoFingerGesture)initWithFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source delegate:(id)delegate
{
  touchCopy = touch;
  secondTouchCopy = secondTouch;
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = ASVTwoFingerGesture;
  v14 = [(ASVGesture *)&v30 initWithDataSource:source];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v15->_panThresholdPassed = 0;
    v15->_rotationThresholdPassed = 0;
    v15->_scaleThresholdPassed = 0;
    v15->_levitationThresholdPassed = 0;
    v15->_initialDistanceBetweenFingers = 0.0;
    v15->_baseDistanceBetweenFingers = 0.0;
    v16 = [MEMORY[0x277CBEB98] set];
    snapScalesSet = v15->_snapScalesSet;
    v15->_snapScalesSet = v16;

    objc_storeStrong(&v15->_firstTouch, touch);
    objc_storeStrong(&v15->_secondTouch, secondTouch);
    [(ASVTouch *)v15->_firstTouch location];
    *v15->_initialFirstTouchLocation = v18;
    [(ASVTouch *)v15->_secondTouch location];
    *v15->_initialSecondTouchLocation = v19;
    *v15->_initialMidPoint = vmul_f32(vadd_f32(v19, *v15->_initialFirstTouchLocation), 0x3F0000003F000000);
    dataSource = [(ASVGesture *)v15 dataSource];
    -[ASVGesture setFirstTouchWasOnAsset:](v15, "setFirstTouchWasOnAsset:", [dataSource screenPointIsOnAsset:*v15->_initialFirstTouchLocation] | objc_msgSend(dataSource, "screenPointIsOnAsset:", *v15->_initialMidPoint) | objc_msgSend(dataSource, "screenPointIsOnAsset:", *v15->_initialSecondTouchLocation));
    [dataSource assetScale];
    v15->_assetBaseScale = v21;
    v15->_lastAssetScale = v21;
    v22 = vsub_f32(*v15->_initialFirstTouchLocation, *v15->_initialSecondTouchLocation);
    v15->_initialDistanceBetweenFingers = sqrtf(vaddv_f32(vmul_f32(v22, v22)));
    v23 = vmul_f32(v22, 0x3F0000003F000000);
    v24 = atan2f(v23.f32[0], v23.f32[1]);
    v15->_initialFingerAngle = v24;
    v15->_lastFingerAngle = v24;
    [delegateCopy minimumObjectScale];
    v15->_minScale = v25;
    [delegateCopy maximumObjectScale];
    v15->_maxScale = v26;
    [ASVSettings floatForKey:@"ASVSettingScaleOvershoot"];
    v15->_scaleOvershoot = v27;
    [ASVSettings floatForKey:@"ASVSettingScaleRubberBandFactor"];
    v15->_scaleFactor = v28;
    [(ASVTwoFingerGesture *)v15 updateRubberBand];
  }

  return v15;
}

- (void)updateRubberBand
{
  v3 = [ASVRubberBand alloc];
  [(ASVTwoFingerGesture *)self scaleFactor];
  v5 = v4;
  [(ASVTwoFingerGesture *)self minScale];
  v7 = v6;
  [(ASVTwoFingerGesture *)self maxScale];
  v9 = v8;
  [(ASVTwoFingerGesture *)self scaleOvershoot];
  LODWORD(v11) = v10;
  LODWORD(v12) = v5;
  LODWORD(v13) = v7;
  LODWORD(v14) = v9;
  v15 = [(ASVRubberBand *)v3 initWithRubberBandFactor:v12 minOffset:v13 maxOffset:v14 overshoot:v11];
  rubberBand = self->_rubberBand;
  self->_rubberBand = v15;
}

- (void)updateGesture
{
  firstTouch = [(ASVTwoFingerGesture *)self firstTouch];
  if ([firstTouch phase] == 3)
  {
LABEL_6:

    return;
  }

  firstTouch2 = [(ASVTwoFingerGesture *)self firstTouch];
  if ([firstTouch2 phase] == 4)
  {
LABEL_5:

    goto LABEL_6;
  }

  secondTouch = [(ASVTwoFingerGesture *)self secondTouch];
  if ([secondTouch phase] == 3)
  {

    goto LABEL_5;
  }

  secondTouch2 = [(ASVTwoFingerGesture *)self secondTouch];
  phase = [secondTouch2 phase];

  if (phase != 4)
  {
    dataSource = [(ASVGesture *)self dataSource];
    [dataSource assetScreenPosition];
    [(ASVGesture *)self setLatestAssetLocationOnScreen:?];

    firstTouch3 = [(ASVTwoFingerGesture *)self firstTouch];
    [firstTouch3 location];
    v10 = v9;

    secondTouch3 = [(ASVTwoFingerGesture *)self secondTouch];
    [secondTouch3 location];
    v13 = v12;

    [(ASVTwoFingerGesture *)self updatePanWithFirstTouchLocation:v10 secondTouchLocation:v13 midPoint:COERCE_DOUBLE(vmul_f32(vadd_f32(*&v10, *&v13), 0x3F0000003F000000))];
    v14 = COERCE_DOUBLE(vsub_f32(*&v10, *&v13));
    [(ASVTwoFingerGesture *)self updateRotationWithSpan:v14];

    [(ASVTwoFingerGesture *)self updateScalingWithSpan:v14];
  }
}

- (void)updateRotationWithSpan:(ASVTwoFingerGesture *)self
{
  v4 = vmul_f32(v2, 0x3F0000003F000000);
  v5 = atan2f(v4.f32[0], v4.f32[1]);
  if (![(ASVTwoFingerGesture *)self rotationThresholdPassed]&& ![(ASVTwoFingerGesture *)self levitationThresholdPassed])
  {
    [(ASVTwoFingerGesture *)self initialFingerAngle];
    normalizeRotation(v6 - v5);
    v8 = v7;
    [ASVSettings floatForKey:@"ASVSettingRotationThreshold"];
    v10 = v9;
    if ([(ASVTwoFingerGesture *)self panThresholdPassed]|| [(ASVTwoFingerGesture *)self scaleThresholdPassed])
    {
      [ASVSettings floatForKey:@"ASVSettingRotationThresholdHarder"];
      v10 = v11;
    }

    v12 = -v8;
    if (v8 >= 0.0)
    {
      v12 = v8;
    }

    if (v12 >= v10)
    {
      [(ASVTwoFingerGesture *)self setRotationThresholdPassed:1];
      [(ASVTwoFingerGesture *)self initialFingerAngle];
      v14 = -v10;
      if (v8 <= 0.0)
      {
        v14 = v10;
      }

      normalizeRotation(v13 + v14);
      [(ASVTwoFingerGesture *)self setLastFingerAngle:?];
      delegate = [(ASVTwoFingerGesture *)self delegate];
      [delegate gestureBeganRotation:self];
    }
  }

  if ([(ASVTwoFingerGesture *)self rotationThresholdPassed])
  {
    [(ASVTwoFingerGesture *)self lastFingerAngle];
    normalizeRotation(v5 - v16);
    v18 = v17;
    delegate2 = [(ASVTwoFingerGesture *)self delegate];
    LODWORD(v20) = v18;
    [delegate2 gesture:self rotatedAssetByDeltaYaw:v20];

    *&v21 = v5;

    [(ASVTwoFingerGesture *)self setLastFingerAngle:v21];
  }
}

- (void)updateScalingWithSpan:(ASVTwoFingerGesture *)self
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = sqrtf(vaddv_f32(vmul_f32(v2, v2)));
  if (![(ASVTwoFingerGesture *)self scaleThresholdPassed]&& ![(ASVTwoFingerGesture *)self levitationThresholdPassed])
  {
    [(ASVTwoFingerGesture *)self initialDistanceBetweenFingers];
    v6 = v4 - v5;
    if (v6 >= 0.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = -v6;
    }

    [ASVSettings floatForKey:@"ASVSettingScaleThreshold"];
    v9 = v8;
    if ([(ASVTwoFingerGesture *)self panThresholdPassed]|| [(ASVTwoFingerGesture *)self rotationThresholdPassed])
    {
      [ASVSettings floatForKey:@"ASVSettingScaleThresholdHarder"];
      v9 = v10;
    }

    if (v7 >= v9)
    {
      [(ASVTwoFingerGesture *)self setScaleThresholdPassed:1];
      *&v11 = v4;
      [(ASVTwoFingerGesture *)self setBaseDistanceBetweenFingers:v11];
      delegate = [(ASVTwoFingerGesture *)self delegate];
      [delegate gestureBeganScaling:self];
    }
  }

  if ([(ASVTwoFingerGesture *)self scaleThresholdPassed])
  {
    [(ASVTwoFingerGesture *)self baseDistanceBetweenFingers];
    if (v13 != 0.0)
    {
      [(ASVTwoFingerGesture *)self baseDistanceBetweenFingers];
      v15 = v4 / v14;
      [(ASVTwoFingerGesture *)self assetBaseScale];
      v17 = v16 * v15;
      snapScalesSet = [(ASVTwoFingerGesture *)self snapScalesSet];
      allObjects = [snapScalesSet allObjects];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = allObjects;
      v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        v24 = 0;
        v25 = *v43;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v42 + 1) + 8 * i) floatValue];
            v28 = v27;
            *&v29 = v17;
            *&v30 = v28;
            v31 = [(ASVTwoFingerGesture *)self scaleIsWithinSnapRange:v29 snapTarget:v30];
            [(ASVTwoFingerGesture *)self lastAssetScale];
            v32 = [ASVTwoFingerGesture scaleIsWithinSnapRange:"scaleIsWithinSnapRange:snapTarget:" snapTarget:?];
            if (v31)
            {
              v24 |= !v32;
              v17 = v28;
            }

            else
            {
              v23 |= v32;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v22);
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      rubberBand = [(ASVTwoFingerGesture *)self rubberBand];
      *&v34 = v17;
      [rubberBand rubberBandOffsetForOffset:v34];
      v36 = v35;

      delegate2 = [(ASVTwoFingerGesture *)self delegate];
      [delegate2 gestureStopScaleAnimation];

      delegate3 = [(ASVTwoFingerGesture *)self delegate];
      LODWORD(v39) = v36;
      [delegate3 gesture:self scaledAssetToScale:v39];

      LODWORD(v40) = v36;
      [(ASVTwoFingerGesture *)self setLastAssetScale:v40];
      if (v24)
      {
        delegate4 = [(ASVTwoFingerGesture *)self delegate];
        [delegate4 gestureDidSnapToScale:self];
      }

      else
      {
        if ((v23 & 1) == 0)
        {
LABEL_30:

          return;
        }

        delegate4 = [(ASVTwoFingerGesture *)self delegate];
        [delegate4 gestureDidSnapAwayFromScale:self];
      }

      goto LABEL_30;
    }
  }
}

- (void)finishGesture
{
  delegate = [(ASVTwoFingerGesture *)self delegate];
  [delegate gestureStopScaleAnimation];

  if ([(ASVTwoFingerGesture *)self scaleThresholdPassed])
  {
    delegate2 = [(ASVTwoFingerGesture *)self delegate];
    [delegate2 gestureEndedScaling:self];

    lastAssetScale = self->_lastAssetScale;
    p_maxScale = &self->_maxScale;
    if (lastAssetScale > self->_maxScale || (p_maxScale = &self->_minScale, lastAssetScale < self->_minScale))
    {
      delegate3 = [(ASVTwoFingerGesture *)self delegate];
      *&v8 = self->_lastAssetScale;
      *&v9 = *p_maxScale;
      [delegate3 gestureStartScaleAnimationFrom:v8 to:v9];
    }
  }

  if ([(ASVTwoFingerGesture *)self rotationThresholdPassed])
  {
    delegate4 = [(ASVTwoFingerGesture *)self delegate];
    [delegate4 gestureEndedRotation:self];
  }
}

- (ASVTwoFingerGestureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end