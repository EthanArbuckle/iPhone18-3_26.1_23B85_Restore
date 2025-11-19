@interface UITouch(SKNodeTouches)
- (double)locationInNode:()SKNodeTouches;
- (double)previousLocationInNode:()SKNodeTouches;
@end

@implementation UITouch(SKNodeTouches)

- (double)locationInNode:()SKNodeTouches
{
  v4 = a3;
  v5 = [v4 scene];
  v6 = v5;
  if (v5)
  {
    v7 = [(SKScene *)v5 view];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SKScene *)v6 view];
  [a1 locationInView:v8];
  v10 = v9;
  v12 = v11;

  if (v7)
  {
    v15.x = v10;
    v15.y = v12;
    [v4 convertPoint:v6 fromNode:{CGPointConvertFromViewToScene(v7, v6, v15).n128_f64[0]}];
    v10 = v13;
  }

  return v10;
}

- (double)previousLocationInNode:()SKNodeTouches
{
  v4 = a3;
  v5 = [v4 scene];
  v6 = v5;
  if (v5)
  {
    v7 = [(SKScene *)v5 view];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SKScene *)v6 view];
  [a1 previousLocationInView:v8];
  v10 = v9;
  v12 = v11;

  if (v7)
  {
    v15.x = v10;
    v15.y = v12;
    [v4 convertPoint:v6 fromNode:{CGPointConvertFromViewToScene(v7, v6, v15).n128_f64[0]}];
    v10 = v13;
  }

  return v10;
}

@end