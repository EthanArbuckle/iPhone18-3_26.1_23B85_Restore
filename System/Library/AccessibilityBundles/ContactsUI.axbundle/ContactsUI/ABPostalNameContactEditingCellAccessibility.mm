@interface ABPostalNameContactEditingCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (ABPostalNameContactEditingCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_accessibilityChildren;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setCardGroupItem:(id)item;
@end

@implementation ABPostalNameContactEditingCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ABPostalNameContactEditingCell" hasInstanceVariable:@"_editingTextField" withType:"UITextField"];
  [validationsCopy validateClass:@"ABPostalNameContactEditingCell" hasInstanceMethod:@"setCardGroupItem:" withFullSignature:{"v", "@", 0}];
}

- (id)_accessibilityChildren
{
  [(ABPostalNameContactEditingCellAccessibility *)self frame];
  if (v4 < 1.0 || v3 < 1.0)
  {
    _accessibilityChildren = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ABPostalNameContactEditingCellAccessibility;
    _accessibilityChildren = [(ABPostalNameContactEditingCellAccessibility *)&v8 _accessibilityChildren];
  }

  return _accessibilityChildren;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = ABPostalNameContactEditingCellAccessibility;
  [(ABPostalNameContactEditingCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(ABPostalNameContactEditingCellAccessibility *)self safeValueForKey:@"_editingTextField"];
  v4 = [(ABPostalNameContactEditingCellAccessibility *)self safeValueForKey:@"_editingTextField"];
  v5 = [v4 safeValueForKey:@"placeholder"];
  [v3 setAccessibilityLabel:v5];
}

- (void)setCardGroupItem:(id)item
{
  v4.receiver = self;
  v4.super_class = ABPostalNameContactEditingCellAccessibility;
  [(ABPostalNameContactEditingCellAccessibility *)&v4 setCardGroupItem:item];
  [(ABPostalNameContactEditingCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (ABPostalNameContactEditingCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = ABPostalNameContactEditingCellAccessibility;
  v4 = [(ABPostalNameContactEditingCellAccessibility *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(ABPostalNameContactEditingCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

@end