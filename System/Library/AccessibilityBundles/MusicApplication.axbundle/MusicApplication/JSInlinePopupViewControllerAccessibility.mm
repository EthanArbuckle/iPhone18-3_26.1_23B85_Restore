@interface JSInlinePopupViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation JSInlinePopupViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.JSInlinePopupViewController" hasInstanceMethod:@"accessibilityContainerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSInlinePopupViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MusicApplication.JSInlinePopupViewController" hasInstanceMethod:@"accessibilityCloseButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSInlinePopupViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
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

  array = [MEMORY[0x29EDB8DE8] array];
  [array axSafelyAddObject:v5];
  [array axSafelyAddObject:v6];
  objc_opt_class();
  v9 = [(JSInlinePopupViewControllerAccessibility *)self safeValueForKey:@"view"];
  v10 = __UIAccessibilityCastAsClass();

  [v10 setAccessibilityElements:array];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = JSInlinePopupViewControllerAccessibility;
  [(JSInlinePopupViewControllerAccessibility *)&v3 viewDidLoad];
  [(JSInlinePopupViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end