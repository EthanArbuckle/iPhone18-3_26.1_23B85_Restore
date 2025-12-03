@interface CKSendMenuViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
@end

@implementation CKSendMenuViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKSendMenuViewController" hasInstanceMethod:@"sendMenuViewControllerDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CKSendMenuViewControllerDelegate" hasRequiredInstanceMethod:@"sendMenuViewControllerRequestDismiss:"];
}

- (BOOL)accessibilityPerformEscape
{
  v4 = [(CKSendMenuViewControllerAccessibility *)self safeValueForKey:@"sendMenuViewControllerDelegate"];
  v2 = v4;
  AXPerformSafeBlock();

  return 1;
}

@end