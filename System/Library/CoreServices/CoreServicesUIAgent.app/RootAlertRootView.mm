@interface RootAlertRootView
- (_TtC19CoreServicesUIAgent17RootAlertRootView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RootAlertRootView

- (void)layoutSubviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for RootAlertRootView();
  selfCopy = self;
  [(RootAlertRootView *)&v6 layoutSubviews];
  v4 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent17RootAlertRootView_child);
  if (v4)
  {
    v5 = v4;
    [(RootAlertRootView *)selfCopy bounds:v6.receiver];
    [v5 setFrame:?];
  }

  else
  {
  }
}

- (_TtC19CoreServicesUIAgent17RootAlertRootView)initWithFrame:(CGRect)frame
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

  *(&self->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent17RootAlertRootView_child) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RootAlertRootView();
  height = [(RootAlertRootView *)&v10 initWithFrame:x, y, width, height];

  return height;
}

@end