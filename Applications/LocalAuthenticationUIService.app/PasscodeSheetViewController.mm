@interface PasscodeSheetViewController
- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape;
- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithInternalInfo:(id)info parent:(id)parent;
- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint;
- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode;
- (void)dismissChildWithCompletionHandler:(id)handler;
- (void)loadView;
- (void)viewModelDidRejectDevicePasscode:(id)passcode;
@end

@implementation PasscodeSheetViewController

- (void)loadView
{
  selfCopy = self;
  PasscodeSheetViewController.loadView()();
}

- (void)dismissChildWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  PasscodeSheetViewController.dismissChild(completionHandler:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  v9 = objc_allocWithZone(LAContext);
  dCopy = d;
  endpointCopy = endpoint;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v8] = [v9 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(TransitionViewController *)&v14 initWithRequestID:dCopy endpoint:endpointCopy];

  return v12;
}

- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  v11 = objc_allocWithZone(LAContext);
  dCopy = d;
  endpointCopy = endpoint;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v10] = [v11 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = [(TransitionViewController *)&v16 initWithRequestID:dCopy endpoint:endpointCopy remoteAlertPresentationMode:mode];

  return v14;
}

- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_context;
  v13 = objc_allocWithZone(LAContext);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v12] = [v13 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService27PasscodeSheetViewController_failures] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18.receiver = self;
  v18.super_class = ObjectType;
  v15 = [(TransitionViewController *)&v18 initWithInternalInfo:isa mechanism:mechanism backoffCounter:counter remoteUIHost:host allowsLandscape:landscapeCopy];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return PasscodeSheetViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (_TtC28LocalAuthenticationUIService27PasscodeSheetViewController)initWithInternalInfo:(id)info parent:(id)parent
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return PasscodeSheetViewController.init(internalInfo:parent:)(v4, v6);
}

- (void)viewModelDidRejectDevicePasscode:(id)passcode
{
  selfCopy = self;
  mechanism = [(TransitionViewController *)selfCopy mechanism];
  if (mechanism)
  {
    [(LACUIMechanism *)mechanism uiEvent:9 options:0];
    swift_unknownObjectRelease();
  }
}

@end