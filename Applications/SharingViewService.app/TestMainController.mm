@interface TestMainController
- (_TtC18SharingViewService18TestMainController)initWithCoder:(id)a3;
- (_TtC18SharingViewService18TestMainController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TestMainController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100013CF8(a3);
}

- (_TtC18SharingViewService18TestMainController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav] = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TestMainController();
  v9 = [(TestMainController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18SharingViewService18TestMainController)initWithCoder:(id)a3
{
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TestMainController();
  v4 = a3;
  v5 = [(TestMainController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end