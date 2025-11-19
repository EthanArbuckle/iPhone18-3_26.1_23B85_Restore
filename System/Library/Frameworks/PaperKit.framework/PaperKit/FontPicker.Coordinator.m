@interface FontPicker.Coordinator
- (void)fontPickerViewControllerDidPickFont:(id)a3;
@end

@implementation FontPicker.Coordinator

- (void)fontPickerViewControllerDidPickFont:(id)a3
{
  v4 = a3;
  v5 = self;
  FontPicker.Coordinator.fontPickerViewControllerDidPickFont(_:)(v4);
}

@end