@interface ScrollSpringFactory
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
@end

@implementation ScrollSpringFactory

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v5 = _createSpringOfBasicAnimationDependingOnDebugState(a4, 0);
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