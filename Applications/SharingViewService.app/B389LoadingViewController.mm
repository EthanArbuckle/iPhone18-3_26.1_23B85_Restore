@interface B389LoadingViewController
- (_TtC18SharingViewService25B389LoadingViewController)initWithMainController:(id)controller;
- (_TtC18SharingViewService25B389LoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissPressed:(id)pressed;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389LoadingViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100015C2C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for B389LoadingViewController();
  [(B389LoadingViewController *)&v4 viewDidDisappear:disappearCopy];
}

- (void)dismissPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_100016B68();
}

- (_TtC18SharingViewService25B389LoadingViewController)initWithMainController:(id)controller
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_titleLabel) = 0;
  v5 = OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_connectingLabel;
  v6 = objc_allocWithZone(UILabel);
  controllerCopy = controller;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_spinner) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_player) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for B389LoadingViewController();
  v8 = [(SVSBaseViewController *)&v10 initWithMainController:controllerCopy];

  return v8;
}

- (_TtC18SharingViewService25B389LoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100016708(v5, v7, bundle);
}

@end