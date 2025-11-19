@interface PassthroughView
- (_TtC19PodcastsTranscripts15PassthroughView)initWithCoder:(id)a3;
- (_TtC19PodcastsTranscripts15PassthroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PassthroughView

- (_TtC19PodcastsTranscripts15PassthroughView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC19PodcastsTranscripts15PassthroughView)initWithCoder:(id)a3
{
  result = sub_98758();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_20A8C(a4, x, y);

  return v10;
}

@end