@interface FrozenSnapshotView
- (CGSize)intrinsicContentSize;
- (_TtC5Books18FrozenSnapshotView)initWithCoder:(id)a3;
- (_TtC5Books18FrozenSnapshotView)initWithFrame:(CGRect)a3;
@end

@implementation FrozenSnapshotView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView);
  if (v2)
  {
    [v2 frame];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v6 = 480.0;
    v4 = 320.0;
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (_TtC5Books18FrozenSnapshotView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FrozenSnapshotView();
  return [(FrozenSnapshotView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books18FrozenSnapshotView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FrozenSnapshotView();
  v4 = a3;
  v5 = [(FrozenSnapshotView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end