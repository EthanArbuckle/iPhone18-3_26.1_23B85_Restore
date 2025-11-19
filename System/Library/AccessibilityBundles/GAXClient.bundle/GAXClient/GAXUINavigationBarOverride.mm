@interface GAXUINavigationBarOverride
- (id)backButtonViewAtPoint:(CGPoint)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation GAXUINavigationBarOverride

- (id)backButtonViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = GAXUINavigationBarOverride;
  v5 = [(GAXUINavigationBarOverride *)&v9 backButtonViewAtPoint:?];
  v6 = +[GAXClient sharedInstance];
  v7 = [v6 serverMode];

  if (v7 == 2)
  {
    [v5 frame];
    v11.x = x;
    v11.y = y;
    if (!CGRectContainsPoint(v12, v11))
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v18.receiver = self;
  v18.super_class = GAXUINavigationBarOverride;
  v7 = [(GAXUINavigationBarOverride *)&v18 hitTest:a4 withEvent:?];
  v8 = +[GAXClient sharedInstance];
  v9 = [v8 serverMode];

  v11 = v9 != 2 || v7 == 0 || v7 == v6;
  if (v11 || ([(GAXUINavigationBarOverride *)v6 convertPoint:v7 toView:x, y], v13 = v12, v15 = v14, [(GAXUINavigationBarOverride *)v7 bounds], v19.x = v13, v19.y = v15, CGRectContainsPoint(v20, v19)))
  {
    v6 = v7;
  }

  v16 = v6;

  return v6;
}

@end