@interface ASVWorldGestureRecognizer
- (ASVWorldGestureRecognizer)initWithWorldDelegate:(id)a3 feedbackGenerator:(id)a4;
- (ASVWorldGestureRecognizerDelegate)worldDelegate;
- (BOOL)isActive;
- (BOOL)isDecelerating;
- (float)maximumObjectScale;
- (float)minimumObjectScale;
- (id)singleFingerGestureForTouch:(id)a3 dataSource:(id)a4 enabledGestureTypes:(unint64_t)a5;
- (id)twoFingerGestureForFirstTouch:(id)a3 secondTouch:(id)a4 dataSource:(id)a5;
- (void)gesture:(id)a3 levitatedAssetToScreenPoint:;
- (void)gesture:(id)a3 translatedAssetToScreenPoint:;
- (void)gestureBeganLevitation:(id)a3;
- (void)gestureBeganTranslation:(id)a3;
- (void)gestureEndedLevitation:(id)a3;
- (void)gestureEndedTranslation:(id)a3;
- (void)setEnabledGestureTypes:(unint64_t)a3;
- (void)startTranslationDecelerationWithInitialVelocity:(ASVWorldGestureRecognizer *)self;
- (void)update;
- (void)updateDecelerationTranslation;
@end

@implementation ASVWorldGestureRecognizer

- (ASVWorldGestureRecognizer)initWithWorldDelegate:(id)a3 feedbackGenerator:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = ASVWorldGestureRecognizer;
  v7 = [(ASVUnifiedGestureRecognizer *)&v15 initWithDelegate:v6 feedbackGenerator:a4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_worldDelegate, v6);
    v9 = MEMORY[0x277CBEB98];
    LODWORD(v10) = 1.0;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v12 = [v9 setWithObjects:{v11, 0}];
    snapScalesSet = v8->_snapScalesSet;
    v8->_snapScalesSet = v12;
  }

  return v8;
}

- (void)setEnabledGestureTypes:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = ASVWorldGestureRecognizer;
  [(ASVUnifiedGestureRecognizer *)&v4 setEnabledGestureTypes:a3];
  [(ASVWorldGestureRecognizer *)self cancelDeceleration];
}

- (id)singleFingerGestureForTouch:(id)a3 dataSource:(id)a4 enabledGestureTypes:(unint64_t)a5
{
  v7 = a3;
  v8 = [ASVWorldSingleFingerGesture alloc];
  v9 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v10 = [(ASVWorldSingleFingerGesture *)v8 initWithTouch:v7 dataSource:v9 worldDelegate:self enabledGestureTypes:a5];

  return v10;
}

- (id)twoFingerGestureForFirstTouch:(id)a3 secondTouch:(id)a4 dataSource:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ASVWorldTwoFingerGesture alloc];
  v10 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v11 = [(ASVWorldTwoFingerGesture *)v9 initWithFirstTouch:v8 secondTouch:v7 dataSource:v10 worldDelegate:self];

  v12 = [(ASVWorldGestureRecognizer *)self snapScalesSet];
  [(ASVTwoFingerGesture *)v11 setSnapScalesSet:v12];

  return v11;
}

- (BOOL)isActive
{
  v4.receiver = self;
  v4.super_class = ASVWorldGestureRecognizer;
  return [(ASVUnifiedGestureRecognizer *)&v4 isActive]|| [(ASVWorldGestureRecognizer *)self isDecelerating];
}

- (void)update
{
  v3.receiver = self;
  v3.super_class = ASVWorldGestureRecognizer;
  [(ASVUnifiedGestureRecognizer *)&v3 update];
  if ([(ASVWorldGestureRecognizer *)self isDecelerating])
  {
    [(ASVWorldGestureRecognizer *)self updateDecelerationTranslation];
  }
}

- (float)minimumObjectScale
{
  if ([(ASVUnifiedGestureRecognizer *)self allowObjectScaling])
  {

    [ASVSettings floatForKey:@"ASVSettingMinimumAssetWorldScale"];
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

    [ASVSettings floatForKey:@"ASVSettingMaximumAssetWorldScale"];
  }

  else
  {

    [(ASVUnifiedGestureRecognizer *)self currentObjectScale];
  }

  return result;
}

- (void)gestureBeganTranslation:(id)a3
{
  [(ASVWorldGestureRecognizer *)self cancelDeceleration];
  [(ASVWorldGestureRecognizer *)self setTranslationVelocitySample:0];
  [(ASVWorldGestureRecognizer *)self setTranslationLastVelocitySample:0];
  v4 = [(ASVWorldGestureRecognizer *)self worldDelegate];
  [v4 worldGestureRecognizerBeganTranslation:self];
}

- (void)gesture:(id)a3 translatedAssetToScreenPoint:
{
  v4 = v3;
  v6 = [(ASVWorldGestureRecognizer *)self worldDelegate];
  [v6 worldGestureRecognizer:self translatedAssetToScreenPoint:v4];

  v7 = [(ASVUnifiedGestureRecognizer *)self dataSource];
  if (v7)
  {
    v17 = v7;
    [v7 assetWorldPosition];
    v18 = v8;
    v9 = CACurrentMediaTime();
    v10 = [(ASVWorldGestureRecognizer *)self translationVelocitySample];

    if (!v10)
    {
      [(ASVWorldGestureRecognizer *)self setLastTranslationLocation:v18];
      [(ASVWorldGestureRecognizer *)self setLastTranslationTime:v9];
    }

    v11 = [(ASVWorldGestureRecognizer *)self translationVelocitySample];
    [(ASVWorldGestureRecognizer *)self setTranslationLastVelocitySample:v11];

    v12 = [ASVVelocitySample3D alloc];
    [(ASVWorldGestureRecognizer *)self lastTranslationLocation];
    v16 = v13;
    [(ASVWorldGestureRecognizer *)self lastTranslationTime];
    v15 = [(ASVVelocitySample3D *)v12 initWithStart:v16 end:v18 deltaTime:v9 - v14];
    [(ASVWorldGestureRecognizer *)self setTranslationVelocitySample:v15];

    [(ASVWorldGestureRecognizer *)self setLastTranslationLocation:v18];
    [(ASVWorldGestureRecognizer *)self setLastTranslationTime:v9];
    v7 = v17;
  }
}

- (void)gestureEndedTranslation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ASVWorldGestureRecognizer *)self translationVelocitySample];
    v7 = [(ASVWorldGestureRecognizer *)self translationLastVelocitySample];
    [v6 calcFinalVelocityFromPreviousSample:v7];
    v9 = v8;

    [(ASVWorldGestureRecognizer *)self startTranslationDecelerationWithInitialVelocity:v9];
  }

  v10 = [(ASVWorldGestureRecognizer *)self worldDelegate];
  [v10 worldGestureRecognizerEndedTranslation:self];
}

- (void)gestureBeganLevitation:(id)a3
{
  v4 = [(ASVWorldGestureRecognizer *)self worldDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 worldGestureRecognizerBeganLevitation:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)gesture:(id)a3 levitatedAssetToScreenPoint:
{
  v4 = v3;
  v6 = [(ASVWorldGestureRecognizer *)self worldDelegate];
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 worldGestureRecognizer:self levitatedAssetToScreenPoint:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)gestureEndedLevitation:(id)a3
{
  v4 = [(ASVWorldGestureRecognizer *)self worldDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 worldGestureRecognizerEndedLevitation:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)startTranslationDecelerationWithInitialVelocity:(ASVWorldGestureRecognizer *)self
{
  v14 = v2;
  v4 = vmulq_f32(v2, v2);
  v4.f32[0] = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  v15 = *v4.i64;
  v5 = fabsf(v4.f32[0]);
  [ASVSettings floatForKey:@"ASVSettingMinimumVelocityToBeginTranslationDeceleration"];
  if (v5 > v6)
  {
    [(ASVWorldGestureRecognizer *)self setNormalizedVelocity:*vdivq_f32(v14, vdupq_lane_s32(*&v15, 0)).i64];
    v7 = [ASVDampingDeceleration alloc];
    [ASVSettings floatForKey:@"ASVSettingMinimumDeltaToEndTranslationDeceleration"];
    v9 = v8;
    [ASVSettings floatForKey:@"ASVSettingWorldTranslationDecelerationRate"];
    LODWORD(v11) = v10;
    LODWORD(v12) = v9;
    v13 = [(ASVDampingDeceleration *)v7 initWithVelocity:v15 minEndDelta:v12 decelerationRate:v11];
    [(ASVWorldGestureRecognizer *)self setTranslationDeceleration:v13];

    v16 = [(ASVWorldGestureRecognizer *)self worldDelegate];
    [v16 worldGestureRecognizerBeganTranslationDeceleration:self];
  }
}

- (BOOL)isDecelerating
{
  v3 = [(ASVWorldGestureRecognizer *)self translationDeceleration];
  if (v3)
  {
    v4 = [(ASVWorldGestureRecognizer *)self translationDeceleration];
    v5 = [v4 isDecelerating];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateDecelerationTranslation
{
  v3 = [(ASVWorldGestureRecognizer *)self translationDeceleration];

  if (v3)
  {
    v8 = [(ASVWorldGestureRecognizer *)self worldDelegate];
    v4 = [(ASVWorldGestureRecognizer *)self translationDeceleration];
    [v4 decelerationDelta];
    v7 = v5;

    if (*&v7 <= 0.0)
    {
      [(ASVWorldGestureRecognizer *)self setTranslationDeceleration:0, v7];
      [v8 worldGestureRecognizerEndedTranslationDeceleration:self];
    }

    else
    {
      [(ASVWorldGestureRecognizer *)self normalizedVelocity];
      [v8 worldGestureRecognizer:self decelerationTranslationDelta:{*vmulq_n_f32(v6, *&v7).i64}];
    }
  }
}

- (ASVWorldGestureRecognizerDelegate)worldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_worldDelegate);

  return WeakRetained;
}

@end