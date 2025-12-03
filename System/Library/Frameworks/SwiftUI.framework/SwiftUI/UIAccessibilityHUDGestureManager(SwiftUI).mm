@interface UIAccessibilityHUDGestureManager(SwiftUI)
- (uint64_t)swiftUI_cancelGateGesture;
@end

@implementation UIAccessibilityHUDGestureManager(SwiftUI)

- (uint64_t)swiftUI_cancelGateGesture
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [self _openGate];
  }

  return result;
}

@end