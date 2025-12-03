@interface CNPropertyAddressingGrammarLabeledEditingCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CNPropertyAddressingGrammarLabeledEditingCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPropertyAddressingGrammarLabeledEditingCell" isKindOfClass:@"CNPropertySimpleEditingCell"];
  [validationsCopy validateClass:@"CNPropertySimpleEditingCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPropertySimpleEditingCell" hasProperty:@"labelButton" withType:"@"];
}

- (id)accessibilityLabel
{
  v8[2] = *MEMORY[0x29EDCA608];
  v3 = [(CNPropertyAddressingGrammarLabeledEditingCellAccessibility *)self safeValueForKeyPath:@"textField.placeholder"];
  v4 = [(CNPropertyAddressingGrammarLabeledEditingCellAccessibility *)self safeValueForKeyPath:@"textField.text"];
  v8[0] = v3;
  v8[1] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:2];
  v6 = AXLabelForElements();

  return v6;
}

- (id)accessibilityValue
{
  v2 = [(CNPropertyAddressingGrammarLabeledEditingCellAccessibility *)self safeValueForKey:@"labelButton"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(CNPropertyAddressingGrammarLabeledEditingCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_8];
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v2}];

  return v3;
}

uint64_t __100__CNPropertyAddressingGrammarLabeledEditingCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2D1D40](@"UITableViewCellReorderControl");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CNPropertyAddressingGrammarLabeledEditingCellAccessibility;
  return *MEMORY[0x29EDC7F70] & [(CNPropertyAddressingGrammarLabeledEditingCellAccessibility *)&v3 accessibilityTraits];
}

@end