@interface TestMainController
- (_TtC18SharingViewService18TestMainController)initWithCoder:(id)coder;
- (_TtC18SharingViewService18TestMainController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TestMainController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100013CF8(appear);
}

- (_TtC18SharingViewService18TestMainController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav] = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav] = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TestMainController();
  v9 = [(TestMainController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18SharingViewService18TestMainController)initWithCoder:(id)coder
{
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TestMainController();
  coderCopy = coder;
  v5 = [(TestMainController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end