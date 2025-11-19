@interface CNAutocompleteSuggestionsViewSectionHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CNAutocompleteSuggestionsViewSectionHeaderAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNAutocompleteSuggestionsViewSectionHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNAutocompleteSuggestionsViewSectionHeader" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNAutocompleteSuggestionsViewSectionHeader" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CNAutocompleteSuggestionsViewSectionHeaderAccessibility;
  [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (CNAutocompleteSuggestionsViewSectionHeaderAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CNAutocompleteSuggestionsViewSectionHeaderAccessibility;
  v3 = [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNAutocompleteSuggestionsViewSectionHeaderAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

@end