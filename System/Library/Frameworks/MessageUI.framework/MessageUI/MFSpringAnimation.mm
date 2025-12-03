@interface MFSpringAnimation
+ (id)springAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue;
- (MFSpringAnimation)init;
- (void)addCompletionBlock:(id)block;
@end

@implementation MFSpringAnimation

- (MFSpringAnimation)init
{
  v12.receiver = self;
  v12.super_class = MFSpringAnimation;
  v2 = [(MFSpringAnimation *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(MFSpringAnimation *)v2 setAdditive:1];
    UIAnimationDragCoefficient();
    [(CASpringAnimation *)v3 setMass:(v4 + v4)];
    UIAnimationDragCoefficient();
    [(CASpringAnimation *)v3 setStiffness:(300.0 / v5)];
    [(CASpringAnimation *)v3 setDamping:400.0];
    LODWORD(v6) = 1043925356;
    LODWORD(v7) = 1058273231;
    LODWORD(v8) = 1063980840;
    v9 = [MEMORY[0x1E69793D0] functionWithControlPoints:v6 :0.0 :v7 :v8];
    [(MFSpringAnimation *)v3 setTimingFunction:v9];

    [(CASpringAnimation *)v3 durationForEpsilon:0.001];
    [(MFSpringAnimation *)v3 setDuration:?];
    v10 = objc_alloc_init(MFSpringAnimationDelegate);
    [(MFSpringAnimation *)v3 setDelegate:v10];
  }

  return v3;
}

- (void)addCompletionBlock:(id)block
{
  aBlock = block;
  delegate = [(MFSpringAnimation *)self delegate];
  completionBlocks = [delegate completionBlocks];
  v6 = _Block_copy(aBlock);
  [completionBlocks addObject:v6];
}

+ (id)springAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue
{
  pathCopy = path;
  valueCopy = value;
  toValueCopy = toValue;
  v10 = objc_alloc_init(MFSpringAnimation);
  [(MFSpringAnimation *)v10 setKeyPath:pathCopy];
  [(MFSpringAnimation *)v10 setFromValue:valueCopy];
  [(MFSpringAnimation *)v10 setToValue:toValueCopy];

  return v10;
}

@end