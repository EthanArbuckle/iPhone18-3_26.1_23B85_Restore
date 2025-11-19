@interface SKUIGiftDateTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIGiftDateTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIGiftDateTableViewCell" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIGiftDateTableViewCell" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIGiftDateTableViewCell" hasInstanceVariable:@"_datePicker" withType:"UIDatePicker"];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SKUIGiftDateTableViewCellAccessibility *)self safeBoolForKey:@"isChecked"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityValue
{
  v2 = [(SKUIGiftDateTableViewCellAccessibility *)self safeValueForKey:@"_datePicker"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9[1] = *MEMORY[0x29EDCA608];
  v3 = [(SKUIGiftDateTableViewCellAccessibility *)self safeValueForKey:@"_datePicker"];
  if ([v3 isDescendantOfView:self])
  {
    v9[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SKUIGiftDateTableViewCellAccessibility;
    v4 = [(SKUIGiftDateTableViewCellAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  }

  v5 = v4;

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

@end