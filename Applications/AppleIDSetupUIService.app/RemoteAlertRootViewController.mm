@interface RemoteAlertRootViewController
- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithCoder:(id)coder;
- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation RemoteAlertRootViewController

- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_100006EE4();
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RemoteAlertRootViewController();
  [(RemoteAlertRootViewController *)&v2 viewDidLoad];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler);
  if (v3)
  {
    v4 = *&self->scene[OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler];
    selfCopy = self;
    v6 = sub_100007868(v3);
    v3(v6);

    sub_10000651C(v3);
  }
}

- (_TtC21AppleIDSetupUIService29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end