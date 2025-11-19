@interface CNAtomTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CNAtomTextViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNAtomTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNAtomTextView" hasInstanceMethod:@"clearButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNAtomTextView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CNAtomTextView" hasInstanceMethod:@"placeholder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNAtomTextView" hasInstanceMethod:@"placeholderLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CNAtomTextViewAccessibility;
  [(CNAtomTextViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNAtomTextViewAccessibility *)self safeValueForKey:@"clearButton"];
  v4 = UIKitAccessibilityLocalizedString();
  [v3 setAccessibilityLabel:v4];

  v5 = [(CNAtomTextViewAccessibility *)self safeValueForKey:@"placeholderLabel"];
  [v5 setIsAccessibilityElement:0];
}

- (CNAtomTextViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CNAtomTextViewAccessibility;
  v3 = [(CNAtomTextViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CNAtomTextViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

void __60___CNAtomTextViewAccessibility_accessibilityAttributedValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v7 = MEMORY[0x29EDBD868];
  v8 = [v13 objectForKeyedSubscript:*MEMORY[0x29EDBD868]];

  v9 = v13;
  if (v8)
  {
    v10 = [v13 objectForKeyedSubscript:*v7];
    v11 = [v10 accessibilityLabel];

    v12 = [v11 stringByAppendingString:@" "];

    if ([v12 length])
    {
      [*(a1 + 32) replaceCharactersInRange:*(*(*(a1 + 40) + 8) + 24) + a3 withString:{a4, v12}];
      *(*(*(a1 + 40) + 8) + 24) += [v12 length] - a4;
    }

    v9 = v13;
  }
}

@end