@interface PassthroughView
- (_TtC19PodcastsTranscripts15PassthroughView)initWithCoder:(id)coder;
- (_TtC19PodcastsTranscripts15PassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughView

- (_TtC19PodcastsTranscripts15PassthroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC19PodcastsTranscripts15PassthroughView)initWithCoder:(id)coder
{
  result = sub_98758();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_20A8C(event, x, y);

  return v10;
}

@end