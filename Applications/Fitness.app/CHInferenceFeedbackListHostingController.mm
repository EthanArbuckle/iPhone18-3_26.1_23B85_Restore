@interface CHInferenceFeedbackListHostingController
+ (id)hostingControllerWithRecords:(id)a3 recordController:(id)a4;
- (CHInferenceFeedbackListHostingController)init;
@end

@implementation CHInferenceFeedbackListHostingController

+ (id)hostingControllerWithRecords:(id)a3 recordController:(id)a4
{
  type metadata accessor for InferenceRecordBridge(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = sub_1005E8FD4(v5, v6);

  return v7;
}

- (CHInferenceFeedbackListHostingController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CHInferenceFeedbackListHostingController *)&v3 init];
}

@end