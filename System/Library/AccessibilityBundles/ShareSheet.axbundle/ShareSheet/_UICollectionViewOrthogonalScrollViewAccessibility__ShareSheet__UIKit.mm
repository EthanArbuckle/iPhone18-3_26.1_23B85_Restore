@interface _UICollectionViewOrthogonalScrollViewAccessibility__ShareSheet__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated;
@end

@implementation _UICollectionViewOrthogonalScrollViewAccessibility__ShareSheet__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIScrollViewAccessibility" hasInstanceMethod:@"accessibilityApplyScrollContent:sendScrollStatus:animated:" withFullSignature:{"v", "{CGPoint=dd}", "B", "B", 0}];
  [validationsCopy validateClass:@"UIScrollViewAccessibility" hasInstanceMethod:@"accessibilityApplyScrollContentOverride:sendScrollStatus:animateWithDuration:animationCurve:" withFullSignature:{"v", "{CGPoint=dd}", "B", "d", "i", 0}];
}

- (void)accessibilityApplyScrollContent:(CGPoint)content sendScrollStatus:(BOOL)status animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((accessibilityIsPagesApp() & 1) == 0)
  {
    AXPerformSafeBlock();
  }

  if (animatedCopy)
  {
    UIAccessibilityIsSwitchControlRunning();
  }

  AXPerformSafeBlock();
}

@end