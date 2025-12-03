@interface PuppetPickerViewControllerInvertColorsAccessibility
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
@end

@implementation PuppetPickerViewControllerInvertColorsAccessibility

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  v8.receiver = self;
  v8.super_class = PuppetPickerViewControllerInvertColorsAccessibility;
  v6 = [(PuppetPickerViewControllerInvertColorsAccessibility *)&v8 pickerView:view viewForRow:row forComponent:component reusingView:reusingView];
  [v6 setAccessibilityIgnoresInvertColors:1];

  return v6;
}

@end