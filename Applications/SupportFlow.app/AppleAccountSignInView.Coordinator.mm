@interface AppleAccountSignInView.Coordinator
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation AppleAccountSignInView.Coordinator

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_1000E9E10();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_1000E9C60();
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000E9D84();
}

@end