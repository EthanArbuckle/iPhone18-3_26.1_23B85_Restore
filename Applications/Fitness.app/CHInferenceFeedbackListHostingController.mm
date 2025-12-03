@interface CHInferenceFeedbackListHostingController
+ (id)hostingControllerWithRecords:(id)records recordController:(id)controller;
- (CHInferenceFeedbackListHostingController)init;
@end

@implementation CHInferenceFeedbackListHostingController

+ (id)hostingControllerWithRecords:(id)records recordController:(id)controller
{
  type metadata accessor for InferenceRecordBridge(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  v7 = sub_1005E8FD4(v5, controllerCopy);

  return v7;
}

- (CHInferenceFeedbackListHostingController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CHInferenceFeedbackListHostingController *)&v3 init];
}

@end