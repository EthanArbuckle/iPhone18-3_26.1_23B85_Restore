@interface BiometryCompanionViewController
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithCoder:(id)coder;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)info parent:(id)parent;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint;
- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode;
- (void)dismissChildWithCompletionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BiometryCompanionViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10004DB30(appear);
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
  sub_10004E034(v7, v6);
  sub_10002AA04(v7);
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint
{
  ObjectType = swift_getObjectType();
  dCopy = d;
  endpointCopy = endpoint;
  v10 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(TransitionViewController *)&v13 initWithRequestID:dCopy endpoint:endpointCopy];

  return v11;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode
{
  ObjectType = swift_getObjectType();
  dCopy = d;
  endpointCopy = endpoint;
  v12 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(TransitionViewController *)&v15 initWithRequestID:dCopy endpoint:endpointCopy remoteAlertPresentationMode:mode];

  return v13;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
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
  v14 = [(TransitionViewController *)&v17 initWithInternalInfo:isa mechanism:mechanism backoffCounter:counter remoteUIHost:host allowsLandscape:landscapeCopy];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v8;
  }

  bundleCopy = bundle;
  v10 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  if (name)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(BiometryCompanionViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  coderCopy = coder;
  v7 = *sub_10004FFDC();
  sub_10004FFF4();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI31BiometryCompanionViewController_biometryType] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(BiometryCompanionViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (_TtC10CoreAuthUI31BiometryCompanionViewController)initWithInternalInfo:(id)info parent:(id)parent
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