@interface HULegibilityLabelAccessibility
- (BOOL)_accessibilityUseAccessibilityFrameForHittest;
@end

@implementation HULegibilityLabelAccessibility

- (BOOL)_accessibilityUseAccessibilityFrameForHittest
{
  if (([(HULegibilityLabelAccessibility *)self _accessibilityBoolValueForKey:AXHomeUIUseAccessibilityFrameForHitTest]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = HULegibilityLabelAccessibility;
  return [(HULegibilityLabelAccessibility *)&v4 _accessibilityUseAccessibilityFrameForHittest];
}

@end