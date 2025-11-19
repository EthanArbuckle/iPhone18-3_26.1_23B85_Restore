@interface TTRIWelcomeNavigationViewController
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithCoder:(id)a3;
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithRootViewController:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRIWelcomeNavigationViewController

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(TTRIWelcomeNavigationViewController *)&v5 viewDidLoad];
  [v2 setModalPresentationStyle:{2, v5.receiver, v5.super_class}];
  [v2 setNavigationBarHidden:1];
  v3 = [v2 presentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setDelegate:v2];
  }
}

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = *&self->OBNavigationController_opaque[OBJC_IVAR____TtC9Reminders35TTRIWelcomeNavigationViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = self;
    sub_100470B24(v4, v6);

    swift_unknownObjectRelease();
  }
}

@end