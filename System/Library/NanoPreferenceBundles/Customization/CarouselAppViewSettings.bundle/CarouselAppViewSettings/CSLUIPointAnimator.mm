@interface CSLUIPointAnimator
+ (id)animateFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint withApplier:(id)applier completion:(id)completion;
- (void)_cleanupAfterAnimation;
- (void)_displayLinkFired:(id)fired;
@end

@implementation CSLUIPointAnimator

+ (id)animateFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint withApplier:(id)applier completion:(id)completion
{
  x = toPoint.x;
  y = toPoint.y;
  v22 = point.x;
  v23 = point.y;
  applierCopy = applier;
  completionCopy = completion;
  v9 = objc_opt_new();
  v10.f64[0] = v22;
  v10.f64[1] = v23;
  v11.f64[0] = x;
  v11.f64[1] = y;
  *(v9 + 8) = vcvt_f32_f64(v10);
  *(v9 + 16) = vcvt_f32_f64(v11);
  *(v9 + 24) = CACurrentMediaTime();
  v12 = +[CASpringAnimation animation];
  [v12 setStiffness:500.0];
  [v12 setDamping:500.0];
  [v12 setMass:3.0];
  objc_storeStrong((v9 + 40), v12);
  [v12 durationForEpsilon:0.005];
  v14 = v13;
  [v12 setDuration:?];
  *(v9 + 48) = v14;
  v15 = [applierCopy copy];
  v16 = *(v9 + 56);
  *(v9 + 56) = v15;

  v17 = [completionCopy copy];
  v18 = *(v9 + 64);
  *(v9 + 64) = v17;

  v19 = [CADisplayLink displayLinkWithTarget:v9 selector:"_displayLinkFired:"];
  objc_storeStrong((v9 + 32), v19);
  v20 = +[NSRunLoop currentRunLoop];
  [v19 addToRunLoop:v20 forMode:NSRunLoopCommonModes];

  return v9;
}

- (void)_displayLinkFired:(id)fired
{
  firedCopy = fired;
  if (self->_applier)
  {
    v4 = CACurrentMediaTime() - self->_startTime;
    springDuration = self->_springDuration;
    if (v4 <= springDuration)
    {
      v7 = v4 / springDuration;
      [(CASpringAnimation *)self->_spring _timeFunction:v4 / springDuration];
      v9 = v8;
      v10 = 1.0;
      if (v9 < 1.0)
      {
        [(CASpringAnimation *)self->_spring _timeFunction:v7];
      }

      v11 = v10;
      v12 = vcvtq_f64_f32(vmla_n_f32(*self->_beginPoint, vsub_f32(*self->_endPoint, *self->_beginPoint), v11));
      (*(self->_applier + 2))(v12, v12.n128_f64[1]);
    }

    else
    {
      v6 = vcvtq_f64_f32(*self->_endPoint);
      (*(self->_applier + 2))(v6, v6.n128_f64[1]);
      [(CSLUIPointAnimator *)self _cleanupAfterAnimation];
    }
  }
}

- (void)_cleanupAfterAnimation
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  selfCopy = self;
  completion = selfCopy->_completion;
  if (completion)
  {
    completion[2]();
  }

  applier = selfCopy->_applier;
  selfCopy->_applier = 0;

  v6 = selfCopy->_completion;
  selfCopy->_completion = 0;
}

@end