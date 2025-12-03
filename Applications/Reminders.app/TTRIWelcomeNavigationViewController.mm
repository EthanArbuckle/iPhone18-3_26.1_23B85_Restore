@interface TTRIWelcomeNavigationViewController
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithCoder:(id)coder;
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithRootViewController:(id)controller;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation TTRIWelcomeNavigationViewController

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithCoder:(id)coder
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
  presentationController = [v2 presentationController];
  if (presentationController)
  {
    v4 = presentationController;
    [presentationController setDelegate:v2];
  }
}

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders35TTRIWelcomeNavigationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v4 = *&self->OBNavigationController_opaque[OBJC_IVAR____TtC9Reminders35TTRIWelcomeNavigationViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    selfCopy = self;
    sub_100470B24(v4, v6);

    swift_unknownObjectRelease();
  }
}

@end