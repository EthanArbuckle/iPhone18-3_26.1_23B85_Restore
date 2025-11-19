@interface XPCService
- (void)writeJetsamMemoryReportWithVisibilityEndowmentSet:(id)a3 audioAssertionSet:(id)a4 with:(id)a5;
@end

@implementation XPCService

- (void)writeJetsamMemoryReportWithVisibilityEndowmentSet:(id)a3 audioAssertionSet:(id)a4 with:(id)a5
{
  v7 = _Block_copy(a5);
  if (a3)
  {
    a3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    a4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v7);
  sub_1000012B4(a3, a4, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end