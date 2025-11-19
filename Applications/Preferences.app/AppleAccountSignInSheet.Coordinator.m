@interface AppleAccountSignInSheet.Coordinator
- (_TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator)init;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation AppleAccountSignInSheet.Coordinator

- (_TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_100082110();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10008215C(v6);
}

- (void)signInControllerDidCancel:(id)a3
{
  v3 = self;
  DismissAction.callAsFunction()();
}

@end