@interface JSDrivenViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityUpdateForHeaderItemChange;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation JSDrivenViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"accessibilityContextBarButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"accessibilityUpdateForHeaderItemChange" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"traitCollectionDidChange:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"preferredContentSizeDidChangeForChildContentContainer:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = JSDrivenViewControllerAccessibility;
  [(JSDrivenViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(JSDrivenViewControllerAccessibility *)self safeValueForKey:@"accessibilityContextBarButtonItem"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_8];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_310];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = JSDrivenViewControllerAccessibility;
  [(JSDrivenViewControllerAccessibility *)&v3 viewDidLoad];
  [(JSDrivenViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)accessibilityUpdateForHeaderItemChange
{
  v3.receiver = self;
  v3.super_class = JSDrivenViewControllerAccessibility;
  [(JSDrivenViewControllerAccessibility *)&v3 accessibilityUpdateForHeaderItemChange];
  [(JSDrivenViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = JSDrivenViewControllerAccessibility;
  [(JSDrivenViewControllerAccessibility *)&v4 traitCollectionDidChange:change];
  [(JSDrivenViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = JSDrivenViewControllerAccessibility;
  [(JSDrivenViewControllerAccessibility *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(JSDrivenViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end