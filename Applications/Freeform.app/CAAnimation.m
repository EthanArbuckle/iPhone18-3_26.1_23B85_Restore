@interface CAAnimation
- (float)solveForInput:(float)a3;
@end

@implementation CAAnimation

- (float)solveForInput:(float)a3
{
  v4 = self;
  v5 = [(CAAnimation *)v4 timingFunction];
  if (!v5)
  {
    v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  }

  v7 = v5;
  *&v6 = a3;
  [(CAMediaTimingFunction *)v5 _solveForInput:v6];
  v9 = v8;

  return v9;
}

@end