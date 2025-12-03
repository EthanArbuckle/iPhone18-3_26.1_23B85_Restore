@interface COSUnlockPlaceholderViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation COSUnlockPlaceholderViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSUnlockPlaceholderViewController" isKindOfClass:@"BPSWelcomeOptinViewController"];
  [validationsCopy validateClass:@"COSUnlockPlaceholderViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BPSWelcomeOptinViewController" hasInstanceMethod:@"watchView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = COSUnlockPlaceholderViewControllerAccessibility;
  [(COSUnlockPlaceholderViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"phone.with.watch.picture.unlock.passcode");
  v4 = [(COSUnlockPlaceholderViewControllerAccessibility *)self safeUIViewForKey:@"watchView"];
  [v4 setAccessibilityLabel:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = COSUnlockPlaceholderViewControllerAccessibility;
  [(COSUnlockPlaceholderViewControllerAccessibility *)&v3 viewDidLoad];
  [(COSUnlockPlaceholderViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end