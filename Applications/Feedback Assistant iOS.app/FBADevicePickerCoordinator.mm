@interface FBADevicePickerCoordinator
+ (void)showDevicePickerWithChoices:(id)a3 onViewController:(id)a4 completion:(id)a5;
- (_TtC18Feedback_Assistant26FBADevicePickerCoordinator)init;
@end

@implementation FBADevicePickerCoordinator

+ (void)showDevicePickerWithChoices:(id)a3 onViewController:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = a4;
  sub_10008829C(v7, v9, sub_1000689BC, v8);
}

- (_TtC18Feedback_Assistant26FBADevicePickerCoordinator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBADevicePickerCoordinator();
  return [(FBADevicePickerCoordinator *)&v3 init];
}

@end