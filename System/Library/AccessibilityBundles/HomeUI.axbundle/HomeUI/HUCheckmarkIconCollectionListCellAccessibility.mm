@interface HUCheckmarkIconCollectionListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation HUCheckmarkIconCollectionListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUCheckmarkIconCollectionListCell" hasInstanceMethod:@"hidesCheckmark" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUCheckmarkIconCollectionListCell" hasInstanceMethod:@"checkmarkAccessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUCheckmarkAccessoryView" hasInstanceMethod:@"checked" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HUCheckmarkIconCollectionListCellAccessibility *)self safeValueForKey:@"contentView"];
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"textLabel"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [v3 safeValueForKeyPath:@"secondaryTextLabel"];
  v7 = __UIAccessibilityCastAsClass();

  if (([(HUCheckmarkIconCollectionListCellAccessibility *)self safeBoolForKey:@"hidesCheckmark"]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(HUCheckmarkIconCollectionListCellAccessibility *)self safeValueForKey:@"checkmarkAccessoryView"];
    if ([v9 safeBoolForKey:@"checked"])
    {
      v10 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v11 = accessibilityHomeUILocalizedString(@"automation.scenes.and.accessories.checked");
      v8 = [v10 initWithString:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  v12 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v5, v7, v8}];
  v13 = AXLabelForElements();

  return v13;
}

@end