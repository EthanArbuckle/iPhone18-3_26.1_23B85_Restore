@interface CNAutocompleteSuggestionsViewSectionHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CNAutocompleteSuggestionsViewSectionHeaderAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNAutocompleteSuggestionsViewSectionHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAutocompleteSuggestionsViewSectionHeader" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAutocompleteSuggestionsViewSectionHeader" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CNAutocompleteSuggestionsViewSectionHeaderAccessibility;
  [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (CNAutocompleteSuggestionsViewSectionHeaderAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CNAutocompleteSuggestionsViewSectionHeaderAccessibility;
  v3 = [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

@end