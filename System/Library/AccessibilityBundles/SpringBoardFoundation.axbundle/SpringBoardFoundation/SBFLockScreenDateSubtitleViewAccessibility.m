@interface SBFLockScreenDateSubtitleViewAccessibility
- (BOOL)_accessibilityPointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBFLockScreenDateSubtitleViewAccessibility

- (BOOL)_accessibilityPointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SBFLockScreenDateSubtitleViewAccessibility *)self frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end