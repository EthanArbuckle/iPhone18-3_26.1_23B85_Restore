@interface _AXUIActiveRootWindow
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation _AXUIActiveRootWindow

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  rootViewController = [(_AXUIActiveRootWindow *)self rootViewController];
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
    v13.super_class = _AXUIActiveRootWindow;
    v11 = [(_AXUIActiveRootWindow *)&v13 pointInside:eventCopy withEvent:x, y];
  }

  return v11;
}

@end