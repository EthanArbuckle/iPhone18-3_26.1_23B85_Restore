@interface RemoteViewController
- (_TtC19DiagnosticsReporter20RemoteViewController)initWithCoder:(id)coder;
- (_TtC19DiagnosticsReporter20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:;
@end

@implementation RemoteViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000096C8();
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100009E50;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100009A98(v6);
  sub_100009D7C(v6);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100009E50;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1000088E4(context, v6);
  sub_100009D7C(v6);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v6 = sub_100009DC4;
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  sub_100009BF0();
  sub_100009D7C(v6);
}

- (_TtC19DiagnosticsReporter20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = &self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController] = 0;
    bundleCopy = bundle;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = &self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog];
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 4) = 0;
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for RemoteViewController();
  v11 = [(RemoteViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC19DiagnosticsReporter20RemoteViewController)initWithCoder:(id)coder
{
  v4 = &self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RemoteViewController();
  coderCopy = coder;
  v6 = [(RemoteViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (void)viewWillDisappear:
{
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002DA0(v0, qword_10001A458);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100009110(0xD000000000000015, 0x800000010000E610, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_100002E20(v3);
  }
}

- (void)didInvalidateForRemoteAlert
{
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002DA0(v0, qword_10001A458);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100009110(0xD00000000000001DLL, 0x800000010000E5F0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_100002E20(v3);
  }
}

@end