@interface CPSInlineCardViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CPSInlineCardViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CPSInlineCardViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CPSInlineCardViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CPSInlineCardViewControllerAccessibility;
  [(CPSInlineCardViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CPSInlineCardViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CPSInlineCardViewControllerAccessibility;
  [(CPSInlineCardViewControllerAccessibility *)&v4 viewWillAppear:a3];
  [(CPSInlineCardViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end