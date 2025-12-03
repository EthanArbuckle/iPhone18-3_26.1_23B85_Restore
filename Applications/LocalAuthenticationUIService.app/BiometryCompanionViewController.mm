@interface BiometryCompanionViewController
- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithCoder:(id)coder;
- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape;
- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithInternalInfo:(id)info parent:(id)parent;
- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint;
- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode;
- (void)dismissChildWithCompletionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BiometryCompanionViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  BiometryCompanionViewController.viewDidAppear(_:)(appear);
}

- (void)dismissChildWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    v6[2] = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  BiometryCompanionViewController.dismissChild(completionHandler:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint
{
  ObjectType = swift_getObjectType();
  dCopy = d;
  endpointCopy = endpoint;
  v10 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v10);
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(TransitionViewController *)&v13 initWithRequestID:dCopy endpoint:endpointCopy];

  return v11;
}

- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithRequestID:(id)d endpoint:(id)endpoint remoteAlertPresentationMode:(int64_t)mode
{
  ObjectType = swift_getObjectType();
  dCopy = d;
  endpointCopy = endpoint;
  v12 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v12);
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(TransitionViewController *)&v15 initWithRequestID:dCopy endpoint:endpointCopy remoteAlertPresentationMode:mode];

  return v13;
}

- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithInternalInfo:(id)info mechanism:(id)mechanism backoffCounter:(id)counter remoteUIHost:(id)host allowsLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v12);
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17.receiver = self;
  v17.super_class = ObjectType;
  v14 = [(TransitionViewController *)&v17 initWithInternalInfo:isa mechanism:mechanism backoffCounter:counter remoteUIHost:host allowsLandscape:landscapeCopy];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v8;
  }

  bundleCopy = bundle;
  v10 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v10);
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
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

- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  coderCopy = coder;
  v7 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v7);
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(BiometryCompanionViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (_TtC28LocalAuthenticationUIService31BiometryCompanionViewController)initWithInternalInfo:(id)info parent:(id)parent
{
  ObjectType = swift_getObjectType();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v6 = LogCategory.ui.unsafeMutableAddressor();
  Logger(category:)(*v6);
  *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC28LocalAuthenticationUIService31BiometryCompanionViewController_biometryType] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(BiometryCompanionViewController *)&v11 initWithInternalInfo:isa parent:v8];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

@end