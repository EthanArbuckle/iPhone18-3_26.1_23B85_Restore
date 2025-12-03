@interface SignInActionImplementation.SignInDelegate
- (_TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate)init;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation SignInActionImplementation.SignInDelegate

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_100005744(0, &unk_10098A2C0);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_100535BA8(controllerCopy, v6);
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_100535EE8(cancelCopy);
}

- (_TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SignInActionImplementation.SignInDelegate *)&v5 init];
}

@end