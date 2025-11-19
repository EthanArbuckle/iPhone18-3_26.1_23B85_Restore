@interface PasscodeSheetViewController
- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithInternalInfo:(id)a3 mechanism:(id)a4 backoffCounter:(id)a5 remoteUIHost:(id)a6 allowsLandscape:(BOOL)a7;
- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithInternalInfo:(id)a3 parent:(id)a4;
- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4;
- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5;
- (void)dismissChildWithCompletionHandler:(id)a3;
- (void)loadView;
- (void)viewModelDidRejectDevicePasscode:(id)a3;
@end

@implementation PasscodeSheetViewController

- (void)loadView
{
  v2 = self;
  sub_10002864C();
}

- (void)dismissChildWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10002AA4C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_100029780(v7, v6);
  sub_10002AA04(v7);
}

- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  v9 = objc_allocWithZone(LAContext);
  v10 = a3;
  v11 = a4;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v8] = [v9 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(TransitionViewController *)&v14 initWithRequestID:v10 endpoint:v11];

  return v12;
}

- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  v11 = objc_allocWithZone(LAContext);
  v12 = a3;
  v13 = a4;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v10] = [v11 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = [(TransitionViewController *)&v16 initWithRequestID:v12 endpoint:v13 remoteAlertPresentationMode:a5];

  return v14;
}

- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithInternalInfo:(id)a3 mechanism:(id)a4 backoffCounter:(id)a5 remoteUIHost:(id)a6 allowsLandscape:(BOOL)a7
{
  v17 = a7;
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  v13 = objc_allocWithZone(LAContext);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v12] = [v13 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18.receiver = self;
  v18.super_class = ObjectType;
  v15 = [(TransitionViewController *)&v18 initWithInternalInfo:isa mechanism:a4 backoffCounter:a5 remoteUIHost:a6 allowsLandscape:v17];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10002A350(v5, v7, a4);
}

- (_TtC10CoreAuthUI27PasscodeSheetViewController)initWithInternalInfo:(id)a3 parent:(id)a4
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_10002A6E8(v4, v6);
}

- (void)viewModelDidRejectDevicePasscode:(id)a3
{
  v4 = self;
  v3 = [(TransitionViewController *)v4 mechanism];
  if (v3)
  {
    [(LACUIMechanism *)v3 uiEvent:9 options:0];
    swift_unknownObjectRelease();
  }
}

@end