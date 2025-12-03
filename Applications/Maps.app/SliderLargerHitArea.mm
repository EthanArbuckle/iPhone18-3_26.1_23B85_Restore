@interface SliderLargerHitArea
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SliderLargerHitArea

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(SliderLargerHitArea *)self pointInside:eventCopy withEvent:x, y])
  {
    selfCopy = self;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SliderLargerHitArea;
    selfCopy = [(SliderLargerHitArea *)&v11 hitTest:eventCopy withEvent:x, y];
  }

  v9 = selfCopy;

  return v9;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SliderLargerHitArea *)self bounds];
  v7 = v6 + -22.0;
  v9 = v8 + -22.0;
  v11 = v10 + 44.0;
  v13 = v12 + 22.0;
  v14 = x;
  v15 = y;

  return CGRectContainsPoint(*&v7, *&v14);
}

@end