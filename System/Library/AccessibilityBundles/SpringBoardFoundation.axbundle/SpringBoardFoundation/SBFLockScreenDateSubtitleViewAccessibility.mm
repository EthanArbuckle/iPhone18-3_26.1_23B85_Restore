@interface SBFLockScreenDateSubtitleViewAccessibility
- (BOOL)_accessibilityPointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation SBFLockScreenDateSubtitleViewAccessibility

- (BOOL)_accessibilityPointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SBFLockScreenDateSubtitleViewAccessibility *)self frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end