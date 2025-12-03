@interface PasscodeEmbeddedParentViewController
- (_TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController)initWithCoder:(id)coder;
- (_TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)verifyPasscode:(id)passcode reply:(id)reply;
@end

@implementation PasscodeEmbeddedParentViewController

- (_TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_passcodeEmbeddedView;
  v5 = type metadata accessor for PasscodeEmbeddedView(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode);
  *v6 = 0;
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  PasscodeEmbeddedParentViewController.loadView()();
}

- (void)verifyPasscode:(id)passcode reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(&self->super.super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode);
  if (v10)
  {
    v11 = *&self->passcodeViewController[OBJC_IVAR____TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController_verifyPasscode];
    v12 = v9;
    selfCopy = self;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v10);
    v10(v6, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v12);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
  }

  else
  {
  }
}

- (_TtC28LocalAuthenticationUIService36PasscodeEmbeddedParentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end