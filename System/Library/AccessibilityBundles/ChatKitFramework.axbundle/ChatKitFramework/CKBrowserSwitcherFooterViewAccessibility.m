@interface CKBrowserSwitcherFooterViewAccessibility
- (void)adjustMagnificationAtPoint:(CGPoint)a3 minifyImmediately:(BOOL)a4;
@end

@implementation CKBrowserSwitcherFooterViewAccessibility

- (void)adjustMagnificationAtPoint:(CGPoint)a3 minifyImmediately:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v8.receiver = self;
    v8.super_class = CKBrowserSwitcherFooterViewAccessibility;
    [(CKBrowserSwitcherFooterViewAccessibility *)&v8 adjustMagnificationAtPoint:v4 minifyImmediately:x, y];
  }
}

@end