@interface CKNanoChatControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setConversation:(id)a3;
@end

@implementation CKNanoChatControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKNanoChatController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CKNanoChatController" hasInstanceMethod:@"setConversation:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CKNanoChatControllerAccessibility;
  [(CKNanoChatControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v2 = accessibilityLocalizedString(@"contact.info");
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setAccessibilityLabel:v2];
}

- (void)setConversation:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKNanoChatControllerAccessibility;
  [(CKNanoChatControllerAccessibility *)&v4 setConversation:a3];
  [(CKNanoChatControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end