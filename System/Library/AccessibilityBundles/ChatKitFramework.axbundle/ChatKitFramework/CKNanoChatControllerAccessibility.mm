@interface CKNanoChatControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setConversation:(id)conversation;
@end

@implementation CKNanoChatControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKNanoChatController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKNanoChatController" hasInstanceMethod:@"setConversation:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CKNanoChatControllerAccessibility;
  [(CKNanoChatControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v2 = accessibilityLocalizedString(@"contact.info");
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  navigationItem = [v3 navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setAccessibilityLabel:v2];
}

- (void)setConversation:(id)conversation
{
  v4.receiver = self;
  v4.super_class = CKNanoChatControllerAccessibility;
  [(CKNanoChatControllerAccessibility *)&v4 setConversation:conversation];
  [(CKNanoChatControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end