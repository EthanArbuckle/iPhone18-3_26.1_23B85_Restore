@interface ARUIManualAnimationSequencer
- (ARUIManualAnimationSequencer)init;
- (void)performAfter:(double)after completion:(id)completion;
- (void)tick;
@end

@implementation ARUIManualAnimationSequencer

- (ARUIManualAnimationSequencer)init
{
  v6.receiver = self;
  v6.super_class = ARUIManualAnimationSequencer;
  v2 = [(ARUIManualAnimationSequencer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ARUIObserverStore);
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_animating = 0;
    v2->_timeUntilCompletion = NAN;
  }

  return v2;
}

- (void)tick
{
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__ARUIManualAnimationSequencer_tick__block_invoke;
  v7[3] = &unk_1E83CE640;
  v7[4] = self;
  [(ARUIObserverStore *)observers enumerateObserversWithBlock:v7];
  v4 = self->_timeUntilCompletion + -0.0166666667;
  self->_timeUntilCompletion = v4;
  *&v4 = v4;
  if (ARUIFloatLess(*&v4, 0.0))
  {
    v5 = [self->_completion copy];
    completion = self->_completion;
    self->_completion = 0;

    self->_timeUntilCompletion = NAN;
    v5[2](v5);
  }
}

- (void)performAfter:(double)after completion:(id)completion
{
  v6 = [completion copy];
  completion = self->_completion;
  self->_completion = v6;

  self->_timeUntilCompletion = after;
}

@end