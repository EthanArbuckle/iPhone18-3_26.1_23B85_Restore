@interface ShelfPageControl
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation ShelfPageControl

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  ObjectType = swift_getObjectType();
  eventCopy = event;
  selfCopy = self;
  layoutMarginsGuide = [(ShelfPageControl *)selfCopy layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v23.x = x;
  v23.y = y;
  if (CGRectContainsPoint(v24, v23))
  {

    return 0;
  }

  else
  {
    v22.receiver = selfCopy;
    v22.super_class = ObjectType;
    v21 = [(ShelfPageControl *)&v22 pointInside:eventCopy withEvent:x, y];

    return v21;
  }
}

- (void)layoutMarginsDidChange
{
  selfCopy = self;
  ShelfPageControl.layoutMarginsDidChange()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  ShelfPageControl.layoutSubviews()();
}

@end