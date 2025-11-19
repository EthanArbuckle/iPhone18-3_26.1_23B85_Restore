@interface _SFNavigationBarLabelsContainerAccessibility
- (id)accessibilityLabel;
@end

@implementation _SFNavigationBarLabelsContainerAccessibility

- (id)accessibilityLabel
{
  v2 = [(_SFNavigationBarLabelsContainerAccessibility *)self _accessibleSubviews:0];
  v3 = MEMORY[0x29C2EB350]();

  return v3;
}

@end