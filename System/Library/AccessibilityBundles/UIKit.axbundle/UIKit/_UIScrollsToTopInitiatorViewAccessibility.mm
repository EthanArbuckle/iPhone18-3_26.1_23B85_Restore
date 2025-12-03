@interface _UIScrollsToTopInitiatorViewAccessibility
- (BOOL)_shouldSeekHigherPriorityTouchTarget;
@end

@implementation _UIScrollsToTopInitiatorViewAccessibility

- (BOOL)_shouldSeekHigherPriorityTouchTarget
{
  selfCopy = self;
  v4 = a2;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIScrollsToTopInitiatorViewAccessibility;
  return [(_UIScrollsToTopInitiatorViewAccessibility *)&v3 _shouldSeekHigherPriorityTouchTarget];
}

@end