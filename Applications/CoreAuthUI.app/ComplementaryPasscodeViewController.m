@interface ComplementaryPasscodeViewController
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithCoder:(id)a3;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithInternalInfo:(id)a3 parent:(id)a4;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)a3 endpoint:(id)a4;
- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5;
- (void)dismissChildWithCompletionHandler:(id)a3;
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

- (void)dismissChildWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_10005C12C(v7, v6);
  sub_10002AA04(v7);
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)a3 endpoint:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(TransitionViewController *)&v7 initWithRequestID:a3 endpoint:a4];
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  return [(TransitionViewController *)&v9 initWithRequestID:a3 endpoint:a4 remoteAlertPresentationMode:a5];
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(ComplementaryPasscodeViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ComplementaryPasscodeViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC10CoreAuthUI35ComplementaryPasscodeViewController)initWithInternalInfo:(id)a3 parent:(id)a4
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