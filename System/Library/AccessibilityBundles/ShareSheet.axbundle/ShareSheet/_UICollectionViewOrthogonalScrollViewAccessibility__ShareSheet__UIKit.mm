@interface _UICollectionViewOrthogonalScrollViewAccessibility__ShareSheet__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation _UICollectionViewOrthogonalScrollViewAccessibility__ShareSheet__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIScrollViewAccessibility" hasInstanceMethod:@"accessibilityApplyScrollContent:sendScrollStatus:animated:" withFullSignature:{"v", "{CGPoint=dd}", "B", "B", 0}];
  [v3 validateClass:@"UIScrollViewAccessibility" hasInstanceMethod:@"accessibilityApplyScrollContentOverride:sendScrollStatus:animateWithDuration:animationCurve:" withFullSignature:{"v", "{CGPoint=dd}", "B", "d", "i", 0}];
}

- (void)accessibilityApplyScrollContent:(CGPoint)a3 sendScrollStatus:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  if ((accessibilityIsPagesApp() & 1) == 0)
  {
    AXPerformSafeBlock();
  }

  if (v5)
  {
    UIAccessibilityIsSwitchControlRunning();
  }

  AXPerformSafeBlock();
}

@end