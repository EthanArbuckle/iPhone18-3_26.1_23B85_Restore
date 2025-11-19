@interface B389LoadingViewController
- (_TtC18SharingViewService25B389LoadingViewController)initWithMainController:(id)a3;
- (_TtC18SharingViewService25B389LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissPressed:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389LoadingViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100015C2C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for B389LoadingViewController();
  [(B389LoadingViewController *)&v4 viewDidDisappear:v3];
}

- (void)dismissPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100016B68();
}

- (_TtC18SharingViewService25B389LoadingViewController)initWithMainController:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_titleLabel) = 0;
  v5 = OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_connectingLabel;
  v6 = objc_allocWithZone(UILabel);
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_spinner) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_player) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for B389LoadingViewController();
  v8 = [(SVSBaseViewController *)&v10 initWithMainController:v7];

  return v8;
}

- (_TtC18SharingViewService25B389LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100016708(v5, v7, a4);
}

@end