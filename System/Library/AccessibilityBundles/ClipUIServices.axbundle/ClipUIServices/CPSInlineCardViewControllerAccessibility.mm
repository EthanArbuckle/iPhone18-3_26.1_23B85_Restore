@interface CPSInlineCardViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CPSInlineCardViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CPSInlineCardViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CPSInlineCardViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CPSInlineCardViewControllerAccessibility;
  [(CPSInlineCardViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CPSInlineCardViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CPSInlineCardViewControllerAccessibility;
  [(CPSInlineCardViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(CPSInlineCardViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end