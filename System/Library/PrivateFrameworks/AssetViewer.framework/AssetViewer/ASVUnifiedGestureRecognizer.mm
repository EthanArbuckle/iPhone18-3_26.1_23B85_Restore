@interface ASVUnifiedGestureRecognizer
- (ASVGestureDataSource)dataSource;
- (ASVUnifiedGestureRecognizer)initWithDelegate:(id)delegate feedbackGenerator:(id)generator;
- (ASVUnifiedGestureRecognizerDelegate)delegate;
- (BOOL)generatesTaps;
- (BOOL)isActive;
- (BOOL)singleFingerGesturesEnabled;
- (float)animatedScaleValue;
- (void)gesture:(id)gesture rotatedAssetByDeltaYaw:(float)yaw;
- (void)gesture:(id)gesture scaledAssetToScale:(float)scale;
- (void)gesture:(id)gesture singleTappedAtScreenPoint:(BOOL)point onAsset:;
- (void)gestureBeganRotation:(id)rotation;
- (void)gestureBeganScaling:(id)scaling;
- (void)gestureDidSnapAwayFromScale:(id)scale;
- (void)gestureDidSnapToScale:(id)scale;
- (void)gestureEndedRotation:(id)rotation;
- (void)gestureEndedScaling:(id)scaling;
- (void)gestureStartScaleAnimationFrom:(float)from to:(float)to;
- (void)processTouches:(id)touches phase:(int64_t)phase;
- (void)setEnabledGestureTypes:(unint64_t)types;
- (void)startGestureFromTouches:(id)touches;
- (void)update;
- (void)updateGestureFromTouches:(id)touches phase:(int64_t)phase;
@end

@implementation ASVUnifiedGestureRecognizer

- (ASVUnifiedGestureRecognizer)initWithDelegate:(id)delegate feedbackGenerator:(id)generator
{
  delegateCopy = delegate;
  generatorCopy = generator;
  v13.receiver = self;
  v13.super_class = ASVUnifiedGestureRecognizer;
  v8 = [(ASVUnifiedGestureRecognizer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, 0);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v9->_feedbackGenerator, generator);
    currentGesture = v9->_currentGesture;
    v9->_currentGesture = 0;

    v9->_lastTapWasOnAsset = 0;
    v9->_lastTapTime = 0.0;
    *v9->_lastTapLocation = 0;
    singleTapTimer = v9->_singleTapTimer;
    v9->_lastFireFeedbackTime = 0.0;
    v9->_singleTapTimer = 0;

    v9->_enabledGestureTypes = 7;
  }

  return v9;
}

- (BOOL)isActive
{
  currentGesture = [(ASVUnifiedGestureRecognizer *)self currentGesture];
  v3 = currentGesture != 0;

  return v3;
}

- (void)update
{
  currentGesture = [(ASVUnifiedGestureRecognizer *)self currentGesture];

  if (currentGesture)
  {
    currentGesture2 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
    [currentGesture2 updateGesture];
  }
}

- (void)setEnabledGestureTypes:(unint64_t)types
{
  currentGesture = [(ASVUnifiedGestureRecognizer *)self currentGesture];

  if (currentGesture)
  {
    currentTouches = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    [(ASVUnifiedGestureRecognizer *)self processTouches:currentTouches phase:3];
  }

  self->_enabledGestureTypes = types;
}

- (BOOL)generatesTaps
{
  if ([(ASVUnifiedGestureRecognizer *)self gestureTypeIsEnabled:1])
  {
    return 1;
  }

  return [(ASVUnifiedGestureRecognizer *)self gestureTypeIsEnabled:2];
}

- (BOOL)singleFingerGesturesEnabled
{
  if ([(ASVUnifiedGestureRecognizer *)self generatesTaps])
  {
    return 1;
  }

  return [(ASVUnifiedGestureRecognizer *)self generatesTransforms];
}

- (void)startGestureFromTouches:(id)touches
{
  touchesCopy = touches;
  v4 = [touchesCopy mutableCopy];
  [(ASVUnifiedGestureRecognizer *)self setCurrentTouches:v4];

  if ([touchesCopy count] == 1 && -[ASVUnifiedGestureRecognizer singleFingerGesturesEnabled](self, "singleFingerGesturesEnabled"))
  {
    currentTouches = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    anyObject = [currentTouches anyObject];

    dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
    v8 = [(ASVUnifiedGestureRecognizer *)self singleFingerGestureForTouch:anyObject dataSource:dataSource enabledGestureTypes:[(ASVUnifiedGestureRecognizer *)self enabledGestureTypes]];
    [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:v8];
  }

  else if ([touchesCopy count] == 2 && -[ASVUnifiedGestureRecognizer twoFingerGesturesEnabled](self, "twoFingerGesturesEnabled"))
  {
    currentTouches2 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    allObjects = [currentTouches2 allObjects];

    v11 = [allObjects objectAtIndexedSubscript:0];
    v12 = [allObjects objectAtIndexedSubscript:1];
    dataSource2 = [(ASVUnifiedGestureRecognizer *)self dataSource];
    v14 = [(ASVUnifiedGestureRecognizer *)self twoFingerGestureForFirstTouch:v11 secondTouch:v12 dataSource:dataSource2];
    [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:v14];
  }

  else
  {
    [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
  }

  currentGesture = [(ASVUnifiedGestureRecognizer *)self currentGesture];

  if (currentGesture)
  {
    feedbackGenerator = [(ASVUnifiedGestureRecognizer *)self feedbackGenerator];
    [feedbackGenerator prepare];
  }
}

- (void)updateGestureFromTouches:(id)touches phase:(int64_t)phase
{
  touchesCopy = touches;
  if ([touchesCopy count])
  {
    currentTouches = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    v7 = [currentTouches copy];

    if (phase > 1)
    {
      if (phase == 3)
      {
        [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
        [(ASVUnifiedGestureRecognizer *)self setCurrentTouches:0];
        goto LABEL_25;
      }

      if (phase != 2)
      {
LABEL_8:
        currentGesture = [(ASVUnifiedGestureRecognizer *)self currentGesture];

        if (!currentGesture)
        {
LABEL_25:

          goto LABEL_26;
        }

        currentGesture2 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          currentTouches2 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
          if ([currentTouches2 count] != 1)
          {

LABEL_19:
            currentTouches3 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
            v22 = [currentTouches3 count];

            if (v22 < 2)
            {
              currentGesture3 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
              [currentGesture3 finishGesture];
            }

            [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
            currentTouches4 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
            [(ASVUnifiedGestureRecognizer *)self startGestureFromTouches:currentTouches4];

            goto LABEL_25;
          }

          currentTouches5 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
          v14 = [currentTouches5 isEqualToSet:v7];

          if (!v14)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        currentGesture4 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if (v16)
        {
          currentTouches6 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
          if ([currentTouches6 count] == 2)
          {
            currentTouches7 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
            v19 = [currentTouches7 isEqualToSet:v7];

            if (v19)
            {
LABEL_16:
              currentGesture5 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
              [currentGesture5 updateGesture];

              goto LABEL_25;
            }
          }

          else
          {
          }

          currentGesture6 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
          [currentGesture6 finishGesture];
        }

        [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
        goto LABEL_25;
      }

      currentTouches8 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
      [currentTouches8 minusSet:touchesCopy];
    }

    else
    {
      currentTouches8 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
      [currentTouches8 unionSet:touchesCopy];
    }

    goto LABEL_8;
  }

LABEL_26:
}

- (void)processTouches:(id)touches phase:(int64_t)phase
{
  touchesCopy = touches;
  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  if (dataSource)
  {
    v7 = dataSource;
    isEnabled = [(ASVUnifiedGestureRecognizer *)self isEnabled];

    if (isEnabled)
    {
      if ((phase - 1) < 3)
      {
        selfCopy2 = self;
        v10 = touchesCopy;
        phaseCopy = phase;
LABEL_5:
        [(ASVUnifiedGestureRecognizer *)selfCopy2 updateGestureFromTouches:v10 phase:phaseCopy];
        goto LABEL_10;
      }

      if (!phase)
      {
        currentGesture = [(ASVUnifiedGestureRecognizer *)self currentGesture];

        selfCopy2 = self;
        if (currentGesture)
        {
          v10 = touchesCopy;
          phaseCopy = 0;
          goto LABEL_5;
        }

        [(ASVUnifiedGestureRecognizer *)self startGestureFromTouches:touchesCopy];
      }
    }
  }

LABEL_10:
}

- (void)gesture:(id)gesture singleTappedAtScreenPoint:(BOOL)point onAsset:
{
  pointCopy = point;
  v6 = v4;
  gestureCopy = gesture;
  if ([(ASVUnifiedGestureRecognizer *)self gestureTypeIsEnabled:2])
  {
    v9 = CACurrentMediaTime();
    [(ASVUnifiedGestureRecognizer *)self lastTapTime];
    v11 = v9 - v10;
    [ASVSettings floatForKey:@"ASVSettingTapDoubleTimeThreshold"];
    v13 = v12;
    [(ASVUnifiedGestureRecognizer *)self lastTapLocation];
    v15 = v14;
    [ASVSettings floatForKey:@"ASVSettingTapDoubleMovementThreshold"];
    v17 = v13;
    if (v11 < v17 && (v18 = vsub_f32(v6, v15), sqrtf(vaddv_f32(vmul_f32(v18, v18))) < v16) && [(ASVUnifiedGestureRecognizer *)self lastTapWasOnAsset]== pointCopy)
    {
      singleTapTimer = [(ASVUnifiedGestureRecognizer *)self singleTapTimer];

      if (singleTapTimer)
      {
        singleTapTimer2 = [(ASVUnifiedGestureRecognizer *)self singleTapTimer];
        [singleTapTimer2 invalidate];
      }

      delegate = [(ASVUnifiedGestureRecognizer *)self delegate];
      [delegate unifiedGestureRecognizer:self doubleTappedAtScreenPoint:pointCopy onAsset:*&v6];

      [(ASVUnifiedGestureRecognizer *)self setLastTapTime:0.0];
    }

    else
    {
      objc_initWeak(&location, self);
      v19 = MEMORY[0x277CBEBB8];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __73__ASVUnifiedGestureRecognizer_gesture_singleTappedAtScreenPoint_onAsset___block_invoke;
      v28 = &unk_278CCAA70;
      objc_copyWeak(v29, &location);
      v29[1] = v6;
      v30 = pointCopy;
      v20 = [v19 scheduledTimerWithTimeInterval:0 repeats:&v25 block:v17];
      [(ASVUnifiedGestureRecognizer *)self setSingleTapTimer:v20, v25, v26, v27, v28];

      [(ASVUnifiedGestureRecognizer *)self setLastTapTime:v9];
      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }

    [(ASVUnifiedGestureRecognizer *)self setLastTapLocation:*&v6];
    [(ASVUnifiedGestureRecognizer *)self setLastTapWasOnAsset:pointCopy];
  }

  else
  {
    delegate2 = [(ASVUnifiedGestureRecognizer *)self delegate];
    [delegate2 unifiedGestureRecognizer:self singleTappedAtScreenPoint:pointCopy onAsset:*&v6];
  }
}

void __73__ASVUnifiedGestureRecognizer_gesture_singleTappedAtScreenPoint_onAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v3 = [v5 delegate];
    v4 = objc_loadWeakRetained((a1 + 32));
    [v3 unifiedGestureRecognizer:v4 singleTappedAtScreenPoint:*(a1 + 48) onAsset:*(a1 + 40)];
  }
}

- (void)gestureBeganRotation:(id)rotation
{
  delegate = [(ASVUnifiedGestureRecognizer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ASVUnifiedGestureRecognizer *)self delegate];
    [delegate2 unifiedGestureRecognizerBeganRotation:self];
  }
}

- (void)gesture:(id)gesture rotatedAssetByDeltaYaw:(float)yaw
{
  delegate = [(ASVUnifiedGestureRecognizer *)self delegate];
  *&v6 = yaw;
  [delegate unifiedGestureRecognizer:self rotatedAssetByDeltaYaw:v6];
}

- (void)gestureEndedRotation:(id)rotation
{
  delegate = [(ASVUnifiedGestureRecognizer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ASVUnifiedGestureRecognizer *)self delegate];
    [delegate2 unifiedGestureRecognizerEndedRotation:self];
  }
}

- (void)gestureBeganScaling:(id)scaling
{
  delegate = [(ASVUnifiedGestureRecognizer *)self delegate];
  [delegate unifiedGestureRecognizerBeganScaling:self];
}

- (void)gesture:(id)gesture scaledAssetToScale:(float)scale
{
  delegate = [(ASVUnifiedGestureRecognizer *)self delegate];
  *&v6 = scale;
  [(ASVUnifiedGestureRecognizer *)self clampedScaleForScale:v6];
  [delegate unifiedGestureRecognizer:self scaledAssetToScale:?];
}

- (void)gestureEndedScaling:(id)scaling
{
  delegate = [(ASVUnifiedGestureRecognizer *)self delegate];
  [delegate unifiedGestureRecognizerEndedScaling:self];
}

- (void)gestureDidSnapToScale:(id)scale
{
  v4 = CACurrentMediaTime();
  [(ASVUnifiedGestureRecognizer *)self lastFireFeedbackTime];
  v6 = v4 - v5;
  [ASVSettings floatForKey:@"ASVSettingScaleSnapFeedbackTimeThreshold"];
  if (v6 >= v7)
  {
    feedbackGenerator = [(ASVUnifiedGestureRecognizer *)self feedbackGenerator];
    snapToScaleFeedbackGenerator = [feedbackGenerator snapToScaleFeedbackGenerator];
    [snapToScaleFeedbackGenerator fire];

    [(ASVUnifiedGestureRecognizer *)self setLastFireFeedbackTime:v4];
  }
}

- (void)gestureStartScaleAnimationFrom:(float)from to:(float)to
{
  self->_isScaleAnimating = 1;
  self->_animateScaleStart = from;
  self->_animateScaleEnd = to;
  self->_startScaleAnimationTime = CACurrentMediaTime();
}

- (float)animatedScaleValue
{
  v3 = CACurrentMediaTime() - self->_startScaleAnimationTime;
  if (v3 >= 0.1)
  {
    self->_isScaleAnimating = 0;
    return self->_animateScaleEnd;
  }

  else
  {
    v4 = v3 / 0.1 * (v3 / 0.1) * (v3 / 0.1 * -2.0 + 3.0);
    return v4 * self->_animateScaleEnd + self->_animateScaleStart * (1.0 - v4);
  }
}

- (void)gestureDidSnapAwayFromScale:(id)scale
{
  v4 = CACurrentMediaTime();
  [(ASVUnifiedGestureRecognizer *)self lastFireFeedbackTime];
  v6 = v4 - v5;
  [ASVSettings floatForKey:@"ASVSettingScaleSnapFeedbackTimeThreshold"];
  if (v6 >= v7)
  {
    feedbackGenerator = [(ASVUnifiedGestureRecognizer *)self feedbackGenerator];
    snapAwayFromScaleFeedbackGenerator = [feedbackGenerator snapAwayFromScaleFeedbackGenerator];
    [snapAwayFromScaleFeedbackGenerator fire];

    [(ASVUnifiedGestureRecognizer *)self setLastFireFeedbackTime:v4];
  }
}

- (ASVGestureDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (ASVUnifiedGestureRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end