@interface _AVFocusContainerViewAccessibility
- (BOOL)_accessibilityShouldIncludeMediaDescriptionsRotor;
@end

@implementation _AVFocusContainerViewAccessibility

- (BOOL)_accessibilityShouldIncludeMediaDescriptionsRotor
{
  v3 = [(_AVFocusContainerViewAccessibility *)self _accessibilityViewController];
  MEMORY[0x29C2C6300](@"AVUnifiedPlayerPlaybackControlsViewController");
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _AVFocusContainerViewAccessibility;
    v4 = [(_AVFocusContainerViewAccessibility *)&v6 _accessibilityShouldIncludeMediaDescriptionsRotor];
  }

  return v4;
}

@end