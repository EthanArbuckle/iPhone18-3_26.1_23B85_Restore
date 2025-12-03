@interface UIPickerContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIPickerContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIPickerContentView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIPickerContentView" hasInstanceMethod:@"isChecked" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v3 = [(UIPickerContentViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3 = 0;
  if (([(UIPickerContentViewAccessibility *)self safeBoolForKey:@"isChecked"]& 1) != 0)
  {
    return *MEMORY[0x29EDC7FC0];
  }

  return v3;
}

@end