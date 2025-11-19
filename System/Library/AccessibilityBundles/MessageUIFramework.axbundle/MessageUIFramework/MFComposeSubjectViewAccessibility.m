@interface MFComposeSubjectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (MFComposeSubjectViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setNotifyOptionSelected:(BOOL)a3;
@end

@implementation MFComposeSubjectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFComposeSubjectView" hasInstanceMethod:@"setNotifyOptionSelected:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"MFComposeSubjectView" hasInstanceVariable:@"_notifyButton" withType:"MFConfirmationButton"];
  [v3 validateClass:@"MFComposeSubjectView" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [v3 validateClass:@"MFComposeSubjectView" isKindOfClass:@"CNComposeHeaderView"];
  [v3 validateClass:@"CNComposeHeaderView" hasInstanceMethod:@"labelView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MFComposeSubjectViewAccessibility;
  [(MFComposeSubjectViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"_textView"];
  [v3 setAccessibilityIdentifier:@"subjectField"];

  v4 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"_notifyButton"];
  v5 = accessibilityLocalizedString(@"notifyme.label");
  [v4 setAccessibilityLabel:v5];

  v6 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"labelView"];
  [v6 setIsAccessibilityElement:0];
}

- (MFComposeSubjectViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MFComposeSubjectViewAccessibility;
  v3 = [(MFComposeSubjectViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MFComposeSubjectViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)setNotifyOptionSelected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = MFComposeSubjectViewAccessibility;
  [(MFComposeSubjectViewAccessibility *)&v9 setNotifyOptionSelected:?];
  v5 = *MEMORY[0x29EDC7F70];
  v6 = *MEMORY[0x29EDC7FC0];
  if (v3)
  {
    v7 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MFComposeSubjectViewAccessibility *)self safeValueForKey:@"_notifyButton"];
  [v8 setAccessibilityTraits:v7 | v5];
}

@end