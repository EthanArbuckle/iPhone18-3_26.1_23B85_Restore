@interface CAAnimation
- (float)solveForInput:(float)input;
@end

@implementation CAAnimation

- (float)solveForInput:(float)input
{
  selfCopy = self;
  timingFunction = [(CAAnimation *)selfCopy timingFunction];
  if (!timingFunction)
  {
    timingFunction = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  }

  v7 = timingFunction;
  *&v6 = input;
  [(CAMediaTimingFunction *)timingFunction _solveForInput:v6];
  v9 = v8;

  return v9;
}

@end