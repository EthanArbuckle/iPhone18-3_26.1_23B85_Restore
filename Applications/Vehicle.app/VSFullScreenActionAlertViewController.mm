@interface VSFullScreenActionAlertViewController
- (_TtC7Vehicle37VSFullScreenActionAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)primaryAction;
- (void)viewDidLoad;
@end

@implementation VSFullScreenActionAlertViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100013AE8();
}

- (void)primaryAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_action);
  if (v2)
  {
    v3 = *&self->action[OBJC_IVAR____TtC7Vehicle37VSFullScreenActionAlertViewController_action];
    selfCopy = self;
    v2();
  }
}

- (_TtC7Vehicle37VSFullScreenActionAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end