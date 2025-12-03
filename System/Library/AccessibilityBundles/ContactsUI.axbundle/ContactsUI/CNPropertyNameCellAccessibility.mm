@interface CNPropertyNameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateTextFieldAccessibilityLabel;
- (void)setCardGroupItem:(id)item;
- (void)textFieldChanged:(id)changed;
@end

@implementation CNPropertyNameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPropertyNameCell" isKindOfClass:@"CNContactCell"];
  [validationsCopy validateClass:@"CNContactCell" hasInstanceMethod:@"cardGroupItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPropertyGroupItem" hasInstanceMethod:@"displayLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPropertyNameCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPropertyNameCell" hasInstanceMethod:@"setCardGroupItem:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CNPropertyNameCell" hasInstanceMethod:@"textFieldChanged:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CNPropertyNameCellAccessibility;
  [(CNPropertyNameCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CNPropertyNameCellAccessibility *)self _updateTextFieldAccessibilityLabel];
}

- (void)_updateTextFieldAccessibilityLabel
{
  v3 = [(CNPropertyNameCellAccessibility *)self safeValueForKey:@"textField"];
  accessibilityValue = [v3 accessibilityValue];

  v5 = [(CNPropertyNameCellAccessibility *)self safeValueForKey:@"cardGroupItem"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"displayLabel"];
  v8 = [accessibilityValue length];
  v9 = [(CNPropertyNameCellAccessibility *)self safeValueForKey:@"textField"];
  v10 = v9;
  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  [v9 setAccessibilityLabel:v11];

  v12 = [(CNPropertyNameCellAccessibility *)self safeValueForKey:@"textField"];
  [v12 setAccessibilityIdentifier:v7];
}

- (void)setCardGroupItem:(id)item
{
  v4.receiver = self;
  v4.super_class = CNPropertyNameCellAccessibility;
  [(CNPropertyNameCellAccessibility *)&v4 setCardGroupItem:item];
  [(CNPropertyNameCellAccessibility *)self _updateTextFieldAccessibilityLabel];
}

- (void)textFieldChanged:(id)changed
{
  v4.receiver = self;
  v4.super_class = CNPropertyNameCellAccessibility;
  [(CNPropertyNameCellAccessibility *)&v4 textFieldChanged:changed];
  [(CNPropertyNameCellAccessibility *)self _updateTextFieldAccessibilityLabel];
}

@end