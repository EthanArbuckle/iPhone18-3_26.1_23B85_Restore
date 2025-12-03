@interface CAKeyframeAnimation(SCNAddition)
- (uint64_t)SCN_evaluateAtTime:()SCNAddition reverse:to:;
@end

@implementation CAKeyframeAnimation(SCNAddition)

- (uint64_t)SCN_evaluateAtTime:()SCNAddition reverse:to:
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  c3dAnimation = [self c3dAnimation];
  if (!c3dAnimation)
  {
    return 0;
  }

  return C3DKeyframedAnimationEvaluate(c3dAnimation, a4, a5, a2);
}

@end