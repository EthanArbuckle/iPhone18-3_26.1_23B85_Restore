@interface WFRichContentItemCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation WFRichContentItemCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFRichContentItemCellView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFRichContentItemCellView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFRichContentItemCellView" hasInstanceMethod:@"altLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WFRichContentItemCellViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(WFRichContentItemCellViewAccessibility *)&v3 accessibilityTraits];
}

@end