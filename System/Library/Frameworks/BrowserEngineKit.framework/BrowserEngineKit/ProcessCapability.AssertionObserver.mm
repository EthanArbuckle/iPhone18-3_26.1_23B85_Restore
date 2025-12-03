@interface ProcessCapability.AssertionObserver
- (_TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver)init;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
@end

@implementation ProcessCapability.AssertionObserver

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  sub_19D504F00(assertionCopy);
}

- (_TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end