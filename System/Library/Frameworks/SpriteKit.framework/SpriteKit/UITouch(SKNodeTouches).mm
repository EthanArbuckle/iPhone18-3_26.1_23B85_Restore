@interface UITouch(SKNodeTouches)
- (double)locationInNode:()SKNodeTouches;
- (double)previousLocationInNode:()SKNodeTouches;
@end

@implementation UITouch(SKNodeTouches)

- (double)locationInNode:()SKNodeTouches
{
  v4 = a3;
  scene = [v4 scene];
  v6 = scene;
  if (scene)
  {
    view = [(SKScene *)scene view];
  }

  else
  {
    view = 0;
  }

  view2 = [(SKScene *)v6 view];
  [self locationInView:view2];
  v10 = v9;
  v12 = v11;

  if (view)
  {
    v15.x = v10;
    v15.y = v12;
    [v4 convertPoint:v6 fromNode:{CGPointConvertFromViewToScene(view, v6, v15).n128_f64[0]}];
    v10 = v13;
  }

  return v10;
}

- (double)previousLocationInNode:()SKNodeTouches
{
  v4 = a3;
  scene = [v4 scene];
  v6 = scene;
  if (scene)
  {
    view = [(SKScene *)scene view];
  }

  else
  {
    view = 0;
  }

  view2 = [(SKScene *)v6 view];
  [self previousLocationInView:view2];
  v10 = v9;
  v12 = v11;

  if (view)
  {
    v15.x = v10;
    v15.y = v12;
    [v4 convertPoint:v6 fromNode:{CGPointConvertFromViewToScene(view, v6, v15).n128_f64[0]}];
    v10 = v13;
  }

  return v10;
}

@end