@interface JSInlinePopupViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation JSInlinePopupViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.JSInlinePopupViewController" hasInstanceMethod:@"accessibilityContainerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.JSInlinePopupViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"MusicApplication.JSInlinePopupViewController" hasInstanceMethod:@"accessibilityCloseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.JSInlinePopupViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = JSInlinePopupViewControllerAccessibility;
  [(JSInlinePopupViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(JSInlinePopupViewControllerAccessibility *)self safeValueForKey:@"accessibilityContainerView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicApplication.InformativeView")];
  v6 = [(JSInlinePopupViewControllerAccessibility *)self safeValueForKey:@"accessibilityCloseButton"];
  v7 = accessibilityMusicLocalizedString(@"close.button");
  [v6 setAccessibilityLabel:v7];

  v8 = [MEMORY[0x29EDB8DE8] array];
  [v8 axSafelyAddObject:v5];
  [v8 axSafelyAddObject:v6];
  objc_opt_class();
  v9 = [(JSInlinePopupViewControllerAccessibility *)self safeValueForKey:@"view"];
  v10 = __UIAccessibilityCastAsClass();

  [v10 setAccessibilityElements:v8];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = JSInlinePopupViewControllerAccessibility;
  [(JSInlinePopupViewControllerAccessibility *)&v3 viewDidLoad];
  [(JSInlinePopupViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end