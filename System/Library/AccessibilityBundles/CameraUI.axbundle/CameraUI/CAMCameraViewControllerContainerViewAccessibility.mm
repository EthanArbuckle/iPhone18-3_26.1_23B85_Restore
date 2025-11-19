@interface CAMCameraViewControllerContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
- (void)verifyViewOrdering;
@end

@implementation CAMCameraViewControllerContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMCameraViewControllerContainerView" hasInstanceMethod:@"viewfinderView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMCameraViewControllerContainerView" hasInstanceMethod:@"customOverlayView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMCameraViewControllerContainerView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CAMCameraViewControllerContainerView" hasInstanceMethod:@"verifyViewOrdering" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"isPerformingReviewUsingOverlay" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CAMCameraViewControllerContainerViewAccessibility;
  [(CAMCameraViewControllerContainerViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CAMCameraViewControllerContainerViewAccessibility *)self safeValueForKey:@"viewfinderView"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [MEMORY[0x29EDC7DA8] viewControllerForView:v4];
  [v4 setAccessibilityElementsHidden:{objc_msgSend(v5, "safeBoolForKey:", @"isPerformingReviewUsingOverlay"}];
}

- (void)verifyViewOrdering
{
  v3.receiver = self;
  v3.super_class = CAMCameraViewControllerContainerViewAccessibility;
  [(CAMCameraViewControllerContainerViewAccessibility *)&v3 verifyViewOrdering];
  [(CAMCameraViewControllerContainerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMCameraViewControllerContainerViewAccessibility;
  [(CAMCameraViewControllerContainerViewAccessibility *)&v3 layoutSubviews];
  [(CAMCameraViewControllerContainerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end