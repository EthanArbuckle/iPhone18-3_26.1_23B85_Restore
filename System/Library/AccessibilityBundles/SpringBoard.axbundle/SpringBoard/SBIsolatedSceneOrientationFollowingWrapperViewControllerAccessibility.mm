@interface SBIsolatedSceneOrientationFollowingWrapperViewControllerAccessibility
- (id)accessibilityElements;
@end

@implementation SBIsolatedSceneOrientationFollowingWrapperViewControllerAccessibility

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(SBIsolatedSceneOrientationFollowingWrapperViewControllerAccessibility *)self safeValueForKey:@"_contentViewController"];
  v4 = [v3 safeUIViewForKey:@"view"];
  v5 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v4}];

  return v5;
}

@end