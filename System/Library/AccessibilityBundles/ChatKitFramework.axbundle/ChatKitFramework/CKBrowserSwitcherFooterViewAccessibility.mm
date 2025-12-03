@interface CKBrowserSwitcherFooterViewAccessibility
- (void)adjustMagnificationAtPoint:(CGPoint)point minifyImmediately:(BOOL)immediately;
@end

@implementation CKBrowserSwitcherFooterViewAccessibility

- (void)adjustMagnificationAtPoint:(CGPoint)point minifyImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  y = point.y;
  x = point.x;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v8.receiver = self;
    v8.super_class = CKBrowserSwitcherFooterViewAccessibility;
    [(CKBrowserSwitcherFooterViewAccessibility *)&v8 adjustMagnificationAtPoint:immediatelyCopy minifyImmediately:x, y];
  }
}

@end