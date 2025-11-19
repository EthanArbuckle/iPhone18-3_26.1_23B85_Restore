@interface B332SetupViewController
- (_TtC18SharingViewService23B332SetupViewController)initWithCoder:(id)a3;
- (_TtC18SharingViewService23B332SetupViewController)initWithMainController:(id)a3;
- (_TtC18SharingViewService23B332SetupViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B332SetupViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B3C30(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B3F44(a3);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_10006709C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  sub_1000B4AC8();
  sub_100025EF4(v8, v7);
}

- (_TtC18SharingViewService23B332SetupViewController)initWithMainController:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for B332SetupViewController();
  return [(SVSBaseViewController *)&v6 initWithMainController:a3];
}

- (_TtC18SharingViewService23B332SetupViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for B332SetupViewController();
  v9 = [(B332SetupViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18SharingViewService23B332SetupViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService23B332SetupViewController_presentedPairingVC) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for B332SetupViewController();
  v5 = a3;
  v6 = [(B332SetupViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end