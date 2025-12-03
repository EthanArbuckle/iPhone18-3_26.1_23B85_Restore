@interface PUOutlineCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PUOutlineCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUOutlineCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"PXNavigationListItem" hasRequiredInstanceMethod:@"title"];
}

- (id)accessibilityLabel
{
  v2 = [(PUOutlineCellAccessibility *)self safeValueForKey:@"item"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PUOutlineCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PUOutlineCellAccessibility *)&v3 accessibilityTraits];
}

@end