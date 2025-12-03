@interface UIGestureRecognizer(SwiftUI)
- (double)_swiftui_globalTranslation;
- (double)_swiftui_globalVelocity;
@end

@implementation UIGestureRecognizer(SwiftUI)

- (double)_swiftui_globalVelocity
{
  view = [self view];
  window = [view window];
  [self velocityInView:window];
  v5 = v4;

  return v5;
}

- (double)_swiftui_globalTranslation
{
  view = [self view];
  window = [view window];
  [self translationInView:window];
  v5 = v4;

  return v5;
}

@end