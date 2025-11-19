@interface ARUIRingGroup
+ (double)preferredActivityRingInterspacingForDiameter:(double)a3;
+ (double)preferredActivityRingThicknessForDiameter:(double)a3 isStandaloneRing:(BOOL)a4;
+ (id)_timingFunctionForCurve:(unint64_t)a3;
+ (id)activityRingGroupForRingType:(int64_t)a3;
+ (id)countdownRingGroupOnCompanion;
+ (unint64_t)_numberOfRingsForRingType:(int64_t)a3;
+ (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 animations:(id)a5 completion:(id)a6;
+ (void)animateWithDuration:(double)a3 animations:(id)a4 curve:(unint64_t)a5 completion:(id)a6;
- (ARUIRingGroup)forCompanion;
- (ARUIRingGroup)forWatch;
- (ARUIRingGroup)initWithNumberOfRings:(int64_t)a3;
- (ARUIRingGroup)initWithNumberOfRings:(int64_t)a3 animationSequencer:(id)a4;
- (ARUIRingGroup)initWithRings:(id)a3 animationSequencer:(id)a4;
- (ARUIRingGroup)withSpriteSheet;
- (ARUIRingGroup)withWheelchairSpriteSheet;
- (ARUIRingGroupDelegate)delegate;
- (NSString)description;
- (double)_adjustedDurationForRingWithIndex:(int64_t)a3 startPercentage:(float)a4 targetPercentage:(float)a5 defaultDuration:(double)a6;
- (float)_ringPercentageAdjustedForProximityToFull:(float)result withRingDiameter:(float)a4 thickness:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_positionSprites;
- (void)_removeAnimationForKey:(id)a3;
- (void)_setDefaultGroupValues:(id)a3;
- (void)_setStandardColorsWithAnimated:(BOOL)a3;
- (void)_setupColorAnimationForState:(id)a3 startTopColor:(id)a4 endTopColor:(id)a5 startBottomColor:(id)a6 endBottomColor:(id)a7 key:(id)a8 applier:(id)a9;
- (void)_setupFloat2AnimationForState:(ARUIRingGroup *)self startValue:(SEL)a2 endValue:(id)a3 key:(id)a4 applier:(id)a5;
- (void)_setupFloatAnimationForState:(id)a3 startValue:(float)a4 endValue:(float)a5 key:(id)a6 applier:(id)a7;
- (void)_setupUIntAnimationForState:(id)a3 startValue:(unint64_t)a4 endValue:(unint64_t)a5 key:(id)a6 applier:(id)a7;
- (void)_updateAnimationObserving;
- (void)_updateRingGroupLayout;
- (void)animationSequencer:(id)a3 updatedWithTime:(double)a4;
- (void)dealloc;
- (void)drawSprites;
- (void)playCelebration:(id)a3 onRingAtIndex:(unint64_t)a4 completion:(id)a5;
- (void)playSpriteAnimationWithCompletion:(id)a3;
- (void)removeAllAnimations;
- (void)setActiveEnergyPercentage:(float)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setActiveEnergyPercentage:(float)a3 exerciseMinutesPercentage:(float)a4 standHoursPercentage:(float)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)setEmptyOpacity:(float)a3;
- (void)setEmptyOpacity:(float)a3 ofRingAtIndex:(unint64_t)a4;
- (void)setExerciseMinutesPercentage:(float)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setFrame:(unint64_t)a3 ofSpriteAtIndex:(unint64_t)a4;
- (void)setGroupDiameter:(float)a3;
- (void)setInterspacing:(float)a3;
- (void)setIsPaused:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setIsStandalonePhoneFitnessMode:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setOpacity:(float)a3;
- (void)setOpacity:(float)a3 ofRingAtIndex:(unint64_t)a4;
- (void)setPercentage:(float)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)setPercentage:(float)a3 ofRingAtIndex:(unint64_t)a4 fromAnimation:(BOOL)a5;
- (void)setScale:(float)a3;
- (void)setSpriteSheet:(id)a3;
- (void)setStandHoursPercentage:(float)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setThickness:(float)a3;
- (void)setThickness:(float)a3 ofRingAtIndex:(unint64_t)a4;
- (void)setTopColor:(id)a3 bottomColor:(id)a4 ofRingAtIndex:(int64_t)a5 animated:(BOOL)a6;
- (void)setTrackOpacity:(float)a3;
- (void)setTrackOpacity:(float)a3 ofRingAtIndex:(unint64_t)a4;
- (void)setTranslation:(ARUIRingGroup *)self;
- (void)setZRotation:(float)a3;
@end

@implementation ARUIRingGroup

- (ARUIRingGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAnimationObserving
{
  if ([(ARUIRingGroup *)self _shouldObserveSequencer])
  {
    if (self->_observingSequencing)
    {
      return;
    }

    [(ARUIAnimationSequencing *)self->_animationSequencer addObserver:self];
    v3 = 1;
  }

  else
  {
    if (!self->_observingSequencing)
    {
      return;
    }

    [(ARUIAnimationSequencing *)self->_animationSequencer removeObserver:self];
    v3 = 0;
  }

  self->_observingSequencing = v3;
}

- (ARUIRingGroup)initWithNumberOfRings:(int64_t)a3
{
  v5 = +[ARUIRingGroupGlobalAnimationSequencer sharedInstance];
  v6 = [(ARUIRingGroup *)self initWithNumberOfRings:a3 animationSequencer:v5];

  return v6;
}

- (ARUIRingGroup)initWithNumberOfRings:(int64_t)a3 animationSequencer:(id)a4
{
  v6 = a4;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
  {
    v8 = objc_alloc_init(ARUIRing);
    [i addObject:v8];
  }

  v9 = [(ARUIRingGroup *)self initWithRings:i animationSequencer:v6];

  return v9;
}

- (ARUIRingGroup)initWithRings:(id)a3 animationSequencer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ARUIRingGroup;
  v9 = [(ARUIRingGroup *)&v14 init];
  if (v9)
  {
    v10 = [v7 firstObject];
    [(ARUIRingGroup *)v9 _setDefaultGroupValues:v10];

    objc_storeStrong(&v9->_rings, a3);
    v11 = [MEMORY[0x1E695DF90] dictionary];
    animations = v9->_animations;
    v9->_animations = v11;

    objc_storeStrong(&v9->_animationSequencer, a4);
    v9->_observingSequencing = 0;
    v9->_paused = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(ARUIRingGroup *)self removeAllAnimations];
  v3.receiver = self;
  v3.super_class = ARUIRingGroup;
  [(ARUIRingGroup *)&v3 dealloc];
}

- (void)_setDefaultGroupValues:(id)a3
{
  v4 = a3;
  [v4 opacity];
  self->_opacity = v5;
  [v4 emptyOpacity];
  self->_emptyOpacity = v6;
  [v4 trackOpacity];
  self->_trackOpacity = v7;
  [v4 scale];
  self->_scale = v8;
  [v4 zRotation];
  self->_zRotation = v9;
  [v4 translation];
  v11 = v10;

  *self->_translation = v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(MEMORY[0x1E695DEC8]);
  v6 = [(ARUIRingGroup *)self rings];
  v7 = [v5 initWithArray:v6 copyItems:1];

  v8 = [[ARUIRingGroup alloc] initWithRings:v7 animationSequencer:self->_animationSequencer];
  v9 = [(ARUIRingGroup *)self spriteSheet];
  v10 = [v9 copyWithZone:a3];
  [(ARUIRingGroup *)v8 setSpriteSheet:v10];

  [(ARUIRingGroup *)self groupDiameter];
  [(ARUIRingGroup *)v8 setGroupDiameter:?];
  [(ARUIRingGroup *)self interspacing];
  [(ARUIRingGroup *)v8 setInterspacing:?];
  [(ARUIRingGroup *)v8 setPaused:[(ARUIRingGroup *)self paused]];
  [(ARUIRingGroup *)self thickness];
  [(ARUIRingGroup *)v8 setThickness:?];
  [(ARUIRingGroup *)self opacity];
  [(ARUIRingGroup *)v8 setOpacity:?];
  [(ARUIRingGroup *)self emptyOpacity];
  [(ARUIRingGroup *)v8 setEmptyOpacity:?];
  [(ARUIRingGroup *)self trackOpacity];
  [(ARUIRingGroup *)v8 setTrackOpacity:?];
  [(ARUIRingGroup *)self scale];
  [(ARUIRingGroup *)v8 setScale:?];
  [(ARUIRingGroup *)self zRotation];
  [(ARUIRingGroup *)v8 setZRotation:?];
  [(ARUIRingGroup *)self translation];
  [(ARUIRingGroup *)v8 setTranslation:?];
  [(ARUIRingGroup *)v8 setRingType:[(ARUIRingGroup *)self ringType]];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__ARUIRingGroup_copyWithZone___block_invoke;
  v12[3] = &unk_1E83CE0B8;
  v12[4] = self;
  [v7 enumerateObjectsUsingBlock:v12];

  return v8;
}

void __30__ARUIRingGroup_copyWithZone___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 rings];
  v7 = [v6 objectAtIndexedSubscript:a3];

  [v7 thickness];
  [v5 setThickness:?];
  [v7 opacity];
  [v5 setOpacity:?];
  [v7 emptyOpacity];
  [v5 setEmptyOpacity:?];
  [v7 trackOpacity];
  [v5 setTrackOpacity:?];
}

- (void)setGroupDiameter:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_groupDiameter))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      groupDiameter = self->_groupDiameter;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__ARUIRingGroup_setGroupDiameter___block_invoke;
      v10[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v11, &location);
      *&v7 = groupDiameter;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"groupDiameter" endValue:v10 key:v7 applier:v8];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_groupDiameter = a3;
      [(ARUIRingGroup *)self _updateRingGroupLayout];
      v9 = [(ARUIRingGroup *)self delegate];
      [v9 ringGroupHasUpdated:self];
    }
  }
}

void __34__ARUIRingGroup_setGroupDiameter___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setGroupDiameter:v3];
}

- (void)setInterspacing:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_interspacing))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      interspacing = self->_interspacing;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __33__ARUIRingGroup_setInterspacing___block_invoke;
      v10[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v11, &location);
      *&v7 = interspacing;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"interspacing" endValue:v10 key:v7 applier:v8];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_interspacing = a3;
      [(ARUIRingGroup *)self _updateRingGroupLayout];
      v9 = [(ARUIRingGroup *)self delegate];
      [v9 ringGroupHasUpdated:self];
    }
  }
}

void __33__ARUIRingGroup_setInterspacing___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setInterspacing:v3];
}

- (void)_updateRingGroupLayout
{
  v17 = *MEMORY[0x1E69E9840];
  groupDiameter = self->_groupDiameter;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSArray *)self->_rings reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        *&v6 = groupDiameter;
        [v10 setDiameter:v6];
        [v10 thickness];
        v6 = groupDiameter + v11 * -2.0 + self->_interspacing * -2.0;
        groupDiameter = v6;
      }

      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(ARUIRingGroup *)self _positionSprites];
}

- (void)setThickness:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_thickness))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      thickness = self->_thickness;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __30__ARUIRingGroup_setThickness___block_invoke;
      v13[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v14, &location);
      *&v7 = thickness;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"thickness" endValue:v13 key:v7 applier:v8];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_thickness = a3;
      rings = self->_rings;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __30__ARUIRingGroup_setThickness___block_invoke_2;
      v11[3] = &__block_descriptor_36_e25_v32__0__ARUIRing_8Q16_B24l;
      v12 = a3;
      [(NSArray *)rings enumerateObjectsUsingBlock:v11];
      [(ARUIRingGroup *)self _updateRingGroupLayout];
      v10 = [(ARUIRingGroup *)self delegate];
      [v10 ringGroupHasUpdated:self];
    }
  }
}

void __30__ARUIRingGroup_setThickness___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setThickness:v3];
}

- (void)setOpacity:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_opacity))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      opacity = self->_opacity;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __28__ARUIRingGroup_setOpacity___block_invoke;
      v13[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v14, &location);
      *&v7 = opacity;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"opacity" endValue:v13 key:v7 applier:v8];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_opacity = a3;
      rings = self->_rings;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __28__ARUIRingGroup_setOpacity___block_invoke_2;
      v11[3] = &__block_descriptor_36_e25_v32__0__ARUIRing_8Q16_B24l;
      v12 = a3;
      [(NSArray *)rings enumerateObjectsUsingBlock:v11];
      v10 = [(ARUIRingGroup *)self delegate];
      [v10 ringGroupHasUpdated:self];
    }
  }
}

void __28__ARUIRingGroup_setOpacity___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setOpacity:v3];
}

- (void)setEmptyOpacity:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_emptyOpacity))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      emptyOpacity = self->_emptyOpacity;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __33__ARUIRingGroup_setEmptyOpacity___block_invoke;
      v13[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v14, &location);
      *&v7 = emptyOpacity;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"emptyOpacity" endValue:v13 key:v7 applier:v8];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_emptyOpacity = a3;
      rings = self->_rings;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__ARUIRingGroup_setEmptyOpacity___block_invoke_2;
      v11[3] = &__block_descriptor_36_e25_v32__0__ARUIRing_8Q16_B24l;
      v12 = a3;
      [(NSArray *)rings enumerateObjectsUsingBlock:v11];
      v10 = [(ARUIRingGroup *)self delegate];
      [v10 ringGroupHasUpdated:self];
    }
  }
}

void __33__ARUIRingGroup_setEmptyOpacity___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setEmptyOpacity:v3];
}

- (void)setTrackOpacity:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_trackOpacity))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      trackOpacity = self->_trackOpacity;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __33__ARUIRingGroup_setTrackOpacity___block_invoke;
      v13[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v14, &location);
      *&v7 = trackOpacity;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"trackOpacity" endValue:v13 key:v7 applier:v8];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_trackOpacity = a3;
      rings = self->_rings;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__ARUIRingGroup_setTrackOpacity___block_invoke_2;
      v11[3] = &__block_descriptor_36_e25_v32__0__ARUIRing_8Q16_B24l;
      v12 = a3;
      [(NSArray *)rings enumerateObjectsUsingBlock:v11];
      v10 = [(ARUIRingGroup *)self delegate];
      [v10 ringGroupHasUpdated:self];
    }
  }
}

void __33__ARUIRingGroup_setTrackOpacity___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setTrackOpacity:v3];
}

- (void)setScale:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_scale))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      scale = self->_scale;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __26__ARUIRingGroup_setScale___block_invoke;
      v13[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v14, &location);
      *&v7 = scale;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"scale" endValue:v13 key:v7 applier:v8];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_scale = a3;
      rings = self->_rings;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __26__ARUIRingGroup_setScale___block_invoke_2;
      v11[3] = &__block_descriptor_36_e25_v32__0__ARUIRing_8Q16_B24l;
      v12 = a3;
      [(NSArray *)rings enumerateObjectsUsingBlock:v11];
      [(ARUIRingGroup *)self _positionSprites];
      v10 = [(ARUIRingGroup *)self delegate];
      [v10 ringGroupHasUpdated:self];
    }
  }
}

void __26__ARUIRingGroup_setScale___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setScale:v3];
}

- (void)setZRotation:(float)a3
{
  if (!ARUIFloatEqual(a3, self->_zRotation))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      zRotation = self->_zRotation;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __30__ARUIRingGroup_setZRotation___block_invoke;
      v13[3] = &unk_1E83CE0E0;
      objc_copyWeak(&v14, &location);
      *&v7 = zRotation;
      *&v8 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v5 startValue:@"zRotation" endValue:v13 key:v7 applier:v8];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_zRotation = a3;
      rings = self->_rings;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __30__ARUIRingGroup_setZRotation___block_invoke_2;
      v11[3] = &__block_descriptor_36_e25_v32__0__ARUIRing_8Q16_B24l;
      v12 = a3;
      [(NSArray *)rings enumerateObjectsUsingBlock:v11];
      v10 = [(ARUIRingGroup *)self delegate];
      [v10 ringGroupHasUpdated:self];
    }
  }
}

void __30__ARUIRingGroup_setZRotation___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setZRotation:v3];
}

- (void)setTranslation:(ARUIRingGroup *)self
{
  v3 = *&v2;
  if (!ARUIFloat2Equal(v2, *self->_translation))
  {
    v5 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v5)
    {
      objc_initWeak(&location, self);
      v6 = *self->_translation;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __32__ARUIRingGroup_setTranslation___block_invoke;
      v10[3] = &unk_1E83CE128;
      objc_copyWeak(&v11, &location);
      [(ARUIRingGroup *)self _setupFloat2AnimationForState:v5 startValue:@"translation" endValue:v10 key:v6 applier:v3];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      *self->_translation = v3;
      rings = self->_rings;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __32__ARUIRingGroup_setTranslation___block_invoke_2;
      v9[3] = &__block_descriptor_40_e25_v32__0__ARUIRing_8Q16_B24l;
      *&v9[4] = v3;
      [(NSArray *)rings enumerateObjectsUsingBlock:v9];
      [(ARUIRingGroup *)self _positionSprites];
      v8 = [(ARUIRingGroup *)self delegate];
      [v8 ringGroupHasUpdated:self];
    }
  }
}

void __32__ARUIRingGroup_setTranslation___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTranslation:a2];
}

- (void)setPercentage:(float)a3 ofRingAtIndex:(unint64_t)a4 fromAnimation:(BOOL)a5
{
  v9 = [(NSArray *)self->_rings objectAtIndex:?];
  [v9 percentage];
  if (!ARUIFloatEqual(v10, a3))
  {
    v11 = +[ARUIRingGroupAnimationState currentAnimationState];
    v12 = [ARUIAnimationKeyCoordinator animationKeyForType:0 ringIndex:a4];
    if (v11 && !ARUIFloatEqual(a3, *&ARUIRingPercentageValueNoRing))
    {
      [v9 percentage];
      if (v15 < 0.0)
      {
        [v9 setPercentage:0.0];
        v16 = [(ARUIRingGroup *)self delegate];
        [v16 ringGroupHasUpdated:self];
      }

      objc_initWeak(&location, self);
      [v9 percentage];
      v18 = v17;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __59__ARUIRingGroup_setPercentage_ofRingAtIndex_fromAnimation___block_invoke;
      v21[3] = &unk_1E83CE170;
      objc_copyWeak(v22, &location);
      v22[1] = a4;
      LODWORD(v19) = v18;
      *&v20 = a3;
      [(ARUIRingGroup *)self _setupFloatAnimationForState:v11 startValue:v12 endValue:v21 key:v19 applier:v20];
      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
    }

    else
    {
      if (!a5)
      {
        [(ARUIRingGroup *)self _removeAnimationForKey:v12];
      }

      *&v13 = a3;
      [v9 setPercentage:v13];
      v14 = [(ARUIRingGroup *)self delegate];
      [v14 ringGroupHasUpdated:self];
    }
  }
}

void __59__ARUIRingGroup_setPercentage_ofRingAtIndex_fromAnimation___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v4 = a2;
  [WeakRetained setPercentage:*(a1 + 40) ofRingAtIndex:1 fromAnimation:v4];
}

- (void)setTopColor:(id)a3 bottomColor:(id)a4 ofRingAtIndex:(int64_t)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    v12 = +[ARUIRingGroupAnimationState currentAnimationState];
    v13 = [(NSArray *)self->_rings objectAtIndex:a5];
    v14 = v13;
    if (v12)
    {
      v15 = [ARUIAnimationKeyCoordinator animationKeyForType:6 ringIndex:a5];
      objc_initWeak(&location, self);
      v16 = [v14 topColor];
      v17 = [v14 bottomColor];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __64__ARUIRingGroup_setTopColor_bottomColor_ofRingAtIndex_animated___block_invoke;
      v23[3] = &unk_1E83CE198;
      objc_copyWeak(v24, &location);
      v24[1] = a5;
      [(ARUIRingGroup *)self _setupColorAnimationForState:v12 startTopColor:v16 endTopColor:v10 startBottomColor:v17 endBottomColor:v11 key:v15 applier:v23];

      objc_destroyWeak(v24);
      objc_destroyWeak(&location);
    }

    else
    {
      [v13 setTopColor:v10];
      [v14 setBottomColor:v11];
      [(ARUIRingGroup *)self _updateRingGroupLayout];
      v22 = [(ARUIRingGroup *)self delegate];
      [v22 ringGroupHasUpdated:self];
    }
  }

  else
  {
    v18 = [(ARUIRingGroup *)self rings];
    v19 = [v18 objectAtIndex:a5];
    [v19 setTopColor:v10];

    v20 = [(ARUIRingGroup *)self rings];
    v21 = [v20 objectAtIndex:a5];
    [v21 setBottomColor:v11];
  }
}

void __64__ARUIRingGroup_setTopColor_bottomColor_ofRingAtIndex_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTopColor:v6 bottomColor:v5 ofRingAtIndex:*(a1 + 40)];
}

- (void)setThickness:(float)a3 ofRingAtIndex:(unint64_t)a4
{
  v7 = +[ARUIRingGroupAnimationState currentAnimationState];
  v8 = [(NSArray *)self->_rings objectAtIndex:a4];
  v10 = v8;
  if (v7)
  {
    v11 = [ARUIAnimationKeyCoordinator animationKeyForType:1 ringIndex:a4];
    objc_initWeak(&location, self);
    [v10 thickness];
    v13 = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__ARUIRingGroup_setThickness_ofRingAtIndex___block_invoke;
    v17[3] = &unk_1E83CE170;
    objc_copyWeak(v18, &location);
    v18[1] = a4;
    LODWORD(v14) = v13;
    *&v15 = a3;
    [(ARUIRingGroup *)self _setupFloatAnimationForState:v7 startValue:v11 endValue:v17 key:v14 applier:v15];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v9 = a3;
    [v8 setThickness:v9];
    [(ARUIRingGroup *)self _updateRingGroupLayout];
    v16 = [(ARUIRingGroup *)self delegate];
    [v16 ringGroupHasUpdated:self];
  }
}

void __44__ARUIRingGroup_setThickness_ofRingAtIndex___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v4 = a2;
  [WeakRetained setThickness:*(a1 + 40) ofRingAtIndex:v4];
}

- (void)setOpacity:(float)a3 ofRingAtIndex:(unint64_t)a4
{
  v7 = +[ARUIRingGroupAnimationState currentAnimationState];
  v8 = [(NSArray *)self->_rings objectAtIndex:a4];
  v10 = v8;
  if (v7)
  {
    v11 = [ARUIAnimationKeyCoordinator animationKeyForType:2 ringIndex:a4];
    objc_initWeak(&location, self);
    [v10 opacity];
    v13 = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __42__ARUIRingGroup_setOpacity_ofRingAtIndex___block_invoke;
    v17[3] = &unk_1E83CE170;
    objc_copyWeak(v18, &location);
    v18[1] = a4;
    LODWORD(v14) = v13;
    *&v15 = a3;
    [(ARUIRingGroup *)self _setupFloatAnimationForState:v7 startValue:v11 endValue:v17 key:v14 applier:v15];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v9 = a3;
    [v8 setOpacity:v9];
    [(ARUIRingGroup *)self _updateRingGroupLayout];
    v16 = [(ARUIRingGroup *)self delegate];
    [v16 ringGroupHasUpdated:self];
  }
}

void __42__ARUIRingGroup_setOpacity_ofRingAtIndex___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v4 = a2;
  [WeakRetained setOpacity:*(a1 + 40) ofRingAtIndex:v4];
}

- (void)setEmptyOpacity:(float)a3 ofRingAtIndex:(unint64_t)a4
{
  v7 = +[ARUIRingGroupAnimationState currentAnimationState];
  v8 = [(NSArray *)self->_rings objectAtIndex:a4];
  v10 = v8;
  if (v7)
  {
    v11 = [ARUIAnimationKeyCoordinator animationKeyForType:3 ringIndex:a4];
    objc_initWeak(&location, self);
    [v10 emptyOpacity];
    v13 = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__ARUIRingGroup_setEmptyOpacity_ofRingAtIndex___block_invoke;
    v17[3] = &unk_1E83CE170;
    objc_copyWeak(v18, &location);
    v18[1] = a4;
    LODWORD(v14) = v13;
    *&v15 = a3;
    [(ARUIRingGroup *)self _setupFloatAnimationForState:v7 startValue:v11 endValue:v17 key:v14 applier:v15];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v9 = a3;
    [v8 setEmptyOpacity:v9];
    [(ARUIRingGroup *)self _updateRingGroupLayout];
    v16 = [(ARUIRingGroup *)self delegate];
    [v16 ringGroupHasUpdated:self];
  }
}

void __47__ARUIRingGroup_setEmptyOpacity_ofRingAtIndex___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v4 = a2;
  [WeakRetained setEmptyOpacity:*(a1 + 40) ofRingAtIndex:v4];
}

- (void)setTrackOpacity:(float)a3 ofRingAtIndex:(unint64_t)a4
{
  v7 = +[ARUIRingGroupAnimationState currentAnimationState];
  v8 = [(NSArray *)self->_rings objectAtIndex:a4];
  v10 = v8;
  if (v7)
  {
    v11 = [ARUIAnimationKeyCoordinator animationKeyForType:4 ringIndex:a4];
    objc_initWeak(&location, self);
    [v10 trackOpacity];
    v13 = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__ARUIRingGroup_setTrackOpacity_ofRingAtIndex___block_invoke;
    v17[3] = &unk_1E83CE170;
    objc_copyWeak(v18, &location);
    v18[1] = a4;
    LODWORD(v14) = v13;
    *&v15 = a3;
    [(ARUIRingGroup *)self _setupFloatAnimationForState:v7 startValue:v11 endValue:v17 key:v14 applier:v15];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  else
  {
    *&v9 = a3;
    [v8 setTrackOpacity:v9];
    [(ARUIRingGroup *)self _updateRingGroupLayout];
    v16 = [(ARUIRingGroup *)self delegate];
    [v16 ringGroupHasUpdated:self];
  }
}

void __47__ARUIRingGroup_setTrackOpacity_ofRingAtIndex___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v4 = a2;
  [WeakRetained setTrackOpacity:*(a1 + 40) ofRingAtIndex:v4];
}

- (void)setSpriteSheet:(id)a3
{
  v5 = a3;
  p_spriteSheet = &self->_spriteSheet;
  if (self->_spriteSheet != v5)
  {
    v8 = v5;
    objc_storeStrong(p_spriteSheet, a3);
    [(ARUIRingGroup *)self _positionSprites];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained ringGroupHasUpdated:self];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_spriteSheet, v5);
}

- (void)drawSprites
{
  v3 = [(ARUISpriteSheet *)self->_spriteSheet sprites];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(ARUISpriteSheet *)self->_spriteSheet sprites];
      v7 = [v6 objectAtIndex:v5];

      -[ARUIRingGroup setFrame:ofSpriteAtIndex:](self, "setFrame:ofSpriteAtIndex:", [v7 frameCount] - 1, v5);
      ++v5;
      v8 = [(ARUISpriteSheet *)self->_spriteSheet sprites];
      v9 = [v8 count];
    }

    while (v5 < v9);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained ringGroupHasUpdated:self];
}

- (void)playSpriteAnimationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_spriteSheet)
  {
    v16 = v4;
    v6 = dispatch_group_create();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__ARUIRingGroup_playSpriteAnimationWithCompletion___block_invoke;
    v23[3] = &unk_1E83CDFF0;
    v7 = v6;
    v24 = v7;
    v8 = MEMORY[0x1D3875270](v23);
    objc_initWeak(&location, self);
    for (i = 0; ; ++i)
    {
      v10 = [(ARUISpriteSheet *)self->_spriteSheet sprites];
      v11 = [v10 count];

      if (i >= v11)
      {
        break;
      }

      v12 = [(ARUISpriteSheet *)self->_spriteSheet sprites];
      v13 = [v12 objectAtIndex:i];

      [v13 setCurrentFrameIndex:0];
      v14 = [v13 frameCount] / 60.0;
      dispatch_group_enter(v7);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__ARUIRingGroup_playSpriteAnimationWithCompletion___block_invoke_2;
      v19[3] = &unk_1E83CE1C0;
      objc_copyWeak(v21, &location);
      v15 = v13;
      v20 = v15;
      v21[1] = i;
      [ARUIRingGroup animateWithDuration:v19 animations:4 curve:v8 completion:v14];

      objc_destroyWeak(v21);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__ARUIRingGroup_playSpriteAnimationWithCompletion___block_invoke_3;
    block[3] = &unk_1E83CE018;
    v5 = v16;
    v18 = v16;
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

void __51__ARUIRingGroup_playSpriteAnimationWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFrame:objc_msgSend(*(a1 + 32) ofSpriteAtIndex:{"frameCount") - 1, *(a1 + 48)}];
}

uint64_t __51__ARUIRingGroup_playSpriteAnimationWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)playCelebration:(id)a3 onRingAtIndex:(unint64_t)a4 completion:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = arui_rings_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_1CFD67000, v10, OS_LOG_TYPE_DEFAULT, "Playing celebration %@ on ring at index %lu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = [(NSArray *)self->_rings objectAtIndex:a4];
  [*(*&buf[8] + 40) setCelebration:v8];
  [v8 duration];
  v12 = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__ARUIRingGroup_playCelebration_onRingAtIndex_completion___block_invoke;
  v14[3] = &unk_1E83CE210;
  v14[4] = self;
  v17 = a4;
  v13 = v8;
  v15 = v13;
  v16 = buf;
  [ARUIRingGroup animateWithDuration:v14 animations:v9 completion:v12];

  _Block_object_dispose(buf, 8);
}

void __58__ARUIRingGroup_playCelebration_onRingAtIndex_completion___block_invoke(uint64_t a1)
{
  v2 = +[ARUIRingGroupAnimationState currentAnimationState];
  objc_initWeak(&location, *(a1 + 32));
  v3 = [ARUIAnimationKeyCoordinator animationKeyForType:5 ringIndex:*(a1 + 56)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__ARUIRingGroup_playCelebration_onRingAtIndex_completion___block_invoke_2;
  v6[3] = &unk_1E83CE1E8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 48);
  LODWORD(v5) = 1.0;
  [v4 _setupFloatAnimationForState:v2 startValue:v3 endValue:v6 key:0.0 applier:v5];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

uint64_t __58__ARUIRingGroup_playCelebration_onRingAtIndex_completion___block_invoke_2(uint64_t a1, float a2, double a3)
{
  [*(a1 + 32) updateDeltaTime:a3];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 ringGroupHasUpdated:v7];

  result = ARUIFloatEqual(a2, 1.0);
  if (result)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);

    return [v9 setCelebration:0];
  }

  return result;
}

- (void)_positionSprites
{
  v3 = [(ARUISpriteSheet *)self->_spriteSheet sprites];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__ARUIRingGroup__positionSprites__block_invoke;
  v4[3] = &unk_1E83CE238;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __33__ARUIRingGroup__positionSprites__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 72);
  v5 = a2;
  v22 = [v4 objectAtIndex:a3];
  [v22 scale];
  v7 = v6;
  [v22 thickness];
  v9 = (v7 * v8) * 0.85;
  *&v9 = v9;
  [v5 setSize:v9];
  [v22 translation];
  *&v21 = v10 + v10;
  [v22 scale];
  v12 = v11;
  [v22 diameter];
  v14 = v13;
  [v22 scale];
  v16 = v15;
  [v22 thickness];
  v18 = ((v12 * v14) - (v16 * v17));
  [v22 translation];
  *&v20 = v18 + v19 * -2.0;
  [v5 setTranslation:{COERCE_DOUBLE(__PAIR64__(v20, v21))}];
  [v22 opacity];
  [v5 setOpacity:?];
}

- (void)setFrame:(unint64_t)a3 ofSpriteAtIndex:(unint64_t)a4
{
  v7 = [(ARUISpriteSheet *)self->_spriteSheet sprites];
  v8 = [v7 objectAtIndex:a4];

  if ([v8 currentFrameIndex] != a3)
  {
    v9 = +[ARUIRingGroupAnimationState currentAnimationState];
    if (v9)
    {
      objc_initWeak(&location, self);
      v10 = [v8 currentFrameIndex];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spriteFrame-%lu", a4];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __42__ARUIRingGroup_setFrame_ofSpriteAtIndex___block_invoke;
      v13[3] = &unk_1E83CE260;
      objc_copyWeak(v14, &location);
      v14[1] = a4;
      [(ARUIRingGroup *)self _setupUIntAnimationForState:v9 startValue:v10 endValue:a3 key:v11 applier:v13];

      objc_destroyWeak(v14);
      objc_destroyWeak(&location);
    }

    else
    {
      [v8 setCurrentFrameIndex:a3];
      v12 = [(ARUIRingGroup *)self delegate];
      [v12 ringGroupHasUpdated:self];
    }
  }
}

void __42__ARUIRingGroup_setFrame_ofSpriteAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFrame:a2 ofSpriteAtIndex:*(a1 + 40)];
}

+ (void)animateWithDuration:(double)a3 animations:(id)a4 curve:(unint64_t)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = objc_alloc_init(ARUIRingGroupAnimationState);
  [(ARUIRingGroupAnimationState *)v11 setDuration:a3];
  v12 = [ARUIRingGroup _timingFunctionForCurve:a5];
  [(ARUIRingGroupAnimationState *)v11 setTimingFunction:v12];

  [(ARUIRingGroupAnimationState *)v11 setCompletion:v9];
  v13 = arui_rings_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ARUIRingGroup animateWithDuration:v11 animations:v13 curve:? completion:?];
  }

  [ARUIRingGroupAnimationState pushAnimationState:v11];
  v14 = arui_rings_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ARUIRingGroup animateWithDuration:v14 animations:? curve:? completion:?];
  }

  v10[2](v10);
  v15 = arui_rings_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ARUIRingGroup animateWithDuration:v11 animations:v15 curve:? completion:?];
  }

  +[ARUIRingGroupAnimationState popAnimationState];
}

+ (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 animations:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = objc_alloc_init(ARUIRingGroupSpringAnimationState);
  [(ARUIRingGroupSpringAnimationState *)v11 setTension:a3];
  [(ARUIRingGroupSpringAnimationState *)v11 setFriction:a4];
  [(ARUIRingGroupAnimationState *)v11 setCompletion:v9];

  [ARUIRingGroupAnimationState pushAnimationState:v11];
  v10[2](v10);

  +[ARUIRingGroupAnimationState popAnimationState];
}

+ (id)_timingFunctionForCurve:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_14;
      }

      v7 = MEMORY[0x1E69793D0];
      v8 = MEMORY[0x1E6979EB8];
      goto LABEL_10;
    }

    v9 = MEMORY[0x1E69793D0];
    LODWORD(v3) = 1051361018;
    v4 = 0.0;
    v5 = 0.0;
  }

  else
  {
    if (a3 == 2)
    {
      v7 = MEMORY[0x1E69793D0];
      v8 = MEMORY[0x1E6979EB0];
LABEL_10:
      a1 = [v7 functionWithName:*v8];
      goto LABEL_14;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_14;
      }

      v7 = MEMORY[0x1E69793D0];
      v8 = MEMORY[0x1E6979ED8];
      goto LABEL_10;
    }

    v9 = MEMORY[0x1E69793D0];
    LODWORD(v4) = 1056293519;
    LODWORD(v5) = 1057300152;
    v3 = 0.0;
  }

  LODWORD(v6) = 1.0;
  a1 = [v9 functionWithControlPoints:v3 :v4 :v5 :v6];
LABEL_14:

  return a1;
}

- (void)_setupFloatAnimationForState:(id)a3 startValue:(float)a4 endValue:(float)a5 key:(id)a6 applier:(id)a7
{
  v26 = a3;
  v12 = a7;
  v13 = a6;
  [(ARUIRingGroup *)self _removeAnimationForKey:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v26;
    [v14 tension];
    v16 = v15;
    [v14 friction];
    *&v17 = a4;
    *&v18 = a5;
    v20 = [ARUIFloatSpringAnimation animationWithTension:v12 friction:v16 startValue:v19 endValue:v17 applier:v18];

    [v14 addAnimation:v20];
  }

  else
  {
    [v26 duration];
    v22 = v21;
    v23 = [v26 timingFunction];
    *&v24 = a4;
    *&v25 = a5;
    v20 = [ARUIFloatAnimation animationWithDuration:v23 startValue:v12 endValue:v22 timingFunction:v24 applier:v25];

    [v26 addAnimation:v20];
  }

  [(NSMutableDictionary *)self->_animations setObject:v20 forKey:v13];

  [(ARUIRingGroup *)self _updateAnimationObserving];
}

- (void)_setupColorAnimationForState:(id)a3 startTopColor:(id)a4 endTopColor:(id)a5 startBottomColor:(id)a6 endBottomColor:(id)a7 key:(id)a8 applier:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  [(ARUIRingGroup *)self _removeAnimationForKey:v17];
  [v22 duration];
  v24 = v23;
  v25 = [v22 timingFunction];
  v26 = [ARUIColorAnimation animationWithDuration:v21 startTopColor:v20 endTopColor:v19 startBottomColor:v18 endBottomColor:v25 timingFunction:v16 applier:v24];

  [v22 addAnimation:v26];
  [(NSMutableDictionary *)self->_animations setObject:v26 forKey:v17];

  [(ARUIRingGroup *)self _updateAnimationObserving];
}

- (void)_setupFloat2AnimationForState:(ARUIRingGroup *)self startValue:(SEL)a2 endValue:(id)a3 key:(id)a4 applier:(id)a5
{
  v8 = v6;
  v9 = v5;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [(ARUIRingGroup *)self _removeAnimationForKey:v13];
  [v14 duration];
  v16 = v15;
  v17 = [v14 timingFunction];
  v18 = [ARUIFloat2Animation animationWithDuration:v17 startValue:v12 endValue:v16 timingFunction:v9 applier:v8];

  [v14 addAnimation:v18];
  [(NSMutableDictionary *)self->_animations setObject:v18 forKey:v13];

  [(ARUIRingGroup *)self _updateAnimationObserving];
}

- (void)_setupUIntAnimationForState:(id)a3 startValue:(unint64_t)a4 endValue:(unint64_t)a5 key:(id)a6 applier:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a3;
  [(ARUIRingGroup *)self _removeAnimationForKey:v13];
  [v14 duration];
  v16 = v15;
  v17 = [v14 timingFunction];
  v18 = [ARUIUIntAnimation animationWithDuration:a4 startValue:a5 endValue:v17 timingFunction:v12 applier:v16];

  [v14 addAnimation:v18];
  [(NSMutableDictionary *)self->_animations setObject:v18 forKey:v13];

  [(ARUIRingGroup *)self _updateAnimationObserving];
}

- (void)_removeAnimationForKey:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_animations objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_animations removeObjectForKey:v5];
    [v4 completeAnimation];
  }
}

- (void)removeAllAnimations
{
  [(NSMutableDictionary *)self->_animations enumerateKeysAndObjectsUsingBlock:&__block_literal_global_0];
  animations = self->_animations;

  [(NSMutableDictionary *)animations removeAllObjects];
}

- (void)animationSequencer:(id)a3 updatedWithTime:(double)a4
{
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_animations, "count", a3)}];
  animations = self->_animations;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __52__ARUIRingGroup_animationSequencer_updatedWithTime___block_invoke;
  v15 = &unk_1E83CE2A8;
  v17 = a4;
  v16 = v6;
  v8 = v6;
  [(NSMutableDictionary *)animations enumerateKeysAndObjectsUsingBlock:&v12];
  v9 = self->_animations;
  v10 = [v8 allKeys];
  [(NSMutableDictionary *)v9 removeObjectsForKeys:v10];

  v11 = [v8 allValues];
  [v11 enumerateObjectsUsingBlock:&__block_literal_global_56];

  [(ARUIRingGroup *)self _updateAnimationObserving];
}

void __52__ARUIRingGroup_animationSequencer_updatedWithTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [v5 update:*(a1 + 40)];
  if (([v5 isAnimating] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendArraySection:self->_rings withName:@"rings" skipIfEmpty:1];
  v4 = [v3 build];

  return v4;
}

+ (double)preferredActivityRingThicknessForDiameter:(double)a3 isStandaloneRing:(BOOL)a4
{
  v4 = 0.105769231;
  if (a4)
  {
    v4 = 0.2;
  }

  return v4 * a3;
}

+ (double)preferredActivityRingInterspacingForDiameter:(double)a3
{
  v3 = (a3 + -29.0) / 114.0;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  return (v3 * -0.0288461538 + 0.0432692308) * a3;
}

+ (id)countdownRingGroupOnCompanion
{
  v2 = +[ARUIMetricColors keyColors];
  v3 = [[ARUIRingGroup alloc] initWithNumberOfRings:1];
  LODWORD(v4) = 1132396544;
  [(ARUIRingGroup *)v3 setGroupDiameter:v4];
  LODWORD(v5) = 1099694080;
  [(ARUIRingGroup *)v3 setThickness:v5];
  [(ARUIRingGroup *)v3 setPercentage:0 ofRingAtIndex:0.0];
  v6 = [v2 gradientLightColor];
  v7 = [v2 gradientDarkColor];
  [(ARUIRingGroup *)v3 setTopColor:v6 bottomColor:v7 ofRingAtIndex:0];

  return v3;
}

+ (unint64_t)_numberOfRingsForRingType:(int64_t)a3
{
  if (a3 == 3)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

+ (id)activityRingGroupForRingType:(int64_t)a3
{
  v4 = [[a1 alloc] initWithNumberOfRings:{+[ARUIRingGroup _numberOfRingsForRingType:](ARUIRingGroup, "_numberOfRingsForRingType:")}];
  [v4 setRingType:a3];
  [v4 _setStandardColorsWithAnimated:0];

  return v4;
}

- (ARUIRingGroup)forWatch
{
  v2 = [(ARUIRingGroup *)self copy];
  [v2 setTranslation:-131072.0];
  LODWORD(v3) = 1124466688;
  [v2 setGroupDiameter:v3];
  LODWORD(v4) = 1.0;
  [v2 setInterspacing:v4];
  LODWORD(v5) = 15.0;
  [v2 setThickness:v5];

  return v2;
}

- (ARUIRingGroup)forCompanion
{
  v2 = [(ARUIRingGroup *)self copy];
  LODWORD(v3) = 1132134400;
  [v2 setGroupDiameter:v3];
  LODWORD(v4) = 2.0;
  [v2 setInterspacing:v4];
  LODWORD(v5) = 27.0;
  [v2 setThickness:v5];
  v6 = [v2 rings];
  [v6 enumerateObjectsUsingBlock:&__block_literal_global_4];

  return v2;
}

- (ARUIRingGroup)withSpriteSheet
{
  v2 = [(ARUIRingGroup *)self copy];
  v3 = +[ARUISpriteSheetFactory spriteSheetForRingType:](ARUISpriteSheetFactory, "spriteSheetForRingType:", [v2 ringType]);
  [v2 setSpriteSheet:v3];

  return v2;
}

- (ARUIRingGroup)withWheelchairSpriteSheet
{
  v2 = [(ARUIRingGroup *)self copy];
  v3 = +[ARUISpriteSheetFactory wheelchairSpriteSheetForRingType:](ARUISpriteSheetFactory, "wheelchairSpriteSheetForRingType:", [v2 ringType]);
  [v2 setSpriteSheet:v3];

  return v2;
}

- (void)_setStandardColorsWithAnimated:(BOOL)a3
{
  v3 = a3;
  v30[3] = *MEMORY[0x1E69E9840];
  v5 = +[ARUIMetricColors energyColors];
  v6 = +[ARUIMetricColors briskColors];
  v7 = +[ARUIMetricColors sedentaryColors];
  v8 = [(ARUIRingGroup *)self rings];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 emptyOpacity];
  if (v10 == 0.0)
  {
    v11 = [(ARUIRingGroup *)self rings];
    v12 = [v11 objectAtIndexedSubscript:1];
    [v12 emptyOpacity];
    v14 = v13 == 0.0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 gradientDarkColor];
  v30[0] = v15;
  v16 = [v6 gradientDarkColor];
  v30[1] = v16;
  if (v14)
  {
    [v5 nonGradientTextColor];
  }

  else
  {
    [v5 gradientDarkColor];
  }
  v17 = ;
  v30[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];

  v19 = [v7 gradientLightColor];
  v29[0] = v19;
  v20 = [v6 gradientLightColor];
  v29[1] = v20;
  if (v14)
  {
    [v5 nonGradientTextColor];
  }

  else
  {
    [v5 gradientLightColor];
  }
  v21 = ;
  v29[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];

  v23 = [(ARUIRingGroup *)self rings];
  if ([v23 count])
  {
    v24 = 0;
    do
    {
      v25 = v24;
      if ([v23 count] == 1)
      {
        v25 = [(ARUIRingGroup *)self ringType];
      }

      v26 = [v18 objectAtIndex:v25];
      v27 = [v22 objectAtIndex:v25];
      [(ARUIRingGroup *)self setTopColor:v26 bottomColor:v27 ofRingAtIndex:v24 animated:v3];

      ++v24;
    }

    while (v24 < [v23 count]);
  }
}

- (void)setPercentage:(float)a3 ofRingAtIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(ARUIRingGroup *)self rings];
  v12 = [v11 objectAtIndex:a4];

  LODWORD(v13) = ARUIRingPercentageValueNoRing;
  if (*&ARUIRingPercentageValueNoRing != a3)
  {
    [v12 diameter];
    v15 = v14;
    [v12 thickness];
    LODWORD(v17) = v16;
    *&v18 = a3;
    LODWORD(v19) = v15;
    [(ARUIRingGroup *)self _ringPercentageAdjustedForProximityToFull:v18 withRingDiameter:v19 thickness:v17];
    a3 = *&v13;
  }

  if (a5)
  {
    [v12 percentage];
    [ARUIRingGroup _adjustedDurationForRingWithIndex:"_adjustedDurationForRingWithIndex:startPercentage:targetPercentage:defaultDuration:" startPercentage:a4 targetPercentage:? defaultDuration:?];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__ARUIRingGroup_Activity__setPercentage_ofRingAtIndex_animated_completion___block_invoke;
    v20[3] = &unk_1E83CE5A0;
    v21 = a3;
    v20[4] = self;
    v20[5] = a4;
    [ARUIRingGroup animateWithDuration:v20 animations:v10 completion:?];
  }

  else
  {
    *&v13 = a3;
    [(ARUIRingGroup *)self setPercentage:a4 ofRingAtIndex:v13];
    if (v10)
    {
      v10[2](v10);
    }
  }
}

- (double)_adjustedDurationForRingWithIndex:(int64_t)a3 startPercentage:(float)a4 targetPercentage:(float)a5 defaultDuration:(double)a6
{
  v10 = [(ARUIRingGroup *)self rings];
  v11 = a6 + ([v10 count] + ~a3) * 0.0833333333;

  v12 = a5 <= a4 || a5 <= 1.0;
  result = ((a5 + -1.0) * 0.600000024 + 1.0) * a6;
  if (v12)
  {
    return v11;
  }

  return result;
}

- (float)_ringPercentageAdjustedForProximityToFull:(float)result withRingDiameter:(float)a4 thickness:(float)a5
{
  if (result > 0.00000011921 && result < 1.0 && a4 > 0.00000011921)
  {
    v6 = (result * 6.28318531 * (a4 * 0.5) - a5 * 0.5) / (a4 * 0.5) * 0.5 / 3.14159265;
    return fmaxf(v6, 0.0);
  }

  return result;
}

- (void)setActiveEnergyPercentage:(float)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v11 = [(ARUIRingGroup *)self rings];
  v9 = [v11 count];
  *&v10 = a3;
  [(ARUIRingGroup *)self setPercentage:2 * (v9 > 1) ofRingAtIndex:v5 animated:v8 completion:v10];
}

- (void)setExerciseMinutesPercentage:(float)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v11 = [(ARUIRingGroup *)self rings];
  v9 = [v11 count] > 1;
  *&v10 = a3;
  [(ARUIRingGroup *)self setPercentage:v9 ofRingAtIndex:v5 animated:v8 completion:v10];
}

- (void)setStandHoursPercentage:(float)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v10 = [(ARUIRingGroup *)self rings];
  [v10 count];
  *&v9 = a3;
  [(ARUIRingGroup *)self setPercentage:0 ofRingAtIndex:v5 animated:v8 completion:v9];
}

- (void)setActiveEnergyPercentage:(float)a3 exerciseMinutesPercentage:(float)a4 standHoursPercentage:(float)a5 animated:(BOOL)a6 completion:(id)a7
{
  v9 = a6;
  v14 = a7;
  v15 = dispatch_group_create();
  v16 = v15;
  if (v9)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __120__ARUIRingGroup_Activity__setActiveEnergyPercentage_exerciseMinutesPercentage_standHoursPercentage_animated_completion___block_invoke;
    v28[3] = &unk_1E83CDFF0;
    v7 = &v29;
    v17 = v15;
    v29 = v17;
    v18 = MEMORY[0x1D3875270](v28);
    v19 = v26;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __120__ARUIRingGroup_Activity__setActiveEnergyPercentage_exerciseMinutesPercentage_standHoursPercentage_animated_completion___block_invoke_3;
    v26[3] = &unk_1E83CDFF0;
    v8 = &v27;
    v27 = v17;
  }

  else
  {
    v19 = 0;
    v18 = &__block_literal_global_10;
  }

  v20 = MEMORY[0x1D3875270](v19);
  (v18[2].isa)(v18);
  *&v21 = a3;
  [(ARUIRingGroup *)self setPercentage:2 ofRingAtIndex:v9 animated:v20 completion:v21];
  (v18[2].isa)(v18);
  *&v22 = a4;
  [(ARUIRingGroup *)self setPercentage:1 ofRingAtIndex:v9 animated:v20 completion:v22];
  (v18[2].isa)(v18);
  *&v23 = a5;
  [(ARUIRingGroup *)self setPercentage:0 ofRingAtIndex:v9 animated:v20 completion:v23];
  if (v9)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __120__ARUIRingGroup_Activity__setActiveEnergyPercentage_exerciseMinutesPercentage_standHoursPercentage_animated_completion___block_invoke_4;
    v24[3] = &unk_1E83CE018;
    v25 = v14;
    dispatch_group_notify(v16, MEMORY[0x1E69E96A0], v24);

    v18 = *v7;
  }

  else
  {
    if (v14)
    {
      v14[2](v14);
    }
  }
}

uint64_t __120__ARUIRingGroup_Activity__setActiveEnergyPercentage_exerciseMinutesPercentage_standHoursPercentage_animated_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setIsStandalonePhoneFitnessMode:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(ARUIRingGroup *)self rings];
  v10 = [v9 count];

  if (v10 == 3)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v11 = [(ARUIRingGroup *)self rings];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__ARUIRingGroup_Activity__setIsStandalonePhoneFitnessMode_animated_completion___block_invoke;
    v17[3] = &unk_1E83CE5C8;
    v17[4] = &v18;
    [v11 enumerateObjectsUsingBlock:v17];

    if (v5)
    {
      LOBYTE(v5) = *(v19 + 24) ^ 1;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__ARUIRingGroup_Activity__setIsStandalonePhoneFitnessMode_animated_completion___block_invoke_2;
    v15[3] = &unk_1E83CE5F0;
    v16 = a3;
    v15[4] = self;
    v12 = MEMORY[0x1D3875270](v15);
    v13 = v12;
    if (v5)
    {
      [ARUIRingGroup animateWithDuration:v12 animations:v8 completion:3.0];
    }

    else
    {
      (*(v12 + 16))(v12);
      if (v8)
      {
        v8[2](v8);
      }
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v14 = arui_rings_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ARUIRingGroup(Activity) setIsStandalonePhoneFitnessMode:v14 animated:? completion:?];
    }
  }
}

BOOL __79__ARUIRingGroup_Activity__setIsStandalonePhoneFitnessMode_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24) == 1)
  {
    [a2 percentage];
    result = ARUIFloatLess(v4, 0.0);
    v2 = *(*(a1 + 32) + 8);
  }

  else
  {
    result = 0;
  }

  *(v2 + 24) = result;
  return result;
}

void __79__ARUIRingGroup_Activity__setIsStandalonePhoneFitnessMode_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[ARUIMetricColors energyColors];
  v58 = v2;
  if (*(a1 + 40) == 1)
  {
    v3 = [v2 nonGradientTextColor];
    v4 = [v58 nonGradientTextColor];
    [*(a1 + 32) groupDiameter];
    [ARUIRingGroup preferredActivityRingThicknessForDiameter:1 isStandaloneRing:v5];
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v3 = [v2 gradientDarkColor];
    v4 = [v58 gradientLightColor];
    [*(a1 + 32) thickness];
    v7 = v14;
    v15 = [*(a1 + 32) rings];
    v16 = [v15 objectAtIndexedSubscript:1];
    [v16 opacity];
    if (v17 == 0.0)
    {
      v8 = ARUIRingOpacityValueDefault;
    }

    else
    {
      v18 = [*(a1 + 32) rings];
      v19 = [v18 objectAtIndexedSubscript:1];
      [v19 opacity];
      v8 = v20;
    }

    v21 = [*(a1 + 32) rings];
    v22 = [v21 objectAtIndexedSubscript:1];
    [v22 emptyOpacity];
    if (v23 == 0.0)
    {
      v9 = ARUIRingEmptyOpacityValueDefault;
    }

    else
    {
      v24 = [*(a1 + 32) rings];
      v25 = [v24 objectAtIndexedSubscript:1];
      [v25 emptyOpacity];
      v9 = v26;
    }

    v27 = [*(a1 + 32) rings];
    v28 = [v27 objectAtIndexedSubscript:1];
    [v28 trackOpacity];
    if (v29 == 0.0)
    {
      v10 = ARUIRingTrackOpacityValueDefault;
    }

    else
    {
      v30 = [*(a1 + 32) rings];
      v31 = [v30 objectAtIndexedSubscript:1];
      [v31 trackOpacity];
      v10 = v32;
    }

    v33 = [*(a1 + 32) rings];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 opacity];
    if (v35 == 0.0)
    {
      v11 = ARUIRingOpacityValueDefault;
    }

    else
    {
      v36 = [*(a1 + 32) rings];
      v37 = [v36 objectAtIndexedSubscript:0];
      [v37 opacity];
      v11 = v38;
    }

    v39 = [*(a1 + 32) rings];
    v40 = [v39 objectAtIndexedSubscript:0];
    [v40 emptyOpacity];
    if (v41 == 0.0)
    {
      v12 = ARUIRingEmptyOpacityValueDefault;
    }

    else
    {
      v42 = [*(a1 + 32) rings];
      v43 = [v42 objectAtIndexedSubscript:0];
      [v43 emptyOpacity];
      v12 = v44;
    }

    v45 = [*(a1 + 32) rings];
    v46 = [v45 objectAtIndexedSubscript:0];
    [v46 trackOpacity];
    if (v47 == 0.0)
    {
      v13 = ARUIRingTrackOpacityValueDefault;
    }

    else
    {
      v48 = [*(a1 + 32) rings];
      v49 = [v48 objectAtIndexedSubscript:0];
      [v49 trackOpacity];
      v13 = v50;
    }
  }

  [*(a1 + 32) setTopColor:v3 bottomColor:v4 ofRingAtIndex:2];
  *&v51 = v7;
  [*(a1 + 32) setThickness:2 ofRingAtIndex:v51];
  LODWORD(v52) = v8;
  [*(a1 + 32) setOpacity:1 ofRingAtIndex:v52];
  LODWORD(v53) = v9;
  [*(a1 + 32) setEmptyOpacity:1 ofRingAtIndex:v53];
  LODWORD(v54) = v10;
  [*(a1 + 32) setTrackOpacity:1 ofRingAtIndex:v54];
  LODWORD(v55) = v11;
  [*(a1 + 32) setOpacity:0 ofRingAtIndex:v55];
  LODWORD(v56) = v12;
  [*(a1 + 32) setEmptyOpacity:0 ofRingAtIndex:v56];
  LODWORD(v57) = v13;
  [*(a1 + 32) setTrackOpacity:0 ofRingAtIndex:v57];
}

- (void)setIsPaused:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (_os_feature_enabled_impl())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__ARUIRingGroup_Activity__setIsPaused_animated_completion___block_invoke;
    v11[3] = &unk_1E83CE618;
    v12 = a3;
    v11[4] = self;
    v13 = v5;
    v9 = MEMORY[0x1D3875270](v11);
    v10 = v9;
    if (v5)
    {
      [ARUIRingGroup animateWithDuration:v9 animations:v8 completion:1.0];
    }

    else
    {
      (*(v9 + 16))(v9);
      if (v8)
      {
        v8[2](v8);
      }
    }
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

void __59__ARUIRingGroup_Activity__setIsPaused_animated_completion___block_invoke(uint64_t a1, double a2)
{
  if (*(a1 + 40) == 1)
  {
    v45 = +[ARUIMetricColors pausedRingsColors];
    v3 = [*(a1 + 32) rings];
    v4 = [v3 objectAtIndexedSubscript:1];
    [v4 emptyOpacity];
    v5 = 0;
    if (v6 <= 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *&ARUIRingPauseRingsOpacityValue;
    }

    v8 = [*(a1 + 32) rings];
    v9 = [v8 objectAtIndexedSubscript:0];
    [v9 emptyOpacity];
    if (v10 > 0.0)
    {
      v5 = ARUIRingPauseRingsOpacityValue;
    }

    v11 = *(a1 + 32);
    v12 = [v45 gradientLightColor];
    v13 = [v45 gradientDarkColor];
    [v11 setTopColor:v12 bottomColor:v13 ofRingAtIndex:2 animated:*(a1 + 41)];

    v14 = *(a1 + 32);
    v15 = [v45 gradientLightColor];
    v16 = [v45 gradientDarkColor];
    [v14 setTopColor:v15 bottomColor:v16 ofRingAtIndex:1 animated:*(a1 + 41)];

    v17 = *(a1 + 32);
    v18 = [v45 gradientLightColor];
    v19 = [v45 gradientDarkColor];
    [v17 setTopColor:v18 bottomColor:v19 ofRingAtIndex:0 animated:*(a1 + 41)];

    LODWORD(v20) = ARUIRingPauseRingsOpacityValue;
    [*(a1 + 32) setTrackOpacity:2 ofRingAtIndex:v20];
    *&v21 = v7;
    [*(a1 + 32) setTrackOpacity:1 ofRingAtIndex:v21];
    LODWORD(v22) = v5;
    [*(a1 + 32) setTrackOpacity:0 ofRingAtIndex:v22];
    LODWORD(v23) = ARUIRingPauseRingsOpacityValue;
    [*(a1 + 32) setEmptyOpacity:2 ofRingAtIndex:v23];
    *&v24 = v7;
    [*(a1 + 32) setEmptyOpacity:1 ofRingAtIndex:v24];
    LODWORD(v25) = v5;
    [*(a1 + 32) setEmptyOpacity:0 ofRingAtIndex:v25];
    [*(a1 + 32) setPercentage:2 ofRingAtIndex:*(a1 + 41) animated:0.0];
    [*(a1 + 32) setPercentage:1 ofRingAtIndex:*(a1 + 41) animated:0.0];
    [*(a1 + 32) setPercentage:0 ofRingAtIndex:*(a1 + 41) animated:0.0];
  }

  else
  {
    LODWORD(a2) = ARUIRingOpacityValueDefault;
    [*(a1 + 32) setTrackOpacity:2 ofRingAtIndex:a2];
    v26 = *(a1 + 32);
    v27 = [v26 rings];
    v28 = [v27 objectAtIndexedSubscript:1];
    [v28 emptyOpacity];
    if (*&v29 <= 0.0)
    {
      *&v29 = 0.0;
    }

    else
    {
      LODWORD(v29) = ARUIRingOpacityValueDefault;
    }

    [v26 setTrackOpacity:1 ofRingAtIndex:v29];

    v30 = *(a1 + 32);
    v31 = [v30 rings];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 emptyOpacity];
    if (*&v33 <= 0.0)
    {
      *&v33 = 0.0;
    }

    else
    {
      LODWORD(v33) = ARUIRingOpacityValueDefault;
    }

    [v30 setTrackOpacity:0 ofRingAtIndex:v33];

    LODWORD(v34) = ARUIRingEmptyOpacityValueDefault;
    [*(a1 + 32) setEmptyOpacity:2 ofRingAtIndex:v34];
    v35 = *(a1 + 32);
    v36 = [v35 rings];
    v37 = [v36 objectAtIndexedSubscript:1];
    [v37 emptyOpacity];
    if (*&v38 <= 0.0)
    {
      *&v38 = 0.0;
    }

    else
    {
      LODWORD(v38) = ARUIRingEmptyOpacityValueDefault;
    }

    [v35 setEmptyOpacity:1 ofRingAtIndex:v38];

    v39 = *(a1 + 32);
    v40 = [v39 rings];
    v41 = [v40 objectAtIndexedSubscript:0];
    [v41 emptyOpacity];
    if (*&v42 <= 0.0)
    {
      *&v42 = 0.0;
    }

    else
    {
      LODWORD(v42) = ARUIRingEmptyOpacityValueDefault;
    }

    [v39 setEmptyOpacity:0 ofRingAtIndex:v42];

    v43 = *(a1 + 32);
    v44 = *(a1 + 41);

    [v43 _setStandardColorsWithAnimated:v44];
  }
}

+ (void)animateWithDuration:(uint64_t)a1 animations:(NSObject *)a2 curve:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1CFD67000, a2, OS_LOG_TYPE_DEBUG, "ARUIRingGroup animationWithDuration pushing animation state: %@", &v2, 0xCu);
}

+ (void)animateWithDuration:(uint64_t)a1 animations:(NSObject *)a2 curve:completion:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1CFD67000, a2, OS_LOG_TYPE_DEBUG, "ARUIRingGroup animationWithDuration popping animation state: %@", &v2, 0xCu);
}

@end