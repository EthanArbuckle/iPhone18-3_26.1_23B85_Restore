@interface RootAlertRootView
- (_TtC19CoreServicesUIAgent17RootAlertRootView)initWithFrame:(CGRect)a3;
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
  v3 = self;
  [(RootAlertRootView *)&v6 layoutSubviews];
  v4 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent17RootAlertRootView_child);
  if (v4)
  {
    v5 = v4;
    [(RootAlertRootView *)v3 bounds:v6.receiver];
    [v5 setFrame:?];
  }

  else
  {
  }
}

- (_TtC19CoreServicesUIAgent17RootAlertRootView)initWithFrame:(CGRect)a3
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

  *(&self->super.super.super.isa + OBJC_IVAR____TtC19CoreServicesUIAgent17RootAlertRootView_child) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RootAlertRootView();
  v8 = [(RootAlertRootView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

@end