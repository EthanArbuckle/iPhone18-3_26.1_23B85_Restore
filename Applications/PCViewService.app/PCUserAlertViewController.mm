@interface PCUserAlertViewController
- (PCUserAlertViewController)initWithCoder:(id)coder;
- (PCUserAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)handleButtonActions:(id)actions;
@end

@implementation PCUserAlertViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10008546C;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1000826A8(context, v6, v7);
  sub_10000B17C(v6);
}

- (void)handleButtonActions:(id)actions
{
  sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
  sub_10000EDD0();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100082B68(v4);
}

- (PCUserAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PCUserAlertViewController();
  v9 = [(PCUserAlertViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (PCUserAlertViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PCUserAlertViewController();
  coderCopy = coder;
  v5 = [(PCUserAlertViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)didInvalidateForRemoteAlert
{
  if (qword_1000D9810 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E1B30);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000343F8(0xD00000000000001DLL, 0x80000001000A10F0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000529C(v3);
  }
}

@end