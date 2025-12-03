@interface InputPickerStyledSlider.Coordinator
- (_TtCV5AVKit23InputPickerStyledSlider11Coordinator)init;
- (void)valueChanged:(id)changed;
@end

@implementation InputPickerStyledSlider.Coordinator

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  [changedCopy value];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5250);
  sub_18B6C540C();
}

- (_TtCV5AVKit23InputPickerStyledSlider11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end