@interface AppleAccountSignInSheet.Coordinator
- (_TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator)init;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation AppleAccountSignInSheet.Coordinator

- (_TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_100082110();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10008215C(v6);
}

- (void)signInControllerDidCancel:(id)cancel
{
  selfCopy = self;
  DismissAction.callAsFunction()();
}

@end