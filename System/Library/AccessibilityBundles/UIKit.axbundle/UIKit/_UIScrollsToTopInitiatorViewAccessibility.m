@interface _UIScrollsToTopInitiatorViewAccessibility
- (BOOL)_shouldSeekHigherPriorityTouchTarget;
@end

@implementation _UIScrollsToTopInitiatorViewAccessibility

- (BOOL)_shouldSeekHigherPriorityTouchTarget
{
  v5 = self;
  v4 = a2;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = _UIScrollsToTopInitiatorViewAccessibility;
  return [(_UIScrollsToTopInitiatorViewAccessibility *)&v3 _shouldSeekHigherPriorityTouchTarget];
}

@end