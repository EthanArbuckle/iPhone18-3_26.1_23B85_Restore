@interface PASVSSetupFlowController
- (void)handleScannedCode:(id)code;
@end

@implementation PASVSSetupFlowController

- (void)handleScannedCode:(id)code
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  PASVSSetupFlowController.handleScannedCode(_:)(v6);
}

@end