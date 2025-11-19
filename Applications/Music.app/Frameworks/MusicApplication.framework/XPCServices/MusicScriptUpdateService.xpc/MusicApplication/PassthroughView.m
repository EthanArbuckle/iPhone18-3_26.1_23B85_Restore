@interface PassthroughView
- (_TtC11MusicCoreUI15PassthroughView)initWithCoder:(id)a3;
- (_TtC11MusicCoreUI15PassthroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PassthroughView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = PassthroughView.hitTest(_:with:)(a4, x, y);

  return v10;
}

- (_TtC11MusicCoreUI15PassthroughView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MusicCoreUI15PassthroughView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PassthroughView();
  v4 = a3;
  v5 = [(PassthroughView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end