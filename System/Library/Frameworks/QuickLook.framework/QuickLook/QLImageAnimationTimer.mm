@interface QLImageAnimationTimer
+ (id)sharedTimer;
- (QLImageAnimationTimer)init;
- (void)addAnimationTimerObserver:(id)a3;
- (void)animationTimerFired:(id)a3;
- (void)removeAnimationTimerObserver:(id)a3;
@end

@implementation QLImageAnimationTimer

- (QLImageAnimationTimer)init
{
  v5.receiver = self;
  v5.super_class = QLImageAnimationTimer;
  v2 = [(QLImageAnimationTimer *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(QLImageAnimationTimer *)v2 setObservers:v3];
  }

  return v2;
}

+ (id)sharedTimer
{
  if (sharedTimer_once[0] != -1)
  {
    +[QLImageAnimationTimer sharedTimer];
  }

  v3 = sharedTimer_sAnimatedImageTimer;

  return v3;
}

uint64_t __36__QLImageAnimationTimer_sharedTimer__block_invoke()
{
  v0 = objc_alloc_init(QLImageAnimationTimer);
  v1 = sharedTimer_sAnimatedImageTimer;
  sharedTimer_sAnimatedImageTimer = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)addAnimationTimerObserver:(id)a3
{
  v9 = a3;
  v4 = [(QLImageAnimationTimer *)self observers];
  v5 = [v4 containsObject:v9];

  if ((v5 & 1) == 0)
  {
    v6 = [(QLImageAnimationTimer *)self observers];
    if (![v6 count])
    {
      v7 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_animationTimerFired_];
      v8 = [MEMORY[0x277CBEB88] mainRunLoop];
      [v7 addToRunLoop:v8 forMode:*MEMORY[0x277CBE738]];

      [(QLImageAnimationTimer *)self setDisplayLink:v7];
    }

    [v6 addObject:v9];
  }
}

- (void)removeAnimationTimerObserver:(id)a3
{
  v4 = a3;
  v6 = [(QLImageAnimationTimer *)self observers];
  [v6 removeObject:v4];

  if (![v6 count])
  {
    v5 = [(QLImageAnimationTimer *)self displayLink];
    [v5 invalidate];
  }
}

- (void)animationTimerFired:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(QLImageAnimationTimer *)self observers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        [v4 timestamp];
        [v10 animationTimerFired:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end