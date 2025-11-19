@interface UIGestureRecognizer(SwiftUI)
- (double)_swiftui_globalTranslation;
- (double)_swiftui_globalVelocity;
@end

@implementation UIGestureRecognizer(SwiftUI)

- (double)_swiftui_globalVelocity
{
  v2 = [a1 view];
  v3 = [v2 window];
  [a1 velocityInView:v3];
  v5 = v4;

  return v5;
}

- (double)_swiftui_globalTranslation
{
  v2 = [a1 view];
  v3 = [v2 window];
  [a1 translationInView:v3];
  v5 = v4;

  return v5;
}

@end