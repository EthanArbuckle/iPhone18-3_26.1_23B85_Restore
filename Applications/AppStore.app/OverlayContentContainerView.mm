@interface OverlayContentContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC8AppStoreP33_70CD356DF530ECB31A952A5D7D866F1927OverlayContentContainerView)initWithCoder:(id)coder;
- (_TtC8AppStoreP33_70CD356DF530ECB31A952A5D7D866F1927OverlayContentContainerView)initWithFrame:(CGRect)frame;
@end

@implementation OverlayContentContainerView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_100357488(eventCopy, x, y);

  return eventCopy & 1;
}

- (_TtC8AppStoreP33_70CD356DF530ECB31A952A5D7D866F1927OverlayContentContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(OverlayContentContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8AppStoreP33_70CD356DF530ECB31A952A5D7D866F1927OverlayContentContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(OverlayContentContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end