@interface CNPropertyNameCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateTextFieldAccessibilityLabel;
- (void)setCardGroupItem:(id)a3;
- (void)textFieldChanged:(id)a3;
@end

@implementation CNPropertyNameCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPropertyNameCell" isKindOfClass:@"CNContactCell"];
  [v3 validateClass:@"CNContactCell" hasInstanceMethod:@"cardGroupItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPropertyGroupItem" hasInstanceMethod:@"displayLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPropertyNameCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPropertyNameCell" hasInstanceMethod:@"setCardGroupItem:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CNPropertyNameCell" hasInstanceMethod:@"textFieldChanged:" withFullSignature:{"v", "@", 0}];
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
  v4 = [v3 accessibilityValue];

  v5 = [(CNPropertyNameCellAccessibility *)self safeValueForKey:@"cardGroupItem"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"displayLabel"];
  v8 = [v4 length];
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

- (void)setCardGroupItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNPropertyNameCellAccessibility;
  [(CNPropertyNameCellAccessibility *)&v4 setCardGroupItem:a3];
  [(CNPropertyNameCellAccessibility *)self _updateTextFieldAccessibilityLabel];
}

- (void)textFieldChanged:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNPropertyNameCellAccessibility;
  [(CNPropertyNameCellAccessibility *)&v4 textFieldChanged:a3];
  [(CNPropertyNameCellAccessibility *)self _updateTextFieldAccessibilityLabel];
}

@end