@interface XPCService
- (void)writeJetsamMemoryReportWithVisibilityEndowmentSet:(id)set audioAssertionSet:(id)assertionSet with:(id)with;
@end

@implementation XPCService

- (void)writeJetsamMemoryReportWithVisibilityEndowmentSet:(id)set audioAssertionSet:(id)assertionSet with:(id)with
{
  v7 = _Block_copy(with);
  if (set)
  {
    set = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (assertionSet)
  {
    assertionSet = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v7);
  sub_1000012B4(set, assertionSet, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end