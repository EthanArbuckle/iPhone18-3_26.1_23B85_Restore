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

  v9 = [a1 c3dAnimation];
  if (!v9)
  {
    return 0;
  }

  return C3DKeyframedAnimationEvaluate(v9, a4, a5, a2);
}

@end