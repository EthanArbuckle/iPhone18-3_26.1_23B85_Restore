@interface AXRColorPickerView.Coordinator
- (_TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator)init;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
@end

@implementation AXRColorPickerView.Coordinator

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  controllerCopy = controller;
  colorCopy = color;
  selfCopy = self;
  sub_23D8AF898(controllerCopy, colorCopy);
}

- (_TtCV22AccessibilityReadingUIP33_3A47046ABAFE506C5503D521820D125D18AXRColorPickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end