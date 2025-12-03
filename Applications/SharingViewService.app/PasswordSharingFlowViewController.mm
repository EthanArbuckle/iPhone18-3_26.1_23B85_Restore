@interface PasswordSharingFlowViewController
- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithCoder:(id)coder;
- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PasswordSharingFlowViewController

- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100074438(v5, v7, bundle);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_10007455C(contextCopy, v6);
  sub_100025EF4(v6, v7);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
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
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1000A4CA0(v4);
    swift_unknownObjectRelease();
  }
}

- (_TtC18SharingViewService33PasswordSharingFlowViewController)initWithCoder:(id)coder
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100074928(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v7 = sub_100070288();
  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    [v8 setIdleTimerDisabled:0 forReason:v9];

    swift_unknownObjectRelease();
  }

  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(PasswordSharingFlowViewController *)&v10 viewDidDisappear:disappearCopy];
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
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