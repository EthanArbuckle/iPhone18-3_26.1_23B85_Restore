@interface QLPreviewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_listButton;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation QLPreviewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLPreviewController"];
  [v3 validateClass:@"QLPreviewController" hasInstanceMethod:@"internalNavigationController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"QLPreviewController" hasInstanceMethod:@"updateOverlayAnimated: animatedButtons: forceRefresh: withTraitCollection:" withFullSignature:{"v", "B", "B", "B", "@", 0}];
  [v3 validateClass:@"QLPreviewController" hasInstanceMethod:@"_listButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"QLPreviewController" hasInstanceMethod:@"additionalRightBarButtonItems" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = QLPreviewControllerAccessibility;
  [(QLPreviewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__accessibilityKeyboardDidAppear_ name:*MEMORY[0x29EDC81A0] object:0];
}

- (id)_listButton
{
  v5.receiver = self;
  v5.super_class = QLPreviewControllerAccessibility;
  v2 = [(QLPreviewControllerAccessibility *)&v5 _listButton];
  v3 = accessibilityLocalizedString(@"list.button.label");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end