@interface ComplementaryPasscodeViewController
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithCoder:(id)coder;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithInternalInfo:(id)info parent:(id)parent;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)d endpoint:(id)endpoint;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode;
- (void)dismissChildWithCompletionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation ComplementaryPasscodeViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(TransitionViewController *)&v4 viewDidLoad];
  if ([objc_opt_self() isSharedIPad])
  {
    v3 = [objc_allocWithZone(LACLocalBackoffCounter) init];
    [v2 setBackoffCounter:v3];
  }
}

- (void)dismissChildWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    v6[2] = v5;
    v7 = sub_10002AA4C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10005C12C(v7, v6);
  sub_10002AA04(v7);
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)d endpoint:(id)endpoint
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(TransitionViewController *)&v7 initWithRequestID:d endpoint:endpoint];
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  return [(TransitionViewController *)&v9 initWithRequestID:d endpoint:endpoint remoteAlertPresentationMode:mode];
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(ComplementaryPasscodeViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ComplementaryPasscodeViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithInternalInfo:(id)info parent:(id)parent
{
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(v11, v11[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(ComplementaryPasscodeViewController *)&v10 initWithInternalInfo:isa parent:v7];

  swift_unknownObjectRelease();
  sub_10002A69C(v11);
  return v8;
}

@end