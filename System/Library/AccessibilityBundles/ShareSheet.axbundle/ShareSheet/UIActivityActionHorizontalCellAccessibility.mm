@interface UIActivityActionHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation UIActivityActionHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIActivityActionHorizontalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIActivityActionHorizontalCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIActivityActionHorizontalCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UIActivityActionHorizontalCellAccessibility *)&v3 accessibilityTraits];
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  subviews = [v2 subviews];

  return subviews;
}

@end