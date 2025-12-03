@interface FMRemoteUIAlertServiceViewController
- (_TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation FMRemoteUIAlertServiceViewController

- (_TtC21FindMyRemoteUIService36FMRemoteUIAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100057908(v5, v7, bundle);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100059D98;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100058028(context, v6, v7);
  sub_10000A788(v6);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100059D1C;
  }

  contextCopy = context;
  selfCopy = self;
  sub_100059954(v6);
  sub_10000A788(v6);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FMRemoteUIAlertServiceViewController *)&v3 viewDidLoad];
  sub_100058554();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100058964();
}

- (void)didInvalidateForRemoteAlert
{
  if (qword_100086DC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000054DC(v0, qword_100088F70);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10005B0A0(0xD00000000000001DLL, 0x8000000100061AA0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000A5C4(v3);
  }
}

@end