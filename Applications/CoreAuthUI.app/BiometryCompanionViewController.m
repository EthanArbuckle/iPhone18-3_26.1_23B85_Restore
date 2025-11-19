@interface BiometryCompanionViewController
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithCoder:(id)a3;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)a3 mechanism:(id)a4 backoffCounter:(id)a5 remoteUIHost:(id)a6 allowsLandscape:(BOOL)a7;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)a3 parent:(id)a4;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)a3 endpoint:(id)a4;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5;
- (void)dismissChildWithCompletionHandler:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BiometryCompanionViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10004DB30(a3);
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
  sub_10004E034(v7, v6);
  sub_10002AA04(v7);
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)a3 endpoint:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = a3;
  v9 = a4;
  v10 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(TransitionViewController *)&v13 initWithRequestID:v8 endpoint:v9];

  return v11;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5
{
  ObjectType = swift_getObjectType();
  v10 = a3;
  v11 = a4;
  v12 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(TransitionViewController *)&v15 initWithRequestID:v10 endpoint:v11 remoteAlertPresentationMode:a5];

  return v13;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)a3 mechanism:(id)a4 backoffCounter:(id)a5 remoteUIHost:(id)a6 allowsLandscape:(BOOL)a7
{
  v16 = a7;
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17.receiver = self;
  v17.super_class = ObjectType;
  v14 = [(TransitionViewController *)&v17 initWithInternalInfo:isa mechanism:a4 backoffCounter:a5 remoteUIHost:a6 allowsLandscape:v16];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v8;
  }

  v9 = a4;
  v10 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(BiometryCompanionViewController *)&v14 initWithNibName:v11 bundle:v9];

  return v12;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(BiometryCompanionViewController *)&v10 initWithCoder:v6];

  if (v8)
  {
  }

  return v8;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)a3 parent:(id)a4
{
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v6 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(v12, v12[3]);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(BiometryCompanionViewController *)&v11 initWithInternalInfo:isa parent:v8];

  swift_unknownObjectRelease();
  sub_10002A69C(v12);
  return v9;
}

@end