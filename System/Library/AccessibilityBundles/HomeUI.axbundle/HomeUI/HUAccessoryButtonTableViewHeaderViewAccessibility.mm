@interface HUAccessoryButtonTableViewHeaderViewAccessibility
- (id)_accessibilitySupplementaryHeaderViews;
@end

@implementation HUAccessoryButtonTableViewHeaderViewAccessibility

- (id)_accessibilitySupplementaryHeaderViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(HUAccessoryButtonTableViewHeaderViewAccessibility *)self safeValueForKey:@"accessoryButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end