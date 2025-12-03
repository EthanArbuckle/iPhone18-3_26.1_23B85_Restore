@interface AppleAccountSignInView.Coordinator
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
@end

@implementation AppleAccountSignInView.Coordinator

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_1000E9E10();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1000E9C60();
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1000E9D84();
}

@end