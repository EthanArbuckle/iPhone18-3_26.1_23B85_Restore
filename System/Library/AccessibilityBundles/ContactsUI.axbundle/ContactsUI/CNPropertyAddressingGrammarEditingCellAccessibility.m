@interface CNPropertyAddressingGrammarEditingCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation CNPropertyAddressingGrammarEditingCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPropertyAddressingGrammarEditingCell" isKindOfClass:@"CNPropertySimpleCell"];
  [v3 validateClass:@"CNPropertySimpleCell" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPropertySimpleCell" hasInstanceMethod:@"valueView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CNPropertyAddressingGrammarEditingCellAccessibility *)self safeValueForKey:@"labelView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(CNPropertyAddressingGrammarEditingCellAccessibility *)self safeValueForKey:@"valueView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(CNPropertyAddressingGrammarEditingCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v2}];

  return v3;
}

uint64_t __93__CNPropertyAddressingGrammarEditingCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2D1D40](@"UITableViewCellReorderControl");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end