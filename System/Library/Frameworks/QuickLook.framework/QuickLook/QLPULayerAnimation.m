@interface QLPULayerAnimation
- (BOOL)isReadyToComplete;
- (NSString)description;
- (QLPULayerAnimation)initWithLayer:(id)a3 key:(id)a4;
- (void)_updateLayerAnimation;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)finishImmediately;
- (void)setSpeed:(float)a3 timeOffset:(double)a4 beginTime:(double)a5;
@end

@implementation QLPULayerAnimation

- (QLPULayerAnimation)initWithLayer:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = QLPULayerAnimation;
  v9 = [(QLPULayerAnimation *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layer, a3);
    v11 = [v8 copy];
    key = v10->_key;
    v10->_key = v11;

    v13 = [v7 animationForKey:v10->_key];
    animation = v10->__animation;
    v10->__animation = v13;

    [(CAAnimation *)v10->__animation speed];
    v10->_speed = v15;
    [(CAAnimation *)v10->__animation timeOffset];
    v10->_timeOffset = v16;
    [(CAAnimation *)v10->__animation beginTime];
    v10->_beginTime = v17;
    v10->_isAnimationRunning = v10->_speed > 0.0;
  }

  return v10;
}

- (BOOL)isReadyToComplete
{
  v9.receiver = self;
  v9.super_class = QLPULayerAnimation;
  if (![(QLPUAnimationGroup *)&v9 isReadyToComplete])
  {
    return 0;
  }

  v3 = [(QLPULayerAnimation *)self _animation];
  if (v3 && self->_isAnimationRunning)
  {
    v4 = [(QLPULayerAnimation *)self layer];
    v5 = [(QLPULayerAnimation *)self key];
    v6 = [v4 animationForKey:v5];
    v7 = v3 != v6;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setSpeed:(float)a3 timeOffset:(double)a4 beginTime:(double)a5
{
  v9 = [(QLPULayerAnimation *)self _animation];
  if (v9)
  {
    v15 = v9;
    v10 = [(QLPULayerAnimation *)self layer];
    v11 = [(QLPULayerAnimation *)self key];
    v12 = [v10 animationForKey:v11];

    if (v15 == v12)
    {
      if (a3 == 0.0)
      {
        if (a4 < 0.0)
        {
          a4 = 0.0;
        }

        [v15 duration];
        v14 = v13 + -0.01;
        if (a4 >= v14)
        {
          a4 = v14;
        }
      }

      if (self->_speed != a3 || a4 != self->_timeOffset || self->_beginTime != a5)
      {
        self->_speed = a3;
        self->_timeOffset = a4;
        self->_beginTime = a5;
        [(QLPULayerAnimation *)self _updateLayerAnimation];
      }
    }

    else
    {
      self->_isAnimationRunning = 0;
      [(QLPULayerAnimation *)self _setAnimation:0];
    }

    v9 = v15;
  }
}

- (void)finishImmediately
{
  v7.receiver = self;
  v7.super_class = QLPULayerAnimation;
  [(QLPUAnimationGroup *)&v7 finishImmediately];
  v3 = [(QLPULayerAnimation *)self _animation];
  v4 = [(QLPULayerAnimation *)self layer];
  v5 = [(QLPULayerAnimation *)self key];
  v6 = [v4 animationForKey:v5];

  if (v3 == v6)
  {
    [v4 removeAnimationForKey:v5];
  }
}

- (void)_updateLayerAnimation
{
  v3 = [(QLPULayerAnimation *)self _animation];
  v4 = [v3 mutableCopy];

  *&v5 = self->_speed;
  [v4 setSpeed:v5];
  [v4 setTimeOffset:self->_timeOffset];
  [v4 setBeginTime:self->_beginTime];
  [v4 setDelegate:self];
  v6 = [(QLPULayerAnimation *)self layer];
  v7 = [(QLPULayerAnimation *)self key];
  [v6 removeAnimationForKey:v7];
  [v6 addAnimation:v4 forKey:v7];
  v8 = [v6 animationForKey:v7];

  [(QLPULayerAnimation *)self _setAnimation:v8];
}

- (void)animationDidStart:(id)a3
{
  v4 = a3;
  v5 = [(QLPULayerAnimation *)self _animation];

  if (v5 == v4)
  {
    self->_isAnimationRunning = 1;
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v6 = [(QLPULayerAnimation *)self _animation];

  if (v6 == v5)
  {
    self->_isAnimationRunning = 0;
    [(QLPUAnimationGroup *)self completeIfNeeded];

    [(QLPULayerAnimation *)self _setAnimation:0];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(QLPULayerAnimation *)self layer];
  v7 = [(QLPULayerAnimation *)self key];
  v8 = [v3 stringWithFormat:@"<%@ %p layer: %@; key: %@>", v5, self, v6, v7];;

  return v8;
}

@end