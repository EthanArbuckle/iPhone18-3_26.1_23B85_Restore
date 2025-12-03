@interface CKMacRecipientsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKMacRecipientsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMacRecipientsController" hasInstanceMethod:@"toField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
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