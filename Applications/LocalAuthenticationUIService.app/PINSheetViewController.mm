@interface PINSheetViewController
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)info parent:(id)parent;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode;
- (void)dismissChildWithCompletionHandler:(id)handler;
- (void)viewModel:(id)model didReceiveCustomPassword:(id)password handler:(id)handler;
@end

@implementation PINSheetViewController

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
  PINSheetViewController.dismissChild(completionHandler:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  v9 = objc_allocWithZone(LAContext);
  dCopy = d;
  endpointCopy = endpoint;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v8] = [v9 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(TransitionViewController *)&v14 initWithRequestID:dCopy endpoint:endpointCopy];

  return v12;
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  v11 = objc_allocWithZone(LAContext);
  dCopy = d;
  endpointCopy = endpoint;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v10] = [v11 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = [(TransitionViewController *)&v16 initWithRequestID:dCopy endpoint:endpointCopy remoteAlertPresentationMode:mode];

  return v14;
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  v13 = objc_allocWithZone(LAContext);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v12] = [v13 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18.receiver = self;
  v18.super_class = ObjectType;
  v15 = [(TransitionViewController *)&v18 initWithInternalInfo:isa mechanism:mechanism backoffCounter:counter remoteUIHost:host allowsLandscape:landscapeCopy];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return PINSheetViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)info parent:(id)parent
{
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v6] = [objc_allocWithZone(LAContext) init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PINSheetViewController *)&v11 initWithInternalInfo:isa parent:v8];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

- (void)viewModel:(id)model didReceiveCustomPassword:(id)password handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  modelCopy = model;
  selfCopy = self;
  specialized PINSheetViewController.viewModel(_:didReceiveCustomPassword:handler:)(v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end