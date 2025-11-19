@interface PuppetPickerViewControllerInvertColorsAccessibility
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
@end

@implementation PuppetPickerViewControllerInvertColorsAccessibility

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v8.receiver = self;
  v8.super_class = PuppetPickerViewControllerInvertColorsAccessibility;
  v6 = [(PuppetPickerViewControllerInvertColorsAccessibility *)&v8 pickerView:a3 viewForRow:a4 forComponent:a5 reusingView:a6];
  [v6 setAccessibilityIgnoresInvertColors:1];

  return v6;
}

@end