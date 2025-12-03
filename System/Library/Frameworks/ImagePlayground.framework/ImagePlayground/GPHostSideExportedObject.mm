@interface GPHostSideExportedObject
- (void)pickerWantsToStartCreationWithIsTransitionSupported:(BOOL)supported replyHandler:(id)handler;
@end

@implementation GPHostSideExportedObject

- (void)pickerWantsToStartCreationWithIsTransitionSupported:(BOOL)supported replyHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1D2A5C380(supported, sub_1D2A605BC, v6);
}

@end