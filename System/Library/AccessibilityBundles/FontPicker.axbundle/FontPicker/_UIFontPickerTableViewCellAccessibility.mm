@interface _UIFontPickerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation _UIFontPickerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_existingSystemAccessoryView:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = _UIFontPickerTableViewCellAccessibility;
  [(_UIFontPickerTableViewCellAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(_UIFontPickerTableViewCellAccessibility *)self _existingSystemAccessoryView:0];
    objc_initWeak(&location, v3);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = __85___UIFontPickerTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v4[3] = &unk_29F2BFD40;
    objc_copyWeak(&v5, &location);
    [v3 _setAccessibilityLabelBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIFontPickerTableViewCellAccessibility;
  [(_UIFontPickerTableViewCellAccessibility *)&v3 layoutSubviews];
  [(_UIFontPickerTableViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end