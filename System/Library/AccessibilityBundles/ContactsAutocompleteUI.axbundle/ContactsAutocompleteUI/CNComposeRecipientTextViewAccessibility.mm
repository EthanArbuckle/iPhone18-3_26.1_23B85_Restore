@interface CNComposeRecipientTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CNComposeRecipientTextViewAccessibility)initWithFrame:(CGRect)a3;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_ensureInactiveTextView;
@end

@implementation CNComposeRecipientTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNComposeRecipientTextView" hasInstanceVariable:@"_inactiveTextView" withType:"UITextView"];
  [v3 validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"_ensureInactiveTextView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CNComposeRecipientTextView" isKindOfClass:@"CNComposeHeaderView"];
  [v3 validateClass:@"CNComposeHeaderView" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNComposeRecipientAtom"];
  [v3 validateClass:@"CNComposeRecipientAtom" hasInstanceVariable:@"_recipient" withType:"CNComposeRecipient"];
  [v3 validateClass:@"CNComposeRecipient" hasInstanceMethod:@"displayString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNComposeRecipientTextView" hasInstanceVariable:@"_atomViews" withType:"NSMutableArray"];
  [v3 validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"addButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CNComposeRecipientTextViewAccessibility;
  [(CNComposeRecipientTextViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNComposeRecipientTextViewAccessibility *)self safeValueForKey:@"_inactiveTextView"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(CNComposeRecipientTextViewAccessibility *)self safeValueForKey:@"_inactiveTextView"];
  [v4 _accessibilitySetTextViewShouldBreakUpParagraphs:0];

  v5 = [(CNComposeRecipientTextViewAccessibility *)self safeValueForKey:@"labelView"];
  [v5 setIsAccessibilityElement:0];
}

- (id)automationElements
{
  v8.receiver = self;
  v8.super_class = CNComposeRecipientTextViewAccessibility;
  v3 = [(CNComposeRecipientTextViewAccessibility *)&v8 automationElements];
  v4 = [v3 mutableCopy];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x29EDB8DE8] array];

    if (!v5)
    {
      v5 = [MEMORY[0x29EDB8DE8] array];
    }
  }

  v6 = [(CNComposeRecipientTextViewAccessibility *)self safeValueForKey:@"labelView"];
  [v5 axSafelyAddObject:v6];

  return v5;
}

- (void)_ensureInactiveTextView
{
  v3.receiver = self;
  v3.super_class = CNComposeRecipientTextViewAccessibility;
  [(CNComposeRecipientTextViewAccessibility *)&v3 _ensureInactiveTextView];
  [(CNComposeRecipientTextViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (CNComposeRecipientTextViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CNComposeRecipientTextViewAccessibility;
  v3 = [(CNComposeRecipientTextViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CNComposeRecipientTextViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end