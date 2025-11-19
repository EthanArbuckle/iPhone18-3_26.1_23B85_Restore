@interface SignInActionImplementation.SignInDelegate
- (_TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate)init;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation SignInActionImplementation.SignInDelegate

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_100005744(0, &unk_10098A2C0);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100535BA8(v7, v6);
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100535EE8(v4);
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