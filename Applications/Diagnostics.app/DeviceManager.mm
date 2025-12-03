@interface DeviceManager
- (void)device:(id)device didFinishTestSuite:(id)suite withEntry:(id)entry error:(id)error;
- (void)device:(id)device didRequestInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation;
- (void)device:(id)device didRequestSuiteRunWithDestinations:(id)destinations confirmation:(id)confirmation;
- (void)device:(id)device shouldStartTestWithTestId:(id)id fullscreen:(BOOL)fullscreen response:(id)response;
@end

@implementation DeviceManager

- (void)device:(id)device shouldStartTestWithTestId:(id)id fullscreen:(BOOL)fullscreen response:(id)response
{
  v10 = _Block_copy(response);
  _Block_copy(v10);
  swift_unknownObjectRetain();
  idCopy = id;
  selfCopy = self;
  sub_1001070CC(device, fullscreen, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)device:(id)device didRequestInstructionalPrompt:(id)prompt withConfirmation:(id)confirmation
{
  v8 = _Block_copy(confirmation);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  promptCopy = prompt;
  selfCopy = self;
  sub_100107324(device, promptCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)device:(id)device didRequestSuiteRunWithDestinations:(id)destinations confirmation:(id)confirmation
{
  v7 = _Block_copy(confirmation);
  sub_10003E110(0, &qword_100201818);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100105570(device, v8, sub_100105A5C, v9);
  swift_unknownObjectRelease();
}

- (void)device:(id)device didFinishTestSuite:(id)suite withEntry:(id)entry error:(id)error
{
  swift_unknownObjectRetain();
  suiteCopy = suite;
  entryCopy = entry;
  selfCopy = self;
  errorCopy = error;
  sub_100105760(device, suiteCopy, entry, error);
  swift_unknownObjectRelease();
}

@end