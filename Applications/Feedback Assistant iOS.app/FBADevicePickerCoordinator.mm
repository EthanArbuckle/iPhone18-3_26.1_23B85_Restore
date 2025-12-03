@interface FBADevicePickerCoordinator
+ (void)showDevicePickerWithChoices:(id)choices onViewController:(id)controller completion:(id)completion;
- (_TtC18Feedback_Assistant26FBADevicePickerCoordinator)init;
@end

@implementation FBADevicePickerCoordinator

+ (void)showDevicePickerWithChoices:(id)choices onViewController:(id)controller completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  controllerCopy = controller;
  sub_10008829C(v7, controllerCopy, sub_1000689BC, v8);
}

- (_TtC18Feedback_Assistant26FBADevicePickerCoordinator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBADevicePickerCoordinator();
  return [(FBADevicePickerCoordinator *)&v3 init];
}

@end