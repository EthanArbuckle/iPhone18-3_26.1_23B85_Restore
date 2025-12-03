@interface QLPULayerAnimation
- (BOOL)isReadyToComplete;
- (NSString)description;
- (QLPULayerAnimation)initWithLayer:(id)layer key:(id)key;
- (void)_updateLayerAnimation;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)finishImmediately;
- (void)setSpeed:(float)speed timeOffset:(double)offset beginTime:(double)time;
@end

@implementation QLPULayerAnimation

- (QLPULayerAnimation)initWithLayer:(id)layer key:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = QLPULayerAnimation;
  v9 = [(QLPULayerAnimation *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layer, layer);
    v11 = [keyCopy copy];
    key = v10->_key;
    v10->_key = v11;

    v13 = [layerCopy animationForKey:v10->_key];
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

  _animation = [(QLPULayerAnimation *)self _animation];
  if (_animation && self->_isAnimationRunning)
  {
    layer = [(QLPULayerAnimation *)self layer];
    v5 = [(QLPULayerAnimation *)self key];
    v6 = [layer animationForKey:v5];
    v7 = _animation != v6;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setSpeed:(float)speed timeOffset:(double)offset beginTime:(double)time
{
  _animation = [(QLPULayerAnimation *)self _animation];
  if (_animation)
  {
    v15 = _animation;
    layer = [(QLPULayerAnimation *)self layer];
    v11 = [(QLPULayerAnimation *)self key];
    v12 = [layer animationForKey:v11];

    if (v15 == v12)
    {
      if (speed == 0.0)
      {
        if (offset < 0.0)
        {
          offset = 0.0;
        }

        [v15 duration];
        v14 = v13 + -0.01;
        if (offset >= v14)
        {
          offset = v14;
        }
      }

      if (self->_speed != speed || offset != self->_timeOffset || self->_beginTime != time)
      {
        self->_speed = speed;
        self->_timeOffset = offset;
        self->_beginTime = time;
        [(QLPULayerAnimation *)self _updateLayerAnimation];
      }
    }

    else
    {
      self->_isAnimationRunning = 0;
      [(QLPULayerAnimation *)self _setAnimation:0];
    }

    _animation = v15;
  }
}

- (void)finishImmediately
{
  v7.receiver = self;
  v7.super_class = QLPULayerAnimation;
  [(QLPUAnimationGroup *)&v7 finishImmediately];
  _animation = [(QLPULayerAnimation *)self _animation];
  layer = [(QLPULayerAnimation *)self layer];
  v5 = [(QLPULayerAnimation *)self key];
  v6 = [layer animationForKey:v5];

  if (_animation == v6)
  {
    [layer removeAnimationForKey:v5];
  }
}

- (void)_updateLayerAnimation
{
  _animation = [(QLPULayerAnimation *)self _animation];
  v4 = [_animation mutableCopy];

  *&v5 = self->_speed;
  [v4 setSpeed:v5];
  [v4 setTimeOffset:self->_timeOffset];
  [v4 setBeginTime:self->_beginTime];
  [v4 setDelegate:self];
  layer = [(QLPULayerAnimation *)self layer];
  v7 = [(QLPULayerAnimation *)self key];
  [layer removeAnimationForKey:v7];
  [layer addAnimation:v4 forKey:v7];
  v8 = [layer animationForKey:v7];

  [(QLPULayerAnimation *)self _setAnimation:v8];
}

- (void)animationDidStart:(id)start
{
  startCopy = start;
  _animation = [(QLPULayerAnimation *)self _animation];

  if (_animation == startCopy)
  {
    self->_isAnimationRunning = 1;
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  _animation = [(QLPULayerAnimation *)self _animation];

  if (_animation == stopCopy)
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
  layer = [(QLPULayerAnimation *)self layer];
  v7 = [(QLPULayerAnimation *)self key];
  v8 = [v3 stringWithFormat:@"<%@ %p layer: %@; key: %@>", v5, self, layer, v7];;

  return v8;
}

@end