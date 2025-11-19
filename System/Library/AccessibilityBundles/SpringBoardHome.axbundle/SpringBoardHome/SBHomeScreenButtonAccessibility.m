@interface SBHomeScreenButtonAccessibility
- (id)accessibilityPath;
@end

@implementation SBHomeScreenButtonAccessibility

- (id)accessibilityPath
{
  v2 = [(SBHomeScreenButtonAccessibility *)self safeUIViewForKey:@"backgroundView"];
  v3 = [v2 accessibilityPath];

  return v3;
}

@end