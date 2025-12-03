@interface CNComposeRecipientTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CNComposeRecipientTextViewAccessibility)initWithFrame:(CGRect)frame;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_ensureInactiveTextView;
@end

@implementation CNComposeRecipientTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceVariable:@"_inactiveTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"_ensureInactiveTextView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" isKindOfClass:@"CNComposeHeaderView"];
  [validationsCopy validateClass:@"CNComposeHeaderView" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientAtom"];
  [validationsCopy validateClass:@"CNComposeRecipientAtom" hasInstanceVariable:@"_recipient" withType:"CNComposeRecipient"];
  [validationsCopy validateClass:@"CNComposeRecipient" hasInstanceMethod:@"displayString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceVariable:@"_atomViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"addButton" withFullSignature:{"@", 0}];
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
  automationElements = [(CNComposeRecipientTextViewAccessibility *)&v8 automationElements];
  v4 = [automationElements mutableCopy];
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];

    if (!array)
    {
      array = [MEMORY[0x29EDB8DE8] array];
    }
  }

  v6 = [(CNComposeRecipientTextViewAccessibility *)self safeValueForKey:@"labelView"];
  [array axSafelyAddObject:v6];

  return array;
}

- (void)_ensureInactiveTextView
{
  v3.receiver = self;
  v3.super_class = CNComposeRecipientTextViewAccessibility;
  [(CNComposeRecipientTextViewAccessibility *)&v3 _ensureInactiveTextView];
  [(CNComposeRecipientTextViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (CNComposeRecipientTextViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CNComposeRecipientTextViewAccessibility;
  v3 = [(CNComposeRecipientTextViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CNComposeRecipientTextViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end