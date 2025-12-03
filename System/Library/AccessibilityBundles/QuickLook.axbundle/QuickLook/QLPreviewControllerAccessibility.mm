@interface QLPreviewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_listButton;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation QLPreviewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLPreviewController"];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"internalNavigationController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"updateOverlayAnimated: animatedButtons: forceRefresh: withTraitCollection:" withFullSignature:{"v", "B", "B", "B", "@", 0}];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"_listButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewController" hasInstanceMethod:@"additionalRightBarButtonItems" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = QLPreviewControllerAccessibility;
  [(QLPreviewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityKeyboardDidAppear_ name:*MEMORY[0x29EDC81A0] object:0];
}

- (id)_listButton
{
  v5.receiver = self;
  v5.super_class = QLPreviewControllerAccessibility;
  _listButton = [(QLPreviewControllerAccessibility *)&v5 _listButton];
  v3 = accessibilityLocalizedString(@"list.button.label");
  [_listButton setAccessibilityLabel:v3];

  return _listButton;
}

@end