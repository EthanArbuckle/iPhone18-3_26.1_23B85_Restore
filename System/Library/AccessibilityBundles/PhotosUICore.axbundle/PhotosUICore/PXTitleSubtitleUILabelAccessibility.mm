@interface PXTitleSubtitleUILabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PXTitleSubtitleUILabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXTitleSubtitleUILabel" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXTitleSubtitleUILabel" hasInstanceMethod:@"subtitleText" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(PXTitleSubtitleUILabelAccessibility *)self accessibilityIdentification];
  v3 = [accessibilityIdentification isEqualToString:@"AXMemoryTileHeadingLabel"];

  return v3 ^ 1;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(PXTitleSubtitleUILabelAccessibility *)self safeValueForKey:@"titleText"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(PXTitleSubtitleUILabelAccessibility *)self safeValueForKey:@"subtitleText"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = __AXStringForVariables();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXTitleSubtitleUILabelAccessibility;
  return *MEMORY[0x29EDC7F80] | [(PXTitleSubtitleUILabelAccessibility *)&v3 accessibilityTraits];
}

@end