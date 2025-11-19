@interface RemoteAlertServiceViewController
- (_TtC22HomeCaptiveViewService32RemoteAlertServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didInvalidateForRemoteAlert;
- (void)extensionDeviceLostWithNotification:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RemoteAlertServiceViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000043F4;
  }

  v7 = a3;
  v8 = self;
  sub_1000025B0(a3, v6);
  sub_1000043AC(v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100002ACC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100002C0C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100002DC0(a3);
}

- (void)extensionDeviceLostWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100002F98(v4);
}

- (_TtC22HomeCaptiveViewService32RemoteAlertServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000038F0(v5, v7, a4);
}

- (void)didInvalidateForRemoteAlert
{
  if (qword_100015460 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003CC8(v0, qword_1000155A8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Invalidated HomeCaptiveViewService", v2, 2u);
  }
}

@end