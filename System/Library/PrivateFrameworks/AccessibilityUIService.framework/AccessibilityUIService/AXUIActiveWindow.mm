@interface AXUIActiveWindow
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation AXUIActiveWindow

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  rootViewController = [(AXUIActiveWindow *)self rootViewController];
  view = [rootViewController view];

  [view convertPoint:self fromView:{x, y}];
  v10 = [view hitTest:eventCopy withEvent:?];

  if (v10 == view)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AXUIActiveWindow;
    v11 = [(AXUIActiveWindow *)&v13 pointInside:eventCopy withEvent:x, y];
  }

  return v11;
}

@end