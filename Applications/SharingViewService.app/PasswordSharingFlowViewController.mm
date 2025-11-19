@interface PasswordSharingFlowViewController
- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithCoder:(id)a3;
- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PasswordSharingFlowViewController

- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100074438(v5, v7, a4);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10006709C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_10007455C(v8, v6);
  sub_100025EF4(v6, v7);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_100075104();
    sub_1000670A4();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  if (*(&self->super + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_module))
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1000A4CA0(v4);
    swift_unknownObjectRelease();
  }
}

- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithCoder:(id)a3
{
  v3 = (&self->super + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_module);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_prxContainerViewController) = 0;
  *(&self->super + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_userInfo) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100074928(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = self;
  v7 = sub_100070288();
  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    [v8 setIdleTimerDisabled:0 forReason:v9];

    swift_unknownObjectRelease();
  }

  v10.receiver = v6;
  v10.super_class = ObjectType;
  [(PasswordSharingFlowViewController *)&v10 viewDidDisappear:v3];
}

- (void)proxCardFlowDidDismiss
{
  v2 = self;
  sub_100074C24();
}

- (void)proxCardFlowWillPresent
{
  if (qword_1001B9388 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BC1C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Begin Password Sharing flow", v2, 2u);
  }
}

@end