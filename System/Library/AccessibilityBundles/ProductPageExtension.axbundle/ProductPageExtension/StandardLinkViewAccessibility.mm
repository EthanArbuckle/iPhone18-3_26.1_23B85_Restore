@interface StandardLinkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation StandardLinkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ProductPageExtension.StandardLinkView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ProductPageExtension.StandardLinkView" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = StandardLinkViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(StandardLinkViewAccessibility *)&v3 accessibilityTraits];
}

@end