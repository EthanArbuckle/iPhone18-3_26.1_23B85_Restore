@interface AXUIActiveWindow
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation AXUIActiveWindow

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(AXUIActiveWindow *)self rootViewController];
  v9 = [v8 view];

  [v9 convertPoint:self fromView:{x, y}];
  v10 = [v9 hitTest:v7 withEvent:?];

  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AXUIActiveWindow;
    v11 = [(AXUIActiveWindow *)&v13 pointInside:v7 withEvent:x, y];
  }

  return v11;
}

@end