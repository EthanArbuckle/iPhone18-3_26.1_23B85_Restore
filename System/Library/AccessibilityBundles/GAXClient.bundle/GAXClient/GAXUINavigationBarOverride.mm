@interface GAXUINavigationBarOverride
- (id)backButtonViewAtPoint:(CGPoint)point;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation GAXUINavigationBarOverride

- (id)backButtonViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9.receiver = self;
  v9.super_class = GAXUINavigationBarOverride;
  v5 = [(GAXUINavigationBarOverride *)&v9 backButtonViewAtPoint:?];
  v6 = +[GAXClient sharedInstance];
  serverMode = [v6 serverMode];

  if (serverMode == 2)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  selfCopy = self;
  v18.receiver = self;
  v18.super_class = GAXUINavigationBarOverride;
  v7 = [(GAXUINavigationBarOverride *)&v18 hitTest:event withEvent:?];
  v8 = +[GAXClient sharedInstance];
  serverMode = [v8 serverMode];

  v11 = serverMode != 2 || v7 == 0 || v7 == selfCopy;
  if (v11 || ([(GAXUINavigationBarOverride *)selfCopy convertPoint:v7 toView:x, y], v13 = v12, v15 = v14, [(GAXUINavigationBarOverride *)v7 bounds], v19.x = v13, v19.y = v15, CGRectContainsPoint(v20, v19)))
  {
    selfCopy = v7;
  }

  v16 = selfCopy;

  return selfCopy;
}

@end