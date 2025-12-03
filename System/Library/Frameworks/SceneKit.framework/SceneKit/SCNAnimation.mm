@interface SCNAnimation
+ (SCNAnimation)animationNamed:(NSString *)animationName;
+ (SCNAnimation)animationWithC3DAnimation:(__C3DAnimation *)animation;
+ (SCNAnimation)animationWithCAAnimation:(CAAnimation *)caAnimation;
+ (SCNAnimation)animationWithContentsOfURL:(NSURL *)animationUrl;
+ (SCNAnimation)animationWithMDLTransform:(id)transform;
+ (id)animationFromScene:(id)scene;
- (NSString)description;
- (SCNAnimation)initWithC3DAnimation:(__C3DAnimation *)animation;
- (SCNAnimation)initWithCAAnimation:(id)animation;
- (SCNAnimation)initWithCoder:(id)coder;
- (double)repeatDuration;
- (id)caAnimation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)subAnimations;
- (id)userAnimation;
- (id)valueForUndefinedKey:(id)key;
- (void)_optimizeKeyframesWithTarget:(id)target;
- (void)_setAnimationRef:(__C3DAnimation *)ref;
- (void)_syncObjCModel;
- (void)caAnimation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)prepareWithTarget:(id)target implicitDuration:(double)duration;
- (void)setAdditive:(BOOL)additive;
- (void)setAnimationDidStart:(SCNAnimationDidStartBlock)animationDidStart;
- (void)setAnimationDidStop:(SCNAnimationDidStopBlock)animationDidStop;
- (void)setAnimationEvents:(NSArray *)animationEvents;
- (void)setAppliedOnCompletion:(BOOL)appliedOnCompletion;
- (void)setAutoreverses:(BOOL)autoreverses;
- (void)setBlendInDuration:(NSTimeInterval)blendInDuration;
- (void)setBlendOutDuration:(NSTimeInterval)blendOutDuration;
- (void)setCumulative:(BOOL)cumulative;
- (void)setDuration:(NSTimeInterval)duration;
- (void)setFillsBackward:(BOOL)fillsBackward;
- (void)setFillsForward:(BOOL)fillsForward;
- (void)setKeyPath:(NSString *)keyPath;
- (void)setRemovedOnCompletion:(BOOL)removedOnCompletion;
- (void)setRepeatCount:(CGFloat)repeatCount;
- (void)setRepeatDuration:(double)duration;
- (void)setStartDelay:(NSTimeInterval)startDelay;
- (void)setTimeOffset:(NSTimeInterval)timeOffset;
- (void)setTimingFunction:(SCNTimingFunction *)timingFunction;
- (void)setUsesSceneTimeBase:(BOOL)usesSceneTimeBase;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation SCNAnimation

+ (SCNAnimation)animationWithMDLTransform:(id)transform
{
  transformAnimation = [transform transformAnimation];

  return [SCNAnimation animationWithCAAnimation:transformAnimation];
}

- (void)dealloc
{
  animationRef = self->_animationRef;
  if (animationRef)
  {
    C3DEntitySetObjCWrapper(animationRef, 0);
  }

  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    _Block_release(animationDidStart);
  }

  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    _Block_release(animationDidStop);
  }

  v6 = self->_animationRef;
  if (v6)
  {
    CFRelease(v6);
    self->_animationRef = 0;
  }

  v7.receiver = self;
  v7.super_class = SCNAnimation;
  [(SCNAnimation *)&v7 dealloc];
}

- (SCNAnimation)initWithC3DAnimation:(__C3DAnimation *)animation
{
  v7.receiver = self;
  v7.super_class = SCNAnimation;
  v4 = [(SCNAnimation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    [(SCNAnimation *)v4 _setAnimationRef:animation];
    [(SCNAnimation *)v5 _syncObjCModel];
    v5->_didMutate = 0;
  }

  return v5;
}

- (SCNAnimation)initWithCAAnimation:(id)animation
{
  v27.receiver = self;
  v27.super_class = SCNAnimation;
  v4 = [(SCNAnimation *)&v27 init];
  v5 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    v4->_userAnimation = [animation copy];
    [animation duration];
    v5->_duration = v6;
    [animation repeatCount];
    v5->_repeatCount = v7;
    v5->_autoreverses = [animation autoreverses];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_additive = [animation isAdditive];
      v5->_cumulative = [animation isCumulative];
      v5->_keyPath = [objc_msgSend(animation "keyPath")];
    }

    v5->_removedOnCompletion = [animation isRemovedOnCompletion];
    [animation beginTime];
    v5->_beginTime = v8;
    [animation timeOffset];
    v5->_timeOffset = v9;
    [animation fadeInDuration];
    v5->_fadeInDuration = v10;
    [animation fadeOutDuration];
    v5->_fadeOutDuration = v11;
    v5->_usesSceneTimeBase = [animation usesSceneTimeBase];
    fillMode = [animation fillMode];
    v13 = *MEMORY[0x277CDA230];
    if (fillMode == *MEMORY[0x277CDA230])
    {
      v15 = 1;
    }

    else
    {
      fillMode2 = [animation fillMode];
      v15 = fillMode2 == *MEMORY[0x277CDA238];
    }

    v5->_fillForward = v15;
    if ([animation fillMode] == v13)
    {
      v17 = 1;
    }

    else
    {
      fillMode3 = [animation fillMode];
      v17 = fillMode3 == *MEMORY[0x277CDA228];
    }

    v5->_fillBackward = v17;
    if (v5->_animationEvents)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SCNAnimation *)v18 initWithCAAnimation:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    v5->_animationEvents = [objc_msgSend(animation "animationEvents")];
    v5->_timingFunction = +[SCNTimingFunction functionWithCAMediaTimingFunction:](SCNTimingFunction, "functionWithCAMediaTimingFunction:", [animation timingFunction]);
    v5->_didMutate = 0;
  }

  return v5;
}

+ (SCNAnimation)animationWithC3DAnimation:(__C3DAnimation *)animation
{
  v3 = [[SCNAnimation alloc] initWithC3DAnimation:animation];

  return v3;
}

- (void)_setAnimationRef:(__C3DAnimation *)ref
{
  animationRef = self->_animationRef;
  if (animationRef != ref)
  {
    if (animationRef)
    {
      CFRelease(animationRef);
      self->_animationRef = 0;
    }

    if (ref)
    {
      v6 = CFRetain(ref);
    }

    else
    {
      v6 = 0;
    }

    self->_animationRef = v6;
  }

  if (ref)
  {

    C3DEntitySetObjCWrapper(ref, self);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[30] = 0;
  animationRef = self->_animationRef;
  if (animationRef)
  {
    Copy = C3DAnimationCreateCopy(animationRef);
    [v4 _setAnimationRef:Copy];
    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  *(v4 + 8) = self->_timingFunction;
  *(v4 + 9) = self->_animationEvents;
  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    *(v4 + 12) = _Block_copy(animationDidStart);
  }

  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    *(v4 + 13) = _Block_copy(animationDidStop);
  }

  *(v4 + 3) = *&self->_duration;
  *(v4 + 4) = *&self->_repeatCount;
  *(v4 + 5) = *&self->_timeOffset;
  *(v4 + 6) = *&self->_beginTime;
  *(v4 + 56) = self->_autoreverses;
  *(v4 + 57) = self->_removedOnCompletion;
  *(v4 + 58) = self->_applyOnCompletion;
  *(v4 + 59) = self->_additive;
  *(v4 + 60) = self->_cumulative;
  *(v4 + 62) = self->_fillForward;
  *(v4 + 63) = self->_fillBackward;
  *(v4 + 10) = *&self->_fadeInDuration;
  *(v4 + 11) = *&self->_fadeOutDuration;
  *(v4 + 61) = self->_usesSceneTimeBase;
  *(v4 + 17) = [self->_userAnimation copy];
  *(v4 + 144) = self->_didMutate;
  return v4;
}

- (void)_syncObjCModel
{
  v3 = [C3DAnimationGetKeyPath(self->_animationRef) componentsJoinedByString:@"."];

  self->_keyPath = v3;
  self->_duration = C3DAnimationGetDuration(self->_animationRef);
  self->_repeatCount = C3DAnimationGetRepeatCount(self->_animationRef);
  self->_autoreverses = C3DAnimationGetAutoreverses(self->_animationRef);
  self->_beginTime = C3DAnimationNodeGetPauseTime(self->_animationRef);
  self->_timeOffset = C3DAnimationGetTimeOffset(self->_animationRef);
  self->_fadeInDuration = C3DAnimationGetFadeInDuration(self->_animationRef);
  self->_fadeOutDuration = C3DAnimationGetFadeOutDuration(self->_animationRef);
  self->_removedOnCompletion = C3DAnimationGetRemoveOnCompletion(self->_animationRef);
  self->_usesSceneTimeBase = C3DAnimationGetIsSceneTimeBased(self->_animationRef);
  FillModeMask = C3DAnimationGetFillModeMask(self->_animationRef);
  self->_fillForward = FillModeMask & 1;
  self->_fillBackward = (FillModeMask & 2) != 0;
  AnimationEvents = C3DAnimationGetAnimationEvents(self->_animationRef);
  v6 = _C3DToCAAnimationEvents(AnimationEvents);
  v7 = self->_animationEvents;
  if (v7 != v6)
  {
    v8 = v6;

    self->_animationEvents = v8;
  }

  TimingFunction = C3DAnimationGetTimingFunction(self->_animationRef);
  if (TimingFunction)
  {
    v10 = TimingFunction;

    self->_timingFunction = [[SCNTimingFunction alloc] initWithTimingFunctionRef:v10];
  }

  self->_applyOnCompletion = C3DAnimationGetCommitWhenDone(self->_animationRef);
  self->_additive = C3DAnimationGetAdditive(self->_animationRef);
  self->_cumulative = C3DAnimationGetCumulative(self->_animationRef);
}

- (void)encodeWithCoder:(id)coder
{
  animationRef = self->_animationRef;
  if (animationRef)
  {
    v6 = CFGetTypeID(animationRef);
    if (v6 == C3DSimpleAnimationGetTypeID())
    {
      v7 = @"basic";
    }

    else if (v6 == C3DKeyframedAnimationGetTypeID())
    {
      v7 = @"keyframe";
    }

    else if (v6 == C3DAnimationGroupGetTypeID())
    {
      v7 = @"group";
    }

    else
    {
      v9 = CFCopyTypeIDDescription(v6);
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SCNAnimation encodeWithCoder:];
      }

      CFRelease(v9);
      v7 = 0;
    }

    v11 = C3DCopyPropertyList(self->_animationRef, 0, 0, 0);
    [coder encodeObject:v11 forKey:@"c3dAnimation"];
    [coder encodeObject:v7 forKey:@"c3dAnimationType"];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNAnimation encodeWithCoder:];
    }
  }

  [coder encodeObject:-[SCNAnimation keyPath](self forKey:{"keyPath"), @"keyPath"}];
  [(SCNAnimation *)self duration];
  [coder encodeDouble:@"duration" forKey:?];
  [(SCNAnimation *)self repeatCount];
  [coder encodeDouble:@"repeatCount" forKey:?];
  [(SCNAnimation *)self timeOffset];
  [coder encodeDouble:@"timeOffset" forKey:?];
  [(SCNAnimation *)self startDelay];
  [coder encodeDouble:@"beginTime" forKey:?];
  [coder encodeBool:-[SCNAnimation autoreverses](self forKey:{"autoreverses"), @"autoreverses"}];
  [coder encodeBool:-[SCNAnimation isRemovedOnCompletion](self forKey:{"isRemovedOnCompletion"), @"removedOnCompletion"}];
  [coder encodeBool:-[SCNAnimation isAppliedOnCompletion](self forKey:{"isAppliedOnCompletion"), @"applyOnCompletion"}];
  [coder encodeBool:-[SCNAnimation isAdditive](self forKey:{"isAdditive"), @"additive"}];
  [coder encodeBool:-[SCNAnimation isCumulative](self forKey:{"isCumulative"), @"cumulative"}];
  [coder encodeBool:-[SCNAnimation usesSceneTimeBase](self forKey:{"usesSceneTimeBase"), @"usesSceneTimeBase"}];
  [coder encodeBool:-[SCNAnimation fillsForward](self forKey:{"fillsForward"), @"fillForward"}];
  [coder encodeBool:-[SCNAnimation fillsBackward](self forKey:{"fillsBackward"), @"fillBackward"}];
  [coder encodeObject:-[SCNAnimation timingFunction](self forKey:{"timingFunction"), @"timingFunction"}];
  [(SCNAnimation *)self fadeInDuration];
  [coder encodeDouble:@"fadeInDuration" forKey:?];
  [(SCNAnimation *)self fadeOutDuration];
  [coder encodeDouble:@"fadeOutDuration" forKey:?];
  if (self->_userInfo)
  {
    os_unfair_lock_lock(&self->_userInfoLock);
    [coder encodeObject:self->_userInfo forKey:@"userInfo"];
    os_unfair_lock_unlock(&self->_userInfoLock);
  }
}

- (SCNAnimation)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = SCNAnimation;
  v4 = [(SCNAnimation *)&v13 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_userInfoLock._os_unfair_lock_opaque = 0;
  v6 = [coder decodeObjectOfClasses:SCNPlistClasses() forKey:@"c3dAnimation"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"c3dAnimationType"];
  if ([v7 isEqualToString:@"basic"])
  {
    v8 = C3DSimpleAnimationCreate();
  }

  else if (v7 && ![v7 isEqualToString:@"keyframe"])
  {
    if (![v7 isEqualToString:@"group"])
    {
      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SCNAnimation encodeWithCoder:];
      }

      v9 = 0;
      goto LABEL_8;
    }

    v8 = C3DAnimationGroupCreate();
  }

  else
  {
    v8 = C3DKeyframedAnimationCreate();
  }

  v9 = v8;
LABEL_8:
  if (C3DInitWithPropertyList(v9, v6, 0, 0))
  {
    [(SCNAnimation *)v5 _setAnimationRef:v9];
  }

  CFRelease(v9);
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  -[SCNAnimation setKeyPath:](v5, "setKeyPath:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"]);
  [coder decodeDoubleForKey:@"duration"];
  [(SCNAnimation *)v5 setDuration:?];
  [coder decodeDoubleForKey:@"repeatCount"];
  [(SCNAnimation *)v5 setRepeatCount:?];
  [coder decodeDoubleForKey:@"timeOffset"];
  [(SCNAnimation *)v5 setTimeOffset:?];
  [coder decodeDoubleForKey:@"beginTime"];
  [(SCNAnimation *)v5 setStartDelay:?];
  -[SCNAnimation setAutoreverses:](v5, "setAutoreverses:", [coder decodeBoolForKey:@"autoreverses"]);
  -[SCNAnimation setAppliedOnCompletion:](v5, "setAppliedOnCompletion:", [coder decodeBoolForKey:@"appliedOnCompletion"]);
  -[SCNAnimation setRemovedOnCompletion:](v5, "setRemovedOnCompletion:", [coder decodeBoolForKey:@"removedOnCompletion"]);
  -[SCNAnimation setAdditive:](v5, "setAdditive:", [coder decodeBoolForKey:@"additive"]);
  -[SCNAnimation setCumulative:](v5, "setCumulative:", [coder decodeBoolForKey:@"cumulative"]);
  -[SCNAnimation setUsesSceneTimeBase:](v5, "setUsesSceneTimeBase:", [coder decodeBoolForKey:@"usesSceneTimeBase"]);
  -[SCNAnimation setFillsForward:](v5, "setFillsForward:", [coder decodeBoolForKey:@"fillForward"]);
  -[SCNAnimation setFillsBackward:](v5, "setFillsBackward:", [coder decodeBoolForKey:@"fillBackward"]);
  -[SCNAnimation setTimingFunction:](v5, "setTimingFunction:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"timingFunction"]);
  [coder decodeDoubleForKey:@"fadeInDuration"];
  [(SCNAnimation *)v5 setFadeInDuration:?];
  [coder decodeDoubleForKey:@"fadeOutDuration"];
  [(SCNAnimation *)v5 setFadeOutDuration:?];
  +[SCNTransaction commit];
  v10 = [coder decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"userInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5->_userInfo = [v10 mutableCopy];
  }

  v5->_didMutate = 0;
  return v5;
}

+ (SCNAnimation)animationNamed:(NSString *)animationName
{
  v5 = SCNGetResourceBundle();
  pathExtension = [(NSString *)animationName pathExtension];
  stringByDeletingPathExtension = [(NSString *)animationName stringByDeletingPathExtension];
  if (pathExtension)
  {
    v8 = pathExtension;
  }

  else
  {
    v8 = @"scna";
  }

  result = [v5 URLForResource:stringByDeletingPathExtension withExtension:v8];
  if (result)
  {

    return [self animationWithContentsOfURL:result];
  }

  return result;
}

+ (id)animationFromScene:(id)scene
{
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  rootNode = [scene rootNode];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__SCNAnimation_animationFromScene___block_invoke;
  v10[3] = &unk_2782FF308;
  v10[4] = array;
  v10[5] = &v11;
  [rootNode enumerateHierarchyUsingBlock:v10];
  if ([array count])
  {
    if ([array count] == 1)
    {
      v6 = +[SCNAnimation animationWithCAAnimation:](SCNAnimation, "animationWithCAAnimation:", [array objectAtIndexedSubscript:0]);
    }

    else
    {
      animation = [MEMORY[0x277CD9E00] animation];
      [animation setAnimations:array];
      [animation setDuration:v12[3]];
      v6 = [SCNAnimation animationWithCAAnimation:animation];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __35__SCNAnimation_animationFromScene___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a2 animationKeys];
  result = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [a2 animationForKey:*(*(&v12 + 1) + 8 * v8)];
        v10 = *(*(*(a1 + 40) + 8) + 24);
        [v9 duration];
        if (v10 >= v11)
        {
          v11 = v10;
        }

        *(*(*(a1 + 40) + 8) + 24) = v11;
        [*(a1 + 32) addObject:v9];
        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

+ (SCNAnimation)animationWithContentsOfURL:(NSURL *)animationUrl
{
  v13[3] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
  v12 = 0;
  v6 = MEMORY[0x277CCAAC8];
  v7 = MEMORY[0x277CBEB98];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v8 = [v6 unarchivedObjectOfClasses:objc_msgSend(v7 fromData:"setWithArray:" error:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v13, 3)), v5, &v12}];
  if (v12 && (v9 = scn_default_log(), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
    [(SCNAnimation *)animationUrl animationWithContentsOfURL:?];
    if (!v8)
    {
      return v8;
    }
  }

  else if (!v8)
  {
    return v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [self animationFromScene:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [SCNAnimation animationWithCAAnimation:v8];
  }

  return v8;
}

+ (SCNAnimation)animationWithCAAnimation:(CAAnimation *)caAnimation
{
  v3 = [[SCNAnimation alloc] initWithCAAnimation:caAnimation];

  return v3;
}

- (void)prepareWithTarget:(id)target implicitDuration:(double)duration
{
  if (self->_animationRef || (v9 = [(SCNAnimation *)self caAnimation]) == 0)
  {
LABEL_2:
    [(SCNAnimation *)self duration];
    if (v6 == 0.0)
    {
      if (duration == 0.0)
      {
        v7 = scn_default_log();
        duration = 0.25;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_DEFAULT, "Warning: default duration is zero - using default transaction duration", v12, 2u);
        }
      }

      [(SCNAnimation *)self setDuration:duration];
    }

    return;
  }

  v10 = CAAnimationToC3DAnimation(v9, target);
  if (v10)
  {
    [(SCNAnimation *)self _setAnimationRef:v10];
    [(SCNAnimation *)self _syncObjCModel];
    goto LABEL_2;
  }

  v11 = scn_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SCNAnimation prepareWithTarget:implicitDuration:];
  }
}

- (id)userAnimation
{
  if (*(self + 17))
  {
    return *(self + 17);
  }

  return self;
}

- (id)caAnimation
{
  didMutate = self->_didMutate;
  self->_didMutate = 0;
  userAnimation = self->_userAnimation;
  if (didMutate || userAnimation == 0)
  {
    objc_sync_enter(self);
    userAnimation = self->_caAnimationCache;
    objc_sync_exit(self);
    if (didMutate || !userAnimation)
    {
      animationRef = self->_animationRef;
      if (animationRef)
      {
        userAnimation = C3DAnimationToCAAnimation(animationRef);
LABEL_18:
        objc_sync_enter(self);

        self->_caAnimationCache = userAnimation;
        objc_sync_exit(self);
        return userAnimation;
      }

      v7 = self->_userAnimation;
      if (v7)
      {
        userAnimation = [v7 copy];
        [(SCNAnimation *)self duration];
        [userAnimation setDuration:?];
        [(SCNAnimation *)self repeatCount];
        *&v8 = v8;
        [userAnimation setRepeatCount:v8];
        [userAnimation setAutoreverses:{-[SCNAnimation autoreverses](self, "autoreverses")}];
        [(SCNAnimation *)self startDelay];
        [userAnimation setBeginTime:?];
        [(SCNAnimation *)self timeOffset];
        [userAnimation setTimeOffset:?];
        [(SCNAnimation *)self fadeInDuration];
        [userAnimation setFadeInDuration:?];
        [(SCNAnimation *)self fadeOutDuration];
        [userAnimation setFadeOutDuration:?];
        [userAnimation setRemovedOnCompletion:{-[SCNAnimation isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
        [userAnimation setCommitsOnCompletion:{-[SCNAnimation isAppliedOnCompletion](self, "isAppliedOnCompletion")}];
        [userAnimation setUsesSceneTimeBase:{-[SCNAnimation usesSceneTimeBase](self, "usesSceneTimeBase")}];
        fillsForward = [(SCNAnimation *)self fillsForward];
        fillsBackward = [(SCNAnimation *)self fillsBackward];
        v11 = MEMORY[0x277CDA230];
        if (!fillsForward)
        {
          v11 = MEMORY[0x277CDA228];
        }

        v12 = MEMORY[0x277CDA238];
        if (!fillsForward)
        {
          v12 = MEMORY[0x277CDA240];
        }

        if (!fillsBackward)
        {
          v11 = v12;
        }

        [userAnimation setFillMode:*v11];
        [userAnimation setAnimationEvents:{-[SCNAnimation animationEvents](self, "animationEvents")}];
        goto LABEL_18;
      }

      v14 = scn_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCNAnimation caAnimation];
      }

      return 0;
    }
  }

  return userAnimation;
}

- (void)setKeyPath:(NSString *)keyPath
{
  self->_keyPath = [(NSString *)keyPath copy];
  if (self->_animationRef)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __27__SCNAnimation_setKeyPath___block_invoke;
    v5[3] = &unk_2782FC950;
    v5[4] = keyPath;
    v5[5] = self;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
  }
}

void __27__SCNAnimation_setKeyPath___block_invoke(uint64_t a1)
{
  v2 = C3DCreatePathComponentsFromString(*(a1 + 32));
  C3DAnimationSetKeyPath(*(*(a1 + 40) + 8), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)setDuration:(NSTimeInterval)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __28__SCNAnimation_setDuration___block_invoke;
      v5[3] = &unk_2782FB7D0;
      v5[4] = self;
      *&v5[5] = duration;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
    }
  }
}

float __28__SCNAnimation_setDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DAnimationSetDuration(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setRepeatCount:(CGFloat)repeatCount
{
  if (self->_repeatCount != repeatCount)
  {
    self->_repeatCount = repeatCount;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __31__SCNAnimation_setRepeatCount___block_invoke;
      v5[3] = &unk_2782FB7D0;
      v5[4] = self;
      *&v5[5] = repeatCount;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
    }
  }
}

float __31__SCNAnimation_setRepeatCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DAnimationSetRepeatCount(*(*(a1 + 32) + 8), v1);
  return result;
}

- (double)repeatDuration
{
  [(SCNAnimation *)self duration];
  v4 = v3;
  [(SCNAnimation *)self repeatCount];
  result = v4 * v5;
  if (self->_autoreverses)
  {
    return result + result;
  }

  return result;
}

- (void)setRepeatDuration:(double)duration
{
  if (duration != 0.0)
  {
    duration = self->_duration;
    if (duration != 0.0)
    {
      v4 = duration / duration;
      if (self->_autoreverses)
      {
        v4 = v4 * 0.5;
      }

      [(SCNAnimation *)self setRepeatCount:v4];
    }
  }
}

- (void)setTimeOffset:(NSTimeInterval)timeOffset
{
  if (self->_timeOffset != timeOffset)
  {
    self->_timeOffset = timeOffset;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __30__SCNAnimation_setTimeOffset___block_invoke;
      v5[3] = &unk_2782FB7D0;
      v5[4] = self;
      *&v5[5] = timeOffset;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
    }
  }
}

- (void)setStartDelay:(NSTimeInterval)startDelay
{
  if (self->_beginTime != startDelay)
  {
    self->_beginTime = startDelay;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __30__SCNAnimation_setStartDelay___block_invoke;
      v5[3] = &unk_2782FB7D0;
      v5[4] = self;
      *&v5[5] = startDelay;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
    }
  }
}

- (void)setAutoreverses:(BOOL)autoreverses
{
  if (self->_autoreverses != autoreverses)
  {
    v9 = v3;
    v10 = v4;
    self->_autoreverses = autoreverses;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __32__SCNAnimation_setAutoreverses___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = autoreverses;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

- (void)setUsesSceneTimeBase:(BOOL)usesSceneTimeBase
{
  if (self->_usesSceneTimeBase != usesSceneTimeBase)
  {
    v9 = v3;
    v10 = v4;
    self->_usesSceneTimeBase = usesSceneTimeBase;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __37__SCNAnimation_setUsesSceneTimeBase___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = usesSceneTimeBase;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

- (void)setFillsForward:(BOOL)fillsForward
{
  if (self->_fillForward != fillsForward)
  {
    v9 = v3;
    v10 = v4;
    self->_fillForward = fillsForward;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __32__SCNAnimation_setFillsForward___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = fillsForward;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

void __32__SCNAnimation_setFillsForward___block_invoke(uint64_t a1)
{
  v2 = C3DAnimationGetFillModeMask(*(*(a1 + 32) + 8)) & 0xFE;
  v3 = *(*(a1 + 32) + 8);
  v4 = v2 | *(a1 + 40);

  C3DAnimationSetFillModeMask(v3, v4);
}

- (void)setFillsBackward:(BOOL)fillsBackward
{
  if (self->_fillBackward != fillsBackward)
  {
    v9 = v3;
    v10 = v4;
    self->_fillBackward = fillsBackward;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __33__SCNAnimation_setFillsBackward___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = fillsBackward;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

void __33__SCNAnimation_setFillsBackward___block_invoke(uint64_t a1)
{
  v2 = C3DAnimationGetFillModeMask(*(*(a1 + 32) + 8)) & 0xFFFFFFFD;
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 32) + 8);

  C3DAnimationSetFillModeMask(v4, v3 | v2);
}

- (void)setTimingFunction:(SCNTimingFunction *)timingFunction
{
  v5 = self->_timingFunction;
  if (v5 != timingFunction)
  {
    v8[8] = v3;
    v8[9] = v4;

    self->_timingFunction = timingFunction;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __34__SCNAnimation_setTimingFunction___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = timingFunction;
      v8[5] = self;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v8];
    }
  }
}

CFTypeRef __34__SCNAnimation_setTimingFunction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) c3dTimingFunction];
  v3 = *(*(a1 + 40) + 8);

  return C3DAnimationSetTimingFunction(v3, v2);
}

- (void)setRemovedOnCompletion:(BOOL)removedOnCompletion
{
  if (self->_removedOnCompletion != removedOnCompletion)
  {
    v9 = v3;
    v10 = v4;
    self->_removedOnCompletion = removedOnCompletion;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__SCNAnimation_setRemovedOnCompletion___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = removedOnCompletion;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

- (void)setAppliedOnCompletion:(BOOL)appliedOnCompletion
{
  if (self->_applyOnCompletion != appliedOnCompletion)
  {
    v9 = v3;
    v10 = v4;
    self->_applyOnCompletion = appliedOnCompletion;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__SCNAnimation_setAppliedOnCompletion___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = appliedOnCompletion;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

- (void)setAnimationDidStart:(SCNAnimationDidStartBlock)animationDidStart
{
  v5 = self->_animationDidStart;
  if (v5)
  {
    _Block_release(v5);
  }

  self->_animationDidStart = 0;
  if (animationDidStart)
  {
    self->_animationDidStart = _Block_copy(animationDidStart);
  }

  if (self->_animationRef)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__SCNAnimation_setAnimationDidStart___block_invoke;
    v6[3] = &unk_2782FB820;
    v6[4] = self;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v6];
  }
}

void *__37__SCNAnimation_setAnimationDidStart___block_invoke(uint64_t a1)
{
  result = C3DAnimationGetAnimationCallbacks(*(*(a1 + 32) + 8));
  *result = SCNAnimationDidStart;
  return result;
}

- (void)setAnimationDidStop:(SCNAnimationDidStopBlock)animationDidStop
{
  v5 = self->_animationDidStop;
  if (v5)
  {
    _Block_release(v5);
  }

  self->_animationDidStop = 0;
  if (animationDidStop)
  {
    self->_animationDidStop = _Block_copy(animationDidStop);
  }

  if (self->_animationRef)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SCNAnimation_setAnimationDidStop___block_invoke;
    v6[3] = &unk_2782FB820;
    v6[4] = self;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v6];
  }
}

uint64_t __36__SCNAnimation_setAnimationDidStop___block_invoke(uint64_t a1)
{
  result = C3DAnimationGetAnimationCallbacks(*(*(a1 + 32) + 8));
  *(result + 8) = SCNAnimationDidStop;
  return result;
}

- (void)setAnimationEvents:(NSArray *)animationEvents
{
  v5 = self->_animationEvents;
  if (v5 != animationEvents)
  {
    v8[8] = v3;
    v8[9] = v4;

    self->_animationEvents = animationEvents;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __35__SCNAnimation_setAnimationEvents___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = animationEvents;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v8];
    }
  }
}

CFTypeRef __35__SCNAnimation_setAnimationEvents___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = _CAToC3DAnimationEvents(*(a1 + 40));

  return C3DAnimationSetAnimationEvents(v1, v2);
}

- (void)setBlendInDuration:(NSTimeInterval)blendInDuration
{
  if (self->_fadeInDuration != blendInDuration)
  {
    self->_fadeInDuration = blendInDuration;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __35__SCNAnimation_setBlendInDuration___block_invoke;
      v5[3] = &unk_2782FB7D0;
      v5[4] = self;
      *&v5[5] = blendInDuration;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
    }
  }
}

float __35__SCNAnimation_setBlendInDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DAnimationSetFadeInDuration(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setBlendOutDuration:(NSTimeInterval)blendOutDuration
{
  if (self->_fadeOutDuration != blendOutDuration)
  {
    self->_fadeOutDuration = blendOutDuration;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __36__SCNAnimation_setBlendOutDuration___block_invoke;
      v5[3] = &unk_2782FB7D0;
      v5[4] = self;
      *&v5[5] = blendOutDuration;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
    }
  }
}

float __36__SCNAnimation_setBlendOutDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  C3DAnimationSetFadeOutDuration(*(*(a1 + 32) + 8), v1);
  return result;
}

- (void)setAdditive:(BOOL)additive
{
  if (self->_additive != additive)
  {
    v9 = v3;
    v10 = v4;
    self->_additive = additive;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __28__SCNAnimation_setAdditive___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = additive;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

void __28__SCNAnimation_setAdditive___block_invoke(uint64_t a1)
{
  TypeID = C3DAnimationClusterGetTypeID();
  if (TypeID == CFGetTypeID(*(*(a1 + 32) + 8)))
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __28__SCNAnimation_setAdditive___block_invoke_cold_1();
    }
  }

  C3DAnimationSetAdditive(*(*(a1 + 32) + 8), *(a1 + 40));
}

- (void)setCumulative:(BOOL)cumulative
{
  if (self->_cumulative != cumulative)
  {
    v9 = v3;
    v10 = v4;
    self->_cumulative = cumulative;
    [(SCNAnimation *)self _didMutate];
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __30__SCNAnimation_setCumulative___block_invoke;
      v7[3] = &unk_2782FB7F8;
      v7[4] = self;
      v8 = cumulative;
      [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
    }
  }
}

void __30__SCNAnimation_setCumulative___block_invoke(uint64_t a1)
{
  TypeID = C3DAnimationClusterGetTypeID();
  if (TypeID == CFGetTypeID(*(*(a1 + 32) + 8)))
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __30__SCNAnimation_setCumulative___block_invoke_cold_1();
    }
  }

  C3DAnimationSetCumulative(*(*(a1 + 32) + 8), *(a1 + 40));
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_userInfoLock);
  userInfo = self->_userInfo;
  if (value && !userInfo)
  {
    userInfo = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_userInfo = userInfo;
LABEL_5:
    [(NSMutableDictionary *)userInfo setValue:value forKey:key];
    goto LABEL_6;
  }

  if (value)
  {
    goto LABEL_5;
  }

  [(NSMutableDictionary *)userInfo removeObjectForKey:key];
LABEL_6:

  os_unfair_lock_unlock(&self->_userInfoLock);
}

- (id)valueForUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_userInfoLock);
  v5 = [(NSMutableDictionary *)self->_userInfo valueForKey:key];
  os_unfair_lock_unlock(&self->_userInfoLock);

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  duration = self->_duration;
  repeatCount = self->_repeatCount;
  return [v3 stringWithFormat:@"<%@: %p, keyPath=%@ duration=%f repeatCount=%f>", v5, self, self->_keyPath, duration, repeatCount];
}

- (void)_optimizeKeyframesWithTarget:(id)target
{
  [(SCNAnimation *)self prepareWithTarget:target implicitDuration:0.0];
  animationRef = self->_animationRef;
  if (animationRef)
  {
    _optimizeKeyframes(animationRef);
    self->_didMutate = 1;

    self->_userAnimation = 0;
  }

  else
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21BEF7000, v5, OS_LOG_TYPE_DEFAULT, "Warning: failed to optimize keyframes", v6, 2u);
    }
  }
}

- (id)subAnimations
{
  animationRef = self->_animationRef;
  if (!animationRef)
  {
    return 0;
  }

  v4 = CFGetTypeID(animationRef);
  if (v4 == C3DAnimationGroupGetTypeID())
  {
    v5 = CFRetain(self->_animationRef);
  }

  else
  {
    if (v4 != C3DAnimationClusterGetTypeID())
    {
      return 0;
    }

    v5 = C3DAnimationGroupCreateWithAnimationCluster(self->_animationRef);
  }

  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  AnimationCount = C3DAnimationGroupGetAnimationCount(v5);
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:AnimationCount];
  if (AnimationCount >= 1)
  {
    for (i = 0; i != AnimationCount; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(v6, i);
      Copy = C3DAnimationCreateCopy(AnimationAtIndex);
      [v8 addObject:{+[SCNAnimation animationWithC3DAnimation:](SCNAnimation, "animationWithC3DAnimation:", Copy)}];
      CFRelease(Copy);
    }
  }

  CFRelease(v6);
  return v8;
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)encodeWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)animationWithContentsOfURL:(uint64_t)a1 .cold.1(uint64_t a1, id *a2)
{
  [*a2 description];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)prepareWithTarget:implicitDuration:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)caAnimation
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __28__SCNAnimation_setAdditive___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __30__SCNAnimation_setCumulative___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end