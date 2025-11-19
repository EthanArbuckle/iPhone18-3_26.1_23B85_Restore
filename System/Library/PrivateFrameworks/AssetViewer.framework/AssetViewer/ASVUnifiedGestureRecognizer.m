@interface ASVUnifiedGestureRecognizer
- (ASVGestureDataSource)dataSource;
- (ASVUnifiedGestureRecognizer)initWithDelegate:(id)a3 feedbackGenerator:(id)a4;
- (ASVUnifiedGestureRecognizerDelegate)delegate;
- (BOOL)generatesTaps;
- (BOOL)isActive;
- (BOOL)singleFingerGesturesEnabled;
- (float)animatedScaleValue;
- (void)gesture:(id)a3 rotatedAssetByDeltaYaw:(float)a4;
- (void)gesture:(id)a3 scaledAssetToScale:(float)a4;
- (void)gesture:(id)a3 singleTappedAtScreenPoint:(BOOL)a4 onAsset:;
- (void)gestureBeganRotation:(id)a3;
- (void)gestureBeganScaling:(id)a3;
- (void)gestureDidSnapAwayFromScale:(id)a3;
- (void)gestureDidSnapToScale:(id)a3;
- (void)gestureEndedRotation:(id)a3;
- (void)gestureEndedScaling:(id)a3;
- (void)gestureStartScaleAnimationFrom:(float)a3 to:(float)a4;
- (void)processTouches:(id)a3 phase:(int64_t)a4;
- (void)setEnabledGestureTypes:(unint64_t)a3;
- (void)startGestureFromTouches:(id)a3;
- (void)update;
- (void)updateGestureFromTouches:(id)a3 phase:(int64_t)a4;
@end

@implementation ASVUnifiedGestureRecognizer

- (ASVUnifiedGestureRecognizer)initWithDelegate:(id)a3 feedbackGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ASVUnifiedGestureRecognizer;
  v8 = [(ASVUnifiedGestureRecognizer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, 0);
    objc_storeWeak(&v9->_delegate, v6);
    objc_storeStrong(&v9->_feedbackGenerator, a4);
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
  v2 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
  v3 = v2 != 0;

  return v3;
}

- (void)update
{
  v3 = [(ASVUnifiedGestureRecognizer *)self currentGesture];

  if (v3)
  {
    v4 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
    [v4 updateGesture];
  }
}

- (void)setEnabledGestureTypes:(unint64_t)a3
{
  v5 = [(ASVUnifiedGestureRecognizer *)self currentGesture];

  if (v5)
  {
    v6 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    [(ASVUnifiedGestureRecognizer *)self processTouches:v6 phase:3];
  }

  self->_enabledGestureTypes = a3;
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

- (void)startGestureFromTouches:(id)a3
{
  v17 = a3;
  v4 = [v17 mutableCopy];
  [(ASVUnifiedGestureRecognizer *)self setCurrentTouches:v4];

  if ([v17 count] == 1 && -[ASVUnifiedGestureRecognizer singleFingerGesturesEnabled](self, "singleFingerGesturesEnabled"))
  {
    v5 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    v6 = [v5 anyObject];

    v7 = [(ASVUnifiedGestureRecognizer *)self dataSource];
    v8 = [(ASVUnifiedGestureRecognizer *)self singleFingerGestureForTouch:v6 dataSource:v7 enabledGestureTypes:[(ASVUnifiedGestureRecognizer *)self enabledGestureTypes]];
    [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:v8];
  }

  else if ([v17 count] == 2 && -[ASVUnifiedGestureRecognizer twoFingerGesturesEnabled](self, "twoFingerGesturesEnabled"))
  {
    v9 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    v10 = [v9 allObjects];

    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v10 objectAtIndexedSubscript:1];
    v13 = [(ASVUnifiedGestureRecognizer *)self dataSource];
    v14 = [(ASVUnifiedGestureRecognizer *)self twoFingerGestureForFirstTouch:v11 secondTouch:v12 dataSource:v13];
    [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:v14];
  }

  else
  {
    [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
  }

  v15 = [(ASVUnifiedGestureRecognizer *)self currentGesture];

  if (v15)
  {
    v16 = [(ASVUnifiedGestureRecognizer *)self feedbackGenerator];
    [v16 prepare];
  }
}

- (void)updateGestureFromTouches:(id)a3 phase:(int64_t)a4
{
  v26 = a3;
  if ([v26 count])
  {
    v6 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
    v7 = [v6 copy];

    if (a4 > 1)
    {
      if (a4 == 3)
      {
        [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
        [(ASVUnifiedGestureRecognizer *)self setCurrentTouches:0];
        goto LABEL_25;
      }

      if (a4 != 2)
      {
LABEL_8:
        v9 = [(ASVUnifiedGestureRecognizer *)self currentGesture];

        if (!v9)
        {
LABEL_25:

          goto LABEL_26;
        }

        v10 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
          if ([v12 count] != 1)
          {

LABEL_19:
            v21 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
            v22 = [v21 count];

            if (v22 < 2)
            {
              v23 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
              [v23 finishGesture];
            }

            [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
            v24 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
            [(ASVUnifiedGestureRecognizer *)self startGestureFromTouches:v24];

            goto LABEL_25;
          }

          v13 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
          v14 = [v13 isEqualToSet:v7];

          if (!v14)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        v15 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if (v16)
        {
          v17 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
          if ([v17 count] == 2)
          {
            v18 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
            v19 = [v18 isEqualToSet:v7];

            if (v19)
            {
LABEL_16:
              v20 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
              [v20 updateGesture];

              goto LABEL_25;
            }
          }

          else
          {
          }

          v25 = [(ASVUnifiedGestureRecognizer *)self currentGesture];
          [v25 finishGesture];
        }

        [(ASVUnifiedGestureRecognizer *)self setCurrentGesture:0];
        goto LABEL_25;
      }

      v8 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
      [v8 minusSet:v26];
    }

    else
    {
      v8 = [(ASVUnifiedGestureRecognizer *)self currentTouches];
      [v8 unionSet:v26];
    }

    goto LABEL_8;
  }

LABEL_26:
}

- (void)processTouches:(id)a3 phase:(int64_t)a4
{
  v13 = a3;
  v6 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  if (v6)
  {
    v7 = v6;
    v8 = [(ASVUnifiedGestureRecognizer *)self isEnabled];

    if (v8)
    {
      if ((a4 - 1) < 3)
      {
        v9 = self;
        v10 = v13;
        v11 = a4;
LABEL_5:
        [(ASVUnifiedGestureRecognizer *)v9 updateGestureFromTouches:v10 phase:v11];
        goto LABEL_10;
      }

      if (!a4)
      {
        v12 = [(ASVUnifiedGestureRecognizer *)self currentGesture];

        v9 = self;
        if (v12)
        {
          v10 = v13;
          v11 = 0;
          goto LABEL_5;
        }

        [(ASVUnifiedGestureRecognizer *)self startGestureFromTouches:v13];
      }
    }
  }

LABEL_10:
}

- (void)gesture:(id)a3 singleTappedAtScreenPoint:(BOOL)a4 onAsset:
{
  v5 = a4;
  v6 = v4;
  v8 = a3;
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
    if (v11 < v17 && (v18 = vsub_f32(v6, v15), sqrtf(vaddv_f32(vmul_f32(v18, v18))) < v16) && [(ASVUnifiedGestureRecognizer *)self lastTapWasOnAsset]== v5)
    {
      v22 = [(ASVUnifiedGestureRecognizer *)self singleTapTimer];

      if (v22)
      {
        v23 = [(ASVUnifiedGestureRecognizer *)self singleTapTimer];
        [v23 invalidate];
      }

      v24 = [(ASVUnifiedGestureRecognizer *)self delegate];
      [v24 unifiedGestureRecognizer:self doubleTappedAtScreenPoint:v5 onAsset:*&v6];

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
      v30 = v5;
      v20 = [v19 scheduledTimerWithTimeInterval:0 repeats:&v25 block:v17];
      [(ASVUnifiedGestureRecognizer *)self setSingleTapTimer:v20, v25, v26, v27, v28];

      [(ASVUnifiedGestureRecognizer *)self setLastTapTime:v9];
      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }

    [(ASVUnifiedGestureRecognizer *)self setLastTapLocation:*&v6];
    [(ASVUnifiedGestureRecognizer *)self setLastTapWasOnAsset:v5];
  }

  else
  {
    v21 = [(ASVUnifiedGestureRecognizer *)self delegate];
    [v21 unifiedGestureRecognizer:self singleTappedAtScreenPoint:v5 onAsset:*&v6];
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

- (void)gestureBeganRotation:(id)a3
{
  v4 = [(ASVUnifiedGestureRecognizer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASVUnifiedGestureRecognizer *)self delegate];
    [v6 unifiedGestureRecognizerBeganRotation:self];
  }
}

- (void)gesture:(id)a3 rotatedAssetByDeltaYaw:(float)a4
{
  v7 = [(ASVUnifiedGestureRecognizer *)self delegate];
  *&v6 = a4;
  [v7 unifiedGestureRecognizer:self rotatedAssetByDeltaYaw:v6];
}

- (void)gestureEndedRotation:(id)a3
{
  v4 = [(ASVUnifiedGestureRecognizer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASVUnifiedGestureRecognizer *)self delegate];
    [v6 unifiedGestureRecognizerEndedRotation:self];
  }
}

- (void)gestureBeganScaling:(id)a3
{
  v4 = [(ASVUnifiedGestureRecognizer *)self delegate];
  [v4 unifiedGestureRecognizerBeganScaling:self];
}

- (void)gesture:(id)a3 scaledAssetToScale:(float)a4
{
  v7 = [(ASVUnifiedGestureRecognizer *)self delegate];
  *&v6 = a4;
  [(ASVUnifiedGestureRecognizer *)self clampedScaleForScale:v6];
  [v7 unifiedGestureRecognizer:self scaledAssetToScale:?];
}

- (void)gestureEndedScaling:(id)a3
{
  v4 = [(ASVUnifiedGestureRecognizer *)self delegate];
  [v4 unifiedGestureRecognizerEndedScaling:self];
}

- (void)gestureDidSnapToScale:(id)a3
{
  v4 = CACurrentMediaTime();
  [(ASVUnifiedGestureRecognizer *)self lastFireFeedbackTime];
  v6 = v4 - v5;
  [ASVSettings floatForKey:@"ASVSettingScaleSnapFeedbackTimeThreshold"];
  if (v6 >= v7)
  {
    v8 = [(ASVUnifiedGestureRecognizer *)self feedbackGenerator];
    v9 = [v8 snapToScaleFeedbackGenerator];
    [v9 fire];

    [(ASVUnifiedGestureRecognizer *)self setLastFireFeedbackTime:v4];
  }
}

- (void)gestureStartScaleAnimationFrom:(float)a3 to:(float)a4
{
  self->_isScaleAnimating = 1;
  self->_animateScaleStart = a3;
  self->_animateScaleEnd = a4;
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

- (void)gestureDidSnapAwayFromScale:(id)a3
{
  v4 = CACurrentMediaTime();
  [(ASVUnifiedGestureRecognizer *)self lastFireFeedbackTime];
  v6 = v4 - v5;
  [ASVSettings floatForKey:@"ASVSettingScaleSnapFeedbackTimeThreshold"];
  if (v6 >= v7)
  {
    v8 = [(ASVUnifiedGestureRecognizer *)self feedbackGenerator];
    v9 = [v8 snapAwayFromScaleFeedbackGenerator];
    [v9 fire];

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