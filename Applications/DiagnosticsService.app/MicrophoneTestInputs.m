@interface MicrophoneTestInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation MicrophoneTestInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  LOBYTE(self) = sub_1000010DC(v4);

  return self & 1;
}

@end