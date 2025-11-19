@interface CKMacRecipientsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKMacRecipientsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMacRecipientsController" hasInstanceMethod:@"toField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CKMacRecipientsControllerAccessibility;
  [(CKMacRecipientsControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKMacRecipientsControllerAccessibility *)self safeValueForKey:@"toField"];
  v4 = [v3 safeValueForKey:@"textView"];
  v5 = accessibilityLocalizedString(@"to.field");
  [v4 setAccessibilityLabel:v5];
}

@end