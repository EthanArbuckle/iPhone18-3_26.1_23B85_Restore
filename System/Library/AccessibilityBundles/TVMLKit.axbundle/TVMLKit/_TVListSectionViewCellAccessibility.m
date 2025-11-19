@interface _TVListSectionViewCellAccessibility
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation _TVListSectionViewCellAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(_TVListSectionViewCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_4];
  v3 = v2 == 0;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _TVListSectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F80] | [(_TVListSectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end