@interface UIViewController(AXMapsGlue)
- (id)_accessibilityFirstNonGrabberElement;
@end

@implementation UIViewController(AXMapsGlue)

- (id)_accessibilityFirstNonGrabberElement
{
  if (_accessibilityFirstNonGrabberElement_onceToken != -1)
  {
    [UIViewController(AXMapsGlue) _accessibilityFirstNonGrabberElement];
  }

  view = [self view];
  v3 = [view _accessibilityLeafDescendantsWithCount:1 options:_accessibilityFirstNonGrabberElement_Options];
  firstObject = [v3 firstObject];

  return firstObject;
}

@end