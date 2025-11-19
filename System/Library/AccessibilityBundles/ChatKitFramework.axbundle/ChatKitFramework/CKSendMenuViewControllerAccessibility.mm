@interface CKSendMenuViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation CKSendMenuViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKSendMenuViewController" hasInstanceMethod:@"sendMenuViewControllerDelegate" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"CKSendMenuViewControllerDelegate" hasRequiredInstanceMethod:@"sendMenuViewControllerRequestDismiss:"];
}

- (BOOL)accessibilityPerformEscape
{
  v4 = [(CKSendMenuViewControllerAccessibility *)self safeValueForKey:@"sendMenuViewControllerDelegate"];
  v2 = v4;
  AXPerformSafeBlock();

  return 1;
}

@end