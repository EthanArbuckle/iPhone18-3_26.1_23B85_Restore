@interface BCViewPropertyAnimatorGroup
- (BOOL)isReversed;
- (BOOL)isRunning;
- (double)fractionComplete;
- (int64_t)state;
- (void)addCompletion:(id)completion;
- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor;
- (void)finishAnimationAtPosition:(int64_t)position;
- (void)pauseAnimation;
- (void)setAnimators:(id)animators;
- (void)setFractionComplete:(double)complete;
- (void)setReversed:(BOOL)reversed;
- (void)startAnimation;
- (void)startAnimationAfterDelay:(double)delay;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation BCViewPropertyAnimatorGroup

- (void)setAnimators:(id)animators
{
  animatorsCopy = animators;
  animators = self->_animators;
  p_animators = &self->_animators;
  if (animators != animatorsCopy)
  {
    v8 = animatorsCopy;
    objc_storeStrong(p_animators, animators);
    animatorsCopy = v8;
  }
}

- (void)finishAnimationAtPosition:(int64_t)position
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v5 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v9 + 1) + 8 * v8) finishAnimationAtPosition:position];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)pauseAnimation
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v3 = [animators countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v7 + 1) + 8 * v6) pauseAnimation];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [animators countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)startAnimation
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v3 = [animators countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v7 + 1) + 8 * v6) startAnimation];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [animators countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)startAnimationAfterDelay:(double)delay
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v5 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v9 + 1) + 8 * v8) startAnimationAfterDelay:delay];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)stopAnimation:(BOOL)animation
{
  animationCopy = animation;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v5 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v9 + 1) + 8 * v8) stopAnimation:animationCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)isRunning
{
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v3 = [animators objectAtIndexedSubscript:0];
  isRunning = [v3 isRunning];

  return isRunning;
}

- (BOOL)isReversed
{
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v3 = [animators objectAtIndexedSubscript:0];
  isReversed = [v3 isReversed];

  return isReversed;
}

- (void)setReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v5 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v9 + 1) + 8 * v8) setReversed:reversedCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (double)fractionComplete
{
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v3 = [animators objectAtIndexedSubscript:0];
  [v3 fractionComplete];
  v5 = v4;

  return v5;
}

- (void)setFractionComplete:(double)complete
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v5 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v9 + 1) + 8 * v8) setFractionComplete:complete];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [animators countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (int64_t)state
{
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v3 = [animators objectAtIndexedSubscript:0];
  state = [v3 state];

  return state;
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v5 = [animators objectAtIndexedSubscript:0];
  [v5 addCompletion:completionCopy];
}

- (void)continueAnimationWithTimingParameters:(id)parameters durationFactor:(double)factor
{
  parametersCopy = parameters;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  animators = [(BCViewPropertyAnimatorGroup *)self animators];
  v8 = [animators countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(animators);
        }

        [*(*(&v12 + 1) + 8 * v11) continueAnimationWithTimingParameters:parametersCopy durationFactor:factor];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [animators countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end