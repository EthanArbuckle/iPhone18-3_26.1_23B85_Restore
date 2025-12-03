@interface FontPicker.Coordinator
- (void)fontPickerViewControllerDidPickFont:(id)font;
@end

@implementation FontPicker.Coordinator

- (void)fontPickerViewControllerDidPickFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  FontPicker.Coordinator.fontPickerViewControllerDidPickFont(_:)(fontCopy);
}

@end