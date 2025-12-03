@interface _AVFocusContainerViewAccessibility
- (BOOL)_accessibilityShouldIncludeMediaDescriptionsRotor;
@end

@implementation _AVFocusContainerViewAccessibility

- (BOOL)_accessibilityShouldIncludeMediaDescriptionsRotor
{
  _accessibilityViewController = [(_AVFocusContainerViewAccessibility *)self _accessibilityViewController];
  MEMORY[0x29C2C6300](@"AVUnifiedPlayerPlaybackControlsViewController");
  if (objc_opt_isKindOfClass())
  {
    _accessibilityShouldIncludeMediaDescriptionsRotor = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _AVFocusContainerViewAccessibility;
    _accessibilityShouldIncludeMediaDescriptionsRotor = [(_AVFocusContainerViewAccessibility *)&v6 _accessibilityShouldIncludeMediaDescriptionsRotor];
  }

  return _accessibilityShouldIncludeMediaDescriptionsRotor;
}

@end