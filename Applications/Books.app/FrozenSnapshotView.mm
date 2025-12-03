@interface FrozenSnapshotView
- (CGSize)intrinsicContentSize;
- (_TtC5Books18FrozenSnapshotView)initWithCoder:(id)coder;
- (_TtC5Books18FrozenSnapshotView)initWithFrame:(CGRect)frame;
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

- (_TtC5Books18FrozenSnapshotView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FrozenSnapshotView();
  return [(FrozenSnapshotView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books18FrozenSnapshotView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FrozenSnapshotView();
  coderCopy = coder;
  v5 = [(FrozenSnapshotView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end