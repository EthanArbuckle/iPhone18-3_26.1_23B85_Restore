@interface ARUIRingGroupGlobalAnimationSequencer
+ (id)sharedInstance;
- (id)_init;
- (void)_displayLinkFired:(id)a3;
- (void)_updateDisplayLink;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation ARUIRingGroupGlobalAnimationSequencer

- (void)_updateDisplayLink
{
  v3 = [(ARUIRingGroupGlobalAnimationSequencer *)self _needsDisplayLink];
  displayLink = self->_displayLink;
  if (v3)
  {
    if (!displayLink)
    {
      v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkFired_];
      v6 = self->_displayLink;
      self->_displayLink = v5;

      v7 = self->_displayLink;
      v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v7 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];
    }
  }

  else if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v8 = self->_displayLink;
    self->_displayLink = 0;

    self->_lastUpdateTime = NAN;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ARUIRingGroupGlobalAnimationSequencer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __55__ARUIRingGroupGlobalAnimationSequencer_sharedInstance__block_invoke()
{
  v0 = [[ARUIRingGroupGlobalAnimationSequencer alloc] _init];
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ARUIRingGroupGlobalAnimationSequencer;
  v2 = [(ARUIRingGroupGlobalAnimationSequencer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ARUIObserverStore);
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_lastUpdateTime = NAN;
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  [(ARUIObserverStore *)self->_observers addObserver:a3];

  [(ARUIRingGroupGlobalAnimationSequencer *)self _updateDisplayLink];
}

- (void)removeObserver:(id)a3
{
  [(ARUIObserverStore *)self->_observers removeObserver:a3];

  [(ARUIRingGroupGlobalAnimationSequencer *)self _updateDisplayLink];
}

- (void)_displayLinkFired:(id)a3
{
  [a3 timestamp];
  v5 = v4 - self->_lastUpdateTime;
  self->_lastUpdateTime = v4;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ARUIRingGroupGlobalAnimationSequencer__displayLinkFired___block_invoke;
  v7[3] = &unk_1E83CE668;
  v7[4] = self;
  *&v7[5] = v5;
  [(ARUIObserverStore *)observers enumerateObserversWithBlock:v7];
  [(ARUIRingGroupGlobalAnimationSequencer *)self _updateDisplayLink];
}

@end