@interface PHVoicemailMessageTableViewCellScrollViewAccessibility
- (id)accessibilityElements;
@end

@implementation PHVoicemailMessageTableViewCellScrollViewAccessibility

- (id)accessibilityElements
{
  v2 = [(PHVoicemailMessageTableViewCellScrollViewAccessibility *)self subviews];
  v3 = [v2 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v3;
}

@end