@interface CKMessageEditingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKMessageEditingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMessageEditingView" hasInstanceMethod:@"confirmButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEditingView" hasInstanceMethod:@"rejectButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CKMessageEditingViewAccessibility;
  [(CKMessageEditingViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKMessageEditingViewAccessibility *)self safeValueForKey:@"confirmButton"];
  v4 = accessibilityLocalizedString(@"editing.confirm.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(CKMessageEditingViewAccessibility *)self safeValueForKey:@"rejectButton"];
  v6 = accessibilityLocalizedString(@"editing.reject.button");
  [v5 setAccessibilityLabel:v6];
}

@end