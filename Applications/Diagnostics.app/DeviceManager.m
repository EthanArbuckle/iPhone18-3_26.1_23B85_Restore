@interface DeviceManager
- (void)device:(id)a3 didFinishTestSuite:(id)a4 withEntry:(id)a5 error:(id)a6;
- (void)device:(id)a3 didRequestInstructionalPrompt:(id)a4 withConfirmation:(id)a5;
- (void)device:(id)a3 didRequestSuiteRunWithDestinations:(id)a4 confirmation:(id)a5;
- (void)device:(id)a3 shouldStartTestWithTestId:(id)a4 fullscreen:(BOOL)a5 response:(id)a6;
@end

@implementation DeviceManager

- (void)device:(id)a3 shouldStartTestWithTestId:(id)a4 fullscreen:(BOOL)a5 response:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = self;
  sub_1001070CC(a3, a5, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)device:(id)a3 didRequestInstructionalPrompt:(id)a4 withConfirmation:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  sub_100107324(a3, v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)device:(id)a3 didRequestSuiteRunWithDestinations:(id)a4 confirmation:(id)a5
{
  v7 = _Block_copy(a5);
  sub_10003E110(0, &qword_100201818);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  swift_unknownObjectRetain();
  v10 = self;
  sub_100105570(a3, v8, sub_100105A5C, v9);
  swift_unknownObjectRelease();
}

- (void)device:(id)a3 didFinishTestSuite:(id)a4 withEntry:(id)a5 error:(id)a6
{
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = a6;
  sub_100105760(a3, v11, a5, a6);
  swift_unknownObjectRelease();
}

@end