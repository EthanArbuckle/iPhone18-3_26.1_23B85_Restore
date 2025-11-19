@interface JSDrivenViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityUpdateForHeaderItemChange;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation JSDrivenViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"accessibilityContextBarButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"accessibilityUpdateForHeaderItemChange" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"traitCollectionDidChange:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MusicApplication.JSDrivenViewController" hasInstanceMethod:@"preferredContentSizeDidChangeForChildContentContainer:" withFullSignature:{"v", "@", 0}];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = JSDrivenViewControllerAccessibility;
  [(JSDrivenViewControllerAccessibility *)&v4 traitCollectionDidChange:a3];
  [(JSDrivenViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4.receiver = self;
  v4.super_class = JSDrivenViewControllerAccessibility;
  [(JSDrivenViewControllerAccessibility *)&v4 preferredContentSizeDidChangeForChildContentContainer:a3];
  [(JSDrivenViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end