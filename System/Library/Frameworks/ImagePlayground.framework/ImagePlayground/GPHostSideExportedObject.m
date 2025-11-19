@interface GPHostSideExportedObject
- (void)pickerWantsToStartCreationWithIsTransitionSupported:(BOOL)a3 replyHandler:(id)a4;
@end

@implementation GPHostSideExportedObject

- (void)pickerWantsToStartCreationWithIsTransitionSupported:(BOOL)a3 replyHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1D2A5C380(a3, sub_1D2A605BC, v6);
}

@end