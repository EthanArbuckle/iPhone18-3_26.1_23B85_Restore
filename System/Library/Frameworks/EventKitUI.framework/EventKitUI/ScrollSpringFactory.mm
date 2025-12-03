@interface ScrollSpringFactory
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
@end

@implementation ScrollSpringFactory

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  v5 = _createSpringOfBasicAnimationDependingOnDebugState(path, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    [(ScrollSpringFactory *)self initialVelocity];
    [v6 setVelocity:?];
    [(ScrollSpringFactory *)self initialVelocity];
    if (v7 < 0.0)
    {
      v7 = -v7;
    }

    if (v7 > 20.0)
    {
      [v6 setVelocity:20.0];
    }
  }

  return v5;
}

@end