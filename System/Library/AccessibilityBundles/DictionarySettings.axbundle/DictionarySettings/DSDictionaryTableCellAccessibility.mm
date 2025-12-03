@interface DSDictionaryTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)updateLabels;
@end

@implementation DSDictionaryTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DUDefinitionDictionary"];
  [validationsCopy validateClass:@"DSDictionaryTableCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"DSDictionaryTableCell" hasInstanceMethod:@"definitionDictionary" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DUDefinitionDictionary" hasInstanceMethod:@"definitionLanguage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DSDictionaryTableCell" hasInstanceMethod:@"updateLabels" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = DSDictionaryTableCellAccessibility;
  accessibilityTraits = [(DSDictionaryTableCellAccessibility *)&v8 accessibilityTraits];
  v4 = [(DSDictionaryTableCellAccessibility *)self safeValueForKey:@"imageView"];
  v5 = __UIAccessibilitySafeClass();

  LODWORD(v4) = [v5 isHidden];
  v6 = *MEMORY[0x29EDC7FC0];
  if (v4)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

- (void)updateLabels
{
  v11.receiver = self;
  v11.super_class = DSDictionaryTableCellAccessibility;
  [(DSDictionaryTableCellAccessibility *)&v11 updateLabels];
  v3 = MEMORY[0x29EDBD7E8];
  objc_opt_class();
  v4 = [(DSDictionaryTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
  v5 = __UIAccessibilityCastAsClass();

  text = [v5 text];
  v7 = [v3 axAttributedStringWithString:text];

  v8 = [(DSDictionaryTableCellAccessibility *)self safeValueForKey:@"definitionDictionary"];
  v9 = [v8 safeStringForKey:@"definitionLanguage"];
  [v7 setAttribute:v9 forKey:*MEMORY[0x29EDBD950]];

  v10 = [(DSDictionaryTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
  [v10 setAccessibilityLabel:v7];
}

@end