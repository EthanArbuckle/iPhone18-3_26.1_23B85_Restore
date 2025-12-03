@interface LoupeHostingOverlayView
- (_TtC7Preview23LoupeHostingOverlayView)initWithFrame:(CGRect)frame;
@end

@implementation LoupeHostingOverlayView

- (_TtC7Preview23LoupeHostingOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for LoupeHostingOverlayView();
  height = [(BaseNativeView *)&v10 initWithFrame:x, y, width, height];

  return height;
}

@end