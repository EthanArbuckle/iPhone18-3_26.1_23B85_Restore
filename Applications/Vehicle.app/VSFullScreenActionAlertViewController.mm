@interface VSFullScreenActionAlertViewController
- (_TtC7Vehicle37VSFullScreenActionAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)primaryAction;
- (void)viewDidLoad;
@end

@implementation VSFullScreenActionAlertViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100013AE8();
}

- (void)primaryAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_action);
  if (v2)
  {
    v3 = *&self->action[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_action];
    v4 = self;
    v2();
  }
}

- (_TtC7Vehicle37VSFullScreenActionAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end