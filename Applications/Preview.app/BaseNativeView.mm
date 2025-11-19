@interface BaseNativeView
- (_TtC7Preview14BaseNativeView)initWithFrame:(CGRect)a3;
@end

@implementation BaseNativeView

- (_TtC7Preview14BaseNativeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for BaseNativeView();
  v8 = [(BaseNativeView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

@end