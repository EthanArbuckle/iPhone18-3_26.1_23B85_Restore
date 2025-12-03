@interface RemoteAlertServiceViewController
- (_TtC22HomeCaptiveViewService32RemoteAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)extensionDeviceLostWithNotification:(id)notification;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation RemoteAlertServiceViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000043F4;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1000025B0(context, v6);
  sub_1000043AC(v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002ACC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100002C0C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100002DC0(disappear);
}

- (void)extensionDeviceLostWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100002F98(notificationCopy);
}

- (_TtC22HomeCaptiveViewService32RemoteAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1000038F0(v5, v7, bundle);
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