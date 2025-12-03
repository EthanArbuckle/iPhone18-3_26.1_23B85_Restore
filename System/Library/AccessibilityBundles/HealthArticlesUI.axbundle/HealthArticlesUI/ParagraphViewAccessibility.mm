@interface ParagraphViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ParagraphViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ParagraphViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

uint64_t __48__ParagraphViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end