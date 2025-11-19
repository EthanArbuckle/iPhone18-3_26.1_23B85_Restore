@interface PINSheetViewController
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)a3 mechanism:(id)a4 backoffCounter:(id)a5 remoteUIHost:(id)a6 allowsLandscape:(BOOL)a7;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)a3 parent:(id)a4;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4;
- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5;
- (void)dismissChildWithCompletionHandler:(id)a3;
- (void)viewModel:(id)a3 didReceiveCustomPassword:(id)a4 handler:(id)a5;
@end

@implementation PINSheetViewController

- (void)dismissChildWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  PINSheetViewController.dismissChild(completionHandler:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  v9 = objc_allocWithZone(LAContext);
  v10 = a3;
  v11 = a4;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v8] = [v9 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(TransitionViewController *)&v14 initWithRequestID:v10 endpoint:v11];

  return v12;
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithRequestID:(id)a3 endpoint:(id)a4 remoteAlertPresentationMode:(int64_t)a5
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_context;
  v11 = objc_allocWithZone(LAContext);
  v12 = a3;
  v13 = a4;
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[v10] = [v11 init];
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService22PINSheetViewController_authorizationViewManager] = 0;
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = [(TransitionViewController *)&v16 initWithRequestID:v12 endpoint:v13 remoteAlertPresentationMode:a5];

  return v14;
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)a3 mechanism:(id)a4 backoffCounter:(id)a5 remoteUIHost:(id)a6 allowsLandscape:(BOOL)a7
{
  v17 = a7;
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
  v15 = [(TransitionViewController *)&v18 initWithInternalInfo:isa mechanism:a4 backoffCounter:a5 remoteUIHost:a6 allowsLandscape:v17];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return PINSheetViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (_TtC28LocalAuthenticationUIService22PINSheetViewController)initWithInternalInfo:(id)a3 parent:(id)a4
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

- (void)viewModel:(id)a3 didReceiveCustomPassword:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  specialized PINSheetViewController.viewModel(_:didReceiveCustomPassword:handler:)(v8, v10, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end