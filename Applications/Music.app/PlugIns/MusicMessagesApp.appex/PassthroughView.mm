@interface PassthroughView
- (_TtC11MusicCoreUI15PassthroughView)initWithCoder:(id)coder;
- (_TtC11MusicCoreUI15PassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = PassthroughView.hitTest(_:with:)(event, x, y);

  return v10;
}

- (_TtC11MusicCoreUI15PassthroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MusicCoreUI15PassthroughView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PassthroughView();
  coderCopy = coder;
  v5 = [(PassthroughView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end