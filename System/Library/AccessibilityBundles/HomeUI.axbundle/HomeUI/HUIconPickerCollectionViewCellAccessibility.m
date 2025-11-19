@interface HUIconPickerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUIconPickerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUIconPickerCollectionViewCell" hasInstanceMethod:@"iconButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUIconPickerCollectionViewCell" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HUIconPickerCollectionViewCellAccessibility *)self safeValueForKey:@"iconDescriptor"];
  v4 = [v3 safeValueForKey:@"identifier"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = accessibilityLabelForIconIdentifier(v5);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(HUIconPickerCollectionViewCellAccessibility *)self safeValueForKey:@"iconButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 isSelected];
  v6 = *MEMORY[0x29EDC7F70];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7 = 0;
  }

  return v7 | v6;
}

@end