@interface CAAnimation
+ (id)mf_animationWithKeyPath:(id)a3 type:(unint64_t)a4;
+ (id)shortDescriptionWithAnimationType:(unint64_t)a3;
- (void)mf_executeAnimationCompletionFinished:(BOOL)a3;
- (void)mf_setAnimationCompletion:(id)a3;
@end

@implementation CAAnimation

+ (id)mf_animationWithKeyPath:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = [CASpringAnimation animationWithKeyPath:v5];
    [v6 setMass:2.0];
    [v6 setStiffness:300.0];
    [v6 setDamping:400.0];
  }

  else if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [CABasicAnimation animationWithKeyPath:v5];
  }

  return v6;
}

+ (id)shortDescriptionWithAnimationType:(unint64_t)a3
{
  v3 = @"Magic Spring";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Basic";
  }
}

- (void)mf_setAnimationCompletion:(id)a3
{
  if (a3)
  {
    v4 = objc_retainBlock(a3);
    [CAAnimation setValue:"setValue:forKey:" forKey:?];
  }
}

- (void)mf_executeAnimationCompletionFinished:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAAnimation *)self valueForKey:@"MFAnimationCompletionKey"];
  if (v4)
  {
    v4[2](v4, v3);
  }
}

@end