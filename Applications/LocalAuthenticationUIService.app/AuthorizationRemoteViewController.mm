@interface AuthorizationRemoteViewController
- (AuthorizationRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)stopWithReply:(id)reply;
- (void)viewModel:(id)model didReceiveCustomPassword:(id)password handler:(id)handler;
@end

@implementation AuthorizationRemoteViewController

- (AuthorizationRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return AuthorizationRemoteViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)stopWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  specialized AuthorizationRemoteViewController.stop(reply:)(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)viewModel:(id)model didReceiveCustomPassword:(id)password handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(&self->super.super.super.isa + OBJC_IVAR___AuthorizationRemoteViewController_authorizationViewManager);
  selfCopy = self;
  if (v10)
  {
    v12 = v10;
    v13._countAndFlagsBits = v6;
    v13._object = v8;
    AuthorizationViewManager.saveExtractablePassword(_:)(v13);
  }

  AuthorizationRemoteViewController.didObtainAuthentication(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

@end