@interface PHVoicemailMessageTableViewCellScrollViewAccessibility
- (id)accessibilityElements;
@end

@implementation PHVoicemailMessageTableViewCellScrollViewAccessibility

- (id)accessibilityElements
{
  subviews = [(PHVoicemailMessageTableViewCellScrollViewAccessibility *)self subviews];
  v3 = [subviews sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v3;
}

@end