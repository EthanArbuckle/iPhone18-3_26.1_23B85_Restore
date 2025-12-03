@interface MTCollectionSectionHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTCollectionSectionHeaderViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTCollectionSectionHeaderViewAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end