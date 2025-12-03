@interface ASVWorldGestureRecognizer
- (ASVWorldGestureRecognizer)initWithWorldDelegate:(id)delegate feedbackGenerator:(id)generator;
- (ASVWorldGestureRecognizerDelegate)worldDelegate;
- (BOOL)isActive;
- (BOOL)isDecelerating;
- (float)maximumObjectScale;
- (float)minimumObjectScale;
- (id)singleFingerGestureForTouch:(id)touch dataSource:(id)source enabledGestureTypes:(unint64_t)types;
- (id)twoFingerGestureForFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source;
- (void)gesture:(id)gesture levitatedAssetToScreenPoint:;
- (void)gesture:(id)gesture translatedAssetToScreenPoint:;
- (void)gestureBeganLevitation:(id)levitation;
- (void)gestureBeganTranslation:(id)translation;
- (void)gestureEndedLevitation:(id)levitation;
- (void)gestureEndedTranslation:(id)translation;
- (void)setEnabledGestureTypes:(unint64_t)types;
- (void)startTranslationDecelerationWithInitialVelocity:(ASVWorldGestureRecognizer *)self;
- (void)update;
- (void)updateDecelerationTranslation;
@end

@implementation ASVWorldGestureRecognizer

- (ASVWorldGestureRecognizer)initWithWorldDelegate:(id)delegate feedbackGenerator:(id)generator
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = ASVWorldGestureRecognizer;
  v7 = [(ASVUnifiedGestureRecognizer *)&v15 initWithDelegate:delegateCopy feedbackGenerator:generator];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_worldDelegate, delegateCopy);
    v9 = MEMORY[0x277CBEB98];
    LODWORD(v10) = 1.0;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v12 = [v9 setWithObjects:{v11, 0}];
    snapScalesSet = v8->_snapScalesSet;
    v8->_snapScalesSet = v12;
  }

  return v8;
}

- (void)setEnabledGestureTypes:(unint64_t)types
{
  v4.receiver = self;
  v4.super_class = ASVWorldGestureRecognizer;
  [(ASVUnifiedGestureRecognizer *)&v4 setEnabledGestureTypes:types];
  [(ASVWorldGestureRecognizer *)self cancelDeceleration];
}

- (id)singleFingerGestureForTouch:(id)touch dataSource:(id)source enabledGestureTypes:(unint64_t)types
{
  touchCopy = touch;
  v8 = [ASVWorldSingleFingerGesture alloc];
  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v10 = [(ASVWorldSingleFingerGesture *)v8 initWithTouch:touchCopy dataSource:dataSource worldDelegate:self enabledGestureTypes:types];

  return v10;
}

- (id)twoFingerGestureForFirstTouch:(id)touch secondTouch:(id)secondTouch dataSource:(id)source
{
  secondTouchCopy = secondTouch;
  touchCopy = touch;
  v9 = [ASVWorldTwoFingerGesture alloc];
  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  v11 = [(ASVWorldTwoFingerGesture *)v9 initWithFirstTouch:touchCopy secondTouch:secondTouchCopy dataSource:dataSource worldDelegate:self];

  snapScalesSet = [(ASVWorldGestureRecognizer *)self snapScalesSet];
  [(ASVTwoFingerGesture *)v11 setSnapScalesSet:snapScalesSet];

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

- (void)gestureBeganTranslation:(id)translation
{
  [(ASVWorldGestureRecognizer *)self cancelDeceleration];
  [(ASVWorldGestureRecognizer *)self setTranslationVelocitySample:0];
  [(ASVWorldGestureRecognizer *)self setTranslationLastVelocitySample:0];
  worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
  [worldDelegate worldGestureRecognizerBeganTranslation:self];
}

- (void)gesture:(id)gesture translatedAssetToScreenPoint:
{
  v4 = v3;
  worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
  [worldDelegate worldGestureRecognizer:self translatedAssetToScreenPoint:v4];

  dataSource = [(ASVUnifiedGestureRecognizer *)self dataSource];
  if (dataSource)
  {
    v17 = dataSource;
    [dataSource assetWorldPosition];
    v18 = v8;
    v9 = CACurrentMediaTime();
    translationVelocitySample = [(ASVWorldGestureRecognizer *)self translationVelocitySample];

    if (!translationVelocitySample)
    {
      [(ASVWorldGestureRecognizer *)self setLastTranslationLocation:v18];
      [(ASVWorldGestureRecognizer *)self setLastTranslationTime:v9];
    }

    translationVelocitySample2 = [(ASVWorldGestureRecognizer *)self translationVelocitySample];
    [(ASVWorldGestureRecognizer *)self setTranslationLastVelocitySample:translationVelocitySample2];

    v12 = [ASVVelocitySample3D alloc];
    [(ASVWorldGestureRecognizer *)self lastTranslationLocation];
    v16 = v13;
    [(ASVWorldGestureRecognizer *)self lastTranslationTime];
    v15 = [(ASVVelocitySample3D *)v12 initWithStart:v16 end:v18 deltaTime:v9 - v14];
    [(ASVWorldGestureRecognizer *)self setTranslationVelocitySample:v15];

    [(ASVWorldGestureRecognizer *)self setLastTranslationLocation:v18];
    [(ASVWorldGestureRecognizer *)self setLastTranslationTime:v9];
    dataSource = v17;
  }
}

- (void)gestureEndedTranslation:(id)translation
{
  translationCopy = translation;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    translationVelocitySample = [(ASVWorldGestureRecognizer *)self translationVelocitySample];
    translationLastVelocitySample = [(ASVWorldGestureRecognizer *)self translationLastVelocitySample];
    [translationVelocitySample calcFinalVelocityFromPreviousSample:translationLastVelocitySample];
    v9 = v8;

    [(ASVWorldGestureRecognizer *)self startTranslationDecelerationWithInitialVelocity:v9];
  }

  worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
  [worldDelegate worldGestureRecognizerEndedTranslation:self];
}

- (void)gestureBeganLevitation:(id)levitation
{
  worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
  if (worldDelegate)
  {
    v5 = worldDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 worldGestureRecognizerBeganLevitation:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)gesture:(id)gesture levitatedAssetToScreenPoint:
{
  v4 = v3;
  worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
  if (worldDelegate)
  {
    v7 = worldDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v7 worldGestureRecognizer:self levitatedAssetToScreenPoint:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)gestureEndedLevitation:(id)levitation
{
  worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
  if (worldDelegate)
  {
    v5 = worldDelegate;
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

    worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
    [worldDelegate worldGestureRecognizerBeganTranslationDeceleration:self];
  }
}

- (BOOL)isDecelerating
{
  translationDeceleration = [(ASVWorldGestureRecognizer *)self translationDeceleration];
  if (translationDeceleration)
  {
    translationDeceleration2 = [(ASVWorldGestureRecognizer *)self translationDeceleration];
    isDecelerating = [translationDeceleration2 isDecelerating];
  }

  else
  {
    isDecelerating = 0;
  }

  return isDecelerating;
}

- (void)updateDecelerationTranslation
{
  translationDeceleration = [(ASVWorldGestureRecognizer *)self translationDeceleration];

  if (translationDeceleration)
  {
    worldDelegate = [(ASVWorldGestureRecognizer *)self worldDelegate];
    translationDeceleration2 = [(ASVWorldGestureRecognizer *)self translationDeceleration];
    [translationDeceleration2 decelerationDelta];
    v7 = v5;

    if (*&v7 <= 0.0)
    {
      [(ASVWorldGestureRecognizer *)self setTranslationDeceleration:0, v7];
      [worldDelegate worldGestureRecognizerEndedTranslationDeceleration:self];
    }

    else
    {
      [(ASVWorldGestureRecognizer *)self normalizedVelocity];
      [worldDelegate worldGestureRecognizer:self decelerationTranslationDelta:{*vmulq_n_f32(v6, *&v7).i64}];
    }
  }
}

- (ASVWorldGestureRecognizerDelegate)worldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_worldDelegate);

  return WeakRetained;
}

@end