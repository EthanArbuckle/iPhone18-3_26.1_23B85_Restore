@interface UIKitDatePickerRepresentable.Coordinator
- (_TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator)init;
- (void)dateChanged:(id)changed;
@end

@implementation UIKitDatePickerRepresentable.Coordinator

- (void)dateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  UIKitDatePickerRepresentable.Coordinator.dateChanged(_:)(changedCopy);
}

- (_TtCV7SwiftUIP33_796E60B90620AEB0B6972B2798FF4F4228UIKitDatePickerRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end