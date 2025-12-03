@interface ColorPickerRepresentable.Coordinator
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)colorPickerViewControllerDidFinish:(id)finish;
@end

@implementation ColorPickerRepresentable.Coordinator

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV8PaperKit24ColorPickerRepresentable11Coordinator_pickedColor);
  colorCopy = color;
  selfCopy = self;
  v6(colorCopy);
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  v4 = type metadata accessor for PresentationMode();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA16PresentationModeVGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for ColorPickerRepresentable(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MiniColorSwatch(self + OBJC_IVAR____TtCV8PaperKit24ColorPickerRepresentable11Coordinator_parent, v10, type metadata accessor for ColorPickerRepresentable);
  selfCopy = self;
  ColorPickerRepresentable.presentationMode.getter(v7);
  _s8PaperKit5ColorVWOhTm_3(v10, type metadata accessor for ColorPickerRepresentable);
  MEMORY[0x1DA6CA790](v5);
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI7BindingVyAA16PresentationModeVGMd);
}

@end