@interface SBHomeScreenButtonAccessibility
- (id)accessibilityPath;
@end

@implementation SBHomeScreenButtonAccessibility

- (id)accessibilityPath
{
  v2 = [(SBHomeScreenButtonAccessibility *)self safeUIViewForKey:@"backgroundView"];
  accessibilityPath = [v2 accessibilityPath];

  return accessibilityPath;
}

@end