@interface CAAnimation
+ (id)mf_animationWithKeyPath:(id)path type:(unint64_t)type;
+ (id)shortDescriptionWithAnimationType:(unint64_t)type;
- (void)mf_executeAnimationCompletionFinished:(BOOL)finished;
- (void)mf_setAnimationCompletion:(id)completion;
@end

@implementation CAAnimation

+ (id)mf_animationWithKeyPath:(id)path type:(unint64_t)type
{
  pathCopy = path;
  if (type == 1)
  {
    v6 = [CASpringAnimation animationWithKeyPath:pathCopy];
    [v6 setMass:2.0];
    [v6 setStiffness:300.0];
    [v6 setDamping:400.0];
  }

  else if (type)
  {
    v6 = 0;
  }

  else
  {
    v6 = [CABasicAnimation animationWithKeyPath:pathCopy];
  }

  return v6;
}

+ (id)shortDescriptionWithAnimationType:(unint64_t)type
{
  v3 = @"Magic Spring";
  if (type != 1)
  {
    v3 = 0;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"Basic";
  }
}

- (void)mf_setAnimationCompletion:(id)completion
{
  if (completion)
  {
    v4 = objc_retainBlock(completion);
    [CAAnimation setValue:"setValue:forKey:" forKey:?];
  }
}

- (void)mf_executeAnimationCompletionFinished:(BOOL)finished
{
  finishedCopy = finished;
  v4 = [(CAAnimation *)self valueForKey:@"MFAnimationCompletionKey"];
  if (v4)
  {
    v4[2](v4, finishedCopy);
  }
}

@end